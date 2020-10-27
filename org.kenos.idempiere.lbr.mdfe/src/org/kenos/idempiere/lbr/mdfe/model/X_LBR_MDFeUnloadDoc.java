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
package org.adempierelbr.model;

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.Properties;
import org.compiere.model.*;
import org.compiere.util.Env;

/** Generated Model for LBR_MDFeUnloadDoc
 *  @author iDempiere (generated) 
 *  @version Release 4.1 - $Id$ */
public class X_LBR_MDFeUnloadDoc extends PO implements I_LBR_MDFeUnloadDoc, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20170626L;

    /** Standard Constructor */
    public X_LBR_MDFeUnloadDoc (Properties ctx, int LBR_MDFeUnloadDoc_ID, String trxName)
    {
      super (ctx, LBR_MDFeUnloadDoc_ID, trxName);
      /** if (LBR_MDFeUnloadDoc_ID == 0)
        {
			setLBR_MDFeUnloadDoc_ID (0);
			setLBR_MDFeUnload_ID (0);
			setlbr_NFeID (null);
        } */
    }

    /** Load Constructor */
    public X_LBR_MDFeUnloadDoc (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_MDFeUnloadDoc[")
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

	/** Set Transaction Date.
		@param DateTrx 
		Transaction Date
	  */
	public void setDateTrx (Timestamp DateTrx)
	{
		set_Value (COLUMNNAME_DateTrx, DateTrx);
	}

	/** Get Transaction Date.
		@return Transaction Date
	  */
	public Timestamp getDateTrx () 
	{
		return (Timestamp)get_Value(COLUMNNAME_DateTrx);
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

	/** CT-e = 01 */
	public static final String LBR_MDFEDOCTYPE_CT_E = "01";
	/** CT paper = 02 */
	public static final String LBR_MDFEDOCTYPE_CTPaper = "02";
	/** NF-e = 03 */
	public static final String LBR_MDFEDOCTYPE_NF_E = "03";
	/** NF paper = 04 */
	public static final String LBR_MDFEDOCTYPE_NFPaper = "04";
	/** Set MDFe Document Type.
		@param LBR_MDFeDocType 
		MDFe Document Type
	  */
	public void setLBR_MDFeDocType (String LBR_MDFeDocType)
	{

		set_Value (COLUMNNAME_LBR_MDFeDocType, LBR_MDFeDocType);
	}

	/** Get MDFe Document Type.
		@return MDFe Document Type
	  */
	public String getLBR_MDFeDocType () 
	{
		return (String)get_Value(COLUMNNAME_LBR_MDFeDocType);
	}

	/** Set Documento de Descarregamento do MDFe.
		@param LBR_MDFeUnloadDoc_ID Documento de Descarregamento do MDFe	  */
	public void setLBR_MDFeUnloadDoc_ID (int LBR_MDFeUnloadDoc_ID)
	{
		if (LBR_MDFeUnloadDoc_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_MDFeUnloadDoc_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_MDFeUnloadDoc_ID, Integer.valueOf(LBR_MDFeUnloadDoc_ID));
	}

	/** Get Documento de Descarregamento do MDFe.
		@return Documento de Descarregamento do MDFe	  */
	public int getLBR_MDFeUnloadDoc_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_MDFeUnloadDoc_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.adempierelbr.model.I_LBR_MDFeUnload getLBR_MDFeUnload() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_MDFeUnload)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_MDFeUnload.Table_Name)
			.getPO(getLBR_MDFeUnload_ID(), get_TrxName());	}

	/** Set Descarregamento do Manifesto.
		@param LBR_MDFeUnload_ID Descarregamento do Manifesto	  */
	public void setLBR_MDFeUnload_ID (int LBR_MDFeUnload_ID)
	{
		if (LBR_MDFeUnload_ID < 1) 
			set_Value (COLUMNNAME_LBR_MDFeUnload_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_MDFeUnload_ID, Integer.valueOf(LBR_MDFeUnload_ID));
	}

	/** Get Descarregamento do Manifesto.
		@return Descarregamento do Manifesto	  */
	public int getLBR_MDFeUnload_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_MDFeUnload_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.adempierelbr.model.I_LBR_NotaFiscal getLBR_NotaFiscal() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_NotaFiscal)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_NotaFiscal.Table_Name)
			.getPO(getLBR_NotaFiscal_ID(), get_TrxName());	}

	/** Set Nota Fiscal.
		@param LBR_NotaFiscal_ID 
		Primary key table LBR_NotaFiscal
	  */
	public void setLBR_NotaFiscal_ID (int LBR_NotaFiscal_ID)
	{
		if (LBR_NotaFiscal_ID < 1) 
			set_Value (COLUMNNAME_LBR_NotaFiscal_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_NotaFiscal_ID, Integer.valueOf(LBR_NotaFiscal_ID));
	}

	/** Get Nota Fiscal.
		@return Primary key table LBR_NotaFiscal
	  */
	public int getLBR_NotaFiscal_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_NotaFiscal_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Sub Serie.
		@param LBR_SubSerie 
		Sub Serie
	  */
	public void setLBR_SubSerie (String LBR_SubSerie)
	{
		set_Value (COLUMNNAME_LBR_SubSerie, LBR_SubSerie);
	}

	/** Get Sub Serie.
		@return Sub Serie
	  */
	public String getLBR_SubSerie () 
	{
		return (String)get_Value(COLUMNNAME_LBR_SubSerie);
	}

	/** Set PIN.
		@param PIN 
		Personal Identification Number
	  */
	public void setPIN (String PIN)
	{
		set_Value (COLUMNNAME_PIN, PIN);
	}

	/** Get PIN.
		@return Personal Identification Number
	  */
	public String getPIN () 
	{
		return (String)get_Value(COLUMNNAME_PIN);
	}

	/** Set Barcode 2.
		@param lbr_Barcode2 
		Second Barcode of the Nota Fiscal
	  */
	public void setlbr_Barcode2 (String lbr_Barcode2)
	{
		set_Value (COLUMNNAME_lbr_Barcode2, lbr_Barcode2);
	}

	/** Get Barcode 2.
		@return Second Barcode of the Nota Fiscal
	  */
	public String getlbr_Barcode2 () 
	{
		return (String)get_Value(COLUMNNAME_lbr_Barcode2);
	}

	/** Set CNPJ.
		@param lbr_CNPJ 
		Used to identify Legal Entities in Brazil
	  */
	public void setlbr_CNPJ (String lbr_CNPJ)
	{
		set_Value (COLUMNNAME_lbr_CNPJ, lbr_CNPJ);
	}

	/** Get CNPJ.
		@return Used to identify Legal Entities in Brazil
	  */
	public String getlbr_CNPJ () 
	{
		return (String)get_Value(COLUMNNAME_lbr_CNPJ);
	}

	/** Set NF Serie.
		@param lbr_NFSerie NF Serie	  */
	public void setlbr_NFSerie (String lbr_NFSerie)
	{
		set_Value (COLUMNNAME_lbr_NFSerie, lbr_NFSerie);
	}

	/** Get NF Serie.
		@return NF Serie	  */
	public String getlbr_NFSerie () 
	{
		return (String)get_Value(COLUMNNAME_lbr_NFSerie);
	}

	/** Set NFe ID.
		@param lbr_NFeID 
		Identification of NFe
	  */
	public void setlbr_NFeID (String lbr_NFeID)
	{
		set_Value (COLUMNNAME_lbr_NFeID, lbr_NFeID);
	}

	/** Get NFe ID.
		@return Identification of NFe
	  */
	public String getlbr_NFeID () 
	{
		return (String)get_Value(COLUMNNAME_lbr_NFeID);
	}

	/** Set NFe Protocol.
		@param lbr_NFeProt NFe Protocol	  */
	public void setlbr_NFeProt (String lbr_NFeProt)
	{
		set_Value (COLUMNNAME_lbr_NFeProt, lbr_NFeProt);
	}

	/** Get NFe Protocol.
		@return NFe Protocol	  */
	public String getlbr_NFeProt () 
	{
		return (String)get_Value(COLUMNNAME_lbr_NFeProt);
	}
}