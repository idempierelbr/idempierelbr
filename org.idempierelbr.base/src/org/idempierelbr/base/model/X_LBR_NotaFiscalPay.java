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

/** Generated Model for LBR_NotaFiscalPay
 *  @author iDempiere (generated) 
 *  @version Release 2.0 - $Id$ */
public class X_LBR_NotaFiscalPay extends PO implements I_LBR_NotaFiscalPay, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20140516L;

    /** Standard Constructor */
    public X_LBR_NotaFiscalPay (Properties ctx, int LBR_NotaFiscalPay_ID, String trxName)
    {
      super (ctx, LBR_NotaFiscalPay_ID, trxName);
      /** if (LBR_NotaFiscalPay_ID == 0)
        {
			setLBR_NotaFiscal_ID (0);
			setLBR_NotaFiscalPay_ID (0);
        } */
    }

    /** Load Constructor */
    public X_LBR_NotaFiscalPay (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_NotaFiscalPay[")
        .append(get_ID()).append("]");
      return sb.toString();
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

	/** Set Brazilian Fiscal Invoice (Nota Fiscal) Pay.
		@param LBR_NotaFiscalPay_ID Brazilian Fiscal Invoice (Nota Fiscal) Pay	  */
	public void setLBR_NotaFiscalPay_ID (int LBR_NotaFiscalPay_ID)
	{
		if (LBR_NotaFiscalPay_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_NotaFiscalPay_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_NotaFiscalPay_ID, Integer.valueOf(LBR_NotaFiscalPay_ID));
	}

	/** Get Brazilian Fiscal Invoice (Nota Fiscal) Pay.
		@return Brazilian Fiscal Invoice (Nota Fiscal) Pay	  */
	public int getLBR_NotaFiscalPay_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_NotaFiscalPay_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Brazilian Fiscal Invoice (Nota Fiscal) Pay.
		@param LBR_NotaFiscalPay_UU Brazilian Fiscal Invoice (Nota Fiscal) Pay	  */
	public void setLBR_NotaFiscalPay_UU (String LBR_NotaFiscalPay_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_NotaFiscalPay_UU, LBR_NotaFiscalPay_UU);
	}

	/** Get Brazilian Fiscal Invoice (Nota Fiscal) Pay.
		@return Brazilian Fiscal Invoice (Nota Fiscal) Pay	  */
	public String getLBR_NotaFiscalPay_UU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_NotaFiscalPay_UU);
	}

	/** Set Invoice net Amount.
		@param NetAmtToInvoice 
		Net amount of this Invoice
	  */
	public void setNetAmtToInvoice (BigDecimal NetAmtToInvoice)
	{
		set_Value (COLUMNNAME_NetAmtToInvoice, NetAmtToInvoice);
	}

	/** Get Invoice net Amount.
		@return Net amount of this Invoice
	  */
	public BigDecimal getNetAmtToInvoice () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_NetAmtToInvoice);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}
}