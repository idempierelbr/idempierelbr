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
package org.idempierelbr.tax.model;

import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.Properties;
import org.compiere.model.*;
import org.idempierelbr.core.model.I_LBR_NCM;

/** Generated Model for LBR_TaxDefinition
 *  @author iDempiere (generated) 
 *  @version Release 2.0 - $Id$ */
public class X_LBR_TaxDefinition extends PO implements I_LBR_TaxDefinition, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20140205L;

    /** Standard Constructor */
    public X_LBR_TaxDefinition (Properties ctx, int LBR_TaxDefinition_ID, String trxName)
    {
      super (ctx, LBR_TaxDefinition_ID, trxName);
      /** if (LBR_TaxDefinition_ID == 0)
        {
			setIsSOTrx (null);
// B
			setLBR_IsSubTributaria (null);
// B
			setLBR_TaxDefinition_ID (0);
			setValidFrom (new Timestamp( System.currentTimeMillis() ));
        } */
    }

    /** Load Constructor */
    public X_LBR_TaxDefinition (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_TaxDefinition[")
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
			set_Value (COLUMNNAME_C_DocType_ID, null);
		else 
			set_Value (COLUMNNAME_C_DocType_ID, Integer.valueOf(C_DocType_ID));
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

	/** Both = B */
	public static final String ISSOTRX_Both = "B";
	/** No = N */
	public static final String ISSOTRX_No = "N";
	/** Yes = Y */
	public static final String ISSOTRX_Yes = "Y";
	/** Set Sales Transaction.
		@param IsSOTrx 
		This is a Sales Transaction
	  */
	public void setIsSOTrx (String IsSOTrx)
	{

		set_Value (COLUMNNAME_IsSOTrx, IsSOTrx);
	}

	/** Get Sales Transaction.
		@return This is a Sales Transaction
	  */
	public String getIsSOTrx () 
	{
		return (String)get_Value(COLUMNNAME_IsSOTrx);
	}

	public I_LBR_BPartnerCategory getLBR_BPartnerCategory() throws RuntimeException
    {
		return (I_LBR_BPartnerCategory)MTable.get(getCtx(), I_LBR_BPartnerCategory.Table_Name)
			.getPO(getLBR_BPartnerCategory_ID(), get_TrxName());	}

	/** Set CFOP Business Partner Category.
		@param LBR_BPartnerCategory_ID 
		Identifies a CFOP Business Partner Category
	  */
	public void setLBR_BPartnerCategory_ID (int LBR_BPartnerCategory_ID)
	{
		if (LBR_BPartnerCategory_ID < 1) 
			set_Value (COLUMNNAME_LBR_BPartnerCategory_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_BPartnerCategory_ID, Integer.valueOf(LBR_BPartnerCategory_ID));
	}

	/** Get CFOP Business Partner Category.
		@return Identifies a CFOP Business Partner Category
	  */
	public int getLBR_BPartnerCategory_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_BPartnerCategory_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
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

	public I_LBR_FiscalGroup_BPartner getLBR_FiscalGroup_BPartner() throws RuntimeException
    {
		return (I_LBR_FiscalGroup_BPartner)MTable.get(getCtx(), I_LBR_FiscalGroup_BPartner.Table_Name)
			.getPO(getLBR_FiscalGroup_BPartner_ID(), get_TrxName());	}

	/** Set BP Fiscal Group.
		@param LBR_FiscalGroup_BPartner_ID 
		Identifies a Business Partner Fiscal Group
	  */
	public void setLBR_FiscalGroup_BPartner_ID (int LBR_FiscalGroup_BPartner_ID)
	{
		if (LBR_FiscalGroup_BPartner_ID < 1) 
			set_Value (COLUMNNAME_LBR_FiscalGroup_BPartner_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_FiscalGroup_BPartner_ID, Integer.valueOf(LBR_FiscalGroup_BPartner_ID));
	}

	/** Get BP Fiscal Group.
		@return Identifies a Business Partner Fiscal Group
	  */
	public int getLBR_FiscalGroup_BPartner_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_FiscalGroup_BPartner_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public I_LBR_FiscalGroup_Product getLBR_FiscalGroup_Product() throws RuntimeException
    {
		return (I_LBR_FiscalGroup_Product)MTable.get(getCtx(), I_LBR_FiscalGroup_Product.Table_Name)
			.getPO(getLBR_FiscalGroup_Product_ID(), get_TrxName());	}

	/** Set Product Fiscal Group.
		@param LBR_FiscalGroup_Product_ID 
		Identifies a Product Fiscal Group
	  */
	public void setLBR_FiscalGroup_Product_ID (int LBR_FiscalGroup_Product_ID)
	{
		if (LBR_FiscalGroup_Product_ID < 1) 
			set_Value (COLUMNNAME_LBR_FiscalGroup_Product_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_FiscalGroup_Product_ID, Integer.valueOf(LBR_FiscalGroup_Product_ID));
	}

	/** Get Product Fiscal Group.
		@return Identifies a Product Fiscal Group
	  */
	public int getLBR_FiscalGroup_Product_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_FiscalGroup_Product_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Both = B */
	public static final String LBR_ISSUBTRIBUTARIA_Both = "B";
	/** No = N */
	public static final String LBR_ISSUBTRIBUTARIA_No = "N";
	/** Yes = Y */
	public static final String LBR_ISSUBTRIBUTARIA_Yes = "Y";
	/** Set Is Substituicao Tributaria.
		@param LBR_IsSubTributaria 
		Defines the Is Substituicao Tributaria Status
	  */
	public void setLBR_IsSubTributaria (String LBR_IsSubTributaria)
	{

		set_Value (COLUMNNAME_LBR_IsSubTributaria, LBR_IsSubTributaria);
	}

	/** Get Is Substituicao Tributaria.
		@return Defines the Is Substituicao Tributaria Status
	  */
	public String getLBR_IsSubTributaria () 
	{
		return (String)get_Value(COLUMNNAME_LBR_IsSubTributaria);
	}

	public I_LBR_LegalMessage getLBR_LegalMessage() throws RuntimeException
    {
		return (I_LBR_LegalMessage)MTable.get(getCtx(), I_LBR_LegalMessage.Table_Name)
			.getPO(getLBR_LegalMessage_ID(), get_TrxName());	}

	/** Set Legal Message.
		@param LBR_LegalMessage_ID 
		Identifies a Legal Message
	  */
	public void setLBR_LegalMessage_ID (int LBR_LegalMessage_ID)
	{
		if (LBR_LegalMessage_ID < 1) 
			set_Value (COLUMNNAME_LBR_LegalMessage_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_LegalMessage_ID, Integer.valueOf(LBR_LegalMessage_ID));
	}

	/** Get Legal Message.
		@return Identifies a Legal Message
	  */
	public int getLBR_LegalMessage_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_LegalMessage_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
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

	public I_LBR_ProductCategory getLBR_ProductCategory() throws RuntimeException
    {
		return (I_LBR_ProductCategory)MTable.get(getCtx(), I_LBR_ProductCategory.Table_Name)
			.getPO(getLBR_ProductCategory_ID(), get_TrxName());	}

	/** Set CFOP Product Category.
		@param LBR_ProductCategory_ID 
		Identifies a CFOP Product Category
	  */
	public void setLBR_ProductCategory_ID (int LBR_ProductCategory_ID)
	{
		if (LBR_ProductCategory_ID < 1) 
			set_Value (COLUMNNAME_LBR_ProductCategory_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_ProductCategory_ID, Integer.valueOf(LBR_ProductCategory_ID));
	}

	/** Get CFOP Product Category.
		@return Identifies a CFOP Product Category
	  */
	public int getLBR_ProductCategory_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_ProductCategory_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Tax Definition.
		@param LBR_TaxDefinition_ID 
		Defines the Tax Definition
	  */
	public void setLBR_TaxDefinition_ID (int LBR_TaxDefinition_ID)
	{
		if (LBR_TaxDefinition_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_TaxDefinition_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_TaxDefinition_ID, Integer.valueOf(LBR_TaxDefinition_ID));
	}

	/** Get Tax Definition.
		@return Defines the Tax Definition
	  */
	public int getLBR_TaxDefinition_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_TaxDefinition_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_TaxDefinition_UU.
		@param LBR_TaxDefinition_UU LBR_TaxDefinition_UU	  */
	public void setLBR_TaxDefinition_UU (String LBR_TaxDefinition_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_TaxDefinition_UU, LBR_TaxDefinition_UU);
	}

	/** Get LBR_TaxDefinition_UU.
		@return LBR_TaxDefinition_UU	  */
	public String getLBR_TaxDefinition_UU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_TaxDefinition_UU);
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

	/** 00 */
	public static final String LBR_TAXSTATUS_00 = "00";
	/** 10 */
	public static final String LBR_TAXSTATUS_10 = "10";
	/** 20 */
	public static final String LBR_TAXSTATUS_20 = "20";
	/** 30 */
	public static final String LBR_TAXSTATUS_30 = "30";
	/** 40 */
	public static final String LBR_TAXSTATUS_40 = "40";
	/** 41 */
	public static final String LBR_TAXSTATUS_41 = "41";
	/** 50 */
	public static final String LBR_TAXSTATUS_50 = "50";
	/** 51 */
	public static final String LBR_TAXSTATUS_51 = "51";
	/** 60 */
	public static final String LBR_TAXSTATUS_60 = "60";
	/** 70 */
	public static final String LBR_TAXSTATUS_70 = "70";
	/** 90 */
	public static final String LBR_TAXSTATUS_90 = "90";
	/** Set Tax Status.
		@param LBR_TaxStatus 
		Defines the Tax Status
	  */
	public void setLBR_TaxStatus (String LBR_TaxStatus)
	{

		set_Value (COLUMNNAME_LBR_TaxStatus, LBR_TaxStatus);
	}

	/** Get Tax Status.
		@return Defines the Tax Status
	  */
	public String getLBR_TaxStatus () 
	{
		return (String)get_Value(COLUMNNAME_LBR_TaxStatus);
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

	public org.compiere.model.I_M_Product getM_Product() throws RuntimeException
    {
		return (org.compiere.model.I_M_Product)MTable.get(getCtx(), org.compiere.model.I_M_Product.Table_Name)
			.getPO(getM_Product_ID(), get_TrxName());	}

	/** Set Product.
		@param M_Product_ID 
		Product, Service, Item
	  */
	public void setM_Product_ID (int M_Product_ID)
	{
		if (M_Product_ID < 1) 
			set_Value (COLUMNNAME_M_Product_ID, null);
		else 
			set_Value (COLUMNNAME_M_Product_ID, Integer.valueOf(M_Product_ID));
	}

	/** Get Product.
		@return Product, Service, Item
	  */
	public int getM_Product_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_M_Product_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Relative Priority.
		@param PriorityNo 
		Where inventory should be picked from first
	  */
	public void setPriorityNo (int PriorityNo)
	{
		set_Value (COLUMNNAME_PriorityNo, Integer.valueOf(PriorityNo));
	}

	/** Get Relative Priority.
		@return Where inventory should be picked from first
	  */
	public int getPriorityNo () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_PriorityNo);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.compiere.model.I_C_Region getTo_Region() throws RuntimeException
    {
		return (org.compiere.model.I_C_Region)MTable.get(getCtx(), org.compiere.model.I_C_Region.Table_Name)
			.getPO(getTo_Region_ID(), get_TrxName());	}

	/** Set To.
		@param To_Region_ID 
		Receiving Region
	  */
	public void setTo_Region_ID (int To_Region_ID)
	{
		if (To_Region_ID < 1) 
			set_Value (COLUMNNAME_To_Region_ID, null);
		else 
			set_Value (COLUMNNAME_To_Region_ID, Integer.valueOf(To_Region_ID));
	}

	/** Get To.
		@return Receiving Region
	  */
	public int getTo_Region_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_To_Region_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Valid from.
		@param ValidFrom 
		Valid from including this date (first day)
	  */
	public void setValidFrom (Timestamp ValidFrom)
	{
		set_Value (COLUMNNAME_ValidFrom, ValidFrom);
	}

	/** Get Valid from.
		@return Valid from including this date (first day)
	  */
	public Timestamp getValidFrom () 
	{
		return (Timestamp)get_Value(COLUMNNAME_ValidFrom);
	}
}