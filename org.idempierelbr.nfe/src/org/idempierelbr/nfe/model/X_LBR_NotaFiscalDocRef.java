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

import java.sql.ResultSet;
import java.util.Properties;
import org.compiere.model.*;

/** Generated Model for LBR_NotaFiscalDocRef
 *  @author iDempiere (generated) 
 *  @version Release 3.1 - $Id$ */
public class X_LBR_NotaFiscalDocRef extends PO implements I_LBR_NotaFiscalDocRef, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20160516L;

    /** Standard Constructor */
    public X_LBR_NotaFiscalDocRef (Properties ctx, int LBR_NotaFiscalDocRef_ID, String trxName)
    {
      super (ctx, LBR_NotaFiscalDocRef_ID, trxName);
      /** if (LBR_NotaFiscalDocRef_ID == 0)
        {
			setLBR_NFeDocRefType (null);
			setLBR_NotaFiscalDocRef_ID (0);
			setLBR_NotaFiscal_ID (0);
        } */
    }

    /** Load Constructor */
    public X_LBR_NotaFiscalDocRef (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_NotaFiscalDocRef[")
        .append(get_ID()).append("]");
      return sb.toString();
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

	/** PF - Individual = PF */
	public static final String LBR_BPTYPEBR_PF_Individual = "PF";
	/** PJ - Legal Entity = PJ */
	public static final String LBR_BPTYPEBR_PJ_LegalEntity = "PJ";
	/** Set Brazilian BP Type.
		@param LBR_BPTypeBR 
		Brazilian BP Type (identifies if the BP is a Legal Entity or an Individual)
	  */
	public void setLBR_BPTypeBR (String LBR_BPTypeBR)
	{

		set_Value (COLUMNNAME_LBR_BPTypeBR, LBR_BPTypeBR);
	}

	/** Get Brazilian BP Type.
		@return Brazilian BP Type (identifies if the BP is a Legal Entity or an Individual)
	  */
	public String getLBR_BPTypeBR () 
	{
		return (String)get_Value(COLUMNNAME_LBR_BPTypeBR);
	}

	/** Set CNPJ.
		@param LBR_CNPJ 
		Used to identify Legal Entities in Brazil
	  */
	public void setLBR_CNPJ (String LBR_CNPJ)
	{
		set_Value (COLUMNNAME_LBR_CNPJ, LBR_CNPJ);
	}

	/** Get CNPJ.
		@return Used to identify Legal Entities in Brazil
	  */
	public String getLBR_CNPJ () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CNPJ);
	}

	/** Set COO Number.
		@param LBR_COONo COO Number	  */
	public void setLBR_COONo (String LBR_COONo)
	{
		set_Value (COLUMNNAME_LBR_COONo, LBR_COONo);
	}

	/** Get COO Number.
		@return COO Number	  */
	public String getLBR_COONo () 
	{
		return (String)get_Value(COLUMNNAME_LBR_COONo);
	}

	/** Set CPF.
		@param LBR_CPF 
		Used to identify individuals in Brazil
	  */
	public void setLBR_CPF (String LBR_CPF)
	{
		set_Value (COLUMNNAME_LBR_CPF, LBR_CPF);
	}

	/** Get CPF.
		@return Used to identify individuals in Brazil
	  */
	public String getLBR_CPF () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CPF);
	}

	/** Set Document.
		@param LBR_Document Document	  */
	public void setLBR_Document (String LBR_Document)
	{
		set_Value (COLUMNNAME_LBR_Document, LBR_Document);
	}

	/** Get Document.
		@return Document	  */
	public String getLBR_Document () 
	{
		return (String)get_Value(COLUMNNAME_LBR_Document);
	}

	/** 2B - Emitido por registradora (nao ECF) = 2B */
	public static final String LBR_ECFMODEL_2B_EmitidoPorRegistradoraNaoECF = "2B";
	/** 2C - Cupom PDV = 2C */
	public static final String LBR_ECFMODEL_2C_CupomPDV = "2C";
	/** 2D - Emitido por ECF = 2D */
	public static final String LBR_ECFMODEL_2D_EmitidoPorECF = "2D";
	/** Set ECF Model.
		@param LBR_ECFModel ECF Model	  */
	public void setLBR_ECFModel (String LBR_ECFModel)
	{

		set_Value (COLUMNNAME_LBR_ECFModel, LBR_ECFModel);
	}

	/** Get ECF Model.
		@return ECF Model	  */
	public String getLBR_ECFModel () 
	{
		return (String)get_Value(COLUMNNAME_LBR_ECFModel);
	}

	/** Set ECF Number.
		@param LBR_ECFNo ECF Number	  */
	public void setLBR_ECFNo (String LBR_ECFNo)
	{
		set_Value (COLUMNNAME_LBR_ECFNo, LBR_ECFNo);
	}

	/** Get ECF Number.
		@return ECF Number	  */
	public String getLBR_ECFNo () 
	{
		return (String)get_Value(COLUMNNAME_LBR_ECFNo);
	}

	/** Set IE.
		@param LBR_IE 
		Used to identify the IE (State Tax ID)
	  */
	public void setLBR_IE (String LBR_IE)
	{
		set_Value (COLUMNNAME_LBR_IE, LBR_IE);
	}

	/** Get IE.
		@return Used to identify the IE (State Tax ID)
	  */
	public String getLBR_IE () 
	{
		return (String)get_Value(COLUMNNAME_LBR_IE);
	}

	/** 01 - Nota Fiscal = 01 */
	public static final String LBR_NFMODEL_01_NotaFiscal = "01";
	/** Set NF Model.
		@param LBR_NFModel 
		Referes to old printed NF
	  */
	public void setLBR_NFModel (String LBR_NFModel)
	{

		set_Value (COLUMNNAME_LBR_NFModel, LBR_NFModel);
	}

	/** Get NF Model.
		@return Referes to old printed NF
	  */
	public String getLBR_NFModel () 
	{
		return (String)get_Value(COLUMNNAME_LBR_NFModel);
	}

	/** Farmer NF = 04 */
	public static final String LBR_NFPRODMODEL_FarmerNF = "04";
	/** NF = 01 */
	public static final String LBR_NFPRODMODEL_NF = "01";
	/** Set NF Farmer Model.
		@param LBR_NFProdModel NF Farmer Model	  */
	public void setLBR_NFProdModel (String LBR_NFProdModel)
	{

		set_Value (COLUMNNAME_LBR_NFProdModel, LBR_NFProdModel);
	}

	/** Get NF Farmer Model.
		@return NF Farmer Model	  */
	public String getLBR_NFProdModel () 
	{
		return (String)get_Value(COLUMNNAME_LBR_NFProdModel);
	}

	/** Set NF Year/Month.
		@param LBR_NFYearMonth NF Year/Month	  */
	public void setLBR_NFYearMonth (String LBR_NFYearMonth)
	{
		set_Value (COLUMNNAME_LBR_NFYearMonth, LBR_NFYearMonth);
	}

	/** Get NF Year/Month.
		@return NF Year/Month	  */
	public String getLBR_NFYearMonth () 
	{
		return (String)get_Value(COLUMNNAME_LBR_NFYearMonth);
	}

	/** NF-e = 0 */
	public static final String LBR_NFEDOCREFTYPE_NF_E = "0";
	/** CT-e = 1 */
	public static final String LBR_NFEDOCREFTYPE_CT_E = "1";
	/** Nota Fiscal = 2 */
	public static final String LBR_NFEDOCREFTYPE_NotaFiscal = "2";
	/** Nota Fiscal de Produtor = 3 */
	public static final String LBR_NFEDOCREFTYPE_NotaFiscalDeProdutor = "3";
	/** Cupom Fiscal = 4 */
	public static final String LBR_NFEDOCREFTYPE_CupomFiscal = "4";
	/** Set NFe Doc Ref. Type.
		@param LBR_NFeDocRefType 
		NFe Referenced Document Type
	  */
	public void setLBR_NFeDocRefType (String LBR_NFeDocRefType)
	{

		set_Value (COLUMNNAME_LBR_NFeDocRefType, LBR_NFeDocRefType);
	}

	/** Get NFe Doc Ref. Type.
		@return NFe Referenced Document Type
	  */
	public String getLBR_NFeDocRefType () 
	{
		return (String)get_Value(COLUMNNAME_LBR_NFeDocRefType);
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

	/** Set Brazilian Fiscal Invoice (Nota Fiscal) Referenced Doc.
		@param LBR_NotaFiscalDocRef_ID Brazilian Fiscal Invoice (Nota Fiscal) Referenced Doc	  */
	public void setLBR_NotaFiscalDocRef_ID (int LBR_NotaFiscalDocRef_ID)
	{
		if (LBR_NotaFiscalDocRef_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_NotaFiscalDocRef_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_NotaFiscalDocRef_ID, Integer.valueOf(LBR_NotaFiscalDocRef_ID));
	}

	/** Get Brazilian Fiscal Invoice (Nota Fiscal) Referenced Doc.
		@return Brazilian Fiscal Invoice (Nota Fiscal) Referenced Doc	  */
	public int getLBR_NotaFiscalDocRef_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_NotaFiscalDocRef_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Brazilian Fiscal Invoice (Nota Fiscal) Referenced Doc.
		@param LBR_NotaFiscalDocRef_UU Brazilian Fiscal Invoice (Nota Fiscal) Referenced Doc	  */
	public void setLBR_NotaFiscalDocRef_UU (String LBR_NotaFiscalDocRef_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_NotaFiscalDocRef_UU, LBR_NotaFiscalDocRef_UU);
	}

	/** Get Brazilian Fiscal Invoice (Nota Fiscal) Referenced Doc.
		@return Brazilian Fiscal Invoice (Nota Fiscal) Referenced Doc	  */
	public String getLBR_NotaFiscalDocRef_UU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_NotaFiscalDocRef_UU);
	}

	public I_LBR_NotaFiscal getLBR_NotaFiscal() throws RuntimeException
    {
		return (I_LBR_NotaFiscal)MTable.get(getCtx(), I_LBR_NotaFiscal.Table_Name)
			.getPO(getLBR_NotaFiscal_ID(), get_TrxName());	}

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

	/** LBR_TypeIE AD_Reference_ID=800026 */
	public static final int LBR_TYPEIE_AD_Reference_ID=800026;
	/** Contribuinte = 1 */
	public static final String LBR_TYPEIE_Contribuinte = "1";
	/** Isento = 2 */
	public static final String LBR_TYPEIE_Isento = "2";
	/** Não Contribuinte = 9 */
	public static final String LBR_TYPEIE_NãoContribuinte = "9";
	/** Set IE Inscription Type.
		@param LBR_TypeIE IE Inscription Type	  */
	public void setLBR_TypeIE (String LBR_TypeIE)
	{

		set_Value (COLUMNNAME_LBR_TypeIE, LBR_TypeIE);
	}

	/** Get IE Inscription Type.
		@return IE Inscription Type	  */
	public String getLBR_TypeIE () 
	{
		return (String)get_Value(COLUMNNAME_LBR_TypeIE);
	}
}