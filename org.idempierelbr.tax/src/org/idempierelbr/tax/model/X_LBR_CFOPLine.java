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
import java.util.Properties;
import org.compiere.model.*;

/** Generated Model for LBR_CFOPLine
 *  @author iDempiere (generated) 
 *  @version Release 2.0 - $Id$ */
public class X_LBR_CFOPLine extends PO implements I_LBR_CFOPLine, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20140205L;

    /** Standard Constructor */
    public X_LBR_CFOPLine (Properties ctx, int LBR_CFOPLine_ID, String trxName)
    {
      super (ctx, LBR_CFOPLine_ID, trxName);
      /** if (LBR_CFOPLine_ID == 0)
        {
			setC_DocType_ID (0);
			setIsManufactured (null);
// N
			setLBR_CFOP_ID (0);
			setLBR_CFOPLine_ID (0);
			setLBR_DestionationType (null);
			setLBR_IsSubTributaria (null);
// N
        } */
    }

    /** Load Constructor */
    public X_LBR_CFOPLine (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_CFOPLine[")
        .append(get_ID()).append("]");
      return sb.toString();
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

	/** Both = B */
	public static final String ISMANUFACTURED_Both = "B";
	/** No = N */
	public static final String ISMANUFACTURED_No = "N";
	/** Yes = Y */
	public static final String ISMANUFACTURED_Yes = "Y";
	/** Set Manufactured.
		@param IsManufactured 
		This product is manufactured
	  */
	public void setIsManufactured (String IsManufactured)
	{

		set_Value (COLUMNNAME_IsManufactured, IsManufactured);
	}

	/** Get Manufactured.
		@return This product is manufactured
	  */
	public String getIsManufactured () 
	{
		return (String)get_Value(COLUMNNAME_IsManufactured);
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

	/** Set CFOP Line.
		@param LBR_CFOPLine_ID 
		Identifies the CFOP Line
	  */
	public void setLBR_CFOPLine_ID (int LBR_CFOPLine_ID)
	{
		if (LBR_CFOPLine_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_CFOPLine_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_CFOPLine_ID, Integer.valueOf(LBR_CFOPLine_ID));
	}

	/** Get CFOP Line.
		@return Identifies the CFOP Line
	  */
	public int getLBR_CFOPLine_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_CFOPLine_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_CFOPLine_UU.
		@param LBR_CFOPLine_UU LBR_CFOPLine_UU	  */
	public void setLBR_CFOPLine_UU (String LBR_CFOPLine_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_CFOPLine_UU, LBR_CFOPLine_UU);
	}

	/** Get LBR_CFOPLine_UU.
		@return LBR_CFOPLine_UU	  */
	public String getLBR_CFOPLine_UU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CFOPLine_UU);
	}

	/** Estados Identicos = 0 */
	public static final String LBR_DESTIONATIONTYPE_EstadosIdenticos = "0";
	/** Estados Diferentes = 1 */
	public static final String LBR_DESTIONATIONTYPE_EstadosDiferentes = "1";
	/** Estrangeiro = 2 */
	public static final String LBR_DESTIONATIONTYPE_Estrangeiro = "2";
	/** Zona Franca = 3 */
	public static final String LBR_DESTIONATIONTYPE_ZonaFranca = "3";
	/** Set Destination Type.
		@param LBR_DestionationType 
		Defines the Destination Type
	  */
	public void setLBR_DestionationType (String LBR_DestionationType)
	{

		set_Value (COLUMNNAME_LBR_DestionationType, LBR_DestionationType);
	}

	/** Get Destination Type.
		@return Defines the Destination Type
	  */
	public String getLBR_DestionationType () 
	{
		return (String)get_Value(COLUMNNAME_LBR_DestionationType);
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

	/** Set Transaction Tax.
		@param LBR_Tax_ID 
		Identifies a transaction tax (document/line)
	  */
	public void setLBR_Tax_ID (int LBR_Tax_ID)
	{
		set_Value (COLUMNNAME_LBR_Tax_ID, LBR_Tax_ID);
	}

	/** Get Transaction Tax.
		@return Identifies a transaction tax (document/line)
	  */
	public int getLBR_Tax_ID () 
	{
				return (Integer) get_Value(COLUMNNAME_LBR_Tax_ID);
	}

	/** 00 - Tributada integralmente = 00 */
	public static final String LBR_TAXSTATUS_00_TributadaIntegralmente = "00";
	/** 10 - Tributada e com cobranca do ICMS por Sub. Tributaria = 10 */
	public static final String LBR_TAXSTATUS_10_TributadaEComCobrancaDoICMSPorSubTributaria = "10";
	/** 20 - Com reducao de base de calculo = 20 */
	public static final String LBR_TAXSTATUS_20_ComReducaoDeBaseDeCalculo = "20";
	/** 30 - Isenta ou nao-trib. e com cobr. do ICMS por Sub. Tribut = 30 */
	public static final String LBR_TAXSTATUS_30_IsentaOuNao_TribEComCobrDoICMSPorSubTribut = "30";
	/** 40 - Isenta = 40 */
	public static final String LBR_TAXSTATUS_40_Isenta = "40";
	/** 41 - Nao-tributada = 41 */
	public static final String LBR_TAXSTATUS_41_Nao_Tributada = "41";
	/** 50 - Suspensao = 50 */
	public static final String LBR_TAXSTATUS_50_Suspensao = "50";
	/** 51 - Diferimento  = 51 */
	public static final String LBR_TAXSTATUS_51_Diferimento = "51";
	/** 60 - ICMS cobrado anteriormente por substituicao tributaria = 60 */
	public static final String LBR_TAXSTATUS_60_ICMSCobradoAnteriormentePorSubstituicaoTributaria = "60";
	/** 70 - Com red. de base de calc. e cobr. do ICMS por Sub. Trib = 70 */
	public static final String LBR_TAXSTATUS_70_ComRedDeBaseDeCalcECobrDoICMSPorSubTrib = "70";
	/** 90 - Outras = 90 */
	public static final String LBR_TAXSTATUS_90_Outras = "90";
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
}