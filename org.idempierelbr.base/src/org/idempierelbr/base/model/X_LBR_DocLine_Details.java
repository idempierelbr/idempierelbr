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
package org.idempierelbr.base.model;

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.util.Properties;
import org.compiere.model.*;
import org.compiere.util.Env;

/** Generated Model for LBR_DocLine_Details
 *  @author iDempiere (generated) 
 *  @version Release 2.0 - $Id$ */
public class X_LBR_DocLine_Details extends PO implements I_LBR_DocLine_Details, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20140318L;

    /** Standard Constructor */
    public X_LBR_DocLine_Details (Properties ctx, int LBR_DocLine_Details_ID, String trxName)
    {
      super (ctx, LBR_DocLine_Details_ID, trxName);
      /** if (LBR_DocLine_Details_ID == 0)
        {
			setLBR_IsGrossAmtInTotal (true);
// Y
        } */
    }

    /** Load Constructor */
    public X_LBR_DocLine_Details (Properties ctx, ResultSet rs, String trxName)
    {
      super (ctx, rs, trxName);
    }

    /** AccessLevel
      * @return 3 - Client - Org 
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
      StringBuffer sb = new StringBuffer ("X_LBR_DocLine_Details[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	public org.compiere.model.I_C_InvoiceLine getC_InvoiceLine() throws RuntimeException
    {
		return (org.compiere.model.I_C_InvoiceLine)MTable.get(getCtx(), org.compiere.model.I_C_InvoiceLine.Table_Name)
			.getPO(getC_InvoiceLine_ID(), get_TrxName());	}

	/** Set Invoice Line.
		@param C_InvoiceLine_ID 
		Invoice Detail Line
	  */
	public void setC_InvoiceLine_ID (int C_InvoiceLine_ID)
	{
		if (C_InvoiceLine_ID < 1) 
			set_Value (COLUMNNAME_C_InvoiceLine_ID, null);
		else 
			set_Value (COLUMNNAME_C_InvoiceLine_ID, Integer.valueOf(C_InvoiceLine_ID));
	}

	/** Get Invoice Line.
		@return Invoice Detail Line
	  */
	public int getC_InvoiceLine_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_InvoiceLine_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.compiere.model.I_C_OrderLine getC_OrderLine() throws RuntimeException
    {
		return (org.compiere.model.I_C_OrderLine)MTable.get(getCtx(), org.compiere.model.I_C_OrderLine.Table_Name)
			.getPO(getC_OrderLine_ID(), get_TrxName());	}

	/** Set Sales Order Line.
		@param C_OrderLine_ID 
		Sales Order Line
	  */
	public void setC_OrderLine_ID (int C_OrderLine_ID)
	{
		if (C_OrderLine_ID < 1) 
			set_Value (COLUMNNAME_C_OrderLine_ID, null);
		else 
			set_Value (COLUMNNAME_C_OrderLine_ID, Integer.valueOf(C_OrderLine_ID));
	}

	/** Get Sales Order Line.
		@return Sales Order Line
	  */
	public int getC_OrderLine_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_OrderLine_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Discount Amount.
		@param DiscountAmt 
		Calculated amount of discount
	  */
	public void setDiscountAmt (BigDecimal DiscountAmt)
	{
		set_Value (COLUMNNAME_DiscountAmt, DiscountAmt);
	}

	/** Get Discount Amount.
		@return Calculated amount of discount
	  */
	public BigDecimal getDiscountAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_DiscountAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Freight Amount.
		@param FreightAmt 
		Freight Amount 
	  */
	public void setFreightAmt (BigDecimal FreightAmt)
	{
		set_Value (COLUMNNAME_FreightAmt, FreightAmt);
	}

	/** Get Freight Amount.
		@return Freight Amount 
	  */
	public BigDecimal getFreightAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_FreightAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Insured Amount.
		@param InsuredAmount Insured Amount	  */
	public void setInsuredAmount (BigDecimal InsuredAmount)
	{
		set_Value (COLUMNNAME_InsuredAmount, InsuredAmount);
	}

	/** Get Insured Amount.
		@return Insured Amount	  */
	public BigDecimal getInsuredAmount () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_InsuredAmount);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	public I_LBR_CFOP getLBR_CFOP() throws RuntimeException
    {
		return (I_LBR_CFOP)MTable.get(getCtx(), I_LBR_CFOP.Table_Name)
			.getPO(getLBR_CFOP_ID(), get_TrxName());	}

	/** Set CFOP.
		@param LBR_CFOP_ID 
		Indentifies the CFOP
	  */
	public void setLBR_CFOP_ID (int LBR_CFOP_ID)
	{
		if (LBR_CFOP_ID < 1) 
			set_Value (COLUMNNAME_LBR_CFOP_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_CFOP_ID, Integer.valueOf(LBR_CFOP_ID));
	}

	/** Get CFOP.
		@return Indentifies the CFOP
	  */
	public int getLBR_CFOP_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_CFOP_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Doc Line Details.
		@param LBR_DocLine_Details_ID 
		Doc Line Details
	  */
	public void setLBR_DocLine_Details_ID (int LBR_DocLine_Details_ID)
	{
		if (LBR_DocLine_Details_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_DocLine_Details_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_DocLine_Details_ID, Integer.valueOf(LBR_DocLine_Details_ID));
	}

	/** Get Doc Line Details.
		@return Doc Line Details
	  */
	public int getLBR_DocLine_Details_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_DocLine_Details_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Doc Line Details.
		@param LBR_DocLine_Details_UU 
		Doc Line Details
	  */
	public void setLBR_DocLine_Details_UU (String LBR_DocLine_Details_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_DocLine_Details_UU, LBR_DocLine_Details_UU);
	}

	/** Get Doc Line Details.
		@return Doc Line Details
	  */
	public String getLBR_DocLine_Details_UU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_DocLine_Details_UU);
	}

	/** Set EX TIPI.
		@param LBR_EXTIPI 
		NCM Exception
	  */
	public void setLBR_EXTIPI (String LBR_EXTIPI)
	{
		set_Value (COLUMNNAME_LBR_EXTIPI, LBR_EXTIPI);
	}

	/** Get EX TIPI.
		@return NCM Exception
	  */
	public String getLBR_EXTIPI () 
	{
		return (String)get_Value(COLUMNNAME_LBR_EXTIPI);
	}

	/** Set FCI Control Number.
		@param LBR_FCIControlNo 
		Import Content Sheet (FCI) Control Number
	  */
	public void setLBR_FCIControlNo (String LBR_FCIControlNo)
	{
		set_Value (COLUMNNAME_LBR_FCIControlNo, LBR_FCIControlNo);
	}

	/** Get FCI Control Number.
		@return Import Content Sheet (FCI) Control Number
	  */
	public String getLBR_FCIControlNo () 
	{
		return (String)get_Value(COLUMNNAME_LBR_FCIControlNo);
	}

	/** Set Gross Amount.
		@param LBR_GrossAmt 
		Gross Amount
	  */
	public void setLBR_GrossAmt (BigDecimal LBR_GrossAmt)
	{
		set_Value (COLUMNNAME_LBR_GrossAmt, LBR_GrossAmt);
	}

	/** Get Gross Amount.
		@return Gross Amount
	  */
	public BigDecimal getLBR_GrossAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_GrossAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Gross Amount is in Grand Total.
		@param LBR_IsGrossAmtInTotal 
		This Gross Amount is in Grand Total
	  */
	public void setLBR_IsGrossAmtInTotal (boolean LBR_IsGrossAmtInTotal)
	{
		set_Value (COLUMNNAME_LBR_IsGrossAmtInTotal, Boolean.valueOf(LBR_IsGrossAmtInTotal));
	}

	/** Get Gross Amount is in Grand Total.
		@return This Gross Amount is in Grand Total
	  */
	public boolean isLBR_IsGrossAmtInTotal () 
	{
		Object oo = get_Value(COLUMNNAME_LBR_IsGrossAmtInTotal);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	public I_LBR_NCM getLBR_NCM() throws RuntimeException
    {
		return (I_LBR_NCM)MTable.get(getCtx(), I_LBR_NCM.Table_Name)
			.getPO(getLBR_NCM_ID(), get_TrxName());	}

	/** Set NCM.
		@param LBR_NCM_ID 
		NCM stands for Nomenclatura Comum do MERCOSUL
	  */
	public void setLBR_NCM_ID (int LBR_NCM_ID)
	{
		if (LBR_NCM_ID < 1) 
			set_Value (COLUMNNAME_LBR_NCM_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_NCM_ID, Integer.valueOf(LBR_NCM_ID));
	}

	/** Get NCM.
		@return NCM stands for Nomenclatura Comum do MERCOSUL
	  */
	public int getLBR_NCM_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_NCM_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Vehicle = VEH */
	public static final String LBR_NFESPECIFICPRODUCT_Vehicle = "VEH";
	/** Medicine = MED */
	public static final String LBR_NFESPECIFICPRODUCT_Medicine = "MED";
	/** Armament = ARM */
	public static final String LBR_NFESPECIFICPRODUCT_Armament = "ARM";
	/** Fuel = FUE */
	public static final String LBR_NFESPECIFICPRODUCT_Fuel = "FUE";
	/** Set NF-e Specific Product.
		@param LBR_NFeSpecificProduct 
		Specific Product in a NF-e
	  */
	public void setLBR_NFeSpecificProduct (String LBR_NFeSpecificProduct)
	{

		set_Value (COLUMNNAME_LBR_NFeSpecificProduct, LBR_NFeSpecificProduct);
	}

	/** Get NF-e Specific Product.
		@return Specific Product in a NF-e
	  */
	public String getLBR_NFeSpecificProduct () 
	{
		return (String)get_Value(COLUMNNAME_LBR_NFeSpecificProduct);
	}

	/** Set Order Line Reference.
		@param LBR_POReferenceLine 
		Transaction Line Reference Number (Sales Order Line, Purchase Order Line) of your Business Partner
	  */
	public void setLBR_POReferenceLine (int LBR_POReferenceLine)
	{
		set_Value (COLUMNNAME_LBR_POReferenceLine, Integer.valueOf(LBR_POReferenceLine));
	}

	/** Get Order Line Reference.
		@return Transaction Line Reference Number (Sales Order Line, Purchase Order Line) of your Business Partner
	  */
	public int getLBR_POReferenceLine () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_POReferenceLine);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Taxable Price.
		@param LBR_PriceTax 
		Taxable Price
	  */
	public void setLBR_PriceTax (BigDecimal LBR_PriceTax)
	{
		set_Value (COLUMNNAME_LBR_PriceTax, LBR_PriceTax);
	}

	/** Get Taxable Price.
		@return Taxable Price
	  */
	public BigDecimal getLBR_PriceTax () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_PriceTax);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Taxable Quantity.
		@param LBR_QtyTax 
		Taxable Quantity
	  */
	public void setLBR_QtyTax (BigDecimal LBR_QtyTax)
	{
		set_Value (COLUMNNAME_LBR_QtyTax, LBR_QtyTax);
	}

	/** Get Taxable Quantity.
		@return Taxable Quantity
	  */
	public BigDecimal getLBR_QtyTax () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_QtyTax);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Transaction Tax.
		@param LBR_Tax_ID 
		Identifies a transaction tax (document/line)
	  */
	public void setLBR_Tax_ID (int LBR_Tax_ID)
	{
		if (LBR_Tax_ID < 1)
			set_ValueNoCheck(COLUMNNAME_LBR_Tax_ID, null);
		else
			set_ValueNoCheck (COLUMNNAME_LBR_Tax_ID, Integer.valueOf(LBR_Tax_ID));
	}

	/** Get Transaction Tax.
		@return Identifies a transaction tax (document/line)
	  */
	public int getLBR_Tax_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_Tax_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.compiere.model.I_C_UOM getLBR_UOMTax() throws RuntimeException
    {
		return (org.compiere.model.I_C_UOM)MTable.get(getCtx(), org.compiere.model.I_C_UOM.Table_Name)
			.getPO(getLBR_UOMTax_ID(), get_TrxName());	}

	/** Set Taxable UOM.
		@param LBR_UOMTax_ID 
		Taxable Unit of Measure
	  */
	public void setLBR_UOMTax_ID (int LBR_UOMTax_ID)
	{
		if (LBR_UOMTax_ID < 1) 
			set_Value (COLUMNNAME_LBR_UOMTax_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_UOMTax_ID, Integer.valueOf(LBR_UOMTax_ID));
	}

	/** Get Taxable UOM.
		@return Taxable Unit of Measure
	  */
	public int getLBR_UOMTax_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_UOMTax_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Taxable UPC/EAN.
		@param LBR_UPCTax 
		Taxable Bar Code (Universal Product Code or its superset European Article Number)
	  */
	public void setLBR_UPCTax (String LBR_UPCTax)
	{
		set_Value (COLUMNNAME_LBR_UPCTax, LBR_UPCTax);
	}

	/** Get Taxable UPC/EAN.
		@return Taxable Bar Code (Universal Product Code or its superset European Article Number)
	  */
	public String getLBR_UPCTax () 
	{
		return (String)get_Value(COLUMNNAME_LBR_UPCTax);
	}

	public org.compiere.model.I_M_RMALine getM_RMALine() throws RuntimeException
    {
		return (org.compiere.model.I_M_RMALine)MTable.get(getCtx(), org.compiere.model.I_M_RMALine.Table_Name)
			.getPO(getM_RMALine_ID(), get_TrxName());	}

	/** Set RMA Line.
		@param M_RMALine_ID 
		Return Material Authorization Line
	  */
	public void setM_RMALine_ID (int M_RMALine_ID)
	{
		if (M_RMALine_ID < 1) 
			set_Value (COLUMNNAME_M_RMALine_ID, null);
		else 
			set_Value (COLUMNNAME_M_RMALine_ID, Integer.valueOf(M_RMALine_ID));
	}

	/** Get RMA Line.
		@return Return Material Authorization Line
	  */
	public int getM_RMALine_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_M_RMALine_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Order Reference.
		@param POReference 
		Transaction Reference Number (Sales Order, Purchase Order) of your Business Partner
	  */
	public void setPOReference (String POReference)
	{
		set_Value (COLUMNNAME_POReference, POReference);
	}

	/** Get Order Reference.
		@return Transaction Reference Number (Sales Order, Purchase Order) of your Business Partner
	  */
	public String getPOReference () 
	{
		return (String)get_Value(COLUMNNAME_POReference);
	}

	/** Set Product Name.
		@param ProductName 
		Name of the Product
	  */
	public void setProductName (String ProductName)
	{
		set_Value (COLUMNNAME_ProductName, ProductName);
	}

	/** Get Product Name.
		@return Name of the Product
	  */
	public String getProductName () 
	{
		return (String)get_Value(COLUMNNAME_ProductName);
	}

	/** Set Product Key.
		@param ProductValue 
		Key of the Product
	  */
	public void setProductValue (String ProductValue)
	{
		set_Value (COLUMNNAME_ProductValue, ProductValue);
	}

	/** Get Product Key.
		@return Key of the Product
	  */
	public String getProductValue () 
	{
		return (String)get_Value(COLUMNNAME_ProductValue);
	}

	/** Set Surcharges.
		@param Surcharges Surcharges	  */
	public void setSurcharges (BigDecimal Surcharges)
	{
		set_Value (COLUMNNAME_Surcharges, Surcharges);
	}

	/** Get Surcharges.
		@return Surcharges	  */
	public BigDecimal getSurcharges () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_Surcharges);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}
	
	/** Set Tax Line Total.
	@param TaxLineTotal 
	Tax Line Total Amount	*/
	public void setTaxLineTotal (BigDecimal TaxLineTotal)
	{
		set_Value (COLUMNNAME_TaxLineTotal, TaxLineTotal);
	}
	
	/** Get Tax Line Total.
		@return Tax Line Total Amount
	  */
	public BigDecimal getTaxLineTotal () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_TaxLineTotal);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}
	
	/** ICMS = IC */
	public static final String LBR_TAXATIONTYPE_ICMS = "IC";
	/** ISSQN = IS */
	public static final String LBR_TAXATIONTYPE_ISSQN = "IS";
	/** Set Taxation Type.
		@param LBR_TaxationType 
		Taxation type used to calculate taxes
	  */
	public void setLBR_TaxationType (String LBR_TaxationType)
	{

		set_Value (COLUMNNAME_LBR_TaxationType, LBR_TaxationType);
	}

	/** Get Taxation Type.
		@return Taxation type used to calculate taxes
	  */
	public String getLBR_TaxationType () 
	{
		return (String)get_Value(COLUMNNAME_LBR_TaxationType);
	}
	
	/** Set Brazilian Fiscal Invoice (Nota Fiscal) Line.
		@param LBR_NotaFiscalLine_ID 
		Brazilian Fiscal Invoice (Nota Fiscal) Line Identifier
	  */
	public void setLBR_NotaFiscalLine_ID (int LBR_NotaFiscalLine_ID)
	{
		if (LBR_NotaFiscalLine_ID < 1) 
			set_Value (COLUMNNAME_LBR_NotaFiscalLine_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_NotaFiscalLine_ID, Integer.valueOf(LBR_NotaFiscalLine_ID));
	}

	/** Get Brazilian Fiscal Invoice (Nota Fiscal) Line.
		@return Brazilian Fiscal Invoice (Nota Fiscal) Line Identifier
	  */
	public int getLBR_NotaFiscalLine_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_NotaFiscalLine_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}
	
	/** Set Siscomex Amount.
	@param LBR_SiscomexAmt Siscomex Amount	  */
	public void setLBR_SiscomexAmt (BigDecimal LBR_SiscomexAmt)
	{
		set_Value (COLUMNNAME_LBR_SiscomexAmt, LBR_SiscomexAmt);
	}
	
	/** Get Siscomex Amount.
		@return Siscomex Amount	  */
	public BigDecimal getLBR_SiscomexAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_SiscomexAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}
}