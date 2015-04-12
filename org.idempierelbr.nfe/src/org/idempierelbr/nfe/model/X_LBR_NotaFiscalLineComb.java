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
import java.util.Properties;
import org.compiere.model.*;
import org.compiere.util.Env;
import org.compiere.util.KeyNamePair;

/** Generated Model for LBR_NotaFiscalLineComb
 *  @author iDempiere (generated) 
 *  @version Release 2.1 - $Id$ */
public class X_LBR_NotaFiscalLineComb extends PO implements I_LBR_NotaFiscalLineComb, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20150325L;

    /** Standard Constructor */
    public X_LBR_NotaFiscalLineComb (Properties ctx, int LBR_NotaFiscalLineComb_ID, String trxName)
    {
      super (ctx, LBR_NotaFiscalLineComb_ID, trxName);
      /** if (LBR_NotaFiscalLineComb_ID == 0)
        {
			setC_Region_ID (0);
			setLBR_CodANP (null);
			setLBR_NotaFiscalLineComb_ID (0);
			setLBR_NotaFiscalLine_ID (0);
        } */
    }

    /** Load Constructor */
    public X_LBR_NotaFiscalLineComb (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_NotaFiscalLineComb[")
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

	/** Set Código de Autorização.
		@param LBR_CODIF 
		Código de autorização / registro do CODIF
	  */
	public void setLBR_CODIF (String LBR_CODIF)
	{
		set_Value (COLUMNNAME_LBR_CODIF, LBR_CODIF);
	}

	/** Get Código de Autorização.
		@return Código de autorização / registro do CODIF
	  */
	public String getLBR_CODIF () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CODIF);
	}

	/** Set Código ANP.
		@param LBR_CodANP 
		Código da Tabela da Agência Nacional do Petróleo para o produto.
	  */
	public void setLBR_CodANP (String LBR_CodANP)
	{
		set_Value (COLUMNNAME_LBR_CodANP, LBR_CodANP);
	}

	/** Get Código ANP.
		@return Código da Tabela da Agência Nacional do Petróleo para o produto.
	  */
	public String getLBR_CodANP () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CodANP);
	}

	/** Set Linha de Nota Fiscal - Combustível.
		@param LBR_NotaFiscalLineComb_ID Linha de Nota Fiscal - Combustível	  */
	public void setLBR_NotaFiscalLineComb_ID (int LBR_NotaFiscalLineComb_ID)
	{
		if (LBR_NotaFiscalLineComb_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_NotaFiscalLineComb_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_NotaFiscalLineComb_ID, Integer.valueOf(LBR_NotaFiscalLineComb_ID));
	}

	/** Get Linha de Nota Fiscal - Combustível.
		@return Linha de Nota Fiscal - Combustível	  */
	public int getLBR_NotaFiscalLineComb_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_NotaFiscalLineComb_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

    /** Get Record ID/ColumnName
        @return ID/ColumnName pair
      */
    public KeyNamePair getKeyNamePair() 
    {
        return new KeyNamePair(get_ID(), String.valueOf(getLBR_NotaFiscalLineComb_ID()));
    }

	/** Set LBR_NotaFiscalLineComb_UU.
		@param LBR_NotaFiscalLineComb_UU LBR_NotaFiscalLineComb_UU	  */
	public void setLBR_NotaFiscalLineComb_UU (String LBR_NotaFiscalLineComb_UU)
	{
		set_Value (COLUMNNAME_LBR_NotaFiscalLineComb_UU, LBR_NotaFiscalLineComb_UU);
	}

	/** Get LBR_NotaFiscalLineComb_UU.
		@return LBR_NotaFiscalLineComb_UU	  */
	public String getLBR_NotaFiscalLineComb_UU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_NotaFiscalLineComb_UU);
	}

	/** Set Brazilian Fiscal Invoice (Nota Fiscal) Line.
		@param LBR_NotaFiscalLine_ID 
		Brazilian Fiscal Invoice (Nota Fiscal) Line Identifier
	  */
	public void setLBR_NotaFiscalLine_ID (int LBR_NotaFiscalLine_ID)
	{
		if (LBR_NotaFiscalLine_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_NotaFiscalLine_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_NotaFiscalLine_ID, Integer.valueOf(LBR_NotaFiscalLine_ID));
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

	/** Set Percentual Gás Natural.
		@param LBR_pMixGN 
		Percentual de Gás Natural para o produto GLP
	  */
	public void setLBR_pMixGN (BigDecimal LBR_pMixGN)
	{
		set_Value (COLUMNNAME_LBR_pMixGN, LBR_pMixGN);
	}

	/** Get Percentual Gás Natural.
		@return Percentual de Gás Natural para o produto GLP
	  */
	public BigDecimal getLBR_pMixGN () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_pMixGN);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Quantidade Combustível Temp. Ambiente.
		@param LBR_qTemp 
		Quantidade de combustível faturada à temperatura ambiente.
	  */
	public void setLBR_qTemp (BigDecimal LBR_qTemp)
	{
		set_Value (COLUMNNAME_LBR_qTemp, LBR_qTemp);
	}

	/** Get Quantidade Combustível Temp. Ambiente.
		@return Quantidade de combustível faturada à temperatura ambiente.
	  */
	public BigDecimal getLBR_qTemp () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_qTemp);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}
}