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
import java.sql.Timestamp;
import java.util.Properties;
import org.compiere.model.*;
import org.compiere.util.Env;

/** Generated Model for LBR_NotaFiscalPaySched
 *  @author iDempiere (generated) 
 *  @version Release 2.0 - $Id$ */
public class X_LBR_NotaFiscalPaySched extends PO implements I_LBR_NotaFiscalPaySched, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20140516L;

    /** Standard Constructor */
    public X_LBR_NotaFiscalPaySched (Properties ctx, int LBR_NotaFiscalPaySched_ID, String trxName)
    {
      super (ctx, LBR_NotaFiscalPaySched_ID, trxName);
      /** if (LBR_NotaFiscalPaySched_ID == 0)
        {
			setLBR_NotaFiscalPay_ID (0);
			setLBR_NotaFiscalPaySched_ID (0);
        } */
    }

    /** Load Constructor */
    public X_LBR_NotaFiscalPaySched (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_NotaFiscalPaySched[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set Amount due.
		@param DueAmt 
		Amount of the payment due
	  */
	public void setDueAmt (BigDecimal DueAmt)
	{
		set_Value (COLUMNNAME_DueAmt, DueAmt);
	}

	/** Get Amount due.
		@return Amount of the payment due
	  */
	public BigDecimal getDueAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_DueAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Due Date.
		@param DueDate 
		Date when the payment is due
	  */
	public void setDueDate (Timestamp DueDate)
	{
		set_Value (COLUMNNAME_DueDate, DueDate);
	}

	/** Get Due Date.
		@return Date when the payment is due
	  */
	public Timestamp getDueDate () 
	{
		return (Timestamp)get_Value(COLUMNNAME_DueDate);
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

	public I_LBR_NotaFiscalPay getLBR_NotaFiscalPay() throws RuntimeException
    {
		return (I_LBR_NotaFiscalPay)MTable.get(getCtx(), I_LBR_NotaFiscalPay.Table_Name)
			.getPO(getLBR_NotaFiscalPay_ID(), get_TrxName());	}

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

	/** Set Brazilian Fiscal Invoice (Nota Fiscal) Pay Schedule.
		@param LBR_NotaFiscalPaySched_ID Brazilian Fiscal Invoice (Nota Fiscal) Pay Schedule	  */
	public void setLBR_NotaFiscalPaySched_ID (int LBR_NotaFiscalPaySched_ID)
	{
		if (LBR_NotaFiscalPaySched_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_NotaFiscalPaySched_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_NotaFiscalPaySched_ID, Integer.valueOf(LBR_NotaFiscalPaySched_ID));
	}

	/** Get Brazilian Fiscal Invoice (Nota Fiscal) Pay Schedule.
		@return Brazilian Fiscal Invoice (Nota Fiscal) Pay Schedule	  */
	public int getLBR_NotaFiscalPaySched_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_NotaFiscalPaySched_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Brazilian Fiscal Invoice (Nota Fiscal) Pay Schedule.
		@param LBR_NotaFiscalPaySched_UU Brazilian Fiscal Invoice (Nota Fiscal) Pay Schedule	  */
	public void setLBR_NotaFiscalPaySched_UU (String LBR_NotaFiscalPaySched_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_NotaFiscalPaySched_UU, LBR_NotaFiscalPaySched_UU);
	}

	/** Get Brazilian Fiscal Invoice (Nota Fiscal) Pay Schedule.
		@return Brazilian Fiscal Invoice (Nota Fiscal) Pay Schedule	  */
	public String getLBR_NotaFiscalPaySched_UU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_NotaFiscalPaySched_UU);
	}
}