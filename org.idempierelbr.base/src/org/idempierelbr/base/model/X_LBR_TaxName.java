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

/** Generated Model for LBR_TaxName
 *  @author iDempiere (generated) 
 *  @version Release 2.0 - $Id$ */
public class X_LBR_TaxName extends PO implements I_LBR_TaxName, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20140127L;

    /** Standard Constructor */
    public X_LBR_TaxName (Properties ctx, int LBR_TaxName_ID, String trxName)
    {
      super (ctx, LBR_TaxName_ID, trxName);
      /** if (LBR_TaxName_ID == 0)
        {
			setLBR_HasWithHold (false);
// 'N'
			setLBR_TaxName_ID (0);
			setLBR_TaxSubstitution_ID (0);
			setLBR_TaxType (null);
// 'P'
			setName (null);
			setWithHoldThreshold (Env.ZERO);
        } */
    }

    /** Load Constructor */
    public X_LBR_TaxName (Properties ctx, ResultSet rs, String trxName)
    {
      super (ctx, rs, trxName);
    }

    /** AccessLevel
      * @return 6 - System - Client 
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
      StringBuffer sb = new StringBuffer ("X_LBR_TaxName[")
        .append(get_ID()).append("]");
      return sb.toString();
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

	/** Set Has WithHold.
		@param LBR_HasWithHold 
		Indicates if the Tax has WithHold
	  */
	public void setLBR_HasWithHold (boolean LBR_HasWithHold)
	{
		set_Value (COLUMNNAME_LBR_HasWithHold, Boolean.valueOf(LBR_HasWithHold));
	}

	/** Get Has WithHold.
		@return Indicates if the Tax has WithHold
	  */
	public boolean isLBR_HasWithHold () 
	{
		Object oo = get_Value(COLUMNNAME_LBR_HasWithHold);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Tax Name.
		@param LBR_TaxName_ID 
		Primary key table LBR_TaxName
	  */
	public void setLBR_TaxName_ID (int LBR_TaxName_ID)
	{
		if (LBR_TaxName_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_TaxName_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_TaxName_ID, Integer.valueOf(LBR_TaxName_ID));
	}

	/** Get Tax Name.
		@return Primary key table LBR_TaxName
	  */
	public int getLBR_TaxName_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_TaxName_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_TaxName_UU.
		@param LBR_TaxName_UU LBR_TaxName_UU	  */
	public void setLBR_TaxName_UU (String LBR_TaxName_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_TaxName_UU, LBR_TaxName_UU);
	}

	/** Get LBR_TaxName_UU.
		@return LBR_TaxName_UU	  */
	public String getLBR_TaxName_UU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_TaxName_UU);
	}

	public I_LBR_TaxName getLBR_TaxSubstitution() throws RuntimeException
    {
		return (I_LBR_TaxName)MTable.get(getCtx(), I_LBR_TaxName.Table_Name)
			.getPO(getLBR_TaxSubstitution_ID(), get_TrxName());	}

	/** Set Tax Substitution.
		@param LBR_TaxSubstitution_ID 
		Defines the Tax Substitution
	  */
	public void setLBR_TaxSubstitution_ID (int LBR_TaxSubstitution_ID)
	{
		if (LBR_TaxSubstitution_ID < 1) 
			set_Value (COLUMNNAME_LBR_TaxSubstitution_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_TaxSubstitution_ID, Integer.valueOf(LBR_TaxSubstitution_ID));
	}

	/** Get Tax Substitution.
		@return Defines the Tax Substitution
	  */
	public int getLBR_TaxSubstitution_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_TaxSubstitution_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Product = P */
	public static final String LBR_TAXTYPE_Product = "P";
	/** Service = S */
	public static final String LBR_TAXTYPE_Service = "S";
	/** Substitution = T */
	public static final String LBR_TAXTYPE_Substitution = "T";
	/** Set Tax Type.
		@param LBR_TaxType 
		Defines the Tax Type
	  */
	public void setLBR_TaxType (String LBR_TaxType)
	{

		set_Value (COLUMNNAME_LBR_TaxType, LBR_TaxType);
	}

	/** Get Tax Type.
		@return Defines the Tax Type
	  */
	public String getLBR_TaxType () 
	{
		return (String)get_Value(COLUMNNAME_LBR_TaxType);
	}

	/** Monthly = M */
	public static final String LBR_WITHHOLDFREQUENCY_Monthly = "M";
	/** Set WithHold Frequency.
		@param LBR_WithHoldFrequency 
		Defines the WithHold Frequency
	  */
	public void setLBR_WithHoldFrequency (String LBR_WithHoldFrequency)
	{

		set_Value (COLUMNNAME_LBR_WithHoldFrequency, LBR_WithHoldFrequency);
	}

	/** Get WithHold Frequency.
		@return Defines the WithHold Frequency
	  */
	public String getLBR_WithHoldFrequency () 
	{
		return (String)get_Value(COLUMNNAME_LBR_WithHoldFrequency);
	}

	/** Set Name.
		@param Name 
		Alphanumeric identifier of the entity
	  */
	public void setName (String Name)
	{
		set_Value (COLUMNNAME_Name, Name);
	}

	/** Get Name.
		@return Alphanumeric identifier of the entity
	  */
	public String getName () 
	{
		return (String)get_Value(COLUMNNAME_Name);
	}

	/** Set WithHold Threshold.
		@param WithHoldThreshold 
		Defines the WithHold Threshold
	  */
	public void setWithHoldThreshold (BigDecimal WithHoldThreshold)
	{
		set_Value (COLUMNNAME_WithHoldThreshold, WithHoldThreshold);
	}

	/** Get WithHold Threshold.
		@return Defines the WithHold Threshold
	  */
	public BigDecimal getWithHoldThreshold () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_WithHoldThreshold);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}
}