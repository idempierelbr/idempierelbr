/******************************************************************************
 * Product: Adempiere ERP & CRM Smart Business Solution                       *
 * Copyright (C) 1999-2006 ComPiere, Inc. All Rights Reserved.                *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 * For the text or an alternative of this public license, you may reach us    *
 * ComPiere, Inc., 2620 Augustine Dr. #245, Santa Clara, CA 95054, USA        *
 * or via info@compiere.org or http://www.compiere.org/license.html           *
 *****************************************************************************/
package org.idempierelbr.tax.acct;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Savepoint;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;

import org.adempiere.exceptions.AverageCostingZeroQtyException;
import org.compiere.acct.Doc;
import org.compiere.acct.DocLine;
import org.compiere.acct.Fact;
import org.compiere.acct.FactLine;
import org.compiere.model.I_M_InOutLine;
import org.compiere.model.MAccount;
import org.compiere.model.MAcctSchema;
import org.compiere.model.MClientInfo;
import org.compiere.model.MConversionRate;
import org.compiere.model.MCostDetail;
import org.compiere.model.MCurrency;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MLandedCostAllocation;
import org.compiere.model.MOrderLandedCostAllocation;
import org.compiere.model.MTax;
import org.compiere.model.ProductCost;
import org.compiere.model.X_M_Cost;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Trx;
import org.idempierelbr.base.model.MLBRDocLineCOFINS;
import org.idempierelbr.base.model.MLBRDocLineDetails;
import org.idempierelbr.base.model.MLBRDocLineDetailsTax;
import org.idempierelbr.base.model.MLBRDocLineICMS;
import org.idempierelbr.base.model.MLBRDocLineIPI;
import org.idempierelbr.base.model.MLBRDocLineISSQN;
import org.idempierelbr.base.model.MLBRDocLineImportTax;
import org.idempierelbr.base.model.MLBRDocLinePIS;
import org.idempierelbr.base.model.MLBRNCMMono;
import org.idempierelbr.base.model.MLBRTax;
import org.idempierelbr.base.util.MLBRAccountUtil;

/**
 *  Post Invoice Documents.
 *  <pre>
 *  Table:              C_Invoice (318)
 *  Document Types:     ARI, ARC, ARF, API, APC
 *  </pre>
 *  @author Jorg Janke
 *  @author Armen Rizal, Goodwill Consulting
 *  	<li>BF: 2797257	Landed Cost Detail is not using allocation qty
 *
 *  @version  $Id: Doc_Invoice.java,v 1.2 2006/07/30 00:53:33 jjanke Exp $
 */
public class Doc_Invoice extends Doc
{
	/**
	 *  Constructor
	 * 	@param as accounting schemata
	 * 	@param rs record
	 * 	@param trxName trx
	 */
	public Doc_Invoice(MAcctSchema as, ResultSet rs, String trxName)
	{
		super (as, MInvoice.class, rs, null, trxName);
	}	//	Doc_Invoice

	/** Contained Optional Tax Lines    */
	protected DocTax[]        m_taxes = null;
	/** Currency Precision				*/
	protected int				m_precision = -1;
	/** All lines are Service			*/
	protected boolean			m_allLinesService = true;
	/** All lines are product item		*/
	protected boolean			m_allLinesItem = true;
	/** LBR							    */
	protected DocTax[]        m_LBRTaxes = null;

	/**
	 *  Load Specific Document Details
	 *  @return error message or null
	 */
	protected String loadDocumentDetails ()
	{
		MInvoice invoice = (MInvoice)getPO();
		setDateDoc(invoice.getDateInvoiced());
		setIsTaxIncluded(invoice.isTaxIncluded());
		//	Amounts
		setAmount(Doc.AMTTYPE_Gross, invoice.getGrandTotal());
		setAmount(Doc.AMTTYPE_Net, invoice.getTotalLines());
		setAmount(Doc.AMTTYPE_Charge, invoice.getChargeAmt());

		//	Contained Objects
		m_taxes = loadTaxes();
		p_lines = loadLines(invoice);
		if (log.isLoggable(Level.FINE)) log.fine("Lines=" + p_lines.length + ", Taxes=" + m_taxes.length);
		return null;
	}   //  loadDocumentDetails

