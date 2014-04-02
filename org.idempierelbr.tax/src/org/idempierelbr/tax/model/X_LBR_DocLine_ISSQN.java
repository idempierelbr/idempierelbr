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

/** Generated Model for LBR_DocLine_ISSQN
 *  @author iDempiere (generated) 
 *  @version Release 2.0 - $Id$ */
public class X_LBR_DocLine_ISSQN extends PO implements I_LBR_DocLine_ISSQN, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20140402L;

    /** Standard Constructor */
    public X_LBR_DocLine_ISSQN (Properties ctx, int LBR_DocLine_ISSQN_ID, String trxName)
    {
      super (ctx, LBR_DocLine_ISSQN_ID, trxName);
      /** if (LBR_DocLine_ISSQN_ID == 0)
        {
        } */
    }

    /** Load Constructor */
    public X_LBR_DocLine_ISSQN (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_DocLine_ISSQN[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	public org.compiere.model.I_C_City getC_City() throws RuntimeException
    {
		return (org.compiere.model.I_C_City)MTable.get(getCtx(), org.compiere.model.I_C_City.Table_Name)
			.getPO(getC_City_ID(), get_TrxName());	}

	/** Set City.
		@param C_City_ID 
		City
	  */
	public void setC_City_ID (int C_City_ID)
	{
		if (C_City_ID < 1) 
			set_Value (COLUMNNAME_C_City_ID, null);
		else 
			set_Value (COLUMNNAME_C_City_ID, Integer.valueOf(C_City_ID));
	}

	/** Get City.
		@return City
	  */
	public int getC_City_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_City_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
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

	/** Set Doc Line ISSQN.
		@param LBR_DocLine_ISSQN_ID 
		Doc Line ISSQN
	  */
	public void setLBR_DocLine_ISSQN_ID (int LBR_DocLine_ISSQN_ID)
	{
		if (LBR_DocLine_ISSQN_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_DocLine_ISSQN_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_DocLine_ISSQN_ID, Integer.valueOf(LBR_DocLine_ISSQN_ID));
	}

	/** Get Doc Line ISSQN.
		@return Doc Line ISSQN
	  */
	public int getLBR_DocLine_ISSQN_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_DocLine_ISSQN_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Doc Line ISSQN.
		@param LBR_DocLine_ISSQN_UU 
		Doc Line ISSQN
	  */
	public void setLBR_DocLine_ISSQN_UU (String LBR_DocLine_ISSQN_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_DocLine_ISSQN_UU, LBR_DocLine_ISSQN_UU);
	}

	/** Get Doc Line ISSQN.
		@return Doc Line ISSQN
	  */
	public String getLBR_DocLine_ISSQN_UU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_DocLine_ISSQN_UU);
	}

	/** Set Service Type.
		@param LBR_ServiceType Service Type	  */
	public void setLBR_ServiceType (String LBR_ServiceType)
	{
		set_Value (COLUMNNAME_LBR_ServiceType, LBR_ServiceType);
	}

	/** Get Service Type.
		@return Service Type	  */
	public String getLBR_ServiceType () 
	{
		return (String)get_Value(COLUMNNAME_LBR_ServiceType);
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

	/** Set Tax Rate.
		@param LBR_TaxRate 
		Indicates the Tax Rate
	  */
	public void setLBR_TaxRate (BigDecimal LBR_TaxRate)
	{
		set_Value (COLUMNNAME_LBR_TaxRate, LBR_TaxRate);
	}

	/** Get Tax Rate.
		@return Indicates the Tax Rate
	  */
	public BigDecimal getLBR_TaxRate () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_TaxRate);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}
}