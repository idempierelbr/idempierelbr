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

/** Generated Model for LBR_DocLine_OTHER
 *  @author iDempiere (generated)
 *  @version Release 11 - $Id$ */
@org.adempiere.base.Model(table="LBR_DocLine_OTHER")
public class X_LBR_DocLine_OTHER extends PO implements I_LBR_DocLine_OTHER, I_Persistent
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20240603L;

    /** Standard Constructor */
    public X_LBR_DocLine_OTHER (Properties ctx, int LBR_DocLine_OTHER_ID, String trxName)
    {
      super (ctx, LBR_DocLine_OTHER_ID, trxName);
      /** if (LBR_DocLine_OTHER_ID == 0)
        {
			setLBR_DocLine_OTHER_ID (0);
        } */
    }

    /** Standard Constructor */
    public X_LBR_DocLine_OTHER (Properties ctx, int LBR_DocLine_OTHER_ID, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_DocLine_OTHER_ID, trxName, virtualColumns);
      /** if (LBR_DocLine_OTHER_ID == 0)
        {
			setLBR_DocLine_OTHER_ID (0);
        } */
    }

    /** Standard Constructor */
    public X_LBR_DocLine_OTHER (Properties ctx, String LBR_DocLine_OTHER_UU, String trxName)
    {
      super (ctx, LBR_DocLine_OTHER_UU, trxName);
      /** if (LBR_DocLine_OTHER_UU == null)
        {
			setLBR_DocLine_OTHER_ID (0);
        } */
    }

    /** Standard Constructor */
    public X_LBR_DocLine_OTHER (Properties ctx, String LBR_DocLine_OTHER_UU, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_DocLine_OTHER_UU, trxName, virtualColumns);
      /** if (LBR_DocLine_OTHER_UU == null)
        {
			setLBR_DocLine_OTHER_ID (0);
        } */
    }

    /** Load Constructor */
    public X_LBR_DocLine_OTHER (Properties ctx, ResultSet rs, String trxName)
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
      StringBuilder sb = new StringBuilder ("X_LBR_DocLine_OTHER[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set CSLL Incluso no Preço.
		@param LBR_CSLL_IsTaxIncluded CSLL Incluso no Preço
	*/
	public void setLBR_CSLL_IsTaxIncluded (boolean LBR_CSLL_IsTaxIncluded)
	{
		set_Value (COLUMNNAME_LBR_CSLL_IsTaxIncluded, Boolean.valueOf(LBR_CSLL_IsTaxIncluded));
	}

	/** Get CSLL Incluso no Preço.
		@return CSLL Incluso no Preço	  */
	public boolean isLBR_CSLL_IsTaxIncluded()
	{
		Object oo = get_Value(COLUMNNAME_LBR_CSLL_IsTaxIncluded);
		if (oo != null)
		{
			 if (oo instanceof Boolean)
				 return ((Boolean)oo).booleanValue();
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Valor da CSLL.
		@param LBR_CSLL_TaxAmt Valor da CSLL
	*/
	public void setLBR_CSLL_TaxAmt (BigDecimal LBR_CSLL_TaxAmt)
	{
		set_Value (COLUMNNAME_LBR_CSLL_TaxAmt, LBR_CSLL_TaxAmt);
	}

	/** Get Valor da CSLL.
		@return Valor da CSLL	  */
	public BigDecimal getLBR_CSLL_TaxAmt()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_CSLL_TaxAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Base de Cálculo da CSLL.
		@param LBR_CSLL_TaxBaseAmt Base de Cálculo da CSLL
	*/
	public void setLBR_CSLL_TaxBaseAmt (BigDecimal LBR_CSLL_TaxBaseAmt)
	{
		set_Value (COLUMNNAME_LBR_CSLL_TaxBaseAmt, LBR_CSLL_TaxBaseAmt);
	}

	/** Get Base de Cálculo da CSLL.
		@return Base de Cálculo da CSLL	  */
	public BigDecimal getLBR_CSLL_TaxBaseAmt()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_CSLL_TaxBaseAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Alíquota da CSLL.
		@param LBR_CSLL_TaxRate Alíquota da CSLL
	*/
	public void setLBR_CSLL_TaxRate (BigDecimal LBR_CSLL_TaxRate)
	{
		set_Value (COLUMNNAME_LBR_CSLL_TaxRate, LBR_CSLL_TaxRate);
	}

	/** Get Alíquota da CSLL.
		@return Alíquota da CSLL	  */
	public BigDecimal getLBR_CSLL_TaxRate()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_CSLL_TaxRate);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	public I_LBR_DocLine_Details getLBR_DocLine_Details() throws RuntimeException
	{
		return (I_LBR_DocLine_Details)MTable.get(getCtx(), I_LBR_DocLine_Details.Table_ID)
			.getPO(getLBR_DocLine_Details_ID(), get_TrxName());
	}

	/** Set Doc Line Details.
		@param LBR_DocLine_Details_ID Doc Line Details
	*/
	public void setLBR_DocLine_Details_ID (int LBR_DocLine_Details_ID)
	{
		if (LBR_DocLine_Details_ID < 1)
			set_Value (COLUMNNAME_LBR_DocLine_Details_ID, null);
		else
			set_Value (COLUMNNAME_LBR_DocLine_Details_ID, Integer.valueOf(LBR_DocLine_Details_ID));
	}

	/** Get Doc Line Details.
		@return Doc Line Details
	  */
	public int getLBR_DocLine_Details_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_DocLine_Details_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Outros Impostos.
		@param LBR_DocLine_OTHER_ID Outros Impostos
	*/
	public void setLBR_DocLine_OTHER_ID (int LBR_DocLine_OTHER_ID)
	{
		if (LBR_DocLine_OTHER_ID < 1)
			set_ValueNoCheck (COLUMNNAME_LBR_DocLine_OTHER_ID, null);
		else
			set_ValueNoCheck (COLUMNNAME_LBR_DocLine_OTHER_ID, Integer.valueOf(LBR_DocLine_OTHER_ID));
	}

	/** Get Outros Impostos.
		@return Outros Impostos	  */
	public int getLBR_DocLine_OTHER_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_DocLine_OTHER_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_DocLine_OTHER_UU.
		@param LBR_DocLine_OTHER_UU LBR_DocLine_OTHER_UU
	*/
	public void setLBR_DocLine_OTHER_UU (String LBR_DocLine_OTHER_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_DocLine_OTHER_UU, LBR_DocLine_OTHER_UU);
	}

	/** Get LBR_DocLine_OTHER_UU.
		@return LBR_DocLine_OTHER_UU	  */
	public String getLBR_DocLine_OTHER_UU()
	{
		return (String)get_Value(COLUMNNAME_LBR_DocLine_OTHER_UU);
	}

	/** Set INSS Incluso no Preço.
		@param LBR_INSS_IsTaxIncluded INSS Incluso no Preço
	*/
	public void setLBR_INSS_IsTaxIncluded (boolean LBR_INSS_IsTaxIncluded)
	{
		set_Value (COLUMNNAME_LBR_INSS_IsTaxIncluded, Boolean.valueOf(LBR_INSS_IsTaxIncluded));
	}

	/** Get INSS Incluso no Preço.
		@return INSS Incluso no Preço	  */
	public boolean isLBR_INSS_IsTaxIncluded()
	{
		Object oo = get_Value(COLUMNNAME_LBR_INSS_IsTaxIncluded);
		if (oo != null)
		{
			 if (oo instanceof Boolean)
				 return ((Boolean)oo).booleanValue();
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Valor do INSS.
		@param LBR_INSS_TaxAmt Valor do INSS
	*/
	public void setLBR_INSS_TaxAmt (BigDecimal LBR_INSS_TaxAmt)
	{
		set_Value (COLUMNNAME_LBR_INSS_TaxAmt, LBR_INSS_TaxAmt);
	}

	/** Get Valor do INSS.
		@return Valor do INSS	  */
	public BigDecimal getLBR_INSS_TaxAmt()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_INSS_TaxAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Base de Cálculo do INSS.
		@param LBR_INSS_TaxBaseAmt Base de Cálculo do INSS
	*/
	public void setLBR_INSS_TaxBaseAmt (BigDecimal LBR_INSS_TaxBaseAmt)
	{
		set_Value (COLUMNNAME_LBR_INSS_TaxBaseAmt, LBR_INSS_TaxBaseAmt);
	}

	/** Get Base de Cálculo do INSS.
		@return Base de Cálculo do INSS	  */
	public BigDecimal getLBR_INSS_TaxBaseAmt()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_INSS_TaxBaseAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Alíquota do INSS.
		@param LBR_INSS_TaxRate Alíquota do INSS
	*/
	public void setLBR_INSS_TaxRate (BigDecimal LBR_INSS_TaxRate)
	{
		set_Value (COLUMNNAME_LBR_INSS_TaxRate, LBR_INSS_TaxRate);
	}

	/** Get Alíquota do INSS.
		@return Alíquota do INSS	  */
	public BigDecimal getLBR_INSS_TaxRate()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_INSS_TaxRate);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set IR Incluso no Preço.
		@param LBR_IR_IsTaxIncluded IR Incluso no Preço
	*/
	public void setLBR_IR_IsTaxIncluded (boolean LBR_IR_IsTaxIncluded)
	{
		set_Value (COLUMNNAME_LBR_IR_IsTaxIncluded, Boolean.valueOf(LBR_IR_IsTaxIncluded));
	}

	/** Get IR Incluso no Preço.
		@return IR Incluso no Preço	  */
	public boolean isLBR_IR_IsTaxIncluded()
	{
		Object oo = get_Value(COLUMNNAME_LBR_IR_IsTaxIncluded);
		if (oo != null)
		{
			 if (oo instanceof Boolean)
				 return ((Boolean)oo).booleanValue();
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Valor do IR.
		@param LBR_IR_TaxAmt Valor do IR
	*/
	public void setLBR_IR_TaxAmt (BigDecimal LBR_IR_TaxAmt)
	{
		set_Value (COLUMNNAME_LBR_IR_TaxAmt, LBR_IR_TaxAmt);
	}

	/** Get Valor do IR.
		@return Valor do IR	  */
	public BigDecimal getLBR_IR_TaxAmt()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_IR_TaxAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Base de Cálculo do IR.
		@param LBR_IR_TaxBaseAmt Base de Cálculo do IR
	*/
	public void setLBR_IR_TaxBaseAmt (BigDecimal LBR_IR_TaxBaseAmt)
	{
		set_Value (COLUMNNAME_LBR_IR_TaxBaseAmt, LBR_IR_TaxBaseAmt);
	}

	/** Get Base de Cálculo do IR.
		@return Base de Cálculo do IR	  */
	public BigDecimal getLBR_IR_TaxBaseAmt()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_IR_TaxBaseAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Alíquota do IR.
		@param LBR_IR_TaxRate Alíquota do IR
	*/
	public void setLBR_IR_TaxRate (BigDecimal LBR_IR_TaxRate)
	{
		set_Value (COLUMNNAME_LBR_IR_TaxRate, LBR_IR_TaxRate);
	}

	/** Get Alíquota do IR.
		@return Alíquota do IR	  */
	public BigDecimal getLBR_IR_TaxRate()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_IR_TaxRate);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}
}