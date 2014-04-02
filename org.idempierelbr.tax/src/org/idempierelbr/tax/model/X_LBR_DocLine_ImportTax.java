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

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.util.Properties;
import org.compiere.model.*;
import org.compiere.util.Env;

/** Generated Model for LBR_DocLine_ImportTax
 *  @author iDempiere (generated) 
 *  @version Release 2.0 - $Id$ */
public class X_LBR_DocLine_ImportTax extends PO implements I_LBR_DocLine_ImportTax, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20140402L;

    /** Standard Constructor */
    public X_LBR_DocLine_ImportTax (Properties ctx, int LBR_DocLine_ImportTax_ID, String trxName)
    {
      super (ctx, LBR_DocLine_ImportTax_ID, trxName);
      /** if (LBR_DocLine_ImportTax_ID == 0)
        {
        } */
    }

    /** Load Constructor */
    public X_LBR_DocLine_ImportTax (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_DocLine_ImportTax[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set Customs Value.
		@param CustomsValue Customs Value	  */
	public void setCustomsValue (BigDecimal CustomsValue)
	{
		set_Value (COLUMNNAME_CustomsValue, CustomsValue);
	}

	/** Get Customs Value.
		@return Customs Value	  */
	public BigDecimal getCustomsValue () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_CustomsValue);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	public I_LBR_DocLine_Details getLBR_DocLine_Details() throws RuntimeException
    {
		return (I_LBR_DocLine_Details)MTable.get(getCtx(), I_LBR_DocLine_Details.Table_Name)
			.getPO(getLBR_DocLine_Details_ID(), get_TrxName());	}

	/** Set Doc Line Details.
		@param LBR_DocLine_Details_ID 
		Doc Line Details
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
	public int getLBR_DocLine_Details_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_DocLine_Details_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Doc Line Import Tax.
		@param LBR_DocLine_ImportTax_ID 
		Doc Line Import Tax
	  */
	public void setLBR_DocLine_ImportTax_ID (int LBR_DocLine_ImportTax_ID)
	{
		if (LBR_DocLine_ImportTax_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_DocLine_ImportTax_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_DocLine_ImportTax_ID, Integer.valueOf(LBR_DocLine_ImportTax_ID));
	}

	/** Get Doc Line Import Tax.
		@return Doc Line Import Tax
	  */
	public int getLBR_DocLine_ImportTax_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_DocLine_ImportTax_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Doc Line Import Tax.
		@param LBR_DocLine_ImportTax_UU 
		Doc Line Import Tax
	  */
	public void setLBR_DocLine_ImportTax_UU (String LBR_DocLine_ImportTax_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_DocLine_ImportTax_UU, LBR_DocLine_ImportTax_UU);
	}

	/** Get Doc Line Import Tax.
		@return Doc Line Import Tax
	  */
	public String getLBR_DocLine_ImportTax_UU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_DocLine_ImportTax_UU);
	}

	/** Set IOF Amount.
		@param LBR_IOFAmt 
		Defines the IOF Amount
	  */
	public void setLBR_IOFAmt (BigDecimal LBR_IOFAmt)
	{
		set_Value (COLUMNNAME_LBR_IOFAmt, LBR_IOFAmt);
	}

	/** Get IOF Amount.
		@return Defines the IOF Amount
	  */
	public BigDecimal getLBR_IOFAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_IOFAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Tax Amount.
		@param LBR_TaxAmt 
		Defines the Tax Amount
	  */
	public void setLBR_TaxAmt (BigDecimal LBR_TaxAmt)
	{
		set_Value (COLUMNNAME_LBR_TaxAmt, LBR_TaxAmt);
	}

	/** Get Tax Amount.
		@return Defines the Tax Amount
	  */
	public BigDecimal getLBR_TaxAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_TaxAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Tax Base Amount.
		@param LBR_TaxBaseAmt 
		Defines the Tax Base Amount
	  */
	public void setLBR_TaxBaseAmt (BigDecimal LBR_TaxBaseAmt)
	{
		set_Value (COLUMNNAME_LBR_TaxBaseAmt, LBR_TaxBaseAmt);
	}

	/** Get Tax Base Amount.
		@return Defines the Tax Base Amount
	  */
	public BigDecimal getLBR_TaxBaseAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_TaxBaseAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}
}