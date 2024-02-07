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

/** Generated Model for LBR_NotaFiscalDI
 *  @author iDempiere (generated) 
 *  @version Release 2.1 - $Id$ */
public class X_LBR_NotaFiscalDI extends PO implements I_LBR_NotaFiscalDI, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20141125L;

    /** Standard Constructor */
    public X_LBR_NotaFiscalDI (Properties ctx, int LBR_NotaFiscalDI_ID, String trxName)
    {
      super (ctx, LBR_NotaFiscalDI_ID, trxName);
      /** if (LBR_NotaFiscalDI_ID == 0)
        {
			setLBR_DI_Addition_ID (0);
			setLBR_DI_AdditionProd_ID (0);
			setLBR_NotaFiscalDI_ID (0);
			setLBR_NotaFiscalLine_ID (0);
        } */
    }

    /** Load Constructor */
    public X_LBR_NotaFiscalDI (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_NotaFiscalDI[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set AFRMM Amount.
		@param LBR_AfrmmAmt AFRMM Amount	  */
	public void setLBR_AfrmmAmt (BigDecimal LBR_AfrmmAmt)
	{
		set_Value (COLUMNNAME_LBR_AfrmmAmt, LBR_AfrmmAmt);
	}

	/** Get AFRMM Amount.
		@return AFRMM Amount	  */
	public BigDecimal getLBR_AfrmmAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_AfrmmAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	public I_LBR_DI_Addition getLBR_DI_Addition() throws RuntimeException
    {
		return (I_LBR_DI_Addition)MTable.get(getCtx(), I_LBR_DI_Addition.Table_Name)
			.getPO(getLBR_DI_Addition_ID(), get_TrxName());	}

	/** Set Import Declaration (DI) Addition.
		@param LBR_DI_Addition_ID 
		Identifies an Import Declaration (DI) Addiction
	  */
	public void setLBR_DI_Addition_ID (int LBR_DI_Addition_ID)
	{
		if (LBR_DI_Addition_ID < 1) 
			set_Value (COLUMNNAME_LBR_DI_Addition_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_DI_Addition_ID, Integer.valueOf(LBR_DI_Addition_ID));
	}

	/** Get Import Declaration (DI) Addition.
		@return Identifies an Import Declaration (DI) Addiction
	  */
	public int getLBR_DI_Addition_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_DI_Addition_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public I_LBR_DI_AdditionProd getLBR_DI_AdditionProd() throws RuntimeException
    {
		return (I_LBR_DI_AdditionProd)MTable.get(getCtx(), I_LBR_DI_AdditionProd.Table_Name)
			.getPO(getLBR_DI_AdditionProd_ID(), get_TrxName());	}

	/** Set DI Addition Product.
		@param LBR_DI_AdditionProd_ID 
		Identifies an Import Declaration (DI) Addiction Product
	  */
	public void setLBR_DI_AdditionProd_ID (int LBR_DI_AdditionProd_ID)
	{
		if (LBR_DI_AdditionProd_ID < 1) 
			set_Value (COLUMNNAME_LBR_DI_AdditionProd_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_DI_AdditionProd_ID, Integer.valueOf(LBR_DI_AdditionProd_ID));
	}

	/** Get DI Addition Product.
		@return Identifies an Import Declaration (DI) Addiction Product
	  */
	public int getLBR_DI_AdditionProd_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_DI_AdditionProd_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Brazilian Fiscal Invoice (Nota Fiscal) DI.
		@param LBR_NotaFiscalDI_ID 
		Identifies a Brazilian Fiscal Invoice (Nota Fiscal) DI
	  */
	public void setLBR_NotaFiscalDI_ID (int LBR_NotaFiscalDI_ID)
	{
		if (LBR_NotaFiscalDI_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_NotaFiscalDI_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_NotaFiscalDI_ID, Integer.valueOf(LBR_NotaFiscalDI_ID));
	}

	/** Get Brazilian Fiscal Invoice (Nota Fiscal) DI.
		@return Identifies a Brazilian Fiscal Invoice (Nota Fiscal) DI
	  */
	public int getLBR_NotaFiscalDI_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_NotaFiscalDI_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Brazilian Fiscal Invoice (Nota Fiscal) DI.
		@param LBR_NotaFiscalDI_UU 
		Identifies a Brazilian Fiscal Invoice (Nota Fiscal) DI
	  */
	public void setLBR_NotaFiscalDI_UU (String LBR_NotaFiscalDI_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_NotaFiscalDI_UU, LBR_NotaFiscalDI_UU);
	}

	/** Get Brazilian Fiscal Invoice (Nota Fiscal) DI.
		@return Identifies a Brazilian Fiscal Invoice (Nota Fiscal) DI
	  */
	public String getLBR_NotaFiscalDI_UU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_NotaFiscalDI_UU);
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
}