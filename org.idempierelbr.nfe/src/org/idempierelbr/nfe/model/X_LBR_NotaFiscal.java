/******************************************************************************
 * Product: iDempiere ERP & CRM Smart Business Solution                       *
 * Copyright (C) 1999-2012 ComPiere, Inc. All Rights Reserved.                *
 * This program is free software, you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY, without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program, if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 * For the text or an alternative of this public license, you may reach us    *
 * ComPiere, Inc., 2620 Augustine Dr. #245, Santa Clara, CA 95054, USA        *
 * or via info@compiere.org or http://www.compiere.org/license.html           *
 *****************************************************************************/
/** Generated Model - DO NOT CHANGE */
package org.idempierelbr.nfe.model;

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.Properties;
import org.compiere.model.*;
import org.compiere.util.Env;
import org.compiere.util.KeyNamePair;

/** Generated Model for LBR_NotaFiscal
 *  @author iDempiere (generated) 
 *  @version Release 7.1 - $Id$ */
public class X_LBR_NotaFiscal extends PO implements I_LBR_NotaFiscal, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20210311L;

    /** Standard Constructor */
    public X_LBR_NotaFiscal (Properties ctx, int LBR_NotaFiscal_ID, String trxName)
    {
      super (ctx, LBR_NotaFiscal_ID, trxName);
      /** if (LBR_NotaFiscal_ID == 0)
        {
			setC_BPartner_ID (0);
			setC_BPartner_Location_ID (0);
			setC_City_ID (0);
			setC_DocType_ID (0);
// 0
			setC_Region_ID (0);
			setDateAcct (new Timestamp( System.currentTimeMillis() ));
// @#Date@
			setDateDoc (new Timestamp( System.currentTimeMillis() ));
			setDocAction (null);
// CO
			setDocStatus (null);
// DR
			setDocumentNo (null);
			setIsTaxIncluded (true);
// Y
			setLBR_FinNFe (null);
// 1
			setLBR_IsDocIssuedByOrg (false);
// N
			setLBR_NFE_DestinationType (null);
			setLBR_NFeIndFinal (null);
			setLBR_NFeIndPres (null);
			setLBR_NFeNatOp (null);
			setLBR_NFE_OperationType (null);
// 1
			setLBR_NFeTpEmis (null);
// 1
			setLBR_NotaFiscal_ID (0);
			setPaymentRule (null);
// 0
			setPosted (false);
// N
			setProcessed (false);
        } */
    }

    /** Load Constructor */
    public X_LBR_NotaFiscal (Properties ctx, ResultSet rs, String trxName)
    {
      super (ctx, rs, trxName);
    }

    /** AccessLevel
      * @return 1 - Org 
      */
    protected int get_AccessLevel()
    {
      return accessLevel.intValue();
    }

    /** Load Meta Data */
    protected POInfo initPO (Properties ctx)
    {
      POInfo poi = POInfo.getPOInfo (ctx, Table_ID, get_TrxName());
      return poi;
    }

    public String toString()
    {
      StringBuffer sb = new StringBuffer ("X_LBR_NotaFiscal[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	public org.compiere.model.I_C_BPartner getC_BPartner() throws RuntimeException
    {
		return (org.compiere.model.I_C_BPartner)MTable.get(getCtx(), org.compiere.model.I_C_BPartner.Table_Name)
			.getPO(getC_BPartner_ID(), get_TrxName());	}

	/** Set Business Partner .
		@param C_BPartner_ID 
		Identifies a Business Partner
	  */
	public void setC_BPartner_ID (int C_BPartner_ID)
	{
		if (C_BPartner_ID < 1) 
			set_Value (COLUMNNAME_C_BPartner_ID, null);
		else 
			set_Value (COLUMNNAME_C_BPartner_ID, Integer.valueOf(C_BPartner_ID));
	}

	/** Get Business Partner .
		@return Identifies a Business Partner
	  */
	public int getC_BPartner_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_BPartner_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.compiere.model.I_C_BPartner_Location getC_BPartner_Location() throws RuntimeException
    {
		return (org.compiere.model.I_C_BPartner_Location)MTable.get(getCtx(), org.compiere.model.I_C_BPartner_Location.Table_Name)
			.getPO(getC_BPartner_Location_ID(), get_TrxName());	}

	/** Set Partner Location.
		@param C_BPartner_Location_ID 
		Identifies the (ship to) address for this Business Partner
	  */
	public void setC_BPartner_Location_ID (int C_BPartner_Location_ID)
	{
		if (C_BPartner_Location_ID < 1) 
			set_Value (COLUMNNAME_C_BPartner_Location_ID, null);
		else 
			set_Value (COLUMNNAME_C_BPartner_Location_ID, Integer.valueOf(C_BPartner_Location_ID));
	}

	/** Get Partner Location.
		@return Identifies the (ship to) address for this Business Partner
	  */
	public int getC_BPartner_Location_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_BPartner_Location_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.compiere.model.I_C_City getC_City() throws RuntimeException
    {
		return (org.compiere.model.I_C_City)MTable.get(getCtx(), org.compiere.model.I_C_City.Table_Name)
			.getPO(getC_City_ID(), get_TrxName());	}

	/** Set City.
		@param C_City_ID 
		City
	  */
	public void setC_City_ID (int C_City_ID)
	{
		if (C_City_ID < 1) 
			set_Value (COLUMNNAME_C_City_ID, null);
		else 
			set_Value (COLUMNNAME_C_City_ID, Integer.valueOf(C_City_ID));
	}

	/** Get City.
		@return City
	  */
	public int getC_City_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_City_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.compiere.model.I_C_DocType getC_DocType() throws RuntimeException
    {
		return (org.compiere.model.I_C_DocType)MTable.get(getCtx(), org.compiere.model.I_C_DocType.Table_Name)
			.getPO(getC_DocType_ID(), get_TrxName());	}

	/** Set Document Type.
		@param C_DocType_ID 
		Document type or rules
	  */
	public void setC_DocType_ID (int C_DocType_ID)
	{
		if (C_DocType_ID < 0) 
			set_ValueNoCheck (COLUMNNAME_C_DocType_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_C_DocType_ID, Integer.valueOf(C_DocType_ID));
	}

	/** Get Document Type.
		@return Document type or rules
	  */
	public int getC_DocType_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_DocType_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.compiere.model.I_C_Invoice getC_Invoice() throws RuntimeException
    {
		return (org.compiere.model.I_C_Invoice)MTable.get(getCtx(), org.compiere.model.I_C_Invoice.Table_Name)
			.getPO(getC_Invoice_ID(), get_TrxName());	}

	/** Set Invoice.
		@param C_Invoice_ID 
		Invoice Identifier
	  */
	public void setC_Invoice_ID (int C_Invoice_ID)
	{
		if (C_Invoice_ID < 1) 
			set_Value (COLUMNNAME_C_Invoice_ID, null);
		else 
			set_Value (COLUMNNAME_C_Invoice_ID, Integer.valueOf(C_Invoice_ID));
	}

	/** Get Invoice.
		@return Invoice Identifier
	  */
	public int getC_Invoice_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_Invoice_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.compiere.model.I_C_Order getC_Order() throws RuntimeException
    {
		return (org.compiere.model.I_C_Order)MTable.get(getCtx(), org.compiere.model.I_C_Order.Table_Name)
			.getPO(getC_Order_ID(), get_TrxName());	}

	/** Set Order.
		@param C_Order_ID 
		Order
	  */
	public void setC_Order_ID (int C_Order_ID)
	{
		if (C_Order_ID < 1) 
			set_Value (COLUMNNAME_C_Order_ID, null);
		else 
			set_Value (COLUMNNAME_C_Order_ID, Integer.valueOf(C_Order_ID));
	}

	/** Get Order.
		@return Order
	  */
	public int getC_Order_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_Order_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.compiere.model.I_C_Region getC_Region() throws RuntimeException
    {
		return (org.compiere.model.I_C_Region)MTable.get(getCtx(), org.compiere.model.I_C_Region.Table_Name)
			.getPO(getC_Region_ID(), get_TrxName());	}

	/** Set Region.
		@param C_Region_ID 
		Identifies a geographical Region
	  */
	public void setC_Region_ID (int C_Region_ID)
	{
		if (C_Region_ID < 1) 
			set_Value (COLUMNNAME_C_Region_ID, null);
		else 
			set_Value (COLUMNNAME_C_Region_ID, Integer.valueOf(C_Region_ID));
	}

	/** Get Region.
		@return Identifies a geographical Region
	  */
	public int getC_Region_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_Region_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Account Date.
		@param DateAcct 
		Accounting Date
	  */
	public void setDateAcct (Timestamp DateAcct)
	{
		set_Value (COLUMNNAME_DateAcct, DateAcct);
	}

	/** Get Account Date.
		@return Accounting Date
	  */
	public Timestamp getDateAcct () 
	{
		return (Timestamp)get_Value(COLUMNNAME_DateAcct);
	}

	/** Set Date Delivered.
		@param DateDelivered 
		Date when the product was delivered
	  */
	public void setDateDelivered (Timestamp DateDelivered)
	{
		set_Value (COLUMNNAME_DateDelivered, DateDelivered);
	}

	/** Get Date Delivered.
		@return Date when the product was delivered
	  */
	public Timestamp getDateDelivered () 
	{
		return (Timestamp)get_Value(COLUMNNAME_DateDelivered);
	}

	/** Set Document Date.
		@param DateDoc 
		Date of the Document
	  */
	public void setDateDoc (Timestamp DateDoc)
	{
		set_Value (COLUMNNAME_DateDoc, DateDoc);
	}

	/** Get Document Date.
		@return Date of the Document
	  */
	public Timestamp getDateDoc () 
	{
		return (Timestamp)get_Value(COLUMNNAME_DateDoc);
	}

	/** Set Description.
		@param Description 
		Optional short description of the record
	  */
	public void setDescription (String Description)
	{
		set_Value (COLUMNNAME_Description, Description);
	}

	/** Get Description.
		@return Optional short description of the record
	  */
	public String getDescription () 
	{
		return (String)get_Value(COLUMNNAME_Description);
	}

	/** DocAction AD_Reference_ID=135 */
	public static final int DOCACTION_AD_Reference_ID=135;
	/** Complete = CO */
	public static final String DOCACTION_Complete = "CO";
	/** Approve = AP */
	public static final String DOCACTION_Approve = "AP";
	/** Reject = RJ */
	public static final String DOCACTION_Reject = "RJ";
	/** Post = PO */
	public static final String DOCACTION_Post = "PO";
	/** Void = VO */
	public static final String DOCACTION_Void = "VO";
	/** Close = CL */
	public static final String DOCACTION_Close = "CL";
	/** Reverse - Correct = RC */
	public static final String DOCACTION_Reverse_Correct = "RC";
	/** Reverse - Accrual = RA */
	public static final String DOCACTION_Reverse_Accrual = "RA";
	/** Invalidate = IN */
	public static final String DOCACTION_Invalidate = "IN";
	/** Re-activate = RE */
	public static final String DOCACTION_Re_Activate = "RE";
	/** <None> = -- */
	public static final String DOCACTION_None = "--";
	/** Prepare = PR */
	public static final String DOCACTION_Prepare = "PR";
	/** Unlock = XL */
	public static final String DOCACTION_Unlock = "XL";
	/** Wait Complete = WC */
	public static final String DOCACTION_WaitComplete = "WC";
	/** Set Document Action.
		@param DocAction 
		The targeted status of the document
	  */
	public void setDocAction (String DocAction)
	{

		set_Value (COLUMNNAME_DocAction, DocAction);
	}

	/** Get Document Action.
		@return The targeted status of the document
	  */
	public String getDocAction () 
	{
		return (String)get_Value(COLUMNNAME_DocAction);
	}

	/** DocStatus AD_Reference_ID=131 */
	public static final int DOCSTATUS_AD_Reference_ID=131;
	/** Drafted = DR */
	public static final String DOCSTATUS_Drafted = "DR";
	/** Completed = CO */
	public static final String DOCSTATUS_Completed = "CO";
	/** Approved = AP */
	public static final String DOCSTATUS_Approved = "AP";
	/** Not Approved = NA */
	public static final String DOCSTATUS_NotApproved = "NA";
	/** Voided = VO */
	public static final String DOCSTATUS_Voided = "VO";
	/** Invalid = IN */
	public static final String DOCSTATUS_Invalid = "IN";
	/** Reversed = RE */
	public static final String DOCSTATUS_Reversed = "RE";
	/** Closed = CL */
	public static final String DOCSTATUS_Closed = "CL";
	/** Unknown = ?? */
	public static final String DOCSTATUS_Unknown = "??";
	/** In Progress = IP */
	public static final String DOCSTATUS_InProgress = "IP";
	/** Waiting Payment = WP */
	public static final String DOCSTATUS_WaitingPayment = "WP";
	/** Waiting Confirmation = WC */
	public static final String DOCSTATUS_WaitingConfirmation = "WC";
	/** Set Document Status.
		@param DocStatus 
		The current status of the document
	  */
	public void setDocStatus (String DocStatus)
	{

		set_Value (COLUMNNAME_DocStatus, DocStatus);
	}

	/** Get Document Status.
		@return The current status of the document
	  */
	public String getDocStatus () 
	{
		return (String)get_Value(COLUMNNAME_DocStatus);
	}

	/** Set Document No.
		@param DocumentNo 
		Document sequence number of the document
	  */
	public void setDocumentNo (String DocumentNo)
	{
		set_Value (COLUMNNAME_DocumentNo, DocumentNo);
	}

	/** Get Document No.
		@return Document sequence number of the document
	  */
	public String getDocumentNo () 
	{
		return (String)get_Value(COLUMNNAME_DocumentNo);
	}

	/** Set Generate Order.
		@param GenerateOrder 
		Generate Order
	  */
	public void setGenerateOrder (String GenerateOrder)
	{
		set_Value (COLUMNNAME_GenerateOrder, GenerateOrder);
	}

	/** Get Generate Order.
		@return Generate Order
	  */
	public String getGenerateOrder () 
	{
		return (String)get_Value(COLUMNNAME_GenerateOrder);
	}

	/** Set Grand Total.
		@param GrandTotal 
		Total amount of document
	  */
	public void setGrandTotal (BigDecimal GrandTotal)
	{
		set_Value (COLUMNNAME_GrandTotal, GrandTotal);
	}

	/** Get Grand Total.
		@return Total amount of document
	  */
	public BigDecimal getGrandTotal () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_GrandTotal);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Price includes Tax.
		@param IsTaxIncluded 
		Tax is included in the price 
	  */
	public void setIsTaxIncluded (boolean IsTaxIncluded)
	{
		set_Value (COLUMNNAME_IsTaxIncluded, Boolean.valueOf(IsTaxIncluded));
	}

	/** Get Price includes Tax.
		@return Tax is included in the price 
	  */
	public boolean isTaxIncluded () 
	{
		Object oo = get_Value(COLUMNNAME_IsTaxIncluded);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Amount Distribution.
		@param LBR_AmtDistribution Amount Distribution	  */
	public void setLBR_AmtDistribution (String LBR_AmtDistribution)
	{
		set_Value (COLUMNNAME_LBR_AmtDistribution, LBR_AmtDistribution);
	}

	/** Get Amount Distribution.
		@return Amount Distribution	  */
	public String getLBR_AmtDistribution () 
	{
		return (String)get_Value(COLUMNNAME_LBR_AmtDistribution);
	}

	public org.compiere.model.I_C_BPartner getLBR_BP_Intermed() throws RuntimeException
    {
		return (org.compiere.model.I_C_BPartner)MTable.get(getCtx(), org.compiere.model.I_C_BPartner.Table_Name)
			.getPO(getLBR_BP_Intermed_ID(), get_TrxName());	}

	/** Set Intermediary BP.
		@param LBR_BP_Intermed_ID Intermediary BP	  */
	public void setLBR_BP_Intermed_ID (int LBR_BP_Intermed_ID)
	{
		if (LBR_BP_Intermed_ID < 1) 
			set_Value (COLUMNNAME_LBR_BP_Intermed_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_BP_Intermed_ID, Integer.valueOf(LBR_BP_Intermed_ID));
	}

	/** Get Intermediary BP.
		@return Intermediary BP	  */
	public int getLBR_BP_Intermed_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_BP_Intermed_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.compiere.model.I_C_BPartner getLBR_BP_Pickup() throws RuntimeException
    {
		return (org.compiere.model.I_C_BPartner)MTable.get(getCtx(), org.compiere.model.I_C_BPartner.Table_Name)
			.getPO(getLBR_BP_Pickup_ID(), get_TrxName());	}

	/** Set Business Partner (Pickup).
		@param LBR_BP_Pickup_ID 
		Identifies a Business Partner
	  */
	public void setLBR_BP_Pickup_ID (int LBR_BP_Pickup_ID)
	{
		if (LBR_BP_Pickup_ID < 1) 
			set_Value (COLUMNNAME_LBR_BP_Pickup_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_BP_Pickup_ID, Integer.valueOf(LBR_BP_Pickup_ID));
	}

	/** Get Business Partner (Pickup).
		@return Identifies a Business Partner
	  */
	public int getLBR_BP_Pickup_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_BP_Pickup_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.compiere.model.I_C_BPartner_Location getLBR_BP_PickupLocation() throws RuntimeException
    {
		return (org.compiere.model.I_C_BPartner_Location)MTable.get(getCtx(), org.compiere.model.I_C_BPartner_Location.Table_Name)
			.getPO(getLBR_BP_PickupLocation_ID(), get_TrxName());	}

	/** Set Partner Location.
		@param LBR_BP_PickupLocation_ID 
		Identifies the (Pickup) address for this Business Partner
	  */
	public void setLBR_BP_PickupLocation_ID (int LBR_BP_PickupLocation_ID)
	{
		if (LBR_BP_PickupLocation_ID < 1) 
			set_Value (COLUMNNAME_LBR_BP_PickupLocation_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_BP_PickupLocation_ID, Integer.valueOf(LBR_BP_PickupLocation_ID));
	}

	/** Get Partner Location.
		@return Identifies the (Pickup) address for this Business Partner
	  */
	public int getLBR_BP_PickupLocation_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_BP_PickupLocation_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.compiere.model.I_C_BPartner getLBR_BP_Ship() throws RuntimeException
    {
		return (org.compiere.model.I_C_BPartner)MTable.get(getCtx(), org.compiere.model.I_C_BPartner.Table_Name)
			.getPO(getLBR_BP_Ship_ID(), get_TrxName());	}

	/** Set Business Partner (Ship).
		@param LBR_BP_Ship_ID 
		Identifies a Business Partner
	  */
	public void setLBR_BP_Ship_ID (int LBR_BP_Ship_ID)
	{
		if (LBR_BP_Ship_ID < 1) 
			set_Value (COLUMNNAME_LBR_BP_Ship_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_BP_Ship_ID, Integer.valueOf(LBR_BP_Ship_ID));
	}

	/** Get Business Partner (Ship).
		@return Identifies a Business Partner
	  */
	public int getLBR_BP_Ship_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_BP_Ship_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.compiere.model.I_C_BPartner_Location getLBR_BP_ShipLocation() throws RuntimeException
    {
		return (org.compiere.model.I_C_BPartner_Location)MTable.get(getCtx(), org.compiere.model.I_C_BPartner_Location.Table_Name)
			.getPO(getLBR_BP_ShipLocation_ID(), get_TrxName());	}

	/** Set Partner Location.
		@param LBR_BP_ShipLocation_ID 
		Identifies the (ship to) address for this Business Partner
	  */
	public void setLBR_BP_ShipLocation_ID (int LBR_BP_ShipLocation_ID)
	{
		if (LBR_BP_ShipLocation_ID < 1) 
			set_Value (COLUMNNAME_LBR_BP_ShipLocation_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_BP_ShipLocation_ID, Integer.valueOf(LBR_BP_ShipLocation_ID));
	}

	/** Get Partner Location.
		@return Identifies the (ship to) address for this Business Partner
	  */
	public int getLBR_BP_ShipLocation_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_BP_ShipLocation_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Contingency Date.
		@param LBR_ContingencyDate Contingency Date	  */
	public void setLBR_ContingencyDate (Timestamp LBR_ContingencyDate)
	{
		set_Value (COLUMNNAME_LBR_ContingencyDate, LBR_ContingencyDate);
	}

	/** Get Contingency Date.
		@return Contingency Date	  */
	public Timestamp getLBR_ContingencyDate () 
	{
		return (Timestamp)get_Value(COLUMNNAME_LBR_ContingencyDate);
	}

	/** Set Contingency Reason.
		@param LBR_ContingencyReason Contingency Reason	  */
	public void setLBR_ContingencyReason (String LBR_ContingencyReason)
	{
		set_Value (COLUMNNAME_LBR_ContingencyReason, LBR_ContingencyReason);
	}

	/** Get Contingency Reason.
		@return Contingency Reason	  */
	public String getLBR_ContingencyReason () 
	{
		return (String)get_Value(COLUMNNAME_LBR_ContingencyReason);
	}

	/** Set DigestValue.
		@param LBR_DigestValue 
		Identifies a DigestValue
	  */
	public void setLBR_DigestValue (String LBR_DigestValue)
	{
		set_Value (COLUMNNAME_LBR_DigestValue, LBR_DigestValue);
	}

	/** Get DigestValue.
		@return Identifies a DigestValue
	  */
	public String getLBR_DigestValue () 
	{
		return (String)get_Value(COLUMNNAME_LBR_DigestValue);
	}

	/** NF-e Normal = 1 */
	public static final String LBR_FINNFE_NF_ENormal = "1";
	/** NF-e Complementar = 2 */
	public static final String LBR_FINNFE_NF_EComplementar = "2";
	/** NF-e de Ajuste = 3 */
	public static final String LBR_FINNFE_NF_EDeAjuste = "3";
	/** Devolucao/Retorno = 4 */
	public static final String LBR_FINNFE_DevolucaoRetorno = "4";
	/** Set NFe Issue Goal.
		@param LBR_FinNFe NFe Issue Goal	  */
	public void setLBR_FinNFe (String LBR_FinNFe)
	{

		set_Value (COLUMNNAME_LBR_FinNFe, LBR_FinNFe);
	}

	/** Get NFe Issue Goal.
		@return NFe Issue Goal	  */
	public String getLBR_FinNFe () 
	{
		return (String)get_Value(COLUMNNAME_LBR_FinNFe);
	}

	/** Set Fiscal Info.
		@param LBR_FiscalInfo 
		Fiscal Information
	  */
	public void setLBR_FiscalInfo (String LBR_FiscalInfo)
	{
		set_Value (COLUMNNAME_LBR_FiscalInfo, LBR_FiscalInfo);
	}

	/** Get Fiscal Info.
		@return Fiscal Information
	  */
	public String getLBR_FiscalInfo () 
	{
		return (String)get_Value(COLUMNNAME_LBR_FiscalInfo);
	}

	/** Set Intermediary Username.
		@param LBR_IdCadIntTran Intermediary Username	  */
	public void setLBR_IdCadIntTran (String LBR_IdCadIntTran)
	{
		set_Value (COLUMNNAME_LBR_IdCadIntTran, LBR_IdCadIntTran);
	}

	/** Get Intermediary Username.
		@return Intermediary Username	  */
	public String getLBR_IdCadIntTran () 
	{
		return (String)get_Value(COLUMNNAME_LBR_IdCadIntTran);
	}

	/** Set Is Document Issued by Client/Org?.
		@param LBR_IsDocIssuedByOrg Is Document Issued by Client/Org?	  */
	public void setLBR_IsDocIssuedByOrg (boolean LBR_IsDocIssuedByOrg)
	{
		set_Value (COLUMNNAME_LBR_IsDocIssuedByOrg, Boolean.valueOf(LBR_IsDocIssuedByOrg));
	}

	/** Get Is Document Issued by Client/Org?.
		@return Is Document Issued by Client/Org?	  */
	public boolean isLBR_IsDocIssuedByOrg () 
	{
		Object oo = get_Value(COLUMNNAME_LBR_IsDocIssuedByOrg);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set NF-e Lot Sending Protocol.
		@param LBR_LotSendingProt 
		Indicates the protocol of the sending process to Sefaz
	  */
	public void setLBR_LotSendingProt (String LBR_LotSendingProt)
	{
		set_Value (COLUMNNAME_LBR_LotSendingProt, LBR_LotSendingProt);
	}

	/** Get NF-e Lot Sending Protocol.
		@return Indicates the protocol of the sending process to Sefaz
	  */
	public String getLBR_LotSendingProt () 
	{
		return (String)get_Value(COLUMNNAME_LBR_LotSendingProt);
	}

	/** Set NFC-e QRCode URL.
		@param LBR_NFCeQRCodeURL 
		QRCode URL of NFC-e
	  */
	public void setLBR_NFCeQRCodeURL (String LBR_NFCeQRCodeURL)
	{
		set_Value (COLUMNNAME_LBR_NFCeQRCodeURL, LBR_NFCeQRCodeURL);
	}

	/** Get NFC-e QRCode URL.
		@return QRCode URL of NFC-e
	  */
	public String getLBR_NFCeQRCodeURL () 
	{
		return (String)get_Value(COLUMNNAME_LBR_NFCeQRCodeURL);
	}

	/** Operacao Interna = 1 */
	public static final String LBR_NFE_DESTINATIONTYPE_OperacaoInterna = "1";
	/** Operacao Interestadual = 2 */
	public static final String LBR_NFE_DESTINATIONTYPE_OperacaoInterestadual = "2";
	/** Operacao com Exterior = 3 */
	public static final String LBR_NFE_DESTINATIONTYPE_OperacaoComExterior = "3";
	/** Set NFe Destination Type.
		@param LBR_NFE_DestinationType NFe Destination Type	  */
	public void setLBR_NFE_DestinationType (String LBR_NFE_DestinationType)
	{

		set_Value (COLUMNNAME_LBR_NFE_DestinationType, LBR_NFE_DestinationType);
	}

	/** Get NFe Destination Type.
		@return NFe Destination Type	  */
	public String getLBR_NFE_DestinationType () 
	{
		return (String)get_Value(COLUMNNAME_LBR_NFE_DestinationType);
	}

	/** Set NFe ID.
		@param LBR_NFeID NFe ID	  */
	public void setLBR_NFeID (String LBR_NFeID)
	{
		set_Value (COLUMNNAME_LBR_NFeID, LBR_NFeID);
	}

	/** Get NFe ID.
		@return NFe ID	  */
	public String getLBR_NFeID () 
	{
		return (String)get_Value(COLUMNNAME_LBR_NFeID);
	}

	/** No = 0 */
	public static final String LBR_NFEINDFINAL_No = "0";
	/** End Consumer = 1 */
	public static final String LBR_NFEINDFINAL_EndConsumer = "1";
	/** Set Is End User.
		@param LBR_NFeIndFinal Is End User	  */
	public void setLBR_NFeIndFinal (String LBR_NFeIndFinal)
	{

		set_Value (COLUMNNAME_LBR_NFeIndFinal, LBR_NFeIndFinal);
	}

	/** Get Is End User.
		@return Is End User	  */
	public String getLBR_NFeIndFinal () 
	{
		return (String)get_Value(COLUMNNAME_LBR_NFeIndFinal);
	}

	/** LBR_NFeIndIntermed AD_Reference_ID=800058 */
	public static final int LBR_NFEINDINTERMED_AD_Reference_ID=800058;
	/** Without an intermediary = 0 */
	public static final String LBR_NFEINDINTERMED_WithoutAnIntermediary = "0";
	/** Third party website  = 1 */
	public static final String LBR_NFEINDINTERMED_ThirdPartyWebsite = "1";
	/** Set Intermediary Indicator.
		@param LBR_NFeIndIntermed Intermediary Indicator	  */
	public void setLBR_NFeIndIntermed (String LBR_NFeIndIntermed)
	{

		set_Value (COLUMNNAME_LBR_NFeIndIntermed, LBR_NFeIndIntermed);
	}

	/** Get Intermediary Indicator.
		@return Intermediary Indicator	  */
	public String getLBR_NFeIndIntermed () 
	{
		return (String)get_Value(COLUMNNAME_LBR_NFeIndIntermed);
	}

	/** Operacao presencial, fora do estabelecimento = 5 */
	public static final String LBR_NFEINDPRES_OperacaoPresencialForaDoEstabelecimento = "5";
	/** Nao se aplica = 0 */
	public static final String LBR_NFEINDPRES_NaoSeAplica = "0";
	/** Operacao presencial = 1 */
	public static final String LBR_NFEINDPRES_OperacaoPresencial = "1";
	/** Internet = 2 */
	public static final String LBR_NFEINDPRES_Internet = "2";
	/** Teleatendimento = 3 */
	public static final String LBR_NFEINDPRES_Teleatendimento = "3";
	/** NFC-e com entrega em domicilio = 4 */
	public static final String LBR_NFEINDPRES_NFC_EComEntregaEmDomicilio = "4";
	/** Operacao nao presencial = 9 */
	public static final String LBR_NFEINDPRES_OperacaoNaoPresencial = "9";
	/** Set Face-to-Face Indicator.
		@param LBR_NFeIndPres Face-to-Face Indicator	  */
	public void setLBR_NFeIndPres (String LBR_NFeIndPres)
	{

		set_Value (COLUMNNAME_LBR_NFeIndPres, LBR_NFeIndPres);
	}

	/** Get Face-to-Face Indicator.
		@return Face-to-Face Indicator	  */
	public String getLBR_NFeIndPres () 
	{
		return (String)get_Value(COLUMNNAME_LBR_NFeIndPres);
	}

	/** 65 - NFC-e = 65 */
	public static final String LBR_NFEMODEL_65_NFC_E = "65";
	/** 55 - NF-e = 55 */
	public static final String LBR_NFEMODEL_55_NF_E = "55";
	/** Set NF Model.
		@param LBR_NFeModel NF Model	  */
	public void setLBR_NFeModel (String LBR_NFeModel)
	{

		set_Value (COLUMNNAME_LBR_NFeModel, LBR_NFeModel);
	}

	/** Get NF Model.
		@return NF Model	  */
	public String getLBR_NFeModel () 
	{
		return (String)get_Value(COLUMNNAME_LBR_NFeModel);
	}

	/** Set NFe Nature of Operation.
		@param LBR_NFeNatOp NFe Nature of Operation	  */
	public void setLBR_NFeNatOp (String LBR_NFeNatOp)
	{
		set_Value (COLUMNNAME_LBR_NFeNatOp, LBR_NFeNatOp);
	}

	/** Get NFe Nature of Operation.
		@return NFe Nature of Operation	  */
	public String getLBR_NFeNatOp () 
	{
		return (String)get_Value(COLUMNNAME_LBR_NFeNatOp);
	}

	/** In = 0 */
	public static final String LBR_NFE_OPERATIONTYPE_In = "0";
	/** Out = 1 */
	public static final String LBR_NFE_OPERATIONTYPE_Out = "1";
	/** Set NFe Operation Type.
		@param LBR_NFE_OperationType NFe Operation Type	  */
	public void setLBR_NFE_OperationType (String LBR_NFE_OperationType)
	{

		set_Value (COLUMNNAME_LBR_NFE_OperationType, LBR_NFE_OperationType);
	}

	/** Get NFe Operation Type.
		@return NFe Operation Type	  */
	public String getLBR_NFE_OperationType () 
	{
		return (String)get_Value(COLUMNNAME_LBR_NFE_OperationType);
	}

	/** Set NF Serie.
		@param LBR_NFeSerie NF Serie	  */
	public void setLBR_NFeSerie (String LBR_NFeSerie)
	{
		set_Value (COLUMNNAME_LBR_NFeSerie, LBR_NFeSerie);
	}

	/** Get NF Serie.
		@return NF Serie	  */
	public String getLBR_NFeSerie () 
	{
		return (String)get_Value(COLUMNNAME_LBR_NFeSerie);
	}

    /** Get Record ID/ColumnName
        @return ID/ColumnName pair
      */
    public KeyNamePair getKeyNamePair() 
    {
        return new KeyNamePair(get_ID(), getLBR_NFeSerie());
    }

	/** 693 - Aliquota de ICMS superior a definida para a operacao interestadual = 693 */
	public static final String LBR_NFESTATUS_693_AliquotaDeICMSSuperiorADefinidaParaAOperacaoInterestadual = "693";
	/** 100 - Autorizado o uso da NF-e = 100 */
	public static final String LBR_NFESTATUS_100_AutorizadoOUsoDaNF_E = "100";
	/** 101 - Cancelamento de NF-e homologado = 101 */
	public static final String LBR_NFESTATUS_101_CancelamentoDeNF_EHomologado = "101";
	/** 102 - Inutilização de número homologado = 102 */
	public static final String LBR_NFESTATUS_102_InutilizaçãoDeNúmeroHomologado = "102";
	/** 103 - Lote recebido com sucesso = 103 */
	public static final String LBR_NFESTATUS_103_LoteRecebidoComSucesso = "103";
	/** 104 - Lote processado = 104 */
	public static final String LBR_NFESTATUS_104_LoteProcessado = "104";
	/** 105 - Lote em processamento = 105 */
	public static final String LBR_NFESTATUS_105_LoteEmProcessamento = "105";
	/** 106 - Lote não localizado = 106 */
	public static final String LBR_NFESTATUS_106_LoteNãoLocalizado = "106";
	/** 107 - Serviço em Operação = 107 */
	public static final String LBR_NFESTATUS_107_ServiçoEmOperação = "107";
	/** 108 - Serviço Paralisado Momentaneamente (curto prazo) = 108 */
	public static final String LBR_NFESTATUS_108_ServiçoParalisadoMomentaneamenteCurtoPrazo = "108";
	/** 109 - Serviço Paralisado sem Previsão = 109 */
	public static final String LBR_NFESTATUS_109_ServiçoParalisadoSemPrevisão = "109";
	/** 110 - Uso Denegado = 110 */
	public static final String LBR_NFESTATUS_110_UsoDenegado = "110";
	/** 111 - Consulta cadastro com uma ocorrência = 111 */
	public static final String LBR_NFESTATUS_111_ConsultaCadastroComUmaOcorrência = "111";
	/** 112 - Consulta cadastro com mais de uma ocorrência = 112 */
	public static final String LBR_NFESTATUS_112_ConsultaCadastroComMaisDeUmaOcorrência = "112";
	/** 113 - SCAN será desabilitado para a UF às hh:mm = 113 */
	public static final String LBR_NFESTATUS_113_SCANSeráDesabilitadoParaAUFÀsHhMm = "113";
	/** 114 - SCAN desabilitado pela SEFAZ Origem = 114 */
	public static final String LBR_NFESTATUS_114_SCANDesabilitadoPelaSEFAZOrigem = "114";
	/** 128 - Lote de Evento Processado = 128 */
	public static final String LBR_NFESTATUS_128_LoteDeEventoProcessado = "128";
	/** 135 - Evento registrado e vinculado a NF-e = 135 */
	public static final String LBR_NFESTATUS_135_EventoRegistradoEVinculadoANF_E = "135";
	/** 136 - Evento registrado; mas não vinculado a NF-e = 136 */
	public static final String LBR_NFESTATUS_136_EventoRegistradoMasNãoVinculadoANF_E = "136";
	/** 137 - Nenhum documento localizado para o Destinatário = 137 */
	public static final String LBR_NFESTATUS_137_NenhumDocumentoLocalizadoParaODestinatário = "137";
	/** 138 - Documento localizado para o Destinatário = 138 */
	public static final String LBR_NFESTATUS_138_DocumentoLocalizadoParaODestinatário = "138";
	/** 139 - Pedido de Download processado = 139 */
	public static final String LBR_NFESTATUS_139_PedidoDeDownloadProcessado = "139";
	/** 140 - Download disponibilizado = 140 */
	public static final String LBR_NFESTATUS_140_DownloadDisponibilizado = "140";
	/** 150 - Autorizado o uso da NF-e = 150 */
	public static final String LBR_NFESTATUS_150_AutorizadoOUsoDaNF_E = "150";
	/** 151 - Cancelamento de NF-e homologado fora de prazo = 151 */
	public static final String LBR_NFESTATUS_151_CancelamentoDeNF_EHomologadoForaDePrazo = "151";
	/** 155 - Cancelamento de NF-e homologado fora de prazo = 155 */
	public static final String LBR_NFESTATUS_155_CancelamentoDeNF_EHomologadoForaDePrazo = "155";
	/** 201 - Rejeição: O numero máximo de numeração de NF-e a inutilizar ultrapassou o limite = 201 */
	public static final String LBR_NFESTATUS_201_RejeiçãoONumeroMáximoDeNumeraçãoDeNF_EAInutilizarUltrapassouOLimite = "201";
	/** 202 - Rejeição: Falha no reconhecimento da autoria ou integridade do arquivo digital = 202 */
	public static final String LBR_NFESTATUS_202_RejeiçãoFalhaNoReconhecimentoDaAutoriaOuIntegridadeDoArquivoDigital = "202";
	/** 203 - Rejeição: Emissor não habilitado para emissão da NF-e = 203 */
	public static final String LBR_NFESTATUS_203_RejeiçãoEmissorNãoHabilitadoParaEmissãoDaNF_E = "203";
	/** 204 - Rejeição: Duplicidade de NF-e = 204 */
	public static final String LBR_NFESTATUS_204_RejeiçãoDuplicidadeDeNF_E = "204";
	/** 205 - Rejeição: NF-e está denegada na base de dados da SEFAZ = 205 */
	public static final String LBR_NFESTATUS_205_RejeiçãoNF_EEstáDenegadaNaBaseDeDadosDaSEFAZ = "205";
	/** 206 - Rejeição: NF-e já está inutilizada na Base de dados da SEFAZ = 206 */
	public static final String LBR_NFESTATUS_206_RejeiçãoNF_EJáEstáInutilizadaNaBaseDeDadosDaSEFAZ = "206";
	/** 207 - Rejeição: CNPJ do emitente inválido = 207 */
	public static final String LBR_NFESTATUS_207_RejeiçãoCNPJDoEmitenteInválido = "207";
	/** 208 - Rejeição: CNPJ do destinatário inválido = 208 */
	public static final String LBR_NFESTATUS_208_RejeiçãoCNPJDoDestinatárioInválido = "208";
	/** 209 - Rejeição: IE do emitente inválida = 209 */
	public static final String LBR_NFESTATUS_209_RejeiçãoIEDoEmitenteInválida = "209";
	/** 210 - Rejeição: IE do destinatário inválida = 210 */
	public static final String LBR_NFESTATUS_210_RejeiçãoIEDoDestinatárioInválida = "210";
	/** 211 - Rejeição: IE do substituto inválida = 211 */
	public static final String LBR_NFESTATUS_211_RejeiçãoIEDoSubstitutoInválida = "211";
	/** 212 - Rejeição: Data de emissão NF-e posterior a data de recebimento = 212 */
	public static final String LBR_NFESTATUS_212_RejeiçãoDataDeEmissãoNF_EPosteriorADataDeRecebimento = "212";
	/** 213 - Rejeição: CNPJ-Base do Emitente difere do CNPJ-Base do Certificado Digital = 213 */
	public static final String LBR_NFESTATUS_213_RejeiçãoCNPJ_BaseDoEmitenteDifereDoCNPJ_BaseDoCertificadoDigital = "213";
	/** 214 - Rejeição: Tamanho da mensagem excedeu o limite estabelecido = 214 */
	public static final String LBR_NFESTATUS_214_RejeiçãoTamanhoDaMensagemExcedeuOLimiteEstabelecido = "214";
	/** 215 - Rejeição: Falha no schema XML = 215 */
	public static final String LBR_NFESTATUS_215_RejeiçãoFalhaNoSchemaXML = "215";
	/** 216 - Rejeição: Chave de Acesso difere da cadastrada = 216 */
	public static final String LBR_NFESTATUS_216_RejeiçãoChaveDeAcessoDifereDaCadastrada = "216";
	/** 217 - Rejeição: NF-e não consta na base de dados da SEFAZ = 217 */
	public static final String LBR_NFESTATUS_217_RejeiçãoNF_ENãoConstaNaBaseDeDadosDaSEFAZ = "217";
	/** 218 - Rejeição: NF-e já esta cancelada na base de dados da SEFAZ = 218 */
	public static final String LBR_NFESTATUS_218_RejeiçãoNF_EJáEstaCanceladaNaBaseDeDadosDaSEFAZ = "218";
	/** 219 - Rejeição: Circulação da NF-e verificada = 219 */
	public static final String LBR_NFESTATUS_219_RejeiçãoCirculaçãoDaNF_EVerificada = "219";
	/** 220 - Rejeição: Prazo de Cancelamento Superior ao Previsto na Legislação = 220 */
	public static final String LBR_NFESTATUS_220_RejeiçãoPrazoDeCancelamentoSuperiorAoPrevistoNaLegislação = "220";
	/** 221 - Rejeição: Confirmado o recebimento da NF-e pelo destinatário = 221 */
	public static final String LBR_NFESTATUS_221_RejeiçãoConfirmadoORecebimentoDaNF_EPeloDestinatário = "221";
	/** 222 - Rejeição: Protocolo de Autorização de Uso difere do cadastrado = 222 */
	public static final String LBR_NFESTATUS_222_RejeiçãoProtocoloDeAutorizaçãoDeUsoDifereDoCadastrado = "222";
	/** 223 - Rejeição: CNPJ do transmissor do lote difere do CNPJ do transmissor da consulta = 223 */
	public static final String LBR_NFESTATUS_223_RejeiçãoCNPJDoTransmissorDoLoteDifereDoCNPJDoTransmissorDaConsulta = "223";
	/** 224 - Rejeição: A faixa inicial é maior que a faixa final = 224 */
	public static final String LBR_NFESTATUS_224_RejeiçãoAFaixaInicialÉMaiorQueAFaixaFinal = "224";
	/** 225 - Rejeição: Falha no Schema XML da NFe = 225 */
	public static final String LBR_NFESTATUS_225_RejeiçãoFalhaNoSchemaXMLDaNFe = "225";
	/** 226 - Rejeição: Código da UF do Emitente diverge da UF autorizadora = 226 */
	public static final String LBR_NFESTATUS_226_RejeiçãoCódigoDaUFDoEmitenteDivergeDaUFAutorizadora = "226";
	/** 227 - Rejeição: Erro na Chave de Acesso - Campo ID = 227 */
	public static final String LBR_NFESTATUS_227_RejeiçãoErroNaChaveDeAcesso_CampoID = "227";
	/** 228 - Rejeição: Data de Emissão muito atrasada = 228 */
	public static final String LBR_NFESTATUS_228_RejeiçãoDataDeEmissãoMuitoAtrasada = "228";
	/** 229 - Rejeição: IE do emitente não informada = 229 */
	public static final String LBR_NFESTATUS_229_RejeiçãoIEDoEmitenteNãoInformada = "229";
	/** 230 - Rejeição: IE do emitente não cadastrada = 230 */
	public static final String LBR_NFESTATUS_230_RejeiçãoIEDoEmitenteNãoCadastrada = "230";
	/** 231 - Rejeição: IE do emitente não vinculada ao CNPJ = 231 */
	public static final String LBR_NFESTATUS_231_RejeiçãoIEDoEmitenteNãoVinculadaAoCNPJ = "231";
	/** 232 - Rejeição: IE do destinatário não informada = 232 */
	public static final String LBR_NFESTATUS_232_RejeiçãoIEDoDestinatárioNãoInformada = "232";
	/** 233 - Rejeição: IE do destinatário não cadastrada = 233 */
	public static final String LBR_NFESTATUS_233_RejeiçãoIEDoDestinatárioNãoCadastrada = "233";
	/** 234 - Rejeição: IE do destinatário não vinculada ao CNPJ = 234 */
	public static final String LBR_NFESTATUS_234_RejeiçãoIEDoDestinatárioNãoVinculadaAoCNPJ = "234";
	/** 235 - Rejeição: Inscrição SUFRAMA inválida = 235 */
	public static final String LBR_NFESTATUS_235_RejeiçãoInscriçãoSUFRAMAInválida = "235";
	/** 236 - Rejeição: Chave de Acesso com dígito verificador inválido = 236 */
	public static final String LBR_NFESTATUS_236_RejeiçãoChaveDeAcessoComDígitoVerificadorInválido = "236";
	/** 237 - Rejeição: CPF do destinatário inválido = 237 */
	public static final String LBR_NFESTATUS_237_RejeiçãoCPFDoDestinatárioInválido = "237";
	/** 238 - Rejeição: Cabeçalho - Versão do arquivo XML superior a Versão vigente = 238 */
	public static final String LBR_NFESTATUS_238_RejeiçãoCabeçalho_VersãoDoArquivoXMLSuperiorAVersãoVigente = "238";
	/** 239 - Rejeição: Cabeçalho - Versão do arquivo XML não suportada = 239 */
	public static final String LBR_NFESTATUS_239_RejeiçãoCabeçalho_VersãoDoArquivoXMLNãoSuportada = "239";
	/** 240 - Rejeição: Cancelamento/Inutilização - Irregularidade Fiscal do Emitente = 240 */
	public static final String LBR_NFESTATUS_240_RejeiçãoCancelamentoInutilização_IrregularidadeFiscalDoEmitente = "240";
	/** 241 - Rejeição: Um número da faixa já foi utilizado = 241 */
	public static final String LBR_NFESTATUS_241_RejeiçãoUmNúmeroDaFaixaJáFoiUtilizado = "241";
	/** 242 - Rejeição: Cabeçalho - Falha no Schema XML = 242 */
	public static final String LBR_NFESTATUS_242_RejeiçãoCabeçalho_FalhaNoSchemaXML = "242";
	/** 243 - Rejeição: XML Mal Formado = 243 */
	public static final String LBR_NFESTATUS_243_RejeiçãoXMLMalFormado = "243";
	/** 244 - Rejeição: CNPJ do Certificado Digital difere do CNPJ da Matriz e do CNPJ do Emit = 244 */
	public static final String LBR_NFESTATUS_244_RejeiçãoCNPJDoCertificadoDigitalDifereDoCNPJDaMatrizEDoCNPJDoEmit = "244";
	/** 245 - Rejeição: CNPJ Emitente não cadastrado = 245 */
	public static final String LBR_NFESTATUS_245_RejeiçãoCNPJEmitenteNãoCadastrado = "245";
	/** 246 - Rejeição: CNPJ Destinatário não cadastrado = 246 */
	public static final String LBR_NFESTATUS_246_RejeiçãoCNPJDestinatárioNãoCadastrado = "246";
	/** 247 - Rejeição: Sigla da UF do Emitente diverge da UF autorizadora = 247 */
	public static final String LBR_NFESTATUS_247_RejeiçãoSiglaDaUFDoEmitenteDivergeDaUFAutorizadora = "247";
	/** 248 - Rejeição: UF do Recibo diverge da UF autorizadora = 248 */
	public static final String LBR_NFESTATUS_248_RejeiçãoUFDoReciboDivergeDaUFAutorizadora = "248";
	/** 249 - Rejeição: UF da Chave de Acesso diverge da UF autorizadora = 249 */
	public static final String LBR_NFESTATUS_249_RejeiçãoUFDaChaveDeAcessoDivergeDaUFAutorizadora = "249";
	/** 250 - Rejeição: UF diverge da UF autorizadora = 250 */
	public static final String LBR_NFESTATUS_250_RejeiçãoUFDivergeDaUFAutorizadora = "250";
	/** 251 - Rejeição: UF/Município destinatário não pertence a SUFRAMA = 251 */
	public static final String LBR_NFESTATUS_251_RejeiçãoUFMunicípioDestinatárioNãoPertenceASUFRAMA = "251";
	/** 252 - Rejeição: Ambiente informado diverge do Ambiente de recebimento = 252 */
	public static final String LBR_NFESTATUS_252_RejeiçãoAmbienteInformadoDivergeDoAmbienteDeRecebimento = "252";
	/** 253 - Rejeição: Digito Verificador da chave de acesso composta inválida = 253 */
	public static final String LBR_NFESTATUS_253_RejeiçãoDigitoVerificadorDaChaveDeAcessoCompostaInválida = "253";
	/** 254 - Rejeição: NF-e complementar não possui NF referenciada = 254 */
	public static final String LBR_NFESTATUS_254_RejeiçãoNF_EComplementarNãoPossuiNFReferenciada = "254";
	/** 255 - Rejeição: NF-e complementar possui mais de uma NF referenciada = 255 */
	public static final String LBR_NFESTATUS_255_RejeiçãoNF_EComplementarPossuiMaisDeUmaNFReferenciada = "255";
	/** 256 - Rejeição: Uma NF-e da faixa já está inutilizada na Base de dados da SEFAZ = 256 */
	public static final String LBR_NFESTATUS_256_RejeiçãoUmaNF_EDaFaixaJáEstáInutilizadaNaBaseDeDadosDaSEFAZ = "256";
	/** 257 - Rejeição: Solicitante não habilitado para emissão da NF-e = 257 */
	public static final String LBR_NFESTATUS_257_RejeiçãoSolicitanteNãoHabilitadoParaEmissãoDaNF_E = "257";
	/** 258 - Rejeição: CNPJ da consulta inválido = 258 */
	public static final String LBR_NFESTATUS_258_RejeiçãoCNPJDaConsultaInválido = "258";
	/** 259 - Rejeição: CNPJ da consulta não cadastrado como contribuinte na UF = 259 */
	public static final String LBR_NFESTATUS_259_RejeiçãoCNPJDaConsultaNãoCadastradoComoContribuinteNaUF = "259";
	/** 260 - Rejeição: IE da consulta inválida = 260 */
	public static final String LBR_NFESTATUS_260_RejeiçãoIEDaConsultaInválida = "260";
	/** 261 - Rejeição: IE da consulta não cadastrada como contribuinte na UF = 261 */
	public static final String LBR_NFESTATUS_261_RejeiçãoIEDaConsultaNãoCadastradaComoContribuinteNaUF = "261";
	/** 262 - Rejeição: UF não fornece consulta por CPF = 262 */
	public static final String LBR_NFESTATUS_262_RejeiçãoUFNãoForneceConsultaPorCPF = "262";
	/** 263 - Rejeição: CPF da consulta inválido = 263 */
	public static final String LBR_NFESTATUS_263_RejeiçãoCPFDaConsultaInválido = "263";
	/** 264 - Rejeição: CPF da consulta não cadastrado como contribuinte na UF = 264 */
	public static final String LBR_NFESTATUS_264_RejeiçãoCPFDaConsultaNãoCadastradoComoContribuinteNaUF = "264";
	/** 265 - Rejeição: Sigla da UF da consulta difere da UF do Web Service = 265 */
	public static final String LBR_NFESTATUS_265_RejeiçãoSiglaDaUFDaConsultaDifereDaUFDoWebService = "265";
	/** 266 - Rejeição: Série utilizada fora da faixa permitida no SCAN (0-889) = 266 */
	public static final String LBR_NFESTATUS_266_RejeiçãoSérieUtilizadaForaDaFaixaPermitidaNoSCAN0_889 = "266";
	/** 267 - Rejeição: Chave de Acesso referenciada inexistente = 267 */
	public static final String LBR_NFESTATUS_267_RejeiçãoChaveDeAcessoReferenciadaInexistente = "267";
	/** 268 - Rejeição: NF Complementar referencia uma outra NF-e Complementar = 268 */
	public static final String LBR_NFESTATUS_268_RejeiçãoNFComplementarReferenciaUmaOutraNF_EComplementar = "268";
	/** 269 - Rejeição: CNPJ Emitente da NF Complementar difere do CNPJ da NF Referenciada = 269 */
	public static final String LBR_NFESTATUS_269_RejeiçãoCNPJEmitenteDaNFComplementarDifereDoCNPJDaNFReferenciada = "269";
	/** 270 - Rejeição: Código Município do Fato Gerador: dígito inválido = 270 */
	public static final String LBR_NFESTATUS_270_RejeiçãoCódigoMunicípioDoFatoGeradorDígitoInválido = "270";
	/** 271 - Rejeição: Código Município do Fato Gerador: difere da UF do emitente = 271 */
	public static final String LBR_NFESTATUS_271_RejeiçãoCódigoMunicípioDoFatoGeradorDifereDaUFDoEmitente = "271";
	/** 272 - Rejeição: Código Município do Emitente: dígito inválido = 272 */
	public static final String LBR_NFESTATUS_272_RejeiçãoCódigoMunicípioDoEmitenteDígitoInválido = "272";
	/** 273 - Rejeição: Código Município do Emitente: difere da UF do emitente = 273 */
	public static final String LBR_NFESTATUS_273_RejeiçãoCódigoMunicípioDoEmitenteDifereDaUFDoEmitente = "273";
	/** 274 - Rejeição: Código Município do Destinatário: dígito inválido = 274 */
	public static final String LBR_NFESTATUS_274_RejeiçãoCódigoMunicípioDoDestinatárioDígitoInválido = "274";
	/** 275 - Rejeição: Código Município do Destinatário: difere da UF do Destinatário = 275 */
	public static final String LBR_NFESTATUS_275_RejeiçãoCódigoMunicípioDoDestinatárioDifereDaUFDoDestinatário = "275";
	/** 276 - Rejeição: Código Município do Local de Retirada: dígito inválido = 276 */
	public static final String LBR_NFESTATUS_276_RejeiçãoCódigoMunicípioDoLocalDeRetiradaDígitoInválido = "276";
	/** 277 - Rejeição: Código Município do Local de Retirada: difere da UF do Local de Retirada = 277 */
	public static final String LBR_NFESTATUS_277_RejeiçãoCódigoMunicípioDoLocalDeRetiradaDifereDaUFDoLocalDeRetirada = "277";
	/** 278 - Rejeição: Código Município do Local de Entrega: dígito inválido = 278 */
	public static final String LBR_NFESTATUS_278_RejeiçãoCódigoMunicípioDoLocalDeEntregaDígitoInválido = "278";
	/** 279 - Rejeição: Código Município do Local de Entrega: difere da UF do Local de Entrega = 279 */
	public static final String LBR_NFESTATUS_279_RejeiçãoCódigoMunicípioDoLocalDeEntregaDifereDaUFDoLocalDeEntrega = "279";
	/** 280 - Rejeição: Certificado Transmissor inválido = 280 */
	public static final String LBR_NFESTATUS_280_RejeiçãoCertificadoTransmissorInválido = "280";
	/** 281 - Rejeição: Certificado Transmissor Data Validade = 281 */
	public static final String LBR_NFESTATUS_281_RejeiçãoCertificadoTransmissorDataValidade = "281";
	/** 282 - Rejeição: Certificado Transmissor sem CNPJ = 282 */
	public static final String LBR_NFESTATUS_282_RejeiçãoCertificadoTransmissorSemCNPJ = "282";
	/** 283 - Rejeição: Certificado Transmissor - erro Cadeia de Certificação = 283 */
	public static final String LBR_NFESTATUS_283_RejeiçãoCertificadoTransmissor_ErroCadeiaDeCertificação = "283";
	/** 284 - Rejeição: Certificado Transmissor revogado = 284 */
	public static final String LBR_NFESTATUS_284_RejeiçãoCertificadoTransmissorRevogado = "284";
	/** 285 - Rejeição: Certificado Transmissor difere ICP-Brasil = 285 */
	public static final String LBR_NFESTATUS_285_RejeiçãoCertificadoTransmissorDifereICP_Brasil = "285";
	/** 286 - Rejeição: Certificado Transmissor erro no acesso a LCR = 286 */
	public static final String LBR_NFESTATUS_286_RejeiçãoCertificadoTransmissorErroNoAcessoALCR = "286";
	/** 287 - Rejeição: Código Município do FG - ISSQN: dígito inválido = 287 */
	public static final String LBR_NFESTATUS_287_RejeiçãoCódigoMunicípioDoFG_ISSQNDígitoInválido = "287";
	/** 288 - Rejeição: Código Município do FG - Transporte: dígito inválido = 288 */
	public static final String LBR_NFESTATUS_288_RejeiçãoCódigoMunicípioDoFG_TransporteDígitoInválido = "288";
	/** 289 - Rejeição: Código da UF informada diverge da UF solicitada = 289 */
	public static final String LBR_NFESTATUS_289_RejeiçãoCódigoDaUFInformadaDivergeDaUFSolicitada = "289";
	/** 290 - Rejeição: Certificado Assinatura inválido = 290 */
	public static final String LBR_NFESTATUS_290_RejeiçãoCertificadoAssinaturaInválido = "290";
	/** 291 - Rejeição: Certificado Assinatura Data Validade = 291 */
	public static final String LBR_NFESTATUS_291_RejeiçãoCertificadoAssinaturaDataValidade = "291";
	/** 292 - Rejeição: Certificado Assinatura sem CNPJ = 292 */
	public static final String LBR_NFESTATUS_292_RejeiçãoCertificadoAssinaturaSemCNPJ = "292";
	/** 293 - Rejeição: Certificado Assinatura - erro Cadeia de Certificação = 293 */
	public static final String LBR_NFESTATUS_293_RejeiçãoCertificadoAssinatura_ErroCadeiaDeCertificação = "293";
	/** 294 - Rejeição: Certificado Assinatura revogado = 294 */
	public static final String LBR_NFESTATUS_294_RejeiçãoCertificadoAssinaturaRevogado = "294";
	/** 295 - Rejeição: Certificado Assinatura difere ICP-Brasil = 295 */
	public static final String LBR_NFESTATUS_295_RejeiçãoCertificadoAssinaturaDifereICP_Brasil = "295";
	/** 296 - Rejeição: Certificado Assinatura erro no acesso a LCR = 296 */
	public static final String LBR_NFESTATUS_296_RejeiçãoCertificadoAssinaturaErroNoAcessoALCR = "296";
	/** 297 - Rejeição: Assinatura difere do calculado = 297 */
	public static final String LBR_NFESTATUS_297_RejeiçãoAssinaturaDifereDoCalculado = "297";
	/** 298 - Rejeição: Assinatura difere do padrão do Projeto = 298 */
	public static final String LBR_NFESTATUS_298_RejeiçãoAssinaturaDifereDoPadrãoDoProjeto = "298";
	/** 299 - Rejeição: XML da área de cabeçalho com codificação diferente de UTF-8 = 299 */
	public static final String LBR_NFESTATUS_299_RejeiçãoXMLDaÁreaDeCabeçalhoComCodificaçãoDiferenteDeUTF_8 = "299";
	/** 301 - Uso Denegado: Irregularidade fiscal do emitente = 301 */
	public static final String LBR_NFESTATUS_301_UsoDenegadoIrregularidadeFiscalDoEmitente = "301";
	/** 302 - Uso Denegado: Irregularidade fiscal do destinatário = 302 */
	public static final String LBR_NFESTATUS_302_UsoDenegadoIrregularidadeFiscalDoDestinatário = "302";
	/** 303 - Uso Denegado: Destinatário não habilitado a operar na UF = 303 */
	public static final String LBR_NFESTATUS_303_UsoDenegadoDestinatárioNãoHabilitadoAOperarNaUF = "303";
	/** 304 - Rejeição: Pedido de Cancelamento para NF-e com evento da Suframa = 304 */
	public static final String LBR_NFESTATUS_304_RejeiçãoPedidoDeCancelamentoParaNF_EComEventoDaSuframa = "304";
	/** 321 - Rejeição: NF-e de devolução não possui conhecimento fiscal referenciado = 321 */
	public static final String LBR_NFESTATUS_321_RejeiçãoNF_EDeDevoluçãoNãoPossuiConhecimentoFiscalReferenciado = "321";
	/** 322 - Rejeição: NF-e de devolução com mais de um documento fiscal referenciado = 322 */
	public static final String LBR_NFESTATUS_322_RejeiçãoNF_EDeDevoluçãoComMaisDeUmDocumentoFiscalReferenciado = "322";
	/** 323 - Rejeição: CNPJ autorizado para download inválido = 323 */
	public static final String LBR_NFESTATUS_323_RejeiçãoCNPJAutorizadoParaDownloadInválido = "323";
	/** 324 - Rejeição: CNPJ do destinatário ja autorizado para download = 324 */
	public static final String LBR_NFESTATUS_324_RejeiçãoCNPJDoDestinatárioJaAutorizadoParaDownload = "324";
	/** 325 - Rejeição: CPF autorizado para download inválido = 325 */
	public static final String LBR_NFESTATUS_325_RejeiçãoCPFAutorizadoParaDownloadInválido = "325";
	/** 326 - Rejeição: CPF do destinatário autorizado para download = 326 */
	public static final String LBR_NFESTATUS_326_RejeiçãoCPFDoDestinatárioAutorizadoParaDownload = "326";
	/** 327 - Rejeição: CFOP inválido para NF-e com finalidade de devolução = 327 */
	public static final String LBR_NFESTATUS_327_RejeiçãoCFOPInválidoParaNF_EComFinalidadeDeDevolução = "327";
	/** 328 - Rejeição: CFOP inválido para NF-e que não tem finalidade de devolução = 328 */
	public static final String LBR_NFESTATUS_328_RejeiçãoCFOPInválidoParaNF_EQueNãoTemFinalidadeDeDevolução = "328";
	/** 329 - Rejeição: Número da DI/DSI inválido = 329 */
	public static final String LBR_NFESTATUS_329_RejeiçãoNúmeroDaDIDSIInválido = "329";
	/** 330 - Rejeição: Informar o valor da AFRMM na importação por via marítima = 330 */
	public static final String LBR_NFESTATUS_330_RejeiçãoInformarOValorDaAFRMMNaImportaçãoPorViaMarítima = "330";
	/** 331 - Rejeição: Informar o CNPJ do adquirente ou do encomendante nesta forma de importação = 331 */
	public static final String LBR_NFESTATUS_331_RejeiçãoInformarOCNPJDoAdquirenteOuDoEncomendanteNestaFormaDeImportação = "331";
	/** 332 - Rejeição: CNPJ do adquirente ou do encomendante da importação inválido = 332 */
	public static final String LBR_NFESTATUS_332_RejeiçãoCNPJDoAdquirenteOuDoEncomendanteDaImportaçãoInválido = "332";
	/** 333 - Rejeição: Informar a UF do adquirente ou do encomendante nesta forma de importação = 333 */
	public static final String LBR_NFESTATUS_333_RejeiçãoInformarAUFDoAdquirenteOuDoEncomendanteNestaFormaDeImportação = "333";
	/** 334 - Rejeição: Número do processo de drawback não informado na importação = 334 */
	public static final String LBR_NFESTATUS_334_RejeiçãoNúmeroDoProcessoDeDrawbackNãoInformadoNaImportação = "334";
	/** 335 - Rejeição: Número do processo de drawback na importação inválido = 335 */
	public static final String LBR_NFESTATUS_335_RejeiçãoNúmeroDoProcessoDeDrawbackNaImportaçãoInválido = "335";
	/** 336 - Rejeição: Informado o grupo de exportação no item para CFOP que não é de exportação = 336 */
	public static final String LBR_NFESTATUS_336_RejeiçãoInformadoOGrupoDeExportaçãoNoItemParaCFOPQueNãoÉDeExportação = "336";
	/** 337 - Rejeição: Não informado o grupo de exportação no item = 337 */
	public static final String LBR_NFESTATUS_337_RejeiçãoNãoInformadoOGrupoDeExportaçãoNoItem = "337";
	/** 338 - Rejeição: Número de processo de drawback não informado na exportação = 338 */
	public static final String LBR_NFESTATUS_338_RejeiçãoNúmeroDeProcessoDeDrawbackNãoInformadoNaExportação = "338";
	/** 339 - Rejeição: Número de processo de drawback na exportação inválido = 339 */
	public static final String LBR_NFESTATUS_339_RejeiçãoNúmeroDeProcessoDeDrawbackNaExportaçãoInválido = "339";
	/** 340 - Rejeição: Não informado o grupo de exportação indireta no item = 340 */
	public static final String LBR_NFESTATUS_340_RejeiçãoNãoInformadoOGrupoDeExportaçãoIndiretaNoItem = "340";
	/** 341 - Rejeição: Número do registro de exportação inválido = 341 */
	public static final String LBR_NFESTATUS_341_RejeiçãoNúmeroDoRegistroDeExportaçãoInválido = "341";
	/** 342 - Rejeição: Chave de acesso informada na exportação indireta com DV inválido = 342 */
	public static final String LBR_NFESTATUS_342_RejeiçãoChaveDeAcessoInformadaNaExportaçãoIndiretaComDVInválido = "342";
	/** 343 - Rejeição: Modelo da NF-e informada na exportação indireta diferente de 55 = 343 */
	public static final String LBR_NFESTATUS_343_RejeiçãoModeloDaNF_EInformadaNaExportaçãoIndiretaDiferenteDe55 = "343";
	/** 344 - Rejeição: Duplicidade de NF-e informada na exportação indireta (chave acesso informada mais de uma vez) = 344 */
	public static final String LBR_NFESTATUS_344_RejeiçãoDuplicidadeDeNF_EInformadaNaExportaçãoIndiretaChaveAcessoInformadaMaisDeUmaVez = "344";
	/** 345 - Rejeição: Chave de acesso informada na exportação indireta não consta como NF-e referenciada = 345 */
	public static final String LBR_NFESTATUS_345_RejeiçãoChaveDeAcessoInformadaNaExportaçãoIndiretaNãoConstaComoNF_EReferenciada = "345";
	/** 346 - Rejeição: Somatório quantidades informadas na exportação indireta não corresponde total do item = 346 */
	public static final String LBR_NFESTATUS_346_RejeiçãoSomatórioQuantidadesInformadasNaExportaçãoIndiretaNãoCorrespondeTotalDoItem = "346";
	/** 347 - Rejeição: Descrição do combustível diverge da descrição adotada pela ANP = 347 */
	public static final String LBR_NFESTATUS_347_RejeiçãoDescriçãoDoCombustívelDivergeDaDescriçãoAdotadaPelaANP = "347";
	/** 348 - Rejeição: NFC-e com grupo RECOPI = 348 */
	public static final String LBR_NFESTATUS_348_RejeiçãoNFC_EComGrupoRECOPI = "348";
	/** 349 - Rejeição: Número RECOPI não informado = 349 */
	public static final String LBR_NFESTATUS_349_RejeiçãoNúmeroRECOPINãoInformado = "349";
	/** 350 - Rejeição: Número RECOPI inválido = 350 */
	public static final String LBR_NFESTATUS_350_RejeiçãoNúmeroRECOPIInválido = "350";
	/** 351 - Rejeição: Valor do ICMS da operação no ICMS-ST=51 difere do produto BC e alíquota = 351 */
	public static final String LBR_NFESTATUS_351_RejeiçãoValorDoICMSDaOperaçãoNoICMS_STEq51DifereDoProdutoBCEAlíquota = "351";
	/** 352 - Rejeição: Valor do ICMS diferido no CST=51 difere do produto Valor ICMS operação e ICMS diferido = 352 */
	public static final String LBR_NFESTATUS_352_RejeiçãoValorDoICMSDiferidoNoCSTEq51DifereDoProdutoValorICMSOperaçãoEICMSDiferido = "352";
	/** 353 - Rejeição: Valor do ICMS no CST=51 não corresponde a diferença do ICMS operação e ICMS diferido = 353 */
	public static final String LBR_NFESTATUS_353_RejeiçãoValorDoICMSNoCSTEq51NãoCorrespondeADiferençaDoICMSOperaçãoEICMSDiferido = "353";
	/** 354 - Rejeição: Informado grupo de devoluçãode tributos para NF-e e que não tem finalidade de devolução = 354 */
	public static final String LBR_NFESTATUS_354_RejeiçãoInformadoGrupoDeDevoluçãodeTributosParaNF_EEQueNãoTemFinalidadeDeDevolução = "354";
	/** 355 - Rejeição: Informar o local de saída do país no caso de exportação = 355 */
	public static final String LBR_NFESTATUS_355_RejeiçãoInformarOLocalDeSaídaDoPaísNoCasoDeExportação = "355";
	/** 356 - Rejeição: Informar o clocal de saída do pís somente no caso de exportação = 356 */
	public static final String LBR_NFESTATUS_356_RejeiçãoInformarOClocalDeSaídaDoPísSomenteNoCasoDeExportação = "356";
	/** 357 - Rejeição: Chave de acesso do grupo de exportação indireta inexistente = 357 */
	public static final String LBR_NFESTATUS_357_RejeiçãoChaveDeAcessoDoGrupoDeExportaçãoIndiretaInexistente = "357";
	/** 358 - Rejeição: Chave de acesso no grupo de exportação indireta cancelada ou denegada = 358 */
	public static final String LBR_NFESTATUS_358_RejeiçãoChaveDeAcessoNoGrupoDeExportaçãoIndiretaCanceladaOuDenegada = "358";
	/** 359 - Rejeição: NF-e de venda a Órgão público sem informar a Nota de Empenho = 359 */
	public static final String LBR_NFESTATUS_359_RejeiçãoNF_EDeVendaAÓrgãoPúblicoSemInformarANotaDeEmpenho = "359";
	/** 360 - Rejeição: NF-e com Nota de Empenho inválida para UF = 360 */
	public static final String LBR_NFESTATUS_360_RejeiçãoNF_EComNotaDeEmpenhoInválidaParaUF = "360";
	/** 361 - Rejeição: NF-e com Nota de Empenho inexistente na UF = 361 */
	public static final String LBR_NFESTATUS_361_RejeiçãoNF_EComNotaDeEmpenhoInexistenteNaUF = "361";
	/** 362 - Rejeição: Venda de combustível sem informação do Transportador = 362 */
	public static final String LBR_NFESTATUS_362_RejeiçãoVendaDeCombustívelSemInformaçãoDoTransportador = "362";
	/** 363 - Rejeição: Total do ISS difere do somatório dos itens = 363 */
	public static final String LBR_NFESTATUS_363_RejeiçãoTotalDoISSDifereDoSomatórioDosItens = "363";
	/** 364 - Rejeição: Total do valor da dedução do ISS difere do somatório dos itens = 364 */
	public static final String LBR_NFESTATUS_364_RejeiçãoTotalDoValorDaDeduçãoDoISSDifereDoSomatórioDosItens = "364";
	/** 365 - Rejeição: Total de outras retenções difere do somatório dos itens = 365 */
	public static final String LBR_NFESTATUS_365_RejeiçãoTotalDeOutrasRetençõesDifereDoSomatórioDosItens = "365";
	/** 366 - Rejeição: Total do desconto incondicionado do ISS difere do somatório dos itens = 366 */
	public static final String LBR_NFESTATUS_366_RejeiçãoTotalDoDescontoIncondicionadoDoISSDifereDoSomatórioDosItens = "366";
	/** 367 - Rejeição: Total do desconto condicionado do ISS difere do somatório dos itens = 367 */
	public static final String LBR_NFESTATUS_367_RejeiçãoTotalDoDescontoCondicionadoDoISSDifereDoSomatórioDosItens = "367";
	/** 368 - Rejeição: Total do ISS retido difere do somatório dos itens = 368 */
	public static final String LBR_NFESTATUS_368_RejeiçãoTotalDoISSRetidoDifereDoSomatórioDosItens = "368";
	/** 369 - Rejeição: Não informado o grupo avulsa na emissão pelo Fisco = 369 */
	public static final String LBR_NFESTATUS_369_RejeiçãoNãoInformadoOGrupoAvulsaNaEmissãoPeloFisco = "369";
	/** 370 - Rejeição: Nota Fiscal Avusa com tipo de emissão inválido = 370 */
	public static final String LBR_NFESTATUS_370_RejeiçãoNotaFiscalAvusaComTipoDeEmissãoInválido = "370";
	/** 401 - Rejeição: CPF do remetente inválido = 401 */
	public static final String LBR_NFESTATUS_401_RejeiçãoCPFDoRemetenteInválido = "401";
	/** 402 - Rejeição: XML da área de dados com codificação diferente de UTF-8 = 402 */
	public static final String LBR_NFESTATUS_402_RejeiçãoXMLDaÁreaDeDadosComCodificaçãoDiferenteDeUTF_8 = "402";
	/** 403 - Rejeição: O grupo de informações da NF-e avulsa é de uso exclusivo do Fisco = 403 */
	public static final String LBR_NFESTATUS_403_RejeiçãoOGrupoDeInformaçõesDaNF_EAvulsaÉDeUsoExclusivoDoFisco = "403";
	/** 404 - Rejeição: Uso de prefixo de namespace não permitido = 404 */
	public static final String LBR_NFESTATUS_404_RejeiçãoUsoDePrefixoDeNamespaceNãoPermitido = "404";
	/** 405 - Rejeição: Código do país do emitente: dígito inválido = 405 */
	public static final String LBR_NFESTATUS_405_RejeiçãoCódigoDoPaísDoEmitenteDígitoInválido = "405";
	/** 406 - Rejeição: Código do país do destinatário: dígito inválido = 406 */
	public static final String LBR_NFESTATUS_406_RejeiçãoCódigoDoPaísDoDestinatárioDígitoInválido = "406";
	/** 407 - Rejeição: O CPF só pode ser informado no campo emitente para a NF-e avulsa = 407 */
	public static final String LBR_NFESTATUS_407_RejeiçãoOCPFSóPodeSerInformadoNoCampoEmitenteParaANF_EAvulsa = "407";
	/** 409 - Rejeição: Campo cUF inexistente no elemento nfeCabecMsg do SOAP Header = 409 */
	public static final String LBR_NFESTATUS_409_RejeiçãoCampoCUFInexistenteNoElementoNfeCabecMsgDoSOAPHeader = "409";
	/** 410 - Rejeição: UF informada no campo cUF não é atendida pelo Web Service = 410 */
	public static final String LBR_NFESTATUS_410_RejeiçãoUFInformadaNoCampoCUFNãoÉAtendidaPeloWebService = "410";
	/** 411 - Rejeição: Campo versaoDados inexistente no elemento nfeCabecMsg do SOAP Header = 411 */
	public static final String LBR_NFESTATUS_411_RejeiçãoCampoVersaoDadosInexistenteNoElementoNfeCabecMsgDoSOAPHeader = "411";
	/** 417 - Rejeição: Total do ICMS superior ao valor limite estabelecido = 417 */
	public static final String LBR_NFESTATUS_417_RejeiçãoTotalDoICMSSuperiorAoValorLimiteEstabelecido = "417";
	/** 418 - Rejeição: Total do ICMS-ST superior ao limite estabelecido = 418 */
	public static final String LBR_NFESTATUS_418_RejeiçãoTotalDoICMS_STSuperiorAoLimiteEstabelecido = "418";
	/** 420 - Rejeição: Cancelamento para NF-e já cancelada = 420 */
	public static final String LBR_NFESTATUS_420_RejeiçãoCancelamentoParaNF_EJáCancelada = "420";
	/** 450 - Rejeição: Modelo da NF-e diferente de 55 = 450 */
	public static final String LBR_NFESTATUS_450_RejeiçãoModeloDaNF_EDiferenteDe55 = "450";
	/** 451 - Rejeição: Processo de emissão informado inválido = 451 */
	public static final String LBR_NFESTATUS_451_RejeiçãoProcessoDeEmissãoInformadoInválido = "451";
	/** 452 - Rejeição: Tipo Autorizador do Recibo diverge do Órgão Autorizador = 452 */
	public static final String LBR_NFESTATUS_452_RejeiçãoTipoAutorizadorDoReciboDivergeDoÓrgãoAutorizador = "452";
	/** 453 - Rejeição: Ano de inutilização não pode ser superior ao Ano atual = 453 */
	public static final String LBR_NFESTATUS_453_RejeiçãoAnoDeInutilizaçãoNãoPodeSerSuperiorAoAnoAtual = "453";
	/** 454 - Rejeição: Ano de inutilização não pode ser inferior a 2006 = 454 */
	public static final String LBR_NFESTATUS_454_RejeiçãoAnoDeInutilizaçãoNãoPodeSerInferiorA2006 = "454";
	/** 461 - Rejeição: Informado percentual de gás natural na mistura para produto diferente de GLP = 461 */
	public static final String LBR_NFESTATUS_461_RejeiçãoInformadoPercentualDeGásNaturalNaMisturaParaProdutoDiferenteDeGLP = "461";
	/** 465 - Rejeição: Número de controle da FCI inexistente = 465 */
	public static final String LBR_NFESTATUS_465_RejeiçãoNúmeroDeControleDaFCIInexistente = "465";
	/** 478 - Rejeição: Local da entrega não informado para faturamto direto de veículos novos = 478 */
	public static final String LBR_NFESTATUS_478_RejeiçãoLocalDaEntregaNãoInformadoParaFaturamtoDiretoDeVeículosNovos = "478";
	/** 479 - Rejeição: Emissor em situação irregular peranto o fisco = 479 */
	public static final String LBR_NFESTATUS_479_RejeiçãoEmissorEmSituaçãoIrregularPerantoOFisco = "479";
	/** 480 - Rejeição: CNPJ da Chave de acesso da NF-e informada diverge do CNPJ do emitente = 480 */
	public static final String LBR_NFESTATUS_480_RejeiçãoCNPJDaChaveDeAcessoDaNF_EInformadaDivergeDoCNPJDoEmitente = "480";
	/** 481 - Rejeição: UF da Chave de acesso diverge do código da UF informada = 481 */
	public static final String LBR_NFESTATUS_481_RejeiçãoUFDaChaveDeAcessoDivergeDoCódigoDaUFInformada = "481";
	/** 482 - Rejeição: AA da Chave de acesso inválida = 482 */
	public static final String LBR_NFESTATUS_482_RejeiçãoAADaChaveDeAcessoInválida = "482";
	/** 483 - Rejeição: MM da Chave de acesso inválido = 483 */
	public static final String LBR_NFESTATUS_483_RejeiçãoMMDaChaveDeAcessoInválido = "483";
	/** 484 - Rejeição: DPEC com tipo de emissão diferente de '4'(posição 35 da Chave de Acesso) = 484 */
	public static final String LBR_NFESTATUS_484_RejeiçãoDPECComTipoDeEmissãoDiferenteDe4Posição35DaChaveDeAcesso = "484";
	/** 485 - Rejeição: Número DPEC já existe no cadastro de DPEC = 485 */
	public static final String LBR_NFESTATUS_485_RejeiçãoNúmeroDPECJáExisteNoCadastroDeDPEC = "485";
	/** 486 - Rejeição: DPEC não localizada para o número de registro de DPEC informado = 486 */
	public static final String LBR_NFESTATUS_486_RejeiçãoDPECNãoLocalizadaParaONúmeroDeRegistroDeDPECInformado = "486";
	/** 487 - Rejeição: Nenhuma DPEC localizada para a chave de acesso informada = 487 */
	public static final String LBR_NFESTATUS_487_RejeiçãoNenhumaDPECLocalizadaParaAChaveDeAcessoInformada = "487";
	/** 488 - Rejeição: Requisitante de Consulta não tem o mesmo CNPJ base do emissor da DPEC = 488 */
	public static final String LBR_NFESTATUS_488_RejeiçãoRequisitanteDeConsultaNãoTemOMesmoCNPJBaseDoEmissorDaDPEC = "488";
	/** 489 - Rejeição: CNPJ informado inválido (DV ou zeros) = 489 */
	public static final String LBR_NFESTATUS_489_RejeiçãoCNPJInformadoInválidoDVOuZeros = "489";
	/** 490 - Rejeição: CPF informado inválido (DV ou zeros) = 490 */
	public static final String LBR_NFESTATUS_490_RejeiçãoCPFInformadoInválidoDVOuZeros = "490";
	/** 491 - Rejeição: O tpEvento informado inválido = 491 */
	public static final String LBR_NFESTATUS_491_RejeiçãoOTpEventoInformadoInválido = "491";
	/** 492 - Rejeição: O verEvento informado inválido = 492 */
	public static final String LBR_NFESTATUS_492_RejeiçãoOVerEventoInformadoInválido = "492";
	/** 493 - Rejeição: Evento não atende o Schema XML específico = 493 */
	public static final String LBR_NFESTATUS_493_RejeiçãoEventoNãoAtendeOSchemaXMLEspecífico = "493";
	/** 494 - Rejeição: Chave de Acesso inexistente = 494 */
	public static final String LBR_NFESTATUS_494_RejeiçãoChaveDeAcessoInexistente = "494";
	/** 501 - Rejeição: Verificar NFe autorizada há mais de 30 dias (720) horas = 501 */
	public static final String LBR_NFESTATUS_501_RejeiçãoVerificarNFeAutorizadaHáMaisDe30Dias720Horas = "501";
	/** 502 - Rejeição: Erro Chave Acesso - Campo Id ñ corresponde à conct. dos campos corresp = 502 */
	public static final String LBR_NFESTATUS_502_RejeiçãoErroChaveAcesso_CampoIdÑCorrespondeÀConctDosCamposCorresp = "502";
	/** 503 - Rejeição: Série utilizada fora da faixa permitida no SCAN (900-999) = 503 */
	public static final String LBR_NFESTATUS_503_RejeiçãoSérieUtilizadaForaDaFaixaPermitidaNoSCAN900_999 = "503";
	/** 504 - Rejeição: Data de Entrada/Saída posterior ao permitido = 504 */
	public static final String LBR_NFESTATUS_504_RejeiçãoDataDeEntradaSaídaPosteriorAoPermitido = "504";
	/** 505 - Rejeição: Data de Entrada/Saída anterior ao permitido = 505 */
	public static final String LBR_NFESTATUS_505_RejeiçãoDataDeEntradaSaídaAnteriorAoPermitido = "505";
	/** 506 - Rejeição: Data de Saída menor que a Data de Emissão = 506 */
	public static final String LBR_NFESTATUS_506_RejeiçãoDataDeSaídaMenorQueADataDeEmissão = "506";
	/** 507 - Rejeição: CNPJ destinatário/remetente ñ deve ser inform. em operação c/ exterior = 507 */
	public static final String LBR_NFESTATUS_507_RejeiçãoCNPJDestinatárioRemetenteÑDeveSerInformEmOperaçãoCExterior = "507";
	/** 508 - Rejeição: CNPJ com conteúdo nulo só é válido em operação com exterior = 508 */
	public static final String LBR_NFESTATUS_508_RejeiçãoCNPJComConteúdoNuloSóÉVálidoEmOperaçãoComExterior = "508";
	/** 509 - Rejeição: Inform. cód.município diferente de '9999999' para operação c/ exterior = 509 */
	public static final String LBR_NFESTATUS_509_RejeiçãoInformCódMunicípioDiferenteDe9999999ParaOperaçãoCExterior = "509";
	/** 510 - Rejeição: Oper.c/ Exterior e Cód.País destinatário é 1058(Brasil) ou ñ informado = 510 */
	public static final String LBR_NFESTATUS_510_RejeiçãoOperCExteriorECódPaísDestinatárioÉ1058BrasilOuÑInformado = "510";
	/** 511 - Rejeição: Não é Oper.c/ Exterior e Cód.País destinatário difere de 1058 (Brasil) = 511 */
	public static final String LBR_NFESTATUS_511_RejeiçãoNãoÉOperCExteriorECódPaísDestinatárioDifereDe1058Brasil = "511";
	/** 512 - Rejeição: CNPJ do Local de retirada inválido = 512 */
	public static final String LBR_NFESTATUS_512_RejeiçãoCNPJDoLocalDeRetiradaInválido = "512";
	/** 513 - Rejeição: Código Município Local Retirada deve ser 9999999 para UF retirada = EX = 513 */
	public static final String LBR_NFESTATUS_513_RejeiçãoCódigoMunicípioLocalRetiradaDeveSer9999999ParaUFRetiradaEqEX = "513";
	/** 514 - Rejeição: CNPJ do Local de Entrega inválido = 514 */
	public static final String LBR_NFESTATUS_514_RejeiçãoCNPJDoLocalDeEntregaInválido = "514";
	/** 515 - Rejeição: Código Munic. do Local de Entrega deve ser 9999999 p/ UF entrega=EX = 515 */
	public static final String LBR_NFESTATUS_515_RejeiçãoCódigoMunicDoLocalDeEntregaDeveSer9999999PUFEntregaEqEX = "515";
	/** 516 - Rejeição: Falha no schema XML - inexiste a tag raiz esperada para a mensagem = 516 */
	public static final String LBR_NFESTATUS_516_RejeiçãoFalhaNoSchemaXML_InexisteATagRaizEsperadaParaAMensagem = "516";
	/** 517 - Rejeição: Falha no schema XML - inexiste atributo versao na tag raiz da mensagem = 517 */
	public static final String LBR_NFESTATUS_517_RejeiçãoFalhaNoSchemaXML_InexisteAtributoVersaoNaTagRaizDaMensagem = "517";
	/** 518 - Rejeição: CFOP de entrada para NF-e de saída = 518 */
	public static final String LBR_NFESTATUS_518_RejeiçãoCFOPDeEntradaParaNF_EDeSaída = "518";
	/** 519 - Rejeição: CFOP de saída para NF-e de entrada = 519 */
	public static final String LBR_NFESTATUS_519_RejeiçãoCFOPDeSaídaParaNF_EDeEntrada = "519";
	/** 520 - Rejeição: CFOP de Operação com Exterior e UF destinatário difere de EX = 520 */
	public static final String LBR_NFESTATUS_520_RejeiçãoCFOPDeOperaçãoComExteriorEUFDestinatárioDifereDeEX = "520";
	/** 521 - Rejeição: CFOP não é de Operação com Exterior e UF destinatário é EX = 521 */
	public static final String LBR_NFESTATUS_521_RejeiçãoCFOPNãoÉDeOperaçãoComExteriorEUFDestinatárioÉEX = "521";
	/** 522 - Rejeição: CFOP de operação estadual e UF emitente <> da UF remetente contribuinte ICMS = 522 */
	public static final String LBR_NFESTATUS_522_RejeiçãoCFOPDeOperaçãoEstadualEUFEmitenteDaUFRemetenteContribuinteICMS = "522";
	/** 523 - Rejeição: CFOP não é de Operação Estadual e UF emitente igual a UF destinatário = 523 */
	public static final String LBR_NFESTATUS_523_RejeiçãoCFOPNãoÉDeOperaçãoEstadualEUFEmitenteIgualAUFDestinatário = "523";
	/** 524 - Rejeição: CFOP de Operação com Exterior e não informado NCM = 524 */
	public static final String LBR_NFESTATUS_524_RejeiçãoCFOPDeOperaçãoComExteriorENãoInformadoNCM = "524";
	/** 525 - Rejeição: CFOP de Importação e não informado dados da DI = 525 */
	public static final String LBR_NFESTATUS_525_RejeiçãoCFOPDeImportaçãoENãoInformadoDadosDaDI = "525";
	/** 526 - Rejeição: CFOP de Exportação e não informado Local de Embarque = 526 */
	public static final String LBR_NFESTATUS_526_RejeiçãoCFOPDeExportaçãoENãoInformadoLocalDeEmbarque = "526";
	/** 527 - Rejeição: Operação de Exportação com informação de ICMS incompatível = 527 */
	public static final String LBR_NFESTATUS_527_RejeiçãoOperaçãoDeExportaçãoComInformaçãoDeICMSIncompatível = "527";
	/** 528 - Rejeição: Valor do ICMS difere do produto BC e Alíquota = 528 */
	public static final String LBR_NFESTATUS_528_RejeiçãoValorDoICMSDifereDoProdutoBCEAlíquota = "528";
	/** 529 - Rejeição: NCM de informação obrigatória para produto tributado pelo IPI = 529 */
	public static final String LBR_NFESTATUS_529_RejeiçãoNCMDeInformaçãoObrigatóriaParaProdutoTributadoPeloIPI = "529";
	/** 530 - Rejeição: Operação com tributação de ISSQN sem informar a Inscrição Municipal = 530 */
	public static final String LBR_NFESTATUS_530_RejeiçãoOperaçãoComTributaçãoDeISSQNSemInformarAInscriçãoMunicipal = "530";
	/** 531 - Rejeição: Total da BC ICMS difere do somatório dos itens = 531 */
	public static final String LBR_NFESTATUS_531_RejeiçãoTotalDaBCICMSDifereDoSomatórioDosItens = "531";
	/** 532 - Rejeição: Total do ICMS difere do somatório dos itens = 532 */
	public static final String LBR_NFESTATUS_532_RejeiçãoTotalDoICMSDifereDoSomatórioDosItens = "532";
	/** 533 - Rejeição: Total da BC ICMS-ST difere do somatório dos itens = 533 */
	public static final String LBR_NFESTATUS_533_RejeiçãoTotalDaBCICMS_STDifereDoSomatórioDosItens = "533";
	/** 534 - Rejeição: Total do ICMS-ST difere do somatório dos itens = 534 */
	public static final String LBR_NFESTATUS_534_RejeiçãoTotalDoICMS_STDifereDoSomatórioDosItens = "534";
	/** 535 - Rejeição: Total do Frete difere do somatório dos itens = 535 */
	public static final String LBR_NFESTATUS_535_RejeiçãoTotalDoFreteDifereDoSomatórioDosItens = "535";
	/** 536 - Rejeição: Total do Seguro difere do somatório dos itens = 536 */
	public static final String LBR_NFESTATUS_536_RejeiçãoTotalDoSeguroDifereDoSomatórioDosItens = "536";
	/** 537 - Rejeição: Total do Desconto difere do somatório dos itens = 537 */
	public static final String LBR_NFESTATUS_537_RejeiçãoTotalDoDescontoDifereDoSomatórioDosItens = "537";
	/** 538 - Rejeição: Total do IPI difere do somatório dos itens = 538 */
	public static final String LBR_NFESTATUS_538_RejeiçãoTotalDoIPIDifereDoSomatórioDosItens = "538";
	/** 539 - Rejeição: Duplicidade de NF-e; com diferença na Chave de Acesso = 539 */
	public static final String LBR_NFESTATUS_539_RejeiçãoDuplicidadeDeNF_EComDiferençaNaChaveDeAcesso = "539";
	/** 540 - Rejeição: CPF do Local de Retirada inválido = 540 */
	public static final String LBR_NFESTATUS_540_RejeiçãoCPFDoLocalDeRetiradaInválido = "540";
	/** 541 - Rejeição: CPF do Local de Entrega inválido = 541 */
	public static final String LBR_NFESTATUS_541_RejeiçãoCPFDoLocalDeEntregaInválido = "541";
	/** 542 - Rejeição: CNPJ do Transportador inválido = 542 */
	public static final String LBR_NFESTATUS_542_RejeiçãoCNPJDoTransportadorInválido = "542";
	/** 543 - Rejeição: CPF do Transportador inválido = 543 */
	public static final String LBR_NFESTATUS_543_RejeiçãoCPFDoTransportadorInválido = "543";
	/** 544 - Rejeição: IE do Transportador inválida = 544 */
	public static final String LBR_NFESTATUS_544_RejeiçãoIEDoTransportadorInválida = "544";
	/** 545 - Rejeição: Falha schema XML - versão inform.na Dados do SOAPHeader difere da msg = 545 */
	public static final String LBR_NFESTATUS_545_RejeiçãoFalhaSchemaXML_VersãoInformNaDadosDoSOAPHeaderDifereDaMsg = "545";
	/** 546 - Rejeição: Erro na Chave de Acesso - Campo Id - falta a literal NFe = 546 */
	public static final String LBR_NFESTATUS_546_RejeiçãoErroNaChaveDeAcesso_CampoId_FaltaALiteralNFe = "546";
	/** 547 - Rejeição: Dígito Verificador da Chave de Acesso da NF-e Referenciada inválido = 547 */
	public static final String LBR_NFESTATUS_547_RejeiçãoDígitoVerificadorDaChaveDeAcessoDaNF_EReferenciadaInválido = "547";
	/** 548 - Rejeição: CNPJ da NF referenciada inválido. = 548 */
	public static final String LBR_NFESTATUS_548_RejeiçãoCNPJDaNFReferenciadaInválido = "548";
	/** 549 - Rejeição: CNPJ da NF referenciada de produtor inválido. = 549 */
	public static final String LBR_NFESTATUS_549_RejeiçãoCNPJDaNFReferenciadaDeProdutorInválido = "549";
	/** 550 - Rejeição: CPF da NF referenciada de produtor inválido. = 550 */
	public static final String LBR_NFESTATUS_550_RejeiçãoCPFDaNFReferenciadaDeProdutorInválido = "550";
	/** 551 - Rejeição: IE da NF referenciada de produtor inválido. = 551 */
	public static final String LBR_NFESTATUS_551_RejeiçãoIEDaNFReferenciadaDeProdutorInválido = "551";
	/** 552 - Rejeição: Dígito Verificador da Chave de Acesso do CT-e Referenciado inválido = 552 */
	public static final String LBR_NFESTATUS_552_RejeiçãoDígitoVerificadorDaChaveDeAcessoDoCT_EReferenciadoInválido = "552";
	/** 553 - Rejeição: Tipo autorizador do recibo diverge do Órgão Autorizador = 553 */
	public static final String LBR_NFESTATUS_553_RejeiçãoTipoAutorizadorDoReciboDivergeDoÓrgãoAutorizador = "553";
	/** 554 - Rejeição: Série difere da faixa 0-899 = 554 */
	public static final String LBR_NFESTATUS_554_RejeiçãoSérieDifereDaFaixa0_899 = "554";
	/** 555 - Rejeição: Tipo autorizador do protocolo diverge do Órgão Autorizador = 555 */
	public static final String LBR_NFESTATUS_555_RejeiçãoTipoAutorizadorDoProtocoloDivergeDoÓrgãoAutorizador = "555";
	/** 556 - Rejeição: Justific.de entrada em conting.não deve ser informada p/tp.emis.normal = 556 */
	public static final String LBR_NFESTATUS_556_RejeiçãoJustificDeEntradaEmContingNãoDeveSerInformadaPTpEmisNormal = "556";
	/** 557 - Rejeição: A Justificativa de entrada em contingência deve ser informada = 557 */
	public static final String LBR_NFESTATUS_557_RejeiçãoAJustificativaDeEntradaEmContingênciaDeveSerInformada = "557";
	/** 558 - Rejeição: Data de entrada em contingência posterior a data de emissão = 558 */
	public static final String LBR_NFESTATUS_558_RejeiçãoDataDeEntradaEmContingênciaPosteriorADataDeEmissão = "558";
	/** 559 - Rejeição: UF do Transportador não informada = 559 */
	public static final String LBR_NFESTATUS_559_RejeiçãoUFDoTransportadorNãoInformada = "559";
	/** 560 - Rejeição: CNPJ base do emitente <> CNPJ base da primeira NF-e do lote recebido = 560 */
	public static final String LBR_NFESTATUS_560_RejeiçãoCNPJBaseDoEmitenteCNPJBaseDaPrimeiraNF_EDoLoteRecebido = "560";
	/** 561 - Rejeição: Mês de Emissão informado na Chave de Acesso difere do Mês de Emissão d = 561 */
	public static final String LBR_NFESTATUS_561_RejeiçãoMêsDeEmissãoInformadoNaChaveDeAcessoDifereDoMêsDeEmissãoD = "561";
	/** 562 - Rejeição: Código Numérico informado da Chave de Acesso <> Código Numérico da NFe = 562 */
	public static final String LBR_NFESTATUS_562_RejeiçãoCódigoNuméricoInformadoDaChaveDeAcessoCódigoNuméricoDaNFe = "562";
	/** 563 - Rejeição: Já existe pedido de Inutilização com a mesma faixa de inutilização = 563 */
	public static final String LBR_NFESTATUS_563_RejeiçãoJáExistePedidoDeInutilizaçãoComAMesmaFaixaDeInutilização = "563";
	/** 564 - Rejeição: Total do Produto / Serviço difere do somatório dos itens = 564 */
	public static final String LBR_NFESTATUS_564_RejeiçãoTotalDoProdutoServiçoDifereDoSomatórioDosItens = "564";
	/** 565 - Rejeição: Falha no schema XML - inexiste a tag raiz esperada para o lote de NF-e = 565 */
	public static final String LBR_NFESTATUS_565_RejeiçãoFalhaNoSchemaXML_InexisteATagRaizEsperadaParaOLoteDeNF_E = "565";
	/** 567 - Rejeição: Falha schema XML - versão inform.na Dados do SOAPHeader difere do lote = 567 */
	public static final String LBR_NFESTATUS_567_RejeiçãoFalhaSchemaXML_VersãoInformNaDadosDoSOAPHeaderDifereDoLote = "567";
	/** 568 - Rejeição: Falha schema XML inexiste atributo versão na tag raiz do lote de NF-e = 568 */
	public static final String LBR_NFESTATUS_568_RejeiçãoFalhaSchemaXMLInexisteAtributoVersãoNaTagRaizDoLoteDeNF_E = "568";
	/** 569 - Rejeição: Data de entrada em contingência muito atrasada = 569 */
	public static final String LBR_NFESTATUS_569_RejeiçãoDataDeEntradaEmContingênciaMuitoAtrasada = "569";
	/** 570 - Rejeição: Tipo de emissão 3; 6 e 7 só é valido nas contingêncis SCAN/SVC = 570 */
	public static final String LBR_NFESTATUS_570_RejeiçãoTipoDeEmissão36E7SóÉValidoNasContingêncisSCANSVC = "570";
	/** 571 - Rejeição: O tpEmis informado diferente de 3 para contingência SCAN = 571 */
	public static final String LBR_NFESTATUS_571_RejeiçãoOTpEmisInformadoDiferenteDe3ParaContingênciaSCAN = "571";
	/** 572 - Rejeição: Erro Atributo ID do evento erro concatenação dos campos ('ID' + tpEvento + chNFe + nSeq) = 572 */
	public static final String LBR_NFESTATUS_572_RejeiçãoErroAtributoIDDoEventoErroConcatenaçãoDosCamposIDPlusTpEventoPlusChNFePlusNSeq = "572";
	/** 573 - Rejeição: Duplicidade de Evento = 573 */
	public static final String LBR_NFESTATUS_573_RejeiçãoDuplicidadeDeEvento = "573";
	/** 574 - Rejeição: O autor do evento diverge do emissor da NF-e = 574 */
	public static final String LBR_NFESTATUS_574_RejeiçãoOAutorDoEventoDivergeDoEmissorDaNF_E = "574";
	/** 575 - Rejeição: O autor do evento diverge do destinatário da NF-e = 575 */
	public static final String LBR_NFESTATUS_575_RejeiçãoOAutorDoEventoDivergeDoDestinatárioDaNF_E = "575";
	/** 576 - Rejeição: O autor do evento não é um órgão autorizado a gerar o evento = 576 */
	public static final String LBR_NFESTATUS_576_RejeiçãoOAutorDoEventoNãoÉUmÓrgãoAutorizadoAGerarOEvento = "576";
	/** 577 - Rejeição: A data do evento não pode ser menor que a data de emissão da NF-e = 577 */
	public static final String LBR_NFESTATUS_577_RejeiçãoADataDoEventoNãoPodeSerMenorQueADataDeEmissãoDaNF_E = "577";
	/** 578 - Rejeição: A data do evento não pode ser maior que a data do processamento = 578 */
	public static final String LBR_NFESTATUS_578_RejeiçãoADataDoEventoNãoPodeSerMaiorQueADataDoProcessamento = "578";
	/** 579 - Rejeição: A data do evento não pode ser menor que a data de autorização para NF-e não emitida em contingência = 579 */
	public static final String LBR_NFESTATUS_579_RejeiçãoADataDoEventoNãoPodeSerMenorQueADataDeAutorizaçãoParaNF_ENãoEmitidaEmContingência = "579";
	/** 580 - Rejeição: O evento exige uma NF-e autorizada = 580 */
	public static final String LBR_NFESTATUS_580_RejeiçãoOEventoExigeUmaNF_EAutorizada = "580";
	/** 587 - Rejeição: Usar somente o namespace padrão da NF-e = 587 */
	public static final String LBR_NFESTATUS_587_RejeiçãoUsarSomenteONamespacePadrãoDaNF_E = "587";
	/** 588 - Rejeição: Não é permitida a presença de caracteres de edição no início/fim da mensagem ou entre as tags da mensagem = 588 */
	public static final String LBR_NFESTATUS_588_RejeiçãoNãoÉPermitidaAPresençaDeCaracteresDeEdiçãoNoInícioFimDaMensagemOuEntreAsTagsDaMensagem = "588";
	/** 589 - Rejeição: Número do NSU informado superior ao maior NSU da base de dados da SEFAZ = 589 */
	public static final String LBR_NFESTATUS_589_RejeiçãoNúmeroDoNSUInformadoSuperiorAoMaiorNSUDaBaseDeDadosDaSEFAZ = "589";
	/** 590 - Rejeição: Informado CST para emissor do Simples Nacional = 590 */
	public static final String LBR_NFESTATUS_590_RejeiçãoInformadoCSTParaEmissorDoSimplesNacional = "590";
	/** 591 - Rejeição: Informado CSOSN para emissor que não é do Simples Nacional (CRT diferente de 1) = 591 */
	public static final String LBR_NFESTATUS_591_RejeiçãoInformadoCSOSNParaEmissorQueNãoÉDoSimplesNacionalCRTDiferenteDe1 = "591";
	/** 592 - Rejeição: A NF-e deve ter pelo menos um item de produto sujeito ao ICMS = 592 */
	public static final String LBR_NFESTATUS_592_RejeiçãoANF_EDeveTerPeloMenosUmItemDeProdutoSujeitoAoICMS = "592";
	/** 593 - Rejeição: CNPJ-Base consultado difere do CNPJ-Base do Certificado Digital = 593 */
	public static final String LBR_NFESTATUS_593_RejeiçãoCNPJ_BaseConsultadoDifereDoCNPJ_BaseDoCertificadoDigital = "593";
	/** 594 - Rejeição: O número de sequencia do evento informado é maior que o permitido = 594 */
	public static final String LBR_NFESTATUS_594_RejeiçãoONúmeroDeSequenciaDoEventoInformadoÉMaiorQueOPermitido = "594";
	/** 595 - Rejeição: Rejeição: A versão do leiaute da NF-e utilizada não é mais válida = 595 */
	public static final String LBR_NFESTATUS_595_RejeiçãoRejeiçãoAVersãoDoLeiauteDaNF_EUtilizadaNãoÉMaisVálida = "595";
	/** 596 - Rejeição: Rejeição: Ambiente de homologação indisponível para recepção de NF-e da versão 1.10. = 596 */
	public static final String LBR_NFESTATUS_596_RejeiçãoRejeiçãoAmbienteDeHomologaçãoIndisponívelParaRecepçãoDeNF_EDaVersão110 = "596";
	/** 597 - Rejeição: CFOP de Importação e não informado dados de IPI = 597 */
	public static final String LBR_NFESTATUS_597_RejeiçãoCFOPDeImportaçãoENãoInformadoDadosDeIPI = "597";
	/** 598 - Rejeição: NF-e emitida em ambiente de homologação com razão social <> de NF-e (Emitida homologação - S/vlr fiscal) = 598 */
	public static final String LBR_NFESTATUS_598_RejeiçãoNF_EEmitidaEmAmbienteDeHomologaçãoComRazãoSocialDeNF_EEmitidaHomologação_SVlrFiscal = "598";
	/** 599 - Rejeição: CFOP de Importação e não informado dados de II = 599 */
	public static final String LBR_NFESTATUS_599_RejeiçãoCFOPDeImportaçãoENãoInformadoDadosDeII = "599";
	/** 601 - Rejeição: Total do II difere do somatório dos itens = 601 */
	public static final String LBR_NFESTATUS_601_RejeiçãoTotalDoIIDifereDoSomatórioDosItens = "601";
	/** 602 - Rejeição: Total do PIS difere do somatório dos itens sujeitos ao ICMS = 602 */
	public static final String LBR_NFESTATUS_602_RejeiçãoTotalDoPISDifereDoSomatórioDosItensSujeitosAoICMS = "602";
	/** 603 - Rejeição: Total do COFINS difere do somatório dos itens sujeitos ao ICMS = 603 */
	public static final String LBR_NFESTATUS_603_RejeiçãoTotalDoCOFINSDifereDoSomatórioDosItensSujeitosAoICMS = "603";
	/** 604 - Rejeição: Total do vOutro difere do somatório dos itens = 604 */
	public static final String LBR_NFESTATUS_604_RejeiçãoTotalDoVOutroDifereDoSomatórioDosItens = "604";
	/** 605 - Rejeição: Total do vServ difere do somatório do vProd dos itens sujeitos ao ISSQN = 605 */
	public static final String LBR_NFESTATUS_605_RejeiçãoTotalDoVServDifereDoSomatórioDoVProdDosItensSujeitosAoISSQN = "605";
	/** 606 - Rejeição: Total do vBC do ISS difere do somatório dos itens = 606 */
	public static final String LBR_NFESTATUS_606_RejeiçãoTotalDoVBCDoISSDifereDoSomatórioDosItens = "606";
	/** 607 - Rejeição: Total do ISS difere do somatório dos itens = 607 */
	public static final String LBR_NFESTATUS_607_RejeiçãoTotalDoISSDifereDoSomatórioDosItens = "607";
	/** 608 - Rejeição: Total do PIS difere do somatório dos itens sujeitos ao ISSQN = 608 */
	public static final String LBR_NFESTATUS_608_RejeiçãoTotalDoPISDifereDoSomatórioDosItensSujeitosAoISSQN = "608";
	/** 609 - Rejeição: Total do COFINS difere do somatório dos itens sujeitos ao ISSQN = 609 */
	public static final String LBR_NFESTATUS_609_RejeiçãoTotalDoCOFINSDifereDoSomatórioDosItensSujeitosAoISSQN = "609";
	/** 610 - Rejeição: Total da NF difere do somatório dos Valores compõe o valor Total da NF = 610 */
	public static final String LBR_NFESTATUS_610_RejeiçãoTotalDaNFDifereDoSomatórioDosValoresCompõeOValorTotalDaNF = "610";
	/** 611 - Rejeição: cEAN inválido = 611 */
	public static final String LBR_NFESTATUS_611_RejeiçãoCEANInválido = "611";
	/** 612 - Rejeição: cEANTrib inválido = 612 */
	public static final String LBR_NFESTATUS_612_RejeiçãoCEANTribInválido = "612";
	/** 613 - Rejeição: Chave de Acesso difere da existente em BD = 613 */
	public static final String LBR_NFESTATUS_613_RejeiçãoChaveDeAcessoDifereDaExistenteEmBD = "613";
	/** 614 - Rejeição: Chave de Acesso inválida (Código UF inválido) = 614 */
	public static final String LBR_NFESTATUS_614_RejeiçãoChaveDeAcessoInválidaCódigoUFInválido = "614";
	/** 615 - Rejeição: Chave de Acesso inválida (Ano < 05 ou Ano maior que Ano corrente) = 615 */
	public static final String LBR_NFESTATUS_615_RejeiçãoChaveDeAcessoInválidaAnoLe05OuAnoMaiorQueAnoCorrente = "615";
	/** 616 - Rejeição: Chave de Acesso inválida (Mês < 1 ou Mês > 12) = 616 */
	public static final String LBR_NFESTATUS_616_RejeiçãoChaveDeAcessoInválidaMês1OuMês12 = "616";
	/** 617 - Rejeição: Chave de Acesso inválida (CNPJ zerado ou dígito inválido) = 617 */
	public static final String LBR_NFESTATUS_617_RejeiçãoChaveDeAcessoInválidaCNPJZeradoOuDígitoInválido = "617";
	/** 618 - Rejeição: Chave de Acesso inválida (modelo diferente de 55 e 65 ) = 618 */
	public static final String LBR_NFESTATUS_618_RejeiçãoChaveDeAcessoInválidaModeloDiferenteDe55E65 = "618";
	/** 619 - Rejeição: Chave de Acesso inválida (número NF = 0) = 619 */
	public static final String LBR_NFESTATUS_619_RejeiçãoChaveDeAcessoInválidaNúmeroNFEq0 = "619";
	/** 620 - Rejeição: Chave de Acesso difere da existente em BD = 620 */
	public static final String LBR_NFESTATUS_620_RejeiçãoChaveDeAcessoDifereDaExistenteEmBD = "620";
	/** 621 - Rejeição: CPF Emitente não cadastrado = 621 */
	public static final String LBR_NFESTATUS_621_RejeiçãoCPFEmitenteNãoCadastrado = "621";
	/** 622 - Rejeição: IE emitente não vinculada ao CPF = 622 */
	public static final String LBR_NFESTATUS_622_RejeiçãoIEEmitenteNãoVinculadaAoCPF = "622";
	/** 623 - Rejeição: CPF Destinatário não cadastrado = 623 */
	public static final String LBR_NFESTATUS_623_RejeiçãoCPFDestinatárioNãoCadastrado = "623";
	/** 624 - Rejeição: IE Destinatário não vinculada ao CPF = 624 */
	public static final String LBR_NFESTATUS_624_RejeiçãoIEDestinatárioNãoVinculadaAoCPF = "624";
	/** 625 - Rejeição: Inscrição SUFRAMA deve ser informada na venda com isenção para ZFM = 625 */
	public static final String LBR_NFESTATUS_625_RejeiçãoInscriçãoSUFRAMADeveSerInformadaNaVendaComIsençãoParaZFM = "625";
	/** 626 - Rejeição: O CFOP de operação isenta para ZFM diferente do previsto = 626 */
	public static final String LBR_NFESTATUS_626_RejeiçãoOCFOPDeOperaçãoIsentaParaZFMDiferenteDoPrevisto = "626";
	/** 627 - Rejeição: O valor do ICMS desonerado deve ser informado = 627 */
	public static final String LBR_NFESTATUS_627_RejeiçãoOValorDoICMSDesoneradoDeveSerInformado = "627";
	/** 628 - Rejeição: Total da NF superior ao valor limite estabelecido pela SEFAZ [Limite] = 628 */
	public static final String LBR_NFESTATUS_628_RejeiçãoTotalDaNFSuperiorAoValorLimiteEstabelecidoPelaSEFAZLimite = "628";
	/** 629 - Rejeição: Vlr Produto difere do produto Valor Unitário de Comercialização e quantidade comercial = 629 */
	public static final String LBR_NFESTATUS_629_RejeiçãoVlrProdutoDifereDoProdutoValorUnitárioDeComercializaçãoEQuantidadeComercial = "629";
	/** 630 - Rejeição: Vlr Produto difere do produto Valor Unitário de Tributação e quantidade tributável = 630 */
	public static final String LBR_NFESTATUS_630_RejeiçãoVlrProdutoDifereDoProdutoValorUnitárioDeTributaçãoEQuantidadeTributável = "630";
	/** 631 - Rejeição: CNPJ-Base do Destinatário difere do CNPJ-Base do Certificado Digital = 631 */
	public static final String LBR_NFESTATUS_631_RejeiçãoCNPJ_BaseDoDestinatárioDifereDoCNPJ_BaseDoCertificadoDigital = "631";
	/** 632 - Rejeição: Solicitação fora de prazo; a NF-e não está mais disponível para download = 632 */
	public static final String LBR_NFESTATUS_632_RejeiçãoSolicitaçãoForaDePrazoANF_ENãoEstáMaisDisponívelParaDownload = "632";
	/** 633 - Rejeição: NF-e indisponível para download devido a ausência de Manifestação do Destinatário = 633 */
	public static final String LBR_NFESTATUS_633_RejeiçãoNF_EIndisponívelParaDownloadDevidoAAusênciaDeManifestaçãoDoDestinatário = "633";
	/** 634 - Rejeição: Destinatário da NF-e não tem o mesmo CNPJ raiz do solicitante do download = 634 */
	public static final String LBR_NFESTATUS_634_RejeiçãoDestinatárioDaNF_ENãoTemOMesmoCNPJRaizDoSolicitanteDoDownload = "634";
	/** 635 - Rejeição: NF-e com mesmo número e série já transmitida e aguardando processamento = 635 */
	public static final String LBR_NFESTATUS_635_RejeiçãoNF_EComMesmoNúmeroESérieJáTransmitidaEAguardandoProcessamento = "635";
	/** 650 - Rejeição: Evento de 'Ciência da Operação' para NF-e Cancelada ou Denegada = 650 */
	public static final String LBR_NFESTATUS_650_RejeiçãoEventoDeCiênciaDaOperaçãoParaNF_ECanceladaOuDenegada = "650";
	/** 651 - Rejeição: Evento de 'Desconhecimento da Operação' para NF-e Cancelada ou Denegada = 651 */
	public static final String LBR_NFESTATUS_651_RejeiçãoEventoDeDesconhecimentoDaOperaçãoParaNF_ECanceladaOuDenegada = "651";
	/** 653 - Rejeição: NF-e Cancelada; arquivo indisponível para download = 653 */
	public static final String LBR_NFESTATUS_653_RejeiçãoNF_ECanceladaArquivoIndisponívelParaDownload = "653";
	/** 654 - Rejeição: NF-e Denegada; arquivo indisponível para download = 654 */
	public static final String LBR_NFESTATUS_654_RejeiçãoNF_EDenegadaArquivoIndisponívelParaDownload = "654";
	/** 655 - Rejeição: Evento de Ciência da Operação informado após a manifestação final do destinatário = 655 */
	public static final String LBR_NFESTATUS_655_RejeiçãoEventoDeCiênciaDaOperaçãoInformadoApósAManifestaçãoFinalDoDestinatário = "655";
	/** 656 - Rejeição: Consumo indevido = 656 */
	public static final String LBR_NFESTATUS_656_RejeiçãoConsumoIndevido = "656";
	/** 657 - Rejeição: Código do Órgão diverge do órgão autorizador = 657 */
	public static final String LBR_NFESTATUS_657_RejeiçãoCódigoDoÓrgãoDivergeDoÓrgãoAutorizador = "657";
	/** 658 - Rejeição: UF do destinatário da Chave de Acesso diverge da UF autorizadora = 658 */
	public static final String LBR_NFESTATUS_658_RejeiçãoUFDoDestinatárioDaChaveDeAcessoDivergeDaUFAutorizadora = "658";
	/** 660 - Rejeição: CFOP de Combustível e não informado grupo de combustível da NF-e = 660 */
	public static final String LBR_NFESTATUS_660_RejeiçãoCFOPDeCombustívelENãoInformadoGrupoDeCombustívelDaNF_E = "660";
	/** 661 - Rejeição: NF-e já existente para o número da DPEC informada = 661 */
	public static final String LBR_NFESTATUS_661_RejeiçãoNF_EJáExistenteParaONúmeroDaDPECInformada = "661";
	/** 662 - Rejeição: Numeração da DPEC está inutilizada na Base de Dados da SEFAZ = 662 */
	public static final String LBR_NFESTATUS_662_RejeiçãoNumeraçãoDaDPECEstáInutilizadaNaBaseDeDadosDaSEFAZ = "662";
	/** 663 - Rejeição: Alíq. ICMS maior que 4% na saída interestadual com produtos importados = 663 */
	public static final String LBR_NFESTATUS_663_RejeiçãoAlíqICMSMaiorQue4NaSaídaInterestadualComProdutosImportados = "663";
	/** 678 - Rejeição: NF referenciada com UF diferente da UF da NF-e complementar = 678 */
	public static final String LBR_NFESTATUS_678_RejeiçãoNFReferenciadaComUFDiferenteDaUFDaNF_EComplementar = "678";
	/** 679 - Rejeição: Modelo da NF-e referenciada diferente de 55 = 679 */
	public static final String LBR_NFESTATUS_679_RejeiçãoModeloDaNF_EReferenciadaDiferenteDe55 = "679";
	/** 680 - Rejeição: Duplicidade de NF-e referenciada (chave de acesso ref mais de uma vez) = 680 */
	public static final String LBR_NFESTATUS_680_RejeiçãoDuplicidadeDeNF_EReferenciadaChaveDeAcessoRefMaisDeUmaVez = "680";
	/** 681 - Rejeição: Duplicidade de NF Modelo 1 referenciada (CNPJ; Modelo Série e Número) = 681 */
	public static final String LBR_NFESTATUS_681_RejeiçãoDuplicidadeDeNFModelo1ReferenciadaCNPJModeloSérieENúmero = "681";
	/** 682 - Rejeição: Duplicidade de NF de produtor referenciada (IE; Modelo; Série e Número) = 682 */
	public static final String LBR_NFESTATUS_682_RejeiçãoDuplicidadeDeNFDeProdutorReferenciadaIEModeloSérieENúmero = "682";
	/** 683 - Rejeição: Modelo do CT-e referenciado diferente de 57 = 683 */
	public static final String LBR_NFESTATUS_683_RejeiçãoModeloDoCT_EReferenciadoDiferenteDe57 = "683";
	/** 684 - Rejeição: Duplicidade de Cupom Fiscal referenciado (Modelo; Número e Ordem e COO) = 684 */
	public static final String LBR_NFESTATUS_684_RejeiçãoDuplicidadeDeCupomFiscalReferenciadoModeloNúmeroEOrdemECOO = "684";
	/** 685 - Rejeição: Total do valor aproximado dos tributos difere do somatório dos itens = 685 */
	public static final String LBR_NFESTATUS_685_RejeiçãoTotalDoValorAproximadoDosTributosDifereDoSomatórioDosItens = "685";
	/** 686 - Rejeição: NF complementar referencia uma NF-e cancelada = 686 */
	public static final String LBR_NFESTATUS_686_RejeiçãoNFComplementarReferenciaUmaNF_ECancelada = "686";
	/** 687 - Rejeição: NF complementar referencia uma NF-e denegada = 687 */
	public static final String LBR_NFESTATUS_687_RejeiçãoNFComplementarReferenciaUmaNF_EDenegada = "687";
	/** 688 - Rejeição: NF referenciada de produtor com IE inexistente (nREF: xxx) = 688 */
	public static final String LBR_NFESTATUS_688_RejeiçãoNFReferenciadaDeProdutorComIEInexistenteNREFXxx = "688";
	/** 689 - Rejeição: NF referenciada de produtor com IE não vinculada ao CNPJ/CPF informado (nREF: xxx) = 689 */
	public static final String LBR_NFESTATUS_689_RejeiçãoNFReferenciadaDeProdutorComIENãoVinculadaAoCNPJCPFInformadoNREFXxx = "689";
	/** 690 - Rejeição: Pedido de cancelamento para NF-e com CT-e ou MDF-e = 690 */
	public static final String LBR_NFESTATUS_690_RejeiçãoPedidoDeCancelamentoParaNF_EComCT_EOuMDF_E = "690";
	/** 701 - Rejeição: NF-e não pode utilizar verão 3.00 = 701 */
	public static final String LBR_NFESTATUS_701_RejeiçãoNF_ENãoPodeUtilizarVerão300 = "701";
	/** 702 - Rejeição: NFC-e não é aceita pela UF do Emitente = 702 */
	public static final String LBR_NFESTATUS_702_RejeiçãoNFC_ENãoÉAceitaPelaUFDoEmitente = "702";
	/** 703 - Rejeição: Data-hora de emissão posterior ao horário de recebimento = 703 */
	public static final String LBR_NFESTATUS_703_RejeiçãoData_HoraDeEmissãoPosteriorAoHorárioDeRecebimento = "703";
	/** 704 - Rejeição: NFC-e com data-hora de emissão atrasada = 704 */
	public static final String LBR_NFESTATUS_704_RejeiçãoNFC_EComData_HoraDeEmissãoAtrasada = "704";
	/** 705 - Rejeição: NFC-e com data de entrada/saida = 705 */
	public static final String LBR_NFESTATUS_705_RejeiçãoNFC_EComDataDeEntradaSaida = "705";
	/** 706 - Rejeição: NFC-e para operação de entrada = 706 */
	public static final String LBR_NFESTATUS_706_RejeiçãoNFC_EParaOperaçãoDeEntrada = "706";
	/** 707 - Rejeição: NFC-e para operação interestadual ou com o exterior = 707 */
	public static final String LBR_NFESTATUS_707_RejeiçãoNFC_EParaOperaçãoInterestadualOuComOExterior = "707";
	/** 708 - Rejeição: NFC-e nao pode referenciar um documento fiscal = 708 */
	public static final String LBR_NFESTATUS_708_RejeiçãoNFC_ENaoPodeReferenciarUmDocumentoFiscal = "708";
	/** 709 - Rejeição: NFC-e com formato de DANFE inválido = 709 */
	public static final String LBR_NFESTATUS_709_RejeiçãoNFC_EComFormatoDeDANFEInválido = "709";
	/** 710 - Rejeição: NF-e com formado de DANFE inválido = 710 */
	public static final String LBR_NFESTATUS_710_RejeiçãoNF_EComFormadoDeDANFEInválido = "710";
	/** 711 - Rejeição: NF-e com contingência off-line = 711 */
	public static final String LBR_NFESTATUS_711_RejeiçãoNF_EComContingênciaOff_Line = "711";
	/** 712 - Rejeição: NFC-e com contingência off-line para a UF = 712 */
	public static final String LBR_NFESTATUS_712_RejeiçãoNFC_EComContingênciaOff_LineParaAUF = "712";
	/** 713 - Rejeição: Tipo de emissão diferente de 6 ou 7 para contingência da SVC acessada = 713 */
	public static final String LBR_NFESTATUS_713_RejeiçãoTipoDeEmissãoDiferenteDe6Ou7ParaContingênciaDaSVCAcessada = "713";
	/** 714 - Rejeição: NFC-e com contingência DPEC inexistente = 714 */
	public static final String LBR_NFESTATUS_714_RejeiçãoNFC_EComContingênciaDPECInexistente = "714";
	/** 715 - Rejeição: NFC-e com finalidade inválida = 715 */
	public static final String LBR_NFESTATUS_715_RejeiçãoNFC_EComFinalidadeInválida = "715";
	/** 716 - Rejeição: NFC-e em operaçoã não destinada a consumidor final = 716 */
	public static final String LBR_NFESTATUS_716_RejeiçãoNFC_EEmOperaçoãNãoDestinadaAConsumidorFinal = "716";
	/** 717 - Rejeição: NFC-e em operação não presencial = 717 */
	public static final String LBR_NFESTATUS_717_RejeiçãoNFC_EEmOperaçãoNãoPresencial = "717";
	/** 718 - Rejeição: NFC-e não deve informar IE de substituto tributário = 718 */
	public static final String LBR_NFESTATUS_718_RejeiçãoNFC_ENãoDeveInformarIEDeSubstitutoTributário = "718";
	/** 719 - Rejeição: NF-e sem identificação do destinatário = 719 */
	public static final String LBR_NFESTATUS_719_RejeiçãoNF_ESemIdentificaçãoDoDestinatário = "719";
	/** 720 - Rejeição: Na operação com exterior deve ser informada tag id Estrangeiro = 720 */
	public static final String LBR_NFESTATUS_720_RejeiçãoNaOperaçãoComExteriorDeveSerInformadaTagIdEstrangeiro = "720";
	/** 721 - Rejeição: Operação interestadual deve informar CNPJ ou CPF = 721 */
	public static final String LBR_NFESTATUS_721_RejeiçãoOperaçãoInterestadualDeveInformarCNPJOuCPF = "721";
	/** 722 - Rejeição: Operação interna com idEstrangeiro informado deve ser presencial = 722 */
	public static final String LBR_NFESTATUS_722_RejeiçãoOperaçãoInternaComIdEstrangeiroInformadoDeveSerPresencial = "722";
	/** 723 - Rejeição: Operação interna com idEstrangeiro informado deve ser para consumidor final = 723 */
	public static final String LBR_NFESTATUS_723_RejeiçãoOperaçãoInternaComIdEstrangeiroInformadoDeveSerParaConsumidorFinal = "723";
	/** 724 - Rejeição: NF-e sem o nome do destinatário = 724 */
	public static final String LBR_NFESTATUS_724_RejeiçãoNF_ESemONomeDoDestinatário = "724";
	/** 725 - Rejeição: NFC-e com CFOP inválido = 725 */
	public static final String LBR_NFESTATUS_725_RejeiçãoNFC_EComCFOPInválido = "725";
	/** 726 - Rejeição: NF-e sem a informação de endereço do destinatário = 726 */
	public static final String LBR_NFESTATUS_726_RejeiçãoNF_ESemAInformaçãoDeEndereçoDoDestinatário = "726";
	/** 727 - Rejeição: Operação com exterior e UF diferente de EX = 727 */
	public static final String LBR_NFESTATUS_727_RejeiçãoOperaçãoComExteriorEUFDiferenteDeEX = "727";
	/** 728 - Rejeição: NF-e sem informação da IE do destinatário = 728 */
	public static final String LBR_NFESTATUS_728_RejeiçãoNF_ESemInformaçãoDaIEDoDestinatário = "728";
	/** 729 - Rejeição: NFC-e sem informação da IE do destinatário = 729 */
	public static final String LBR_NFESTATUS_729_RejeiçãoNFC_ESemInformaçãoDaIEDoDestinatário = "729";
	/** 730 - Rejeição: NFC-e com inscrição SUFRAMA = 730 */
	public static final String LBR_NFESTATUS_730_RejeiçãoNFC_EComInscriçãoSUFRAMA = "730";
	/** 731 - Rejeição: CFOP de operação com exterior e idDest <> 3 = 731 */
	public static final String LBR_NFESTATUS_731_RejeiçãoCFOPDeOperaçãoComExteriorEIdDest3 = "731";
	/** 732 - Rejeição: CFOP de operação com interestadual e idDest <> 2 = 732 */
	public static final String LBR_NFESTATUS_732_RejeiçãoCFOPDeOperaçãoComInterestadualEIdDest2 = "732";
	/** 733 - Rejeição: CFOP de operação interna e idDest <> 1 = 733 */
	public static final String LBR_NFESTATUS_733_RejeiçãoCFOPDeOperaçãoInternaEIdDest1 = "733";
	/** 734 - Rejeição: NFC-e com unidade de comercialização inválida = 734 */
	public static final String LBR_NFESTATUS_734_RejeiçãoNFC_EComUnidadeDeComercializaçãoInválida = "734";
	/** 735 - Rejeição: NFC-e com unidade de tributação inválida = 735 */
	public static final String LBR_NFESTATUS_735_RejeiçãoNFC_EComUnidadeDeTributaçãoInválida = "735";
	/** 736 - Rejeição: NFC-e com grupo de veículos novos = 736 */
	public static final String LBR_NFESTATUS_736_RejeiçãoNFC_EComGrupoDeVeículosNovos = "736";
	/** 737 - Rejeição: NFC-e com grupo de medicamentos = 737 */
	public static final String LBR_NFESTATUS_737_RejeiçãoNFC_EComGrupoDeMedicamentos = "737";
	/** 738 - Rejeição: NFC-e com grupo de armamentos = 738 */
	public static final String LBR_NFESTATUS_738_RejeiçãoNFC_EComGrupoDeArmamentos = "738";
	/** 739 - Rejeição: NFC-e com grupo de combustíveis = 739 */
	public static final String LBR_NFESTATUS_739_RejeiçãoNFC_EComGrupoDeCombustíveis = "739";
	/** 740 - Rejeição: NFC-e com CST 51 - diferimento = 740 */
	public static final String LBR_NFESTATUS_740_RejeiçãoNFC_EComCST51_Diferimento = "740";
	/** 741 - Rejeição: NFC-e com partilha de CIMS entre UF = 741 */
	public static final String LBR_NFESTATUS_741_RejeiçãoNFC_EComPartilhaDeCIMSEntreUF = "741";
	/** 742 - Rejeição: NFC-e com grupo do IPI = 742 */
	public static final String LBR_NFESTATUS_742_RejeiçãoNFC_EComGrupoDoIPI = "742";
	/** 743 - Rejeição: NFC-e com grupo do II = 743 */
	public static final String LBR_NFESTATUS_743_RejeiçãoNFC_EComGrupoDoII = "743";
	/** 745 - Rejeição: NF-e sem grupo do PIS = 745 */
	public static final String LBR_NFESTATUS_745_RejeiçãoNF_ESemGrupoDoPIS = "745";
	/** 746 - Rejeição: NFC-e com grupo do PIS-ST = 746 */
	public static final String LBR_NFESTATUS_746_RejeiçãoNFC_EComGrupoDoPIS_ST = "746";
	/** 748 - Rejeição: NF-e sem grupo do COFINS = 748 */
	public static final String LBR_NFESTATUS_748_RejeiçãoNF_ESemGrupoDoCOFINS = "748";
	/** 749 - Rejeição: NF-e sem grupo do COFINS-ST = 749 */
	public static final String LBR_NFESTATUS_749_RejeiçãoNF_ESemGrupoDoCOFINS_ST = "749";
	/** 750 - Rejeição: NFC-e com valor total superior ao permitido para destinatário não identificado (código) = 750 */
	public static final String LBR_NFESTATUS_750_RejeiçãoNFC_EComValorTotalSuperiorAoPermitidoParaDestinatárioNãoIdentificadoCódigo = "750";
	/** 751 - Rejeição: NFC-e com valor total superior ao permitido para destinatário não identificado (nome) = 751 */
	public static final String LBR_NFESTATUS_751_RejeiçãoNFC_EComValorTotalSuperiorAoPermitidoParaDestinatárioNãoIdentificadoNome = "751";
	/** 752 - Rejeição: NFC-e com valor total superior ao permitido para destinatário não identificado (endereço) = 752 */
	public static final String LBR_NFESTATUS_752_RejeiçãoNFC_EComValorTotalSuperiorAoPermitidoParaDestinatárioNãoIdentificadoEndereço = "752";
	/** 753 - Rejeição: NFC-e sem frete = 753 */
	public static final String LBR_NFESTATUS_753_RejeiçãoNFC_ESemFrete = "753";
	/** 754 - Rejeição: NFC-e com dados do transportador = 754 */
	public static final String LBR_NFESTATUS_754_RejeiçãoNFC_EComDadosDoTransportador = "754";
	/** 755 - Rejeição: NFC-e com dados de retenção do ICMS no transporte = 755 */
	public static final String LBR_NFESTATUS_755_RejeiçãoNFC_EComDadosDeRetençãoDoICMSNoTransporte = "755";
	/** 756 - Rejeição: NFC-e com dados do veículo de transporte = 756 */
	public static final String LBR_NFESTATUS_756_RejeiçãoNFC_EComDadosDoVeículoDeTransporte = "756";
	/** 757 - Rejeição: NFC-e com dados de reboque do veículo de transporte = 757 */
	public static final String LBR_NFESTATUS_757_RejeiçãoNFC_EComDadosDeReboqueDoVeículoDeTransporte = "757";
	/** 758 - Rejeição: NFC-e com dados do vagão de transporte = 758 */
	public static final String LBR_NFESTATUS_758_RejeiçãoNFC_EComDadosDoVagãoDeTransporte = "758";
	/** 759 - Rejeição: NFC-e co dados da balsa de transporte = 759 */
	public static final String LBR_NFESTATUS_759_RejeiçãoNFC_ECoDadosDaBalsaDeTransporte = "759";
	/** 760 - Rejeição: NFC-e com dados de cobrança (fatura; duplicata) = 760 */
	public static final String LBR_NFESTATUS_760_RejeiçãoNFC_EComDadosDeCobrançaFaturaDuplicata = "760";
	/** 762 - Rejeição: NFC-e com dados de compra (empenho; pedido; contrato) = 762 */
	public static final String LBR_NFESTATUS_762_RejeiçãoNFC_EComDadosDeCompraEmpenhoPedidoContrato = "762";
	/** 763 - Rejeição: NFC-e com dados de aquisiçãod e cana = 763 */
	public static final String LBR_NFESTATUS_763_RejeiçãoNFC_EComDadosDeAquisiçãodECana = "763";
	/** 765 - Rejeição: Lote só poderá conter NF-e ou NFC-e = 765 */
	public static final String LBR_NFESTATUS_765_RejeiçãoLoteSóPoderáConterNF_EOuNFC_E = "765";
	/** 766 - Rejeição: NFC-e com CST 50-suspenção = 766 */
	public static final String LBR_NFESTATUS_766_RejeiçãoNFC_EComCST50_Suspenção = "766";
	/** 767 - Rejeição: NFC-e com somatório dos pagamentos diferente do total da Nota Fiscal = 767 */
	public static final String LBR_NFESTATUS_767_RejeiçãoNFC_EComSomatórioDosPagamentosDiferenteDoTotalDaNotaFiscal = "767";
	/** 768 - Rejeição: NF-e não deve possuir o grupo de formas de pagamento = 768 */
	public static final String LBR_NFESTATUS_768_RejeiçãoNF_ENãoDevePossuirOGrupoDeFormasDePagamento = "768";
	/** 769 - Rejeição: NFC-e deve possuir o grupo de formas de pagamento = 769 */
	public static final String LBR_NFESTATUS_769_RejeiçãoNFC_EDevePossuirOGrupoDeFormasDePagamento = "769";
	/** 771 - Rejeição: Operação interestadual e UF de destino com EX = 771 */
	public static final String LBR_NFESTATUS_771_RejeiçãoOperaçãoInterestadualEUFDeDestinoComEX = "771";
	/** 772 - Rejeição: Operação interestadual e UF de destino igual à UF do emitente = 772 */
	public static final String LBR_NFESTATUS_772_RejeiçãoOperaçãoInterestadualEUFDeDestinoIgualÀUFDoEmitente = "772";
	/** 773 - Rejeição: Operação interna e UF de destino difere da UF do emitente = 773 */
	public static final String LBR_NFESTATUS_773_RejeiçãoOperaçãoInternaEUFDeDestinoDifereDaUFDoEmitente = "773";
	/** 774 - Rejeição: NFC-e com indicador de item não participante do total = 774 */
	public static final String LBR_NFESTATUS_774_RejeiçãoNFC_EComIndicadorDeItemNãoParticipanteDoTotal = "774";
	/** 775 - Rejeição: Modelo da NFC-e diferente de 65 = 775 */
	public static final String LBR_NFESTATUS_775_RejeiçãoModeloDaNFC_EDiferenteDe65 = "775";
	/** 777 - Rejeição: NFC-e deve informar NCM completo = 777 */
	public static final String LBR_NFESTATUS_777_RejeiçãoNFC_EDeveInformarNCMCompleto = "777";
	/** 778 - Rejeição: Informado NCM inexistente = 778 */
	public static final String LBR_NFESTATUS_778_RejeiçãoInformadoNCMInexistente = "778";
	/** 779 - Rejeição: NFC-e com NCM incompatível = 779 */
	public static final String LBR_NFESTATUS_779_RejeiçãoNFC_EComNCMIncompatível = "779";
	/** 780 - Rejeição: Total da NFC-e superior ao valor limite estabelecido pela SEFAZ = 780 */
	public static final String LBR_NFESTATUS_780_RejeiçãoTotalDaNFC_ESuperiorAoValorLimiteEstabelecidoPelaSEFAZ = "780";
	/** 781 - Rejeição: Emissor não habilitado para emissão de NFC-e = 781 */
	public static final String LBR_NFESTATUS_781_RejeiçãoEmissorNãoHabilitadoParaEmissãoDeNFC_E = "781";
	/** 782 - Rejeição: NFC-e não é autorizada pelo SCAN = 782 */
	public static final String LBR_NFESTATUS_782_RejeiçãoNFC_ENãoÉAutorizadaPeloSCAN = "782";
	/** 783 - Rejeição: NFC-e não é autorizada pelo SVC = 783 */
	public static final String LBR_NFESTATUS_783_RejeiçãoNFC_ENãoÉAutorizadaPeloSVC = "783";
	/** 784 - Rejeição: NF-e com indicativo de NFC-e com entrega a domicilio = 784 */
	public static final String LBR_NFESTATUS_784_RejeiçãoNF_EComIndicativoDeNFC_EComEntregaADomicilio = "784";
	/** 785 - Rejeição: NFC-e com entrega a domicilio não permitida pela UF = 785 */
	public static final String LBR_NFESTATUS_785_RejeiçãoNFC_EComEntregaADomicilioNãoPermitidaPelaUF = "785";
	/** 786 - Rejeição: NFC-e de entrega a domicilio sem dados dos transportador = 786 */
	public static final String LBR_NFESTATUS_786_RejeiçãoNFC_EDeEntregaADomicilioSemDadosDosTransportador = "786";
	/** 787 - Rejeição: NFC-e de entrega a domicilio sem a identificação do destinatário = 787 */
	public static final String LBR_NFESTATUS_787_RejeiçãoNFC_EDeEntregaADomicilioSemAIdentificaçãoDoDestinatário = "787";
	/** 788 - Rejeição: NFC-e de entrega a domicílio sem o endereço do destinatário = 788 */
	public static final String LBR_NFESTATUS_788_RejeiçãoNFC_EDeEntregaADomicílioSemOEndereçoDoDestinatário = "788";
	/** 789 - Rejeição: NFC-e para destinatário contribuinte de ICMS = 789 */
	public static final String LBR_NFESTATUS_789_RejeiçãoNFC_EParaDestinatárioContribuinteDeICMS = "789";
	/** 790 - Rejeição: Operação com exterior para destinatário contribuinte do ICMS = 790 */
	public static final String LBR_NFESTATUS_790_RejeiçãoOperaçãoComExteriorParaDestinatárioContribuinteDoICMS = "790";
	/** 791 - Rejeição: NF-e com indicação de destinatário isento de IE; com a informação da IE do destinatario = 791 */
	public static final String LBR_NFESTATUS_791_RejeiçãoNF_EComIndicaçãoDeDestinatárioIsentoDeIEComAInformaçãoDaIEDoDestinatario = "791";
	/** 792 - Rejeição: Informada a IE do destinatário para operação com destinatário do exterior = 792 */
	public static final String LBR_NFESTATUS_792_RejeiçãoInformadaAIEDoDestinatárioParaOperaçãoComDestinatárioDoExterior = "792";
	/** 793 - Rejeição: Informado capítulo do NCM inexistente = 793 */
	public static final String LBR_NFESTATUS_793_RejeiçãoInformadoCapítuloDoNCMInexistente = "793";
	/** 999 - Rejeição: Erro não catalogado = 999 */
	public static final String LBR_NFESTATUS_999_RejeiçãoErroNãoCatalogado = "999";
	/** Set NFe Status.
		@param LBR_NFeStatus NFe Status	  */
	public void setLBR_NFeStatus (String LBR_NFeStatus)
	{

		set_Value (COLUMNNAME_LBR_NFeStatus, LBR_NFeStatus);
	}

	/** Get NFe Status.
		@return NFe Status	  */
	public String getLBR_NFeStatus () 
	{
		return (String)get_Value(COLUMNNAME_LBR_NFeStatus);
	}

	/** FS-IA = 2 */
	public static final String LBR_NFETPEMIS_FS_IA = "2";
	/** SCAN = 3 */
	public static final String LBR_NFETPEMIS_SCAN = "3";
	/** DPEC = 4 */
	public static final String LBR_NFETPEMIS_DPEC = "4";
	/** FS-DA = 5 */
	public static final String LBR_NFETPEMIS_FS_DA = "5";
	/** SVC-AN = 6 */
	public static final String LBR_NFETPEMIS_SVC_AN = "6";
	/** SVC-RS = 7 */
	public static final String LBR_NFETPEMIS_SVC_RS = "7";
	/** Off-line = 9 */
	public static final String LBR_NFETPEMIS_Off_Line = "9";
	/** Normal = 1 */
	public static final String LBR_NFETPEMIS_Normal = "1";
	/** Set NFe Issue Type.
		@param LBR_NFeTpEmis NFe Issue Type	  */
	public void setLBR_NFeTpEmis (String LBR_NFeTpEmis)
	{

		set_Value (COLUMNNAME_LBR_NFeTpEmis, LBR_NFeTpEmis);
	}

	/** Get NFe Issue Type.
		@return NFe Issue Type	  */
	public String getLBR_NFeTpEmis () 
	{
		return (String)get_Value(COLUMNNAME_LBR_NFeTpEmis);
	}

	/** Set Brazilian Fiscal Invoice (Nota Fiscal).
		@param LBR_NotaFiscal_ID 
		Brazilian Fiscal Invoice (Nota Fiscal) Identifier
	  */
	public void setLBR_NotaFiscal_ID (int LBR_NotaFiscal_ID)
	{
		if (LBR_NotaFiscal_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_NotaFiscal_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_NotaFiscal_ID, Integer.valueOf(LBR_NotaFiscal_ID));
	}

	/** Get Brazilian Fiscal Invoice (Nota Fiscal).
		@return Brazilian Fiscal Invoice (Nota Fiscal) Identifier
	  */
	public int getLBR_NotaFiscal_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_NotaFiscal_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Brazilian Fiscal Invoice (Nota Fiscal).
		@param LBR_NotaFiscal_UU 
		Brazilian Fiscal Invoice (Nota Fiscal) Identifier
	  */
	public void setLBR_NotaFiscal_UU (String LBR_NotaFiscal_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_NotaFiscal_UU, LBR_NotaFiscal_UU);
	}

	/** Get Brazilian Fiscal Invoice (Nota Fiscal).
		@return Brazilian Fiscal Invoice (Nota Fiscal) Identifier
	  */
	public String getLBR_NotaFiscal_UU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_NotaFiscal_UU);
	}

	/** Set Declarant Date Delivered.
		@param LBR_OwnDateDelivered 
		Date Delivered from the point of view of the declarant
	  */
	public void setLBR_OwnDateDelivered (Timestamp LBR_OwnDateDelivered)
	{
		set_Value (COLUMNNAME_LBR_OwnDateDelivered, LBR_OwnDateDelivered);
	}

	/** Get Declarant Date Delivered.
		@return Date Delivered from the point of view of the declarant
	  */
	public Timestamp getLBR_OwnDateDelivered () 
	{
		return (Timestamp)get_Value(COLUMNNAME_LBR_OwnDateDelivered);
	}

	/** Set Tax Payer Info.
		@param LBR_TaxPayerInfo 
		Tax Payer Information
	  */
	public void setLBR_TaxPayerInfo (String LBR_TaxPayerInfo)
	{
		set_Value (COLUMNNAME_LBR_TaxPayerInfo, LBR_TaxPayerInfo);
	}

	/** Get Tax Payer Info.
		@return Tax Payer Information
	  */
	public String getLBR_TaxPayerInfo () 
	{
		return (String)get_Value(COLUMNNAME_LBR_TaxPayerInfo);
	}

	/** End User = END */
	public static final String LBR_TRANSACTIONTYPE_EndUser = "END";
	/** Export = EXP */
	public static final String LBR_TRANSACTIONTYPE_Export = "EXP";
	/** Import = IMP */
	public static final String LBR_TRANSACTIONTYPE_Import = "IMP";
	/** Manufacturing = MAN */
	public static final String LBR_TRANSACTIONTYPE_Manufacturing = "MAN";
	/** Resale = RES */
	public static final String LBR_TRANSACTIONTYPE_Resale = "RES";
	/** Set Transaction Type.
		@param LBR_TransactionType 
		Identifies a Transaction Type
	  */
	public void setLBR_TransactionType (String LBR_TransactionType)
	{

		set_Value (COLUMNNAME_LBR_TransactionType, LBR_TransactionType);
	}

	/** Get Transaction Type.
		@return Identifies a Transaction Type
	  */
	public String getLBR_TransactionType () 
	{
		return (String)get_Value(COLUMNNAME_LBR_TransactionType);
	}

	/** Set Unidentified Customer’s CPF Number.
		@param LBR_UnidentifiedCustomerCPF Unidentified Customer’s CPF Number	  */
	public void setLBR_UnidentifiedCustomerCPF (String LBR_UnidentifiedCustomerCPF)
	{
		set_Value (COLUMNNAME_LBR_UnidentifiedCustomerCPF, LBR_UnidentifiedCustomerCPF);
	}

	/** Get Unidentified Customer’s CPF Number.
		@return Unidentified Customer’s CPF Number	  */
	public String getLBR_UnidentifiedCustomerCPF () 
	{
		return (String)get_Value(COLUMNNAME_LBR_UnidentifiedCustomerCPF);
	}

	public org.compiere.model.I_M_RMA getM_RMA() throws RuntimeException
    {
		return (org.compiere.model.I_M_RMA)MTable.get(getCtx(), org.compiere.model.I_M_RMA.Table_Name)
			.getPO(getM_RMA_ID(), get_TrxName());	}

	/** Set RMA.
		@param M_RMA_ID 
		Return Material Authorization
	  */
	public void setM_RMA_ID (int M_RMA_ID)
	{
		if (M_RMA_ID < 1) 
			set_Value (COLUMNNAME_M_RMA_ID, null);
		else 
			set_Value (COLUMNNAME_M_RMA_ID, Integer.valueOf(M_RMA_ID));
	}

	/** Get RMA.
		@return Return Material Authorization
	  */
	public int getM_RMA_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_M_RMA_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Pagamento a vista = 0 */
	public static final String PAYMENTRULE_PagamentoAVista = "0";
	/** Pagamento a prazo = 1 */
	public static final String PAYMENTRULE_PagamentoAPrazo = "1";
	/** Outros = 2 */
	public static final String PAYMENTRULE_Outros = "2";
	/** Set Payment Rule.
		@param PaymentRule 
		How you pay the invoice
	  */
	public void setPaymentRule (String PaymentRule)
	{

		set_Value (COLUMNNAME_PaymentRule, PaymentRule);
	}

	/** Get Payment Rule.
		@return How you pay the invoice
	  */
	public String getPaymentRule () 
	{
		return (String)get_Value(COLUMNNAME_PaymentRule);
	}

	/** Set Posted.
		@param Posted 
		Posting status
	  */
	public void setPosted (boolean Posted)
	{
		set_Value (COLUMNNAME_Posted, Boolean.valueOf(Posted));
	}

	/** Get Posted.
		@return Posting status
	  */
	public boolean isPosted () 
	{
		Object oo = get_Value(COLUMNNAME_Posted);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Processed.
		@param Processed 
		The document has been processed
	  */
	public void setProcessed (boolean Processed)
	{
		set_Value (COLUMNNAME_Processed, Boolean.valueOf(Processed));
	}

	/** Get Processed.
		@return The document has been processed
	  */
	public boolean isProcessed () 
	{
		Object oo = get_Value(COLUMNNAME_Processed);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Processed On.
		@param ProcessedOn 
		The date+time (expressed in decimal format) when the document has been processed
	  */
	public void setProcessedOn (BigDecimal ProcessedOn)
	{
		set_Value (COLUMNNAME_ProcessedOn, ProcessedOn);
	}

	/** Get Processed On.
		@return The date+time (expressed in decimal format) when the document has been processed
	  */
	public BigDecimal getProcessedOn () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_ProcessedOn);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Process Now.
		@param Processing Process Now	  */
	public void setProcessing (boolean Processing)
	{
		set_Value (COLUMNNAME_Processing, Boolean.valueOf(Processing));
	}

	/** Get Process Now.
		@return Process Now	  */
	public boolean isProcessing () 
	{
		Object oo = get_Value(COLUMNNAME_Processing);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Total Lines.
		@param TotalLines 
		Total of all document lines
	  */
	public void setTotalLines (BigDecimal TotalLines)
	{
		set_Value (COLUMNNAME_TotalLines, TotalLines);
	}

	/** Get Total Lines.
		@return Total of all document lines
	  */
	public BigDecimal getTotalLines () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_TotalLines);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Version No.
		@param VersionNo 
		Version Number
	  */
	public void setVersionNo (String VersionNo)
	{
		set_Value (COLUMNNAME_VersionNo, VersionNo);
	}

	/** Get Version No.
		@return Version Number
	  */
	public String getVersionNo () 
	{
		return (String)get_Value(COLUMNNAME_VersionNo);
	}
}