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

/** Generated Model for LBR_NotaFiscalLineComb
 *  @author iDempiere (generated) 
 *  @version Release 5.1 - $Id$ */
public class X_LBR_NotaFiscalLineComb extends PO implements I_LBR_NotaFiscalLineComb, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20180801L;

    /** Standard Constructor */
    public X_LBR_NotaFiscalLineComb (Properties ctx, int LBR_NotaFiscalLineComb_ID, String trxName)
    {
      super (ctx, LBR_NotaFiscalLineComb_ID, trxName);
      /** if (LBR_NotaFiscalLineComb_ID == 0)
        {
			setC_Region_ID (0);
			setLBR_CodANP (null);
			setLBR_NotaFiscalLine_ID (0);
			setLBR_NotaFiscalLineComb_ID (0);
        } */
    }

    /** Load Constructor */
    public X_LBR_NotaFiscalLineComb (Properties ctx, ResultSet rs, String trxName)
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

	/** Set ANP Code.
		@param LBR_CodANP 
		Product Code issued by the brazilian National Petrol Agency to fuels and lubricants.
	  */
	public void setLBR_CodANP (String LBR_CodANP)
	{
		set_Value (COLUMNNAME_LBR_CodANP, LBR_CodANP);
	}

	/** Get ANP Code.
		@return Product Code issued by the brazilian National Petrol Agency to fuels and lubricants.
	  */
	public String getLBR_CodANP () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CodANP);
	}

	/** Set CODIF Authorisation Code.
		@param LBR_CODIF 
		CODIF Authorisation Code
	  */
	public void setLBR_CODIF (String LBR_CODIF)
	{
		set_Value (COLUMNNAME_LBR_CODIF, LBR_CODIF);
	}

	/** Get CODIF Authorisation Code.
		@return CODIF Authorisation Code
	  */
	public String getLBR_CODIF () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CODIF);
	}

	/** Set Descrição do Produto na ANP.
		@param LBR_DescANP Descrição do Produto na ANP	  */
	public void setLBR_DescANP (String LBR_DescANP)
	{
		set_Value (COLUMNNAME_LBR_DescANP, LBR_DescANP);
	}

	/** Get Descrição do Produto na ANP.
		@return Descrição do Produto na ANP	  */
	public String getLBR_DescANP () 
	{
		return (String)get_Value(COLUMNNAME_LBR_DescANP);
	}

	public I_LBR_NotaFiscalLine getLBR_NotaFiscalLine() throws RuntimeException
    {
		return (I_LBR_NotaFiscalLine)MTable.get(getCtx(), I_LBR_NotaFiscalLine.Table_Name)
			.getPO(getLBR_NotaFiscalLine_ID(), get_TrxName());	}

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

	/** Set Brazilian Fiscal Invoice (Nota Fiscal) Line Comb.
		@param LBR_NotaFiscalLineComb_ID 
		Brazilian Fiscal Invoice (Nota Fiscal) Line Comb Identifier
	  */
	public void setLBR_NotaFiscalLineComb_ID (int LBR_NotaFiscalLineComb_ID)
	{
		if (LBR_NotaFiscalLineComb_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_NotaFiscalLineComb_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_NotaFiscalLineComb_ID, Integer.valueOf(LBR_NotaFiscalLineComb_ID));
	}

	/** Get Brazilian Fiscal Invoice (Nota Fiscal) Line Comb.
		@return Brazilian Fiscal Invoice (Nota Fiscal) Line Comb Identifier
	  */
	public int getLBR_NotaFiscalLineComb_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_NotaFiscalLineComb_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Brazilian Fiscal Invoice (Nota Fiscal) Line Comb.
		@param LBR_NotaFiscalLineComb_UU 
		Brazilian Fiscal Invoice (Nota Fiscal) Line Comb Identifier
	  */
	public void setLBR_NotaFiscalLineComb_UU (String LBR_NotaFiscalLineComb_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_NotaFiscalLineComb_UU, LBR_NotaFiscalLineComb_UU);
	}

	/** Get Brazilian Fiscal Invoice (Nota Fiscal) Line Comb.
		@return Brazilian Fiscal Invoice (Nota Fiscal) Line Comb Identifier
	  */
	public String getLBR_NotaFiscalLineComb_UU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_NotaFiscalLineComb_UU);
	}

	/** Set Natural Gas Mix Percent.
		@param LBR_pMixGN 
		Natural gas mix percent in a LPG product.
	  */
	public void setLBR_pMixGN (BigDecimal LBR_pMixGN)
	{
		set_Value (COLUMNNAME_LBR_pMixGN, LBR_pMixGN);
	}

	/** Get Natural Gas Mix Percent.
		@return Natural gas mix percent in a LPG product.
	  */
	public BigDecimal getLBR_pMixGN () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_pMixGN);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Amount of fuel at room temperature.
		@param LBR_qTemp 
		Amount of fuel sold at room temperature
	  */
	public void setLBR_qTemp (BigDecimal LBR_qTemp)
	{
		set_Value (COLUMNNAME_LBR_qTemp, LBR_qTemp);
	}

	/** Get Amount of fuel at room temperature.
		@return Amount of fuel sold at room temperature
	  */
	public BigDecimal getLBR_qTemp () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_qTemp);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}
}