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
 *****************************************************************************/

/** Generated Model - DO NOT CHANGE */
package org.idempierelbr.mdfe.model;

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.Properties;
import org.compiere.model.*;
import org.compiere.util.Env;
import org.compiere.util.KeyNamePair;

/** Generated Model for LBR_MDFeDoc
 *  @author iDempiere (generated)
 *  @version Release 13 - $Id$ */
@org.adempiere.base.Model(table="LBR_MDFeDoc")
public class X_LBR_MDFeDoc extends PO implements I_LBR_MDFeDoc, I_Persistent
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20260828L;

    /** Standard Constructor */
    public X_LBR_MDFeDoc (Properties ctx, int LBR_MDFeDoc_ID, String trxName)
    {
      super (ctx, LBR_MDFeDoc_ID, trxName);
      /** if (LBR_MDFeDoc_ID == 0)
        {
			setLBR_DFeChave (null);
			setLBR_MDFeDoc_ID (0);
			setLBR_MDFeMunDescarga_ID (0);
        } */
    }

    /** Standard Constructor */
    public X_LBR_MDFeDoc (Properties ctx, int LBR_MDFeDoc_ID, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_MDFeDoc_ID, trxName, virtualColumns);
      /** if (LBR_MDFeDoc_ID == 0)
        {
			setLBR_DFeChave (null);
			setLBR_MDFeDoc_ID (0);
			setLBR_MDFeMunDescarga_ID (0);
        } */
    }

    /** Standard Constructor */
    public X_LBR_MDFeDoc (Properties ctx, String LBR_MDFeDoc_UU, String trxName)
    {
      super (ctx, LBR_MDFeDoc_UU, trxName);
      /** if (LBR_MDFeDoc_UU == null)
        {
			setLBR_DFeChave (null);
			setLBR_MDFeDoc_ID (0);
			setLBR_MDFeMunDescarga_ID (0);
        } */
    }

    /** Standard Constructor */
    public X_LBR_MDFeDoc (Properties ctx, String LBR_MDFeDoc_UU, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_MDFeDoc_UU, trxName, virtualColumns);
      /** if (LBR_MDFeDoc_UU == null)
        {
			setLBR_DFeChave (null);
			setLBR_MDFeDoc_ID (0);
			setLBR_MDFeMunDescarga_ID (0);
        } */
    }

    /** Load Constructor */
    public X_LBR_MDFeDoc (Properties ctx, ResultSet rs, String trxName)
    {
      super (ctx, rs, trxName);
    }

    /** AccessLevel
      * @return 3 - Client+Organization
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
      StringBuilder sb = new StringBuilder ("X_LBR_MDFeDoc[")
        .append(get_ID()).append(",LBR_DFeChave=").append(getLBR_DFeChave()).append("]");
      return sb.toString();
    }

	/** Set Valor do documento.
		@param LBR_ValueDoc Valor total do documento manifestado; soma em tot/vCarga
	*/
	public void setLBR_ValueDoc (BigDecimal LBR_ValueDoc)
	{
		set_Value (COLUMNNAME_LBR_ValueDoc, LBR_ValueDoc);
	}

	/** Get Valor do documento.
		@return Valor total do documento manifestado; soma em tot/vCarga
	  */
	public BigDecimal getLBR_ValueDoc()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_ValueDoc);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Pedido.
		@param C_Order_ID Pedido
	*/
	public void setC_Order_ID (int C_Order_ID)
	{
		if (C_Order_ID < 1)
			set_Value (COLUMNNAME_C_Order_ID, null);
		else
			set_Value (COLUMNNAME_C_Order_ID, Integer.valueOf(C_Order_ID));
	}

	/** Get Pedido.
		@return Pedido
	  */
	public int getC_Order_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_Order_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Chave de acesso.
		@param LBR_DFeChave chNFe / chCTe / chMDFe
	*/
	public void setLBR_DFeChave (String LBR_DFeChave)
	{
		set_Value (COLUMNNAME_LBR_DFeChave, LBR_DFeChave);
	}

	/** Get Chave de acesso.
		@return chNFe / chCTe / chMDFe
	  */
	public String getLBR_DFeChave()
	{
		return (String)get_Value(COLUMNNAME_LBR_DFeChave);
	}

	/** LBR_DFeType */
	/** CT-e = C */
	public static final String LBR_DFETYPE_CT_E = "C";
	/** MDF-e de transporte = M */
	public static final String LBR_DFETYPE_MDF_EDeTransporte = "M";
	/** NF-e = N */
	public static final String LBR_DFETYPE_NF_E = "N";
	/** Set Tipo do documento.
		@param LBR_DFeType Tipo do documento
	*/
	public void setLBR_DFeType (String LBR_DFeType)
	{
		set_Value (COLUMNNAME_LBR_DFeType, LBR_DFeType);
	}

	/** Get Tipo do documento.
		@return Tipo do documento
	  */
	public String getLBR_DFeType()
	{
		return (String)get_Value(COLUMNNAME_LBR_DFeType);
	}

	/** Set Reentrega.
		@param LBR_IndReentrega indReentrega
	*/
	public void setLBR_IndReentrega (boolean LBR_IndReentrega)
	{
		set_Value (COLUMNNAME_LBR_IndReentrega, Boolean.valueOf(LBR_IndReentrega));
	}

	/** Get Reentrega.
		@return indReentrega
	  */
	public boolean isLBR_IndReentrega()
	{
		Object oo = get_Value(COLUMNNAME_LBR_IndReentrega);
		if (oo != null)
		{
			 if (oo instanceof Boolean)
				 return ((Boolean)oo).booleanValue();
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set LBR_MDFeDoc.
		@param LBR_MDFeDoc_ID LBR_MDFeDoc
	*/
	public void setLBR_MDFeDoc_ID (int LBR_MDFeDoc_ID)
	{
		if (LBR_MDFeDoc_ID < 1)
			set_ValueNoCheck (COLUMNNAME_LBR_MDFeDoc_ID, null);
		else
			set_ValueNoCheck (COLUMNNAME_LBR_MDFeDoc_ID, Integer.valueOf(LBR_MDFeDoc_ID));
	}

	/** Get LBR_MDFeDoc.
		@return LBR_MDFeDoc
	  */
	public int getLBR_MDFeDoc_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_MDFeDoc_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_MDFeDoc_UU.
		@param LBR_MDFeDoc_UU LBR_MDFeDoc_UU
	*/
	public void setLBR_MDFeDoc_UU (String LBR_MDFeDoc_UU)
	{
		set_Value (COLUMNNAME_LBR_MDFeDoc_UU, LBR_MDFeDoc_UU);
	}

	/** Get LBR_MDFeDoc_UU.
		@return LBR_MDFeDoc_UU
	  */
	public String getLBR_MDFeDoc_UU()
	{
		return (String)get_Value(COLUMNNAME_LBR_MDFeDoc_UU);
	}

	/** Set Municipio de descarregamento.
		@param LBR_MDFeMunDescarga_ID Municipio de descarregamento
	*/
	public void setLBR_MDFeMunDescarga_ID (int LBR_MDFeMunDescarga_ID)
	{
		if (LBR_MDFeMunDescarga_ID < 1)
			set_Value (COLUMNNAME_LBR_MDFeMunDescarga_ID, null);
		else
			set_Value (COLUMNNAME_LBR_MDFeMunDescarga_ID, Integer.valueOf(LBR_MDFeMunDescarga_ID));
	}

	/** Get Municipio de descarregamento.
		@return Municipio de descarregamento
	  */
	public int getLBR_MDFeMunDescarga_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_MDFeMunDescarga_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Segundo codigo de barras.
		@param LBR_SegCodBarra Segundo codigo de barras
	*/
	public void setLBR_SegCodBarra (String LBR_SegCodBarra)
	{
		set_Value (COLUMNNAME_LBR_SegCodBarra, LBR_SegCodBarra);
	}

	/** Get Segundo codigo de barras.
		@return Segundo codigo de barras
	  */
	public String getLBR_SegCodBarra()
	{
		return (String)get_Value(COLUMNNAME_LBR_SegCodBarra);
	}

	/** Set Nota fiscal.
		@param LBR_NotaFiscal_ID Nota fiscal
	*/
	public void setLBR_NotaFiscal_ID (int LBR_NotaFiscal_ID)
	{
		if (LBR_NotaFiscal_ID < 1)
			set_Value (COLUMNNAME_LBR_NotaFiscal_ID, null);
		else
			set_Value (COLUMNNAME_LBR_NotaFiscal_ID, Integer.valueOf(LBR_NotaFiscal_ID));
	}

	/** Get Nota fiscal.
		@return Nota fiscal
	  */
	public int getLBR_NotaFiscal_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_NotaFiscal_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Linha.
		@param Line Linha
	*/
	public void setLine (int Line)
	{
		set_Value (COLUMNNAME_Line, Integer.valueOf(Line));
	}

	/** Get Linha.
		@return Linha
	  */
	public int getLine()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_Line);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

}