	/**
	 *	Load Invoice Taxes
	 *  @return DocTax Array
	 */
	private DocTax[] loadTaxes()
	{
		ArrayList<DocTax> list = new ArrayList<DocTax>();
		String sql = "SELECT it.C_Tax_ID, t.Name, t.Rate, it.TaxBaseAmt, it.TaxAmt, t.IsSalesTax "
				+ "FROM C_Tax t, C_InvoiceTax it "
				+ "WHERE t.C_Tax_ID=it.C_Tax_ID AND it.C_Invoice_ID=?";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(sql, getTrxName());
			pstmt.setInt(1, get_ID());
			rs = pstmt.executeQuery();
			//
			while (rs.next())
			{
				int C_Tax_ID = rs.getInt(1);
				String name = rs.getString(2);
				BigDecimal rate = rs.getBigDecimal(3);
				BigDecimal taxBaseAmt = rs.getBigDecimal(4);
				BigDecimal amount = rs.getBigDecimal(5);
				boolean salesTax = "Y".equals(rs.getString(6));
				//
				DocTax taxLine = new DocTax(C_Tax_ID, name, rate,
					taxBaseAmt, amount, salesTax);
				if (log.isLoggable(Level.FINE)) log.fine(taxLine.toString());
				list.add(taxLine);
			}
		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, sql, e);
			return null;
		}
		finally {
			DB.close(rs, pstmt);
			rs = null; pstmt = null;
		}

		//	Return Array
		DocTax[] tl = new DocTax[list.size()];
		list.toArray(tl);
		return tl;
	}	//	loadTaxes

	/**
	 *	Load Invoice Line
	 *	@param invoice invoice
	 *  @return DocLine Array
	 */
	private DocLine[] loadLines (MInvoice invoice)
	{
		ArrayList<DocLine> list = new ArrayList<DocLine>();
		//
		MInvoiceLine[] lines = invoice.getLines(false);
		for (int i = 0; i < lines.length; i++)
		{
			MInvoiceLine line = lines[i];
			if (line.isDescription())
				continue;
			DocLine docLine = new DocLine(line, this);
			//	Qty
			BigDecimal Qty = line.getQtyInvoiced();
			boolean cm = getDocumentType().equals(DOCTYPE_ARCredit)
				|| getDocumentType().equals(DOCTYPE_APCredit);
			docLine.setQty(cm ? Qty.negate() : Qty, invoice.isSOTrx());
			//
			BigDecimal LineNetAmt = line.getLineNetAmt();
			BigDecimal PriceList = line.getPriceList();
			int C_Tax_ID = docLine.getC_Tax_ID();
			//	Correct included Tax
			if (isTaxIncluded() && C_Tax_ID != 0)
			{
				MTax tax = MTax.get(getCtx(), C_Tax_ID);
				if (!tax.isZeroTax())
				{
					BigDecimal LineNetAmtTax = tax.calculateTax(LineNetAmt, true, getStdPrecision());
					if (log.isLoggable(Level.FINE)) log.fine("LineNetAmt=" + LineNetAmt + " - Tax=" + LineNetAmtTax);
					LineNetAmt = LineNetAmt.subtract(LineNetAmtTax);

					if (tax.isSummary()) {
						BigDecimal sumChildLineNetAmtTax = Env.ZERO;
						DocTax taxToApplyDiff = null;
						for (MTax childTax : tax.getChildTaxes(false)) {
							if (!childTax.isZeroTax())
							{
								BigDecimal childLineNetAmtTax = childTax.calculateTax(LineNetAmt, false, getStdPrecision());
								if (log.isLoggable(Level.FINE)) log.fine("LineNetAmt=" + LineNetAmt + " - Child Tax=" + childLineNetAmtTax);
								for (int t = 0; t < m_taxes.length; t++)
								{
									if (m_taxes[t].getC_Tax_ID() == childTax.getC_Tax_ID())
									{
										m_taxes[t].addIncludedTax(childLineNetAmtTax);
										taxToApplyDiff = m_taxes[t];
										sumChildLineNetAmtTax = sumChildLineNetAmtTax.add(childLineNetAmtTax);
										break;
									}
								}
							}
						}
						BigDecimal diffChildVsSummary = LineNetAmtTax.subtract(sumChildLineNetAmtTax);
						if (diffChildVsSummary.signum() != 0 && taxToApplyDiff != null) {
							taxToApplyDiff.addIncludedTax(diffChildVsSummary);
						}
					} else {
						for (int t = 0; t < m_taxes.length; t++)
						{
							if (m_taxes[t].getC_Tax_ID() == C_Tax_ID)
							{
								m_taxes[t].addIncludedTax(LineNetAmtTax);
								break;
							}
						}
					}
					
					BigDecimal PriceListTax = tax.calculateTax(PriceList, true, getStdPrecision());
					PriceList = PriceList.subtract(PriceListTax);
				}
			}	//	correct included Tax
			
			// LBR
			LineNetAmt = adjustIncludedLBRTaxes(line, LineNetAmt);

			docLine.setAmount (LineNetAmt, PriceList, Qty);	//	qty for discount calc
			if (docLine.isItem())
				m_allLinesService = false;
			else
				m_allLinesItem = false;
			//
			if (log.isLoggable(Level.FINE)) log.fine(docLine.toString());
			list.add(docLine);
		}

		//	Convert to Array
		DocLine[] dls = new DocLine[list.size()];
		list.toArray(dls);

/*		//	Included Tax - make sure that no difference
		if (isTaxIncluded())
		{
			for (int i = 0; i < m_taxes.length; i++)
			{
				if (m_taxes[i].isIncludedTaxDifference())
				{
					BigDecimal diff = m_taxes[i].getIncludedTaxDifference();
					for (int j = 0; j < dls.length; j++)
					{
						MTax lineTax = MTax.get(getCtx(), dls[j].getC_Tax_ID());
						MTax[] composingTaxes = null;
						if (lineTax.isSummary()) {
							composingTaxes = lineTax.getChildTaxes(false);
						} else {
							composingTaxes = new MTax[1];
							composingTaxes[0] = lineTax;
						}
						for (MTax mTax : composingTaxes) {
							if (mTax.getC_Tax_ID() == m_taxes[i].getC_Tax_ID())
							{
								dls[j].setLineNetAmtDifference(diff);
								m_taxes[i].addIncludedTax(diff.negate());
								diff = Env.ZERO;
								break;
							}
						}
						if (diff.signum() == 0) {
							break;
						}
					}	//	for all lines
				}	//	tax difference
			}	//	for all taxes
		}	//	Included Tax difference
*/
		//	Return Array
		return dls;
	}	//	loadLines

	/**
	 * 	Get Currency Precision
	 *	@return precision
	 */
	private int getStdPrecision()
	{
		if (m_precision == -1)
			m_precision = MCurrency.getStdPrecision(getCtx(), getC_Currency_ID());
		return m_precision;
	}	//	getPrecision


	/**************************************************************************
	 *  Get Source Currency Balance - subtracts line and tax amounts from total - no rounding
	 *  @return positive amount, if total invoice is bigger than lines
	 */
	public BigDecimal getBalance()
	{
		BigDecimal retValue = Env.ZERO;
		StringBuilder sb = new StringBuilder (" [");
		//  Total
		retValue = retValue.add(getAmount(Doc.AMTTYPE_Gross));
		sb.append(getAmount(Doc.AMTTYPE_Gross));
		//  - Header Charge
		retValue = retValue.subtract(getAmount(Doc.AMTTYPE_Charge));
		sb.append("-").append(getAmount(Doc.AMTTYPE_Charge));
		//  - Tax
		for (int i = 0; i < m_taxes.length; i++)
		{
			retValue = retValue.subtract(m_taxes[i].getAmount());
			sb.append("-").append(m_taxes[i].getAmount());
		}
		//  - Lines
		for (int i = 0; i < p_lines.length; i++)
		{
			retValue = retValue.subtract(p_lines[i].getAmtSource());
			sb.append("-").append(p_lines[i].getAmtSource());
		}
		sb.append("]");
		//
		if (log.isLoggable(Level.FINE)) log.fine(toString() + " Balance=" + retValue + sb.toString());
		return retValue;
	}   //  getBalance

	/**
	 *  Create Facts (the accounting logic) for
	 *  ARI, ARC, ARF, API, APC.
	 *  <pre>
	 *  ARI, ARF
	 *      Receivables     DR
	 *      Charge                  CR
	 *      TaxDue                  CR
	 *      Revenue                 CR
	 *
	 *  ARC
	 *      Receivables             CR
	 *      Charge          DR
	 *      TaxDue          DR
	 *      Revenue         RR
	 *
	 *  API
	 *      Payables                CR
	 *      Charge          DR
	 *      TaxCredit       DR
	 *      Expense         DR
	 *
	 *  APC
	 *      Payables        DR
	 *      Charge                  CR
	 *      TaxCredit               CR
	 *      Expense                 CR
	 *  </pre>
	 *  @param as accounting schema
	 *  @return Fact
	 */
	public ArrayList<Fact> createFacts (MAcctSchema as)
	{
		//
		ArrayList<Fact> facts = new ArrayList<Fact>();
		//  create Fact Header
		Fact fact = new Fact(this, as, Fact.POST_Actual);

		//  Cash based accounting
		if (!as.isAccrual())
			return facts;

		//  ** ARI, ARF
		if (getDocumentType().equals(DOCTYPE_ARInvoice)
			|| getDocumentType().equals(DOCTYPE_ARProForma))
		{
			BigDecimal grossAmt = getAmount(Doc.AMTTYPE_Gross);
			BigDecimal serviceAmt = Env.ZERO;

			//  Header Charge           CR
			BigDecimal amt = getAmount(Doc.AMTTYPE_Charge);
			if (amt != null && amt.signum() != 0)
				fact.createLine(null, getAccount(Doc.ACCTTYPE_Charge, as),
					getC_Currency_ID(), null, amt);
			// LBR Taxes
			for (int i = 0; i < m_LBRTaxes.length; i++)	{
				// IMPOSTO A RECOLHER
				amt = m_LBRTaxes[i].getAmount();
				if (amt != null && amt.signum() != 0)
				{
					FactLine tl = fact.createLine(null, m_LBRTaxes[i].getAccount(DocTax.ACCTTYPE_TaxDue, as),
						getC_Currency_ID(), null, amt);
					if (tl != null) {
						tl.setC_Tax_ID(m_LBRTaxes[i].getC_Tax_ID());
						tl.setM_Product_ID(m_LBRTaxes[i].getM_Product_ID());
						tl.setC_Project_ID(m_LBRTaxes[i].getC_Project_ID());
						tl.setC_Activity_ID(m_LBRTaxes[i].getC_Activity_ID());
						tl.setC_Campaign_ID(m_LBRTaxes[i].getC_Campaign_ID());
						tl.setUser1_ID(m_LBRTaxes[i].getUser1_ID());
						tl.setUser2_ID(m_LBRTaxes[i].getUser2_ID());
						tl.setA_Asset_ID(m_LBRTaxes[i].getA_Asset_ID());
					}
				}
				
				// DESPESA
				if (m_LBRTaxes[i].getIncludedTax() != null && m_LBRTaxes[i].getIncludedTax().signum() == 1) {
					amt = m_LBRTaxes[i].getAmount();
					if (amt != null && amt.signum() != 0)
					{
						FactLine tl = fact.createLine(null, m_LBRTaxes[i].getAccount(DocTax.ACCTTYPE_TaxExpense, as),
							getC_Currency_ID(), amt, null);
						if (tl != null) {
							tl.setC_Tax_ID(m_LBRTaxes[i].getC_Tax_ID());
							tl.setM_Product_ID(m_LBRTaxes[i].getM_Product_ID());
							tl.setC_Project_ID(m_LBRTaxes[i].getC_Project_ID());
							tl.setC_Activity_ID(m_LBRTaxes[i].getC_Activity_ID());
							tl.setC_Campaign_ID(m_LBRTaxes[i].getC_Campaign_ID());
							tl.setUser1_ID(m_LBRTaxes[i].getUser1_ID());
							tl.setUser2_ID(m_LBRTaxes[i].getUser2_ID());
							tl.setA_Asset_ID(m_LBRTaxes[i].getA_Asset_ID());
						}
					}
				}
			}

			//  Revenue                 CR
			for (int i = 0; i < p_lines.length; i++)
			{
				amt = p_lines[i].getAmtSource();
				BigDecimal dAmt = null;
				if (as.isTradeDiscountPosted())
				{
					BigDecimal discount = p_lines[i].getDiscount();
					if (discount != null && discount.signum() != 0)
					{
						amt = amt.add(discount);
						dAmt = discount;
						fact.createLine (p_lines[i],
								p_lines[i].getAccount(ProductCost.ACCTTYPE_P_TDiscountGrant, as),
								getC_Currency_ID(), dAmt, null);
					}
				}
				fact.createLine (p_lines[i],
					p_lines[i].getAccount(ProductCost.ACCTTYPE_P_Revenue, as),
					getC_Currency_ID(), null, amt);
				if (!p_lines[i].isItem())
				{
					grossAmt = grossAmt.subtract(amt);
					serviceAmt = serviceAmt.add(amt);
				}
			}
			//  Set Locations
			FactLine[] fLines = fact.getLines();
			for (int i = 0; i < fLines.length; i++)
			{
				if (fLines[i] != null)
				{
					fLines[i].setLocationFromOrg(fLines[i].getAD_Org_ID(), true);      //  from Loc
					fLines[i].setLocationFromBPartner(getC_BPartner_Location_ID(), false);  //  to Loc
				}
			}

			//  Receivables     DR
			int receivables_ID = getValidCombination_ID(Doc.ACCTTYPE_C_Receivable, as);
			int receivablesServices_ID = getValidCombination_ID (Doc.ACCTTYPE_C_Receivable_Services, as);
			if (m_allLinesItem || !as.isPostServices()
				|| receivables_ID == receivablesServices_ID)
			{
				grossAmt = getAmount(Doc.AMTTYPE_Gross);
				serviceAmt = Env.ZERO;
			}
			else if (m_allLinesService)
			{
				serviceAmt = getAmount(Doc.AMTTYPE_Gross);
				grossAmt = Env.ZERO;
			}
			if (grossAmt.signum() != 0)
				fact.createLine(null, MAccount.get(getCtx(), receivables_ID),
					getC_Currency_ID(), grossAmt, null);
			if (serviceAmt.signum() != 0)
				fact.createLine(null, MAccount.get(getCtx(), receivablesServices_ID),
					getC_Currency_ID(), serviceAmt, null);
		}
		//  ARC
		else if (getDocumentType().equals(DOCTYPE_ARCredit))
		{
			BigDecimal grossAmt = getAmount(Doc.AMTTYPE_Gross);
			BigDecimal serviceAmt = Env.ZERO;

			//  Header Charge   DR
			BigDecimal amt = getAmount(Doc.AMTTYPE_Charge);
			if (amt != null && amt.signum() != 0)
				fact.createLine(null, getAccount(Doc.ACCTTYPE_Charge, as),
					getC_Currency_ID(), amt, null);
			// LBR Taxes
			for (int i = 0; i < m_LBRTaxes.length; i++)	{
				// IMPOSTO A RECUPERAR
				amt = m_LBRTaxes[i].getAmount();
				if (amt != null && amt.signum() != 0)
				{
					FactLine tl = fact.createLine(null, m_LBRTaxes[i].getAccount(DocTax.ACCTTYPE_TaxCredit, as),
						getC_Currency_ID(), amt, null);
					if (tl != null) {
						tl.setC_Tax_ID(m_LBRTaxes[i].getC_Tax_ID());
						tl.setM_Product_ID(m_LBRTaxes[i].getM_Product_ID());
						tl.setC_Project_ID(m_LBRTaxes[i].getC_Project_ID());
						tl.setC_Activity_ID(m_LBRTaxes[i].getC_Activity_ID());
						tl.setC_Campaign_ID(m_LBRTaxes[i].getC_Campaign_ID());
						tl.setUser1_ID(m_LBRTaxes[i].getUser1_ID());
						tl.setUser2_ID(m_LBRTaxes[i].getUser2_ID());
						tl.setA_Asset_ID(m_LBRTaxes[i].getA_Asset_ID());
					}
				}
				
				// DESPESA
				if (m_LBRTaxes[i].getIncludedTax() != null && m_LBRTaxes[i].getIncludedTax().signum() == 1) {
					amt = m_LBRTaxes[i].getAmount();
					if (amt != null && amt.signum() != 0)
					{
						FactLine tl = fact.createLine(null, m_LBRTaxes[i].getAccount(DocTax.ACCTTYPE_TaxExpense, as),
							getC_Currency_ID(), null, amt);
						if (tl != null) {
							tl.setC_Tax_ID(m_LBRTaxes[i].getC_Tax_ID());
							tl.setM_Product_ID(m_LBRTaxes[i].getM_Product_ID());
							tl.setC_Project_ID(m_LBRTaxes[i].getC_Project_ID());
							tl.setC_Activity_ID(m_LBRTaxes[i].getC_Activity_ID());
							tl.setC_Campaign_ID(m_LBRTaxes[i].getC_Campaign_ID());
							tl.setUser1_ID(m_LBRTaxes[i].getUser1_ID());
							tl.setUser2_ID(m_LBRTaxes[i].getUser2_ID());
							tl.setA_Asset_ID(m_LBRTaxes[i].getA_Asset_ID());
						}
					}
				}
			}
			//  Revenue         CR
			for (int i = 0; i < p_lines.length; i++)
			{
				amt = p_lines[i].getAmtSource();
				BigDecimal dAmt = null;
				if (as.isTradeDiscountPosted())
				{
					BigDecimal discount = p_lines[i].getDiscount();
					if (discount != null && discount.signum() != 0)
					{
						amt = amt.add(discount);
						dAmt = discount;
						fact.createLine (p_lines[i],
								p_lines[i].getAccount (ProductCost.ACCTTYPE_P_TDiscountGrant, as),
								getC_Currency_ID(), null, dAmt);
					}
				}
				
				// LBR
				MAccount pRevenueReturnAcct = MLBRAccountUtil.getProductAccount(p_lines[i].getM_Product_ID(), MLBRAccountUtil.ACCTTYPE_LBR_P_RevenueReturn, as);
				
				// If LBR account not set, use default from core
				if (pRevenueReturnAcct == null)
					pRevenueReturnAcct = p_lines[i].getAccount(ProductCost.ACCTTYPE_P_Revenue, as);
				
				fact.createLine (p_lines[i],
					pRevenueReturnAcct,
					getC_Currency_ID(), amt, null);
				if (!p_lines[i].isItem())
				{
					grossAmt = grossAmt.subtract(amt);
					serviceAmt = serviceAmt.add(amt);
				}
			}
			//  Set Locations
			FactLine[] fLines = fact.getLines();
			for (int i = 0; i < fLines.length; i++)
			{
				if (fLines[i] != null)
				{
					fLines[i].setLocationFromOrg(fLines[i].getAD_Org_ID(), true);      //  from Loc
					fLines[i].setLocationFromBPartner(getC_BPartner_Location_ID(), false);  //  to Loc
				}
			}
			//  Receivables             CR
			int receivables_ID = getValidCombination_ID (Doc.ACCTTYPE_C_Receivable, as);
			int receivablesServices_ID = getValidCombination_ID (Doc.ACCTTYPE_C_Receivable_Services, as);
			if (m_allLinesItem || !as.isPostServices()
				|| receivables_ID == receivablesServices_ID)
			{
				grossAmt = getAmount(Doc.AMTTYPE_Gross);
				serviceAmt = Env.ZERO;
			}
			else if (m_allLinesService)
			{
				serviceAmt = getAmount(Doc.AMTTYPE_Gross);
				grossAmt = Env.ZERO;
			}
			if (grossAmt.signum() != 0)
				fact.createLine(null, MAccount.get(getCtx(), receivables_ID),
					getC_Currency_ID(), null, grossAmt);
			if (serviceAmt.signum() != 0)
				fact.createLine(null, MAccount.get(getCtx(), receivablesServices_ID),
					getC_Currency_ID(), null, serviceAmt);
		}

		//  ** API
		else if (getDocumentType().equals(DOCTYPE_APInvoice))
		{
			BigDecimal grossAmt = getAmount(Doc.AMTTYPE_Gross);
			BigDecimal serviceAmt = Env.ZERO;

			//  Charge          DR
			fact.createLine(null, getAccount(Doc.ACCTTYPE_Charge, as),
				getC_Currency_ID(), getAmount(Doc.AMTTYPE_Charge), null);
			// LBR Taxes
			for (int i = 0; i < m_LBRTaxes.length; i++)	{
				boolean recuperavel = !m_LBRTaxes[i].isSalesTax();
				BigDecimal amt;
				
				// Monophase NCM
				if (m_LBRTaxes[i].getLBR_DocLine_Details_ID() > 0) {
					MLBRDocLineDetails details = new MLBRDocLineDetails(getCtx(), m_LBRTaxes[i].getLBR_DocLine_Details_ID(), getTrxName());
					
					if (details.getLBR_NCM() != null) {
						if (MLBRNCMMono.isMonophase(m_LBRTaxes[i].getC_Tax_ID(), details.getLBR_NCM().getValue()))
							recuperavel = false;
					}
				} //
				
				if (recuperavel) {
					// IMPOSTO A RECUPERAR
					amt = m_LBRTaxes[i].getAmount();
					if (amt != null && amt.signum() != 0)
					{
						FactLine tl = fact.createLine(null, m_LBRTaxes[i].getAccount(DocTax.ACCTTYPE_TaxCredit, as),
							getC_Currency_ID(), amt, null);
						if (tl != null) {
							tl.setC_Tax_ID(m_LBRTaxes[i].getC_Tax_ID());
							tl.setM_Product_ID(m_LBRTaxes[i].getM_Product_ID());
							tl.setC_Project_ID(m_LBRTaxes[i].getC_Project_ID());
							tl.setC_Activity_ID(m_LBRTaxes[i].getC_Activity_ID());
							tl.setC_Campaign_ID(m_LBRTaxes[i].getC_Campaign_ID());
							tl.setUser1_ID(m_LBRTaxes[i].getUser1_ID());
							tl.setUser2_ID(m_LBRTaxes[i].getUser2_ID());
							tl.setA_Asset_ID(m_LBRTaxes[i].getA_Asset_ID());
						}
					}
				}
			}
			//  Expense         DR
			for (int i = 0; i < p_lines.length; i++)
			{
				DocLine line = p_lines[i];
				boolean landedCost = landedCost(as, fact, line, true);
				if (landedCost && as.isExplicitCostAdjustment())
				{
					fact.createLine (line, line.getAccount(ProductCost.ACCTTYPE_P_Expense, as),
						getC_Currency_ID(), line.getAmtSource(), null);
					//
					FactLine fl = fact.createLine (line, line.getAccount(ProductCost.ACCTTYPE_P_Expense, as),
						getC_Currency_ID(), null, line.getAmtSource());
					String desc = line.getDescription();
					if (desc == null)
						desc = "100%";
					else
						desc += " 100%";
					fl.setDescription(desc);
				}
				if (!landedCost)
				{
					MAccount expense = line.getAccount(ProductCost.ACCTTYPE_P_Expense, as);
					if (line.isItem())
						expense = line.getAccount (ProductCost.ACCTTYPE_P_InventoryClearing, as);
					BigDecimal amt = line.getAmtSource();
					BigDecimal dAmt = null;
					if (as.isTradeDiscountPosted() && !line.isItem())
					{
						BigDecimal discount = line.getDiscount();
						if (discount != null && discount.signum() != 0)
						{
							amt = amt.add(discount);
							dAmt = discount;
							MAccount tradeDiscountReceived = line.getAccount(ProductCost.ACCTTYPE_P_TDiscountRec, as);
							fact.createLine (line, tradeDiscountReceived,
									getC_Currency_ID(), null, dAmt);
						}
					}
					fact.createLine (line, expense,
						getC_Currency_ID(), amt, null);
					if (!line.isItem())
					{
						grossAmt = grossAmt.subtract(amt);
						serviceAmt = serviceAmt.add(amt);
					}
					//
					if (line.getM_Product_ID() != 0
						&& line.getProduct().isService())	//	otherwise Inv Matching
						MCostDetail.createInvoice(as, line.getAD_Org_ID(),
							line.getM_Product_ID(), line.getM_AttributeSetInstance_ID(),
							line.get_ID(), 0,		//	No Cost Element
							line.getAmtSource(), line.getQty(),
							line.getDescription(), getTrxName());
				}
			}
			//  Set Locations
			FactLine[] fLines = fact.getLines();
			for (int i = 0; i < fLines.length; i++)
			{
				if (fLines[i] != null)
				{
					fLines[i].setLocationFromBPartner(getC_BPartner_Location_ID(), true);  //  from Loc
					fLines[i].setLocationFromOrg(fLines[i].getAD_Org_ID(), false);    //  to Loc
				}
			}

			//  Liability               CR
			int payables_ID = getValidCombination_ID (Doc.ACCTTYPE_V_Liability, as);
			int payablesServices_ID = getValidCombination_ID (Doc.ACCTTYPE_V_Liability_Services, as);
			if (m_allLinesItem || !as.isPostServices()
				|| payables_ID == payablesServices_ID)
			{
				grossAmt = getAmount(Doc.AMTTYPE_Gross);
				serviceAmt = Env.ZERO;
			}
			else if (m_allLinesService)
			{
				serviceAmt = getAmount(Doc.AMTTYPE_Gross);
				grossAmt = Env.ZERO;
			}
			if (grossAmt.signum() != 0)
				fact.createLine(null, MAccount.get(getCtx(), payables_ID),
					getC_Currency_ID(), null, grossAmt);
			if (serviceAmt.signum() != 0)
				fact.createLine(null, MAccount.get(getCtx(), payablesServices_ID),
					getC_Currency_ID(), null, serviceAmt);
			//
			updateProductPO(as);	//	Only API
		}
		//  APC
		else if (getDocumentType().equals(DOCTYPE_APCredit))
		{
			BigDecimal grossAmt = getAmount(Doc.AMTTYPE_Gross);
			BigDecimal serviceAmt = Env.ZERO;
			//  Charge                  CR
			fact.createLine (null, getAccount(Doc.ACCTTYPE_Charge, as),
				getC_Currency_ID(), null, getAmount(Doc.AMTTYPE_Charge));
			// LBR Taxes
			for (int i = 0; i < m_LBRTaxes.length; i++)	{
				boolean recuperavel = !m_LBRTaxes[i].isSalesTax();
				BigDecimal amt;
				
				// Monophase NCM
				if (m_LBRTaxes[i].getLBR_DocLine_Details_ID() > 0) {
					MLBRDocLineDetails details = new MLBRDocLineDetails(getCtx(), m_LBRTaxes[i].getLBR_DocLine_Details_ID(), getTrxName());
					
					if (details.getLBR_NCM() != null) {
						if (MLBRNCMMono.isMonophase(m_LBRTaxes[i].getC_Tax_ID(), details.getLBR_NCM().getValue()))
							recuperavel = false;
					}
				} //
				
				if (recuperavel) {
					// IMPOSTO A RECOLHER
					amt = m_LBRTaxes[i].getAmount();
					if (amt != null && amt.signum() != 0)
					{
						FactLine tl = fact.createLine(null, m_LBRTaxes[i].getAccount(DocTax.ACCTTYPE_TaxDue, as),
							getC_Currency_ID(), null, amt);
						if (tl != null) {
							tl.setC_Tax_ID(m_LBRTaxes[i].getC_Tax_ID());
							tl.setM_Product_ID(m_LBRTaxes[i].getM_Product_ID());
							tl.setC_Project_ID(m_LBRTaxes[i].getC_Project_ID());
							tl.setC_Activity_ID(m_LBRTaxes[i].getC_Activity_ID());
							tl.setC_Campaign_ID(m_LBRTaxes[i].getC_Campaign_ID());
							tl.setUser1_ID(m_LBRTaxes[i].getUser1_ID());
							tl.setUser2_ID(m_LBRTaxes[i].getUser2_ID());
							tl.setA_Asset_ID(m_LBRTaxes[i].getA_Asset_ID());
						}
					}
				}
			}
			//  Expense                 CR
			for (int i = 0; i < p_lines.length; i++)
			{
				DocLine line = p_lines[i];
				boolean landedCost = landedCost(as, fact, line, false);
				if (landedCost && as.isExplicitCostAdjustment())
				{
					fact.createLine (line, line.getAccount(ProductCost.ACCTTYPE_P_Expense, as),
						getC_Currency_ID(), null, line.getAmtSource());
					//
					FactLine fl = fact.createLine (line, line.getAccount(ProductCost.ACCTTYPE_P_Expense, as),
						getC_Currency_ID(), line.getAmtSource(), null);
					String desc = line.getDescription();
					if (desc == null)
						desc = "100%";
					else
						desc += " 100%";
					fl.setDescription(desc);
				}
				if (!landedCost)
				{
					MAccount expense = line.getAccount(ProductCost.ACCTTYPE_P_Expense, as);
					if (line.isItem())
						expense = line.getAccount (ProductCost.ACCTTYPE_P_InventoryClearing, as);
					BigDecimal amt = line.getAmtSource();
					BigDecimal dAmt = null;
					if (as.isTradeDiscountPosted() && !line.isItem())
					{
						BigDecimal discount = line.getDiscount();
						if (discount != null && discount.signum() != 0)
						{
							amt = amt.add(discount);
							dAmt = discount;
							MAccount tradeDiscountReceived = line.getAccount(ProductCost.ACCTTYPE_P_TDiscountRec, as);
							fact.createLine (line, tradeDiscountReceived,
									getC_Currency_ID(), dAmt, null);
						}
					}
					fact.createLine (line, expense,
						getC_Currency_ID(), null, amt);
					if (!line.isItem())
					{
						grossAmt = grossAmt.subtract(amt);
						serviceAmt = serviceAmt.add(amt);
					}
					//
					if (line.getM_Product_ID() != 0
						&& line.getProduct().isService())	//	otherwise Inv Matching
						MCostDetail.createInvoice(as, line.getAD_Org_ID(),
							line.getM_Product_ID(), line.getM_AttributeSetInstance_ID(),
							line.get_ID(), 0,		//	No Cost Element
							line.getAmtSource().negate(), line.getQty(),
							line.getDescription(), getTrxName());
				}
			}
			//  Set Locations
			FactLine[] fLines = fact.getLines();
			for (int i = 0; i < fLines.length; i++)
			{
				if (fLines[i] != null)
				{
					fLines[i].setLocationFromBPartner(getC_BPartner_Location_ID(), true);  //  from Loc
					fLines[i].setLocationFromOrg(fLines[i].getAD_Org_ID(), false);    //  to Loc
				}
			}
			//  Liability       DR
			int payables_ID = getValidCombination_ID (Doc.ACCTTYPE_V_Liability, as);
			int payablesServices_ID = getValidCombination_ID (Doc.ACCTTYPE_V_Liability_Services, as);
			if (m_allLinesItem || !as.isPostServices()
				|| payables_ID == payablesServices_ID)
			{
				grossAmt = getAmount(Doc.AMTTYPE_Gross);
				serviceAmt = Env.ZERO;
			}
			else if (m_allLinesService)
			{
				serviceAmt = getAmount(Doc.AMTTYPE_Gross);
				grossAmt = Env.ZERO;
			}
			if (grossAmt.signum() != 0)
				fact.createLine(null, MAccount.get(getCtx(), payables_ID),
					getC_Currency_ID(), grossAmt, null);
			if (serviceAmt.signum() != 0)
				fact.createLine(null, MAccount.get(getCtx(), payablesServices_ID),
					getC_Currency_ID(), serviceAmt, null);
		}
		else
		{
			p_Error = "DocumentType unknown: " + getDocumentType();
			log.log(Level.SEVERE, p_Error);
			fact = null;
		}
		//
		facts.add(fact);
		return facts;
	}   //  createFact

	/**
	 * 	Create Fact Cash Based (i.e. only revenue/expense)
	 *	@param as accounting schema
	 *	@param fact fact to add lines to
	 *	@param multiplier source amount multiplier
	 *	@return accounted amount
	 */
	public BigDecimal createFactCash (MAcctSchema as, Fact fact, BigDecimal multiplier)
	{
		boolean creditMemo = getDocumentType().equals(DOCTYPE_ARCredit)
			|| getDocumentType().equals(DOCTYPE_APCredit);
		boolean payables = getDocumentType().equals(DOCTYPE_APInvoice)
			|| getDocumentType().equals(DOCTYPE_APCredit);
		BigDecimal acctAmt = Env.ZERO;
		FactLine fl = null;
		//	Revenue/Cost
		for (int i = 0; i < p_lines.length; i++)
		{
			DocLine line = p_lines[i];
			boolean landedCost = false;
			if  (payables)
				landedCost = landedCost(as, fact, line, false);
			if (landedCost && as.isExplicitCostAdjustment())
			{
				fact.createLine (line, line.getAccount(ProductCost.ACCTTYPE_P_Expense, as),
					getC_Currency_ID(), null, line.getAmtSource());
				//
				fl = fact.createLine (line, line.getAccount(ProductCost.ACCTTYPE_P_Expense, as),
					getC_Currency_ID(), line.getAmtSource(), null);
				String desc = line.getDescription();
				if (desc == null)
					desc = "100%";
				else
					desc += " 100%";
				fl.setDescription(desc);
			}
			if (!landedCost)
			{
				MAccount acct = line.getAccount(
					payables ? ProductCost.ACCTTYPE_P_Expense : ProductCost.ACCTTYPE_P_Revenue, as);
				if (payables)
				{
					//	if Fixed Asset
					if (line.isItem())
						acct = line.getAccount (ProductCost.ACCTTYPE_P_InventoryClearing, as);
				}
				BigDecimal amt = line.getAmtSource().multiply(multiplier);
				BigDecimal amt2 = null;
				if (creditMemo)
				{
					amt2 = amt;
					amt = null;
				}
				if (payables)	//	Vendor = DR
					fl = fact.createLine (line, acct,
						getC_Currency_ID(), amt, amt2);
				else			//	Customer = CR
					fl = fact.createLine (line, acct,
						getC_Currency_ID(), amt2, amt);
				if (fl != null)
					acctAmt = acctAmt.add(fl.getAcctBalance());
			}
		}
		//  Tax
		for (int i = 0; i < m_taxes.length; i++)
		{
			BigDecimal amt = m_taxes[i].getAmount();
			BigDecimal amt2 = null;
			if (creditMemo)
			{
				amt2 = amt;
				amt = null;
			}
			FactLine tl = null;
			if (payables)
				tl = fact.createLine (null, m_taxes[i].getAccount(m_taxes[i].getAPTaxType(), as),
					getC_Currency_ID(), amt, amt2);
			else
				tl = fact.createLine (null, m_taxes[i].getAccount(DocTax.ACCTTYPE_TaxDue, as),
					getC_Currency_ID(), amt2, amt);
			if (tl != null)
				tl.setC_Tax_ID(m_taxes[i].getC_Tax_ID());
		}
		//  Set Locations
		FactLine[] fLines = fact.getLines();
		for (int i = 0; i < fLines.length; i++)
		{
			if (fLines[i] != null)
			{
				if (payables)
				{
					fLines[i].setLocationFromBPartner(getC_BPartner_Location_ID(), true);  //  from Loc
					fLines[i].setLocationFromOrg(fLines[i].getAD_Org_ID(), false);    //  to Loc
				}
				else
				{
					fLines[i].setLocationFromOrg(fLines[i].getAD_Org_ID(), true);    //  from Loc
					fLines[i].setLocationFromBPartner(getC_BPartner_Location_ID(), false);  //  to Loc
				}
			}
		}
		return acctAmt;
	}	//	createFactCash


	/**
	 * 	Create Landed Cost accounting & Cost lines
	 *	@param as accounting schema
	 *	@param fact fact
	 *	@param line document line
	 *	@param dr DR entry (normal api)
	 *	@return true if landed costs were created
	 */
	protected boolean landedCost (MAcctSchema as, Fact fact, DocLine line, boolean dr)
	{
		int C_InvoiceLine_ID = line.get_ID();
		MLandedCostAllocation[] lcas = MLandedCostAllocation.getOfInvoiceLine(
			getCtx(), C_InvoiceLine_ID, getTrxName());
		if (lcas.length == 0)
			return false;

		//	Calculate Total Base
		double totalBase = 0;
		for (int i = 0; i < lcas.length; i++)
			totalBase += lcas[i].getBase().doubleValue();

		Map<String, BigDecimal> costDetailAmtMap = new HashMap<String, BigDecimal>();
		
		//	Create New
		MInvoiceLine il = new MInvoiceLine (getCtx(), C_InvoiceLine_ID, getTrxName());
		for (int i = 0; i < lcas.length; i++)
		{
			MLandedCostAllocation lca = lcas[i];
			if (lca.getBase().signum() == 0)
				continue;
			double percent = lca.getBase().doubleValue() / totalBase;
			String desc = il.getDescription();
			if (desc == null)
				desc = percent + "%";
			else
				desc += " - " + percent + "%";
			if (line.getDescription() != null)
				desc += " - " + line.getDescription();

			// Accounting			
			BigDecimal drAmt = null;
			BigDecimal crAmt = null;
			MAccount account = null;
			ProductCost pc = new ProductCost (Env.getCtx(),
					lca.getM_Product_ID(), lca.getM_AttributeSetInstance_ID(), getTrxName());
			String costingMethod = pc.getProduct().getCostingMethod(as);
			if (X_M_Cost.COSTINGMETHOD_AverageInvoice.equals(costingMethod) || X_M_Cost.COSTINGMETHOD_AveragePO.equals(costingMethod))
			{
			
				BigDecimal allocationAmt =  lca.getAmt();																		
				BigDecimal estimatedAmt = BigDecimal.ZERO;
				int oCurrencyId = 0;
				boolean usesSchemaCurrency = false;
				Timestamp oDateAcct = getDateAcct();
				if (lca.getM_InOutLine_ID() > 0)
				{
					I_M_InOutLine iol = lca.getM_InOutLine();
					if (iol.getC_OrderLine_ID() > 0)
					{
						oCurrencyId =  iol.getC_OrderLine().getC_Currency_ID();
						oDateAcct = iol.getC_OrderLine().getC_Order().getDateAcct();
						MOrderLandedCostAllocation[] allocations = MOrderLandedCostAllocation.getOfOrderLine(iol.getC_OrderLine_ID(), getTrxName());
						for(MOrderLandedCostAllocation allocation : allocations)
						{
							if (allocation.getC_OrderLandedCost().getM_CostElement_ID() != lca.getM_CostElement_ID())
								continue;
							
							BigDecimal amt = allocation.getAmt();
							BigDecimal qty = allocation.getQty();
							if (qty.compareTo(iol.getMovementQty()) != 0)
							{
								amt = amt.multiply(iol.getMovementQty()).divide(qty, 12, BigDecimal.ROUND_HALF_UP);
							}
							estimatedAmt = estimatedAmt.add(amt); 
						}
					}
				}
				
				if (estimatedAmt.scale() > as.getCostingPrecision())
				{
					estimatedAmt = estimatedAmt.setScale(as.getCostingPrecision(), BigDecimal.ROUND_HALF_UP);
				}
				BigDecimal costAdjustmentAmt = allocationAmt;
				if (estimatedAmt.signum() > 0)
				{					
					//get other allocation amt
					StringBuilder sql = new StringBuilder("SELECT Sum(Amt) FROM C_LandedCostAllocation WHERE M_InOutLine_ID=? ")
						.append("AND C_LandedCostAllocation_ID<>? ")
						.append("AND M_CostElement_ID=? ")
						.append("AND AD_Client_ID=? ");
					BigDecimal otherAmt = DB.getSQLValueBD(getTrxName(), sql.toString(), lca.getM_InOutLine_ID(), lca.getC_LandedCostAllocation_ID(), 
							lca.getM_CostElement_ID(), lca.getAD_Client_ID());
					if (otherAmt != null) 
					{
						estimatedAmt = estimatedAmt.subtract(otherAmt);
						if (allocationAmt.signum() < 0)
						{
							//add back since the sum above would include the original trx
							estimatedAmt = estimatedAmt.add(allocationAmt.negate());
						}
					}	
					//added for IDEMPIERE-3014
					//convert to accounting schema currency
					if (estimatedAmt.signum() > 0 && oCurrencyId != getC_Currency_ID())
					{
						estimatedAmt = MConversionRate.convert(getCtx(), estimatedAmt,
								oCurrencyId, as.getC_Currency_ID(),
								oDateAcct, getC_ConversionType_ID(),
								getAD_Client_ID(), getAD_Org_ID());

						allocationAmt = MConversionRate.convert(getCtx(), allocationAmt,
								getC_Currency_ID(), as.getC_Currency_ID(),
								getDateAcct(), getC_ConversionType_ID(),
								getAD_Client_ID(), getAD_Org_ID());
						setC_Currency_ID(as.getC_Currency_ID());
						usesSchemaCurrency = true;
					}

					if (estimatedAmt.signum() > 0)
					{						
						if (allocationAmt.signum() > 0)
							costAdjustmentAmt = allocationAmt.subtract(estimatedAmt);
						else if (allocationAmt.signum() < 0)
							costAdjustmentAmt = allocationAmt.add(estimatedAmt);
					}
				}
				
				if (!dr)
					costAdjustmentAmt = costAdjustmentAmt.negate();
	
				boolean zeroQty = false;
				if (costAdjustmentAmt.signum() != 0)
				{
					Trx trx = Trx.get(getTrxName(), false);
					Savepoint savepoint = null;					
					try {
						savepoint = trx.setSavepoint(null);
						BigDecimal costDetailAmt = costAdjustmentAmt;
						//convert to accounting schema currency
						if (getC_Currency_ID() != as.getC_Currency_ID())
							costDetailAmt = MConversionRate.convert(getCtx(), costDetailAmt,
								getC_Currency_ID(), as.getC_Currency_ID(),
								getDateAcct(), getC_ConversionType_ID(),
								getAD_Client_ID(), getAD_Org_ID());
						if (costDetailAmt.scale() > as.getCostingPrecision())
							costDetailAmt = costDetailAmt.setScale(as.getCostingPrecision(), BigDecimal.ROUND_HALF_UP);
						
						String key = lca.getM_Product_ID()+"_"+lca.getM_AttributeSetInstance_ID();
						BigDecimal prevAmt = costDetailAmtMap.remove(key);
						if (prevAmt != null) {
							costDetailAmt = costDetailAmt.add(prevAmt);
						}
						costDetailAmtMap.put(key, costDetailAmt);
						if (!MCostDetail.createInvoice(as, lca.getAD_Org_ID(),
								lca.getM_Product_ID(), lca.getM_AttributeSetInstance_ID(),
								C_InvoiceLine_ID, lca.getM_CostElement_ID(),
								costDetailAmt, lca.getQty(),
								desc, getTrxName())) {
							throw new RuntimeException("Failed to create cost detail record.");
						}				
					} catch (SQLException e) {
						throw new RuntimeException(e.getLocalizedMessage(), e);
					} catch (AverageCostingZeroQtyException e) {
						zeroQty = true;
						try {
							trx.rollback(savepoint);
							savepoint = null;
						} catch (SQLException e1) {
							throw new RuntimeException(e1.getLocalizedMessage(), e1);
						}
					} finally {
						if (savepoint != null) {
							try {
								trx.releaseSavepoint(savepoint);
							} catch (SQLException e) {}
						}
					}
				}
								
				boolean reversal = false;
				if (allocationAmt.signum() < 0) //reversal
				{
					allocationAmt = allocationAmt.negate();
					reversal = true;
				}
				
				if (allocationAmt.signum() > 0)
				{
					if (allocationAmt.scale() > as.getStdPrecision())
					{
						allocationAmt = allocationAmt.setScale(as.getStdPrecision(), BigDecimal.ROUND_HALF_UP);
					}
					if (estimatedAmt.scale() > as.getStdPrecision())
					{
						estimatedAmt = estimatedAmt.setScale(as.getStdPrecision(), BigDecimal.ROUND_HALF_UP);
					}
					int compare = allocationAmt.compareTo(estimatedAmt);
					if (compare > 0)
					{
						drAmt = dr ? (reversal ? null : estimatedAmt): (reversal ? estimatedAmt : null);
						crAmt = dr ? (reversal ? estimatedAmt : null): (reversal ? null : estimatedAmt);						
						account = pc.getAccount(ProductCost.ACCTTYPE_P_LandedCostClearing, as);
						FactLine fl = fact.createLine (line, account, getC_Currency_ID(), drAmt, crAmt);
						fl.setDescription(desc);
						fl.setM_Product_ID(lca.getM_Product_ID());
						fl.setQty(line.getQty());
						
						BigDecimal overAmt = allocationAmt.subtract(estimatedAmt);
						drAmt = dr ? (reversal ? null : overAmt) : (reversal ? overAmt : null);
						crAmt = dr ? (reversal ? overAmt : null) : (reversal ? null : overAmt);
						account = zeroQty ? pc.getAccount(ProductCost.ACCTTYPE_P_AverageCostVariance, as) : pc.getAccount(ProductCost.ACCTTYPE_P_Asset, as);
						fl = fact.createLine (line, account, getC_Currency_ID(), drAmt, crAmt);
						fl.setDescription(desc);
						fl.setM_Product_ID(lca.getM_Product_ID());
						fl.setQty(line.getQty());
					}
					else if (compare < 0)
					{
						drAmt = dr ? (reversal ? null : estimatedAmt) : (reversal ? estimatedAmt : null);
						crAmt = dr ? (reversal ? estimatedAmt : null) : (reversal ? null : estimatedAmt);
						account = pc.getAccount(ProductCost.ACCTTYPE_P_LandedCostClearing, as);
						FactLine fl = fact.createLine (line, account, getC_Currency_ID(), drAmt, crAmt);
						fl.setDescription(desc);
						fl.setM_Product_ID(lca.getM_Product_ID());
						fl.setQty(line.getQty());
						
						BigDecimal underAmt = estimatedAmt.subtract(allocationAmt);
						drAmt = dr ? (reversal ? underAmt : null) : (reversal ? null : underAmt);
						crAmt = dr ? (reversal ? null : underAmt) : (reversal ? underAmt : null);
						account = zeroQty ? pc.getAccount(ProductCost.ACCTTYPE_P_AverageCostVariance, as) : pc.getAccount(ProductCost.ACCTTYPE_P_Asset, as);
						fl = fact.createLine (line, account, getC_Currency_ID(), drAmt, crAmt);
						fl.setDescription(desc);
						fl.setM_Product_ID(lca.getM_Product_ID());
						fl.setQty(line.getQty());
					}
					else
					{
						drAmt = dr ? (reversal ? null : allocationAmt) : (reversal ? allocationAmt : null);
						crAmt = dr ? (reversal ? allocationAmt : null) : (reversal ? null : allocationAmt);
						account = pc.getAccount(ProductCost.ACCTTYPE_P_LandedCostClearing, as);
						FactLine fl = fact.createLine (line, account, getC_Currency_ID(), drAmt, crAmt);
						fl.setDescription(desc);
						fl.setM_Product_ID(lca.getM_Product_ID());
						fl.setQty(line.getQty());
					}
				}				
				if (usesSchemaCurrency)
					setC_Currency_ID(line.getC_Currency_ID());
			} 
			else 
			{
				if (dr)
					drAmt = lca.getAmt();
				else
					crAmt = lca.getAmt();
				account = pc.getAccount(ProductCost.ACCTTYPE_P_CostAdjustment, as);
				FactLine fl = fact.createLine (line, account, getC_Currency_ID(), drAmt, crAmt);
				fl.setDescription(desc);
				fl.setM_Product_ID(lca.getM_Product_ID());
				fl.setQty(line.getQty());
			}
		}

		if (log.isLoggable(Level.CONFIG)) log.config("Created #" + lcas.length);
		return true;
	}	//	landedCosts

	/**
	 * 	Update ProductPO PriceLastInv
	 *	@param as accounting schema
	 */
	protected void updateProductPO (MAcctSchema as)
	{
		MClientInfo ci = MClientInfo.get(getCtx(), as.getAD_Client_ID());
		if (ci.getC_AcctSchema1_ID() != as.getC_AcctSchema_ID())
			return;

		StringBuilder sql = new StringBuilder (
			"UPDATE M_Product_PO po ")
			 .append("SET PriceLastInv = ")
			//	select
			.append("(SELECT currencyConvert(il.PriceActual,i.C_Currency_ID,po.C_Currency_ID,i.DateInvoiced,i.C_ConversionType_ID,i.AD_Client_ID,i.AD_Org_ID) ")
			.append("FROM C_Invoice i, C_InvoiceLine il ")
			.append("WHERE i.C_Invoice_ID=il.C_Invoice_ID")
			.append(" AND po.M_Product_ID=il.M_Product_ID AND po.C_BPartner_ID=i.C_BPartner_ID");
			//jz + " AND ROWNUM=1 AND i.C_Invoice_ID=").append(get_ID()).append(") ")
			if (DB.isOracle()) //jz
			{
				sql.append(" AND ROWNUM=1 ");
			}
			else
			{
				sql.append(" AND il.C_InvoiceLine_ID = (SELECT MIN(il1.C_InvoiceLine_ID) ")
						.append("FROM C_Invoice i1, C_InvoiceLine il1 ")
						.append("WHERE i1.C_Invoice_ID=il1.C_Invoice_ID")
						.append(" AND po.M_Product_ID=il1.M_Product_ID AND po.C_BPartner_ID=i1.C_BPartner_ID")
						.append("  AND i1.C_Invoice_ID=").append(get_ID()).append(") ");
			}
			sql.append("  AND i.C_Invoice_ID=").append(get_ID()).append(") ")
			//	update
			.append("WHERE EXISTS (SELECT * ")
			.append("FROM C_Invoice i, C_InvoiceLine il ")
			.append("WHERE i.C_Invoice_ID=il.C_Invoice_ID")
			.append(" AND po.M_Product_ID=il.M_Product_ID AND po.C_BPartner_ID=i.C_BPartner_ID")
			.append(" AND i.C_Invoice_ID=").append(get_ID()).append(")");
		int no = DB.executeUpdate(sql.toString(), getTrxName());
		if (log.isLoggable(Level.FINE)) log.fine("Updated=" + no);
	}	//	updateProductPO
	
	/**
	 *  Ajusta os valores dos lançamentos de acordo com os impostos de cada linha do doumento.
	 *  O método possui as regras-padrão para os impostos recuperáveis e não recuperáveis, bem
	 *  como os inclúsos e os não inclúsos no valor da linha.
	 *  
	 *  Impostos recuperáveis: os impostos recuperáveis, pagos na aquisição de mercadorias são aqueles
	 *  cujo valor a empresa compradora pode creditar para ser deduzido do valor do imposto da mesma
	 *  espécie devido sobre a revenda de mercadorias.
	 *  
	 *  A implementação é propositalmente repetitiva para facilitar a leitura, o entendimento e a
	 *  customização em empresas que possuem exceções e regras diferenciadas das regras-padrão.
	 *  
	 * <pre> 
	 * ============================ COMPRA ============================
	 * 1) Recuperável e incluído no preço do produto
	 * - Imposto a Recuperar: valor do imposto
	 * - Custo do Produto: valor da linha menos o valor do imposto
	 *
	 *		PIS A RECUPERAR 		10,00		
	 * 		CUSTO DO PRODUTO 		90,00		
	 * 		DUPLICATAS A PAGAR 					100,00
	 *
	 * 2) Recuperável e não incluído no preço do produto
	 * - Imposto a Recuperar: valor do imposto
	 * - Custo do Produto: valor da linha
	 *
	 * 		IPI A RECUPERAR 		 10,00
	 * 		CUSTO DO PRODUTO		100,00
	 * 		DUPLICATAS A PAGAR 					110,00
	 *
	 * 3) Não recuperável e incluído no preço do produto
	 * - Custo do Produto: valor da linha
	 *
	 * 		CUSTO DO PRODUTO 		100,00
	 * 		DUPLICATAS A PAGAR 					100,00
	 * 
	 * 4) Não recuperável e não incluído no preço do produto
	 * - Custo do Produto: valor da linha mais o valor do imposto
	 *
	 * 		CUSTO DO PRODUTO 		110,00
	 * 		DUPLICATAS A PAGAR 					110,00
	 *
	 * ============================ VENDA ============================
	 * 1) Incluído no preço do produto
	 * - Imposto a Recolher: valor do imposto
	 * - Despesa: valor do imposto
	 * - Receita de Vendas: valor da linha
	 *
	 * 		PIS A RECOLHER 						 10,00
	 * 		DESPESA PIS 			 10,00
	 * 		RECEITA DE VENDAS 					100,00
	 * 		DUPLICATAS A RECEBER	100,00	
	 *
	 * 2) Não incluído no preço do produto
	 * - Imposto a Recolher: valor do imposto
	 * - Receita de Vendas: valor da linha
	 *
	 *		IPI A RECOLHER 					  	 10,00
	 * 		RECEITA DE VENDAS 					100,00
	 * 		DUPLICATAS A RECEBER 	110,00
	 * </pre> 
	 *
	 *  @param line 		invoice line
	 *  @param lineNetAmt	line net amount
	 *  @return BigDecimal
	 */
	private BigDecimal adjustIncludedLBRTaxes(MInvoiceLine line, BigDecimal lineNetAmt) {
		ArrayList<DocTax> list = new ArrayList<DocTax>();
		MLBRDocLineDetailsTax details = MLBRDocLineDetailsTax.getOfPO(line);
		
		if (details != null) {
			// Details
			if (details.getSurcharges() != null)
				lineNetAmt = lineNetAmt.add(details.getSurcharges());
			
			if (details.getFreightAmt() != null)
				lineNetAmt = lineNetAmt.add(details.getFreightAmt());
			
			if (details.getInsuredAmount() != null)
				lineNetAmt = lineNetAmt.add(details.getInsuredAmount());
			
			if (details.getDiscountAmt() != null)
				lineNetAmt = lineNetAmt.subtract(details.getDiscountAmt());
			
			// ICMS and ICMS-ST
			MLBRDocLineICMS[] icmsLines = MLBRDocLineICMS.getOfDetails(details);
			if (icmsLines.length > 0) {
				MLBRDocLineICMS icms = icmsLines[0];
				
				// ICMS
				if (icms.getLBR_TaxAmt() != null) {
					for (int t = 0; t < m_taxes.length; t++) {
						MTax tax = new MTax(getCtx(), m_taxes[t].getC_Tax_ID(), getTrxName());
						if (tax.get_ValueAsInt("LBR_TaxGroup_ID") == MLBRTax.getTaxGroupID(MLBRTax.TAX_GROUP_ICMS_NAME))	{
							DocTax LBRTaxLine = new DocTax(tax.getC_Tax_ID(), tax.getName(), tax.getRate(),
								icms.getLBR_TaxBaseAmt(), icms.getLBR_TaxAmt(), tax.isSalesTax());
							LBRTaxLine = getUpdatedDocTax(LBRTaxLine, line, details);
							boolean isTaxIncluded = icms.isTaxIncluded();
							
							// COMPRA
							if (!isSOTrx()) {
								// Caso possui ICMS-ST, não recupera o ICMS
								if (icms.getLBR_ICMSST_TaxAmt() != null && icms.getLBR_ICMSST_TaxAmt().signum() != 0)
									break;
									
								boolean recuperavel = !tax.isSalesTax();
								
								// Monophase NCM
								if (MLBRNCMMono.isMonophase(tax.get_ID(), details.getLBR_NCM().getValue())) {
									recuperavel = false;
									isTaxIncluded = true;
								}
								
								// Recuperável e incluído no preço do produto
								if (recuperavel && isTaxIncluded) {
									lineNetAmt = lineNetAmt.subtract(icms.getLBR_TaxAmt());
									m_taxes[t].addIncludedTax(icms.getLBR_TaxAmt());
									LBRTaxLine.addIncludedTax(icms.getLBR_TaxAmt());
								}
								// Recuperável e não incluído no preço do produto
								else if (recuperavel && !isTaxIncluded) {
									//
								}
								// Não recuperável e incluído no preço do produto
								else if (!recuperavel && isTaxIncluded) {
									m_taxes[t].addIncludedTax(icms.getLBR_TaxAmt());
									LBRTaxLine.addIncludedTax(icms.getLBR_TaxAmt());
								}
								// Não recuperável e não incluído no preço do produto
								else if (!recuperavel && !isTaxIncluded) {
									lineNetAmt = lineNetAmt.add(icms.getLBR_TaxAmt());
								}
							// VENDA
							} else {
								// Incluído no preço do produto
								if (isTaxIncluded) {
									m_taxes[t].addIncludedTax(icms.getLBR_TaxAmt());
									LBRTaxLine.addIncludedTax(icms.getLBR_TaxAmt());
								}
								// Não incluído no preço do produto
								else if (!isTaxIncluded) {
									//
								}
							}
							
							list.add(LBRTaxLine);
							break;
						}
					}
				}
				
				// ICMS-ST
				if (icms.getLBR_ICMSST_TaxAmt() != null) {
					for (int t = 0; t < m_taxes.length; t++) {
						MTax tax = new MTax(getCtx(), m_taxes[t].getC_Tax_ID(), getTrxName());
						if (tax.get_ValueAsInt("LBR_TaxGroup_ID") == MLBRTax.getTaxGroupID(MLBRTax.TAX_GROUP_ICMSST_NAME))	{
							DocTax LBRTaxLine = new DocTax(tax.getC_Tax_ID(), tax.getName(), tax.getRate(),
									icms.getLBR_ICMSST_TaxBaseAmt(), icms.getLBR_ICMSST_TaxAmt(), tax.isSalesTax());
							LBRTaxLine = getUpdatedDocTax(LBRTaxLine, line, details);
							boolean isTaxIncluded = icms.isLBR_ICMSST_IsTaxIncluded();
							
							// COMPRA
							if (!isSOTrx()) {
								boolean recuperavel = !tax.isSalesTax();
								
								// Monophase NCM
								if (MLBRNCMMono.isMonophase(tax.get_ID(), details.getLBR_NCM().getValue())) {
									recuperavel = false;
									isTaxIncluded = true;
								}
								
								// Recuperável e incluído no preço do produto
								if (recuperavel && isTaxIncluded) {
									lineNetAmt = lineNetAmt.subtract(icms.getLBR_ICMSST_TaxAmt());
									m_taxes[t].addIncludedTax(icms.getLBR_ICMSST_TaxAmt());
									LBRTaxLine.addIncludedTax(icms.getLBR_ICMSST_TaxAmt());
								}
								// Recuperável e não incluído no preço do produto
								else if (recuperavel && !isTaxIncluded) {
									//
								}
								// Não recuperável e incluído no preço do produto
								else if (!recuperavel && isTaxIncluded) {
									m_taxes[t].addIncludedTax(icms.getLBR_ICMSST_TaxAmt());
									LBRTaxLine.addIncludedTax(icms.getLBR_ICMSST_TaxAmt());
								}
								// Não recuperável e não incluído no preço do produto
								else if (!recuperavel && !isTaxIncluded) {
									lineNetAmt = lineNetAmt.add(icms.getLBR_ICMSST_TaxAmt());
								}
							// VENDA
							} else {
								// Incluído no preço do produto
								if (isTaxIncluded) {
									m_taxes[t].addIncludedTax(icms.getLBR_ICMSST_TaxAmt());
									LBRTaxLine.addIncludedTax(icms.getLBR_ICMSST_TaxAmt());
								}
								// Não incluído no preço do produto
								else if (!isTaxIncluded) {
									//
								}
							}
							
							list.add(LBRTaxLine);
							break;
						}
					}
				}
			}
			
			// IPI
			MLBRDocLineIPI[] ipiLines = MLBRDocLineIPI.getOfDetails(details);
			if (ipiLines.length > 0) {
				MLBRDocLineIPI ipi = ipiLines[0];
				
				if (ipi.getLBR_TaxAmt() != null) {
					for (int t = 0; t < m_taxes.length; t++) {
						MTax tax = new MTax(getCtx(), m_taxes[t].getC_Tax_ID(), getTrxName());
						if (tax.get_ValueAsInt("LBR_TaxGroup_ID") == MLBRTax.getTaxGroupID(MLBRTax.TAX_GROUP_IPI_NAME))	{
							DocTax LBRTaxLine = new DocTax(tax.getC_Tax_ID(), tax.getName(), tax.getRate(),
									ipi.getLBR_TaxBaseAmt(), ipi.getLBR_TaxAmt(), tax.isSalesTax());
							LBRTaxLine = getUpdatedDocTax(LBRTaxLine, line, details);
							boolean isTaxIncluded = ipi.isTaxIncluded();
							
							// COMPRA
							if (!isSOTrx()) {
								boolean recuperavel = !tax.isSalesTax();
								
								// Monophase NCM
								if (MLBRNCMMono.isMonophase(tax.get_ID(), details.getLBR_NCM().getValue())) {
									recuperavel = false;
									isTaxIncluded = true;
								}
								
								// Recuperável e incluído no preço do produto
								if (recuperavel && isTaxIncluded) {
									lineNetAmt = lineNetAmt.subtract(ipi.getLBR_TaxAmt());
									m_taxes[t].addIncludedTax(ipi.getLBR_TaxAmt());
									LBRTaxLine.addIncludedTax(ipi.getLBR_TaxAmt());
								}
								// Recuperável e não incluído no preço do produto
								else if (recuperavel && !isTaxIncluded) {
									//
								}
								// Não recuperável e incluído no preço do produto
								else if (!recuperavel && isTaxIncluded) {
									m_taxes[t].addIncludedTax(ipi.getLBR_TaxAmt());
									LBRTaxLine.addIncludedTax(ipi.getLBR_TaxAmt());
								}
								// Não recuperável e não incluído no preço do produto
								else if (!recuperavel && !isTaxIncluded) {
									lineNetAmt = lineNetAmt.add(ipi.getLBR_TaxAmt());
								}
							// VENDA
							} else {
								// Incluído no preço do produto
								if (isTaxIncluded) {
									m_taxes[t].addIncludedTax(ipi.getLBR_TaxAmt());
									LBRTaxLine.addIncludedTax(ipi.getLBR_TaxAmt());
								}
								// Não incluído no preço do produto
								else if (!isTaxIncluded) {
									//
								}
							}
							
							list.add(LBRTaxLine);
							break;
						}
					}
				}
			}
			
			// PIS
			MLBRDocLinePIS[] pisLines = MLBRDocLinePIS.getOfDetails(details);
			if (pisLines.length > 0) {
				MLBRDocLinePIS pis = pisLines[0];
				
				if (pis.getLBR_TaxAmt() != null) {
					for (int t = 0; t < m_taxes.length; t++) {
						MTax tax = new MTax(getCtx(), m_taxes[t].getC_Tax_ID(), getTrxName());
						if (tax.get_ValueAsInt("LBR_TaxGroup_ID") == MLBRTax.getTaxGroupID(MLBRTax.TAX_GROUP_PIS_NAME))	{
							DocTax LBRTaxLine = new DocTax(tax.getC_Tax_ID(), tax.getName(), tax.getRate(),
									pis.getLBR_TaxBaseAmt(), pis.getLBR_TaxAmt(), tax.isSalesTax());
							LBRTaxLine = getUpdatedDocTax(LBRTaxLine, line, details);
							boolean isTaxIncluded = pis.isTaxIncluded();
							
							// COMPRA
							if (!isSOTrx()) {
								boolean recuperavel = !tax.isSalesTax();
								
								// Monophase NCM
								if (MLBRNCMMono.isMonophase(tax.get_ID(), details.getLBR_NCM().getValue())) {
									recuperavel = false;
									isTaxIncluded = true;
								}
								
								// Recuperável e incluído no preço do produto
								if (recuperavel && isTaxIncluded) {
									lineNetAmt = lineNetAmt.subtract(pis.getLBR_TaxAmt());
									m_taxes[t].addIncludedTax(pis.getLBR_TaxAmt());
									LBRTaxLine.addIncludedTax(pis.getLBR_TaxAmt());
								}
								// Recuperável e não incluído no preço do produto
								else if (recuperavel && !isTaxIncluded) {
									//
								}
								// Não recuperável e incluído no preço do produto
								else if (!recuperavel && isTaxIncluded) {
									m_taxes[t].addIncludedTax(pis.getLBR_TaxAmt());
									LBRTaxLine.addIncludedTax(pis.getLBR_TaxAmt());
								}
								// Não recuperável e não incluído no preço do produto
								else if (!recuperavel && !isTaxIncluded) {
									lineNetAmt = lineNetAmt.add(pis.getLBR_TaxAmt());
								}
							// VENDA
							} else {
								// Incluído no preço do produto
								if (isTaxIncluded) {
									m_taxes[t].addIncludedTax(pis.getLBR_TaxAmt());
									LBRTaxLine.addIncludedTax(pis.getLBR_TaxAmt());
								}
								// Não incluído no preço do produto
								else if (!isTaxIncluded) {
									//
								}
							}
							
							list.add(LBRTaxLine);
							break;
						}
					}
				}
			}
			
			// COFINS
			MLBRDocLineCOFINS[] cofinsLines = MLBRDocLineCOFINS.getOfDetails(details);
			if (cofinsLines.length > 0) {
				MLBRDocLineCOFINS cofins = cofinsLines[0];
				
				if (cofins.getLBR_TaxAmt() != null) {
					for (int t = 0; t < m_taxes.length; t++) {
						MTax tax = new MTax(getCtx(), m_taxes[t].getC_Tax_ID(), getTrxName());
						if (tax.get_ValueAsInt("LBR_TaxGroup_ID") == MLBRTax.getTaxGroupID(MLBRTax.TAX_GROUP_COFINS_NAME))	{
							DocTax LBRTaxLine = new DocTax(tax.getC_Tax_ID(), tax.getName(), tax.getRate(),
									cofins.getLBR_TaxBaseAmt(), cofins.getLBR_TaxAmt(), tax.isSalesTax());
							LBRTaxLine = getUpdatedDocTax(LBRTaxLine, line, details);
							boolean isTaxIncluded = cofins.isTaxIncluded();
							
							// COMPRA
							if (!isSOTrx()) {
								boolean recuperavel = !tax.isSalesTax();
								
								// Monophase NCM
								if (MLBRNCMMono.isMonophase(tax.get_ID(), details.getLBR_NCM().getValue())) {
									recuperavel = false;
									isTaxIncluded = true;
								}
								
								// Recuperável e incluído no preço do produto
								if (recuperavel && isTaxIncluded) {
									lineNetAmt = lineNetAmt.subtract(cofins.getLBR_TaxAmt());
									m_taxes[t].addIncludedTax(cofins.getLBR_TaxAmt());
									LBRTaxLine.addIncludedTax(cofins.getLBR_TaxAmt());
								}
								// Recuperável e não incluído no preço do produto
								else if (recuperavel && !isTaxIncluded) {
									//
								}
								// Não recuperável e incluído no preço do produto
								else if (!recuperavel && isTaxIncluded) {
									m_taxes[t].addIncludedTax(cofins.getLBR_TaxAmt());
									LBRTaxLine.addIncludedTax(cofins.getLBR_TaxAmt());
								}
								// Não recuperável e não incluído no preço do produto
								else if (!recuperavel && !isTaxIncluded) {
									lineNetAmt = lineNetAmt.add(cofins.getLBR_TaxAmt());
								}
							// VENDA
							} else {
								// Incluído no preço do produto
								if (isTaxIncluded) {
									m_taxes[t].addIncludedTax(cofins.getLBR_TaxAmt());
									LBRTaxLine.addIncludedTax(cofins.getLBR_TaxAmt());
								}
								// Não incluído no preço do produto
								else if (!isTaxIncluded()) {
									//
								}
							}
							
							list.add(LBRTaxLine);
							break;
						}
					}
				}
			}
			
			// II
			MLBRDocLineImportTax[] iiLines = MLBRDocLineImportTax.getOfDetails(details);
			if (iiLines.length > 0) {
				MLBRDocLineImportTax ii = iiLines[0];
				
				if (ii.getLBR_TaxAmt() != null) {
					for (int t = 0; t < m_taxes.length; t++) {
						MTax tax = new MTax(getCtx(), m_taxes[t].getC_Tax_ID(), getTrxName());
						if (tax.get_ValueAsInt("LBR_TaxGroup_ID") == MLBRTax.getTaxGroupID(MLBRTax.TAX_GROUP_II_NAME)) {
							DocTax LBRTaxLine = new DocTax(tax.getC_Tax_ID(), tax.getName(), tax.getRate(),
									ii.getLBR_TaxBaseAmt(), ii.getLBR_TaxAmt(), tax.isSalesTax());
							LBRTaxLine = getUpdatedDocTax(LBRTaxLine, line, details);
							boolean isTaxIncluded = ii.isTaxIncluded();
							
							// COMPRA
							if (!isSOTrx()) {
								boolean recuperavel = !tax.isSalesTax();
								
								// Monophase NCM
								if (MLBRNCMMono.isMonophase(tax.get_ID(), details.getLBR_NCM().getValue())) {
									recuperavel = false;
									isTaxIncluded = true;
								}
								
								// Recuperável e incluído no preço do produto
								if (recuperavel && isTaxIncluded) {
									lineNetAmt = lineNetAmt.subtract(ii.getLBR_TaxAmt());
									m_taxes[t].addIncludedTax(ii.getLBR_TaxAmt());
									LBRTaxLine.addIncludedTax(ii.getLBR_TaxAmt());
								}
								// Recuperável e não incluído no preço do produto
								else if (recuperavel && !isTaxIncluded) {
									//
								}
								// Não recuperável e incluído no preço do produto
								else if (!recuperavel && isTaxIncluded) {
									m_taxes[t].addIncludedTax(ii.getLBR_TaxAmt());
									LBRTaxLine.addIncludedTax(ii.getLBR_TaxAmt());
								}
								// Não recuperável e não incluído no preço do produto
								else if (!recuperavel && !isTaxIncluded) {
									lineNetAmt = lineNetAmt.add(ii.getLBR_TaxAmt());
								}
							// VENDA
							} else {
								// Incluído no preço do produto
								if (isTaxIncluded) {
									m_taxes[t].addIncludedTax(ii.getLBR_TaxAmt());
									LBRTaxLine.addIncludedTax(ii.getLBR_TaxAmt());
								}
								// Não incluído no preço do produto
								else if (!isTaxIncluded) {
									//
								}
							}
							
							list.add(LBRTaxLine);
							break;
						}
					}
				}
			}
			
			// ISSQN
			MLBRDocLineISSQN[] issqnLines = MLBRDocLineISSQN.getOfDetails(details);
			if (issqnLines.length > 0) {
				MLBRDocLineISSQN issqn = issqnLines[0];
				
				if (issqn.getLBR_TaxAmt() != null) {
					for (int t = 0; t < m_taxes.length; t++) {
						MTax tax = new MTax(getCtx(), m_taxes[t].getC_Tax_ID(), getTrxName());
						if (tax.get_ValueAsInt("LBR_TaxGroup_ID") == MLBRTax.getTaxGroupID(MLBRTax.TAX_GROUP_ISSQN_NAME))	{
							DocTax LBRTaxLine = new DocTax(tax.getC_Tax_ID(), tax.getName(), tax.getRate(),
									issqn.getLBR_TaxBaseAmt(), issqn.getLBR_TaxAmt(), tax.isSalesTax());
							LBRTaxLine = getUpdatedDocTax(LBRTaxLine, line, details);
							boolean isTaxIncluded = issqn.isTaxIncluded();
							
							// COMPRA
							if (!isSOTrx()) {
								boolean recuperavel = !tax.isSalesTax();
								
								// Monophase NCM
								if (MLBRNCMMono.isMonophase(tax.get_ID(), details.getLBR_NCM().getValue())) {
									recuperavel = false;
									isTaxIncluded = true;
								}
								
								// Recuperável e incluído no preço do produto
								if (recuperavel && isTaxIncluded) {
									lineNetAmt = lineNetAmt.subtract(issqn.getLBR_TaxAmt());
									m_taxes[t].addIncludedTax(issqn.getLBR_TaxAmt());
									LBRTaxLine.addIncludedTax(issqn.getLBR_TaxAmt());
								}
								// Recuperável e não incluído no preço do produto
								else if (recuperavel && !isTaxIncluded) {
									//
								}
								// Não recuperável e incluído no preço do produto
								else if (!recuperavel && isTaxIncluded) {
									m_taxes[t].addIncludedTax(issqn.getLBR_TaxAmt());
									LBRTaxLine.addIncludedTax(issqn.getLBR_TaxAmt());
								}
								// Não recuperável e não incluído no preço do produto
								else if (!recuperavel && !isTaxIncluded) {
									lineNetAmt = lineNetAmt.add(issqn.getLBR_TaxAmt());
								}
							// VENDA
							} else {
								// Incluído no preço do produto
								if (isTaxIncluded) {
									m_taxes[t].addIncludedTax(issqn.getLBR_TaxAmt());
									LBRTaxLine.addIncludedTax(issqn.getLBR_TaxAmt());
								}
								// Não incluído no preço do produto
								else if (!isTaxIncluded) {
									//
								}
							}
							
							list.add(LBRTaxLine);
							break;
						}
					}
				}
			}
		}
		
		if (m_LBRTaxes != null)
			list.addAll(Arrays.asList(m_LBRTaxes));	
		
		DocTax[] tl = new DocTax[list.size()];
		list.toArray(tl);
		m_LBRTaxes = tl;
		
		return lineNetAmt;
	}
	
	private DocTax getUpdatedDocTax(DocTax docTax, MInvoiceLine line, MLBRDocLineDetailsTax details) {
		if (line.getM_Product_ID() > 0)
			docTax.setM_Product_ID(line.getM_Product_ID());
		if (line.getC_Project_ID() > 0)
			docTax.setC_Project_ID(line.getC_Project_ID());
		if (line.getC_Activity_ID() > 0)
			docTax.setC_Activity_ID(line.getC_Activity_ID());
		if (line.getC_Campaign_ID() > 0)
			docTax.setC_Campaign_ID(line.getC_Campaign_ID());
		if (line.getUser1_ID() > 0)
			docTax.setUser1_ID(line.getUser1_ID());
		if (line.getUser2_ID() > 0)
			docTax.setUser2_ID(line.getUser2_ID());
		if (line.getA_Asset_ID() > 0)
			docTax.setA_Asset_ID(line.getA_Asset_ID());
		if (details != null)
			docTax.setLBR_DocLine_Details_ID(details.get_ID());

		return docTax;
	}
	
}   //  Doc_Invoice
