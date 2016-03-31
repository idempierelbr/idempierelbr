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
package org.idempierelbr.sped.model;

import java.sql.ResultSet;
import java.util.Properties;
import org.compiere.model.*;

/** Generated Model for LBR_SPEDOptions
 *  @author iDempiere (generated) 
 *  @version Release 2.1 - $Id$ */
public class X_LBR_SPEDOptions extends PO implements I_LBR_SPEDOptions, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20150706L;

    /** Standard Constructor */
    public X_LBR_SPEDOptions (Properties ctx, int LBR_SPEDOptions_ID, String trxName)
    {
      super (ctx, LBR_SPEDOptions_ID, trxName);
      /** if (LBR_SPEDOptions_ID == 0)
        {
			setLBR_SPED_Activity (null);
			setLBR_SPEDOptions_ID (0);
			setLBR_SPED_Profile (null);
        } */
    }

    /** Load Constructor */
    public X_LBR_SPEDOptions (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_SPEDOptions[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set Default.
		@param IsDefault 
		Default value
	  */
	public void setIsDefault (boolean IsDefault)
	{
		set_Value (COLUMNNAME_IsDefault, Boolean.valueOf(IsDefault));
	}

	/** Get Default.
		@return Default value
	  */
	public boolean isDefault () 
	{
		Object oo = get_Value(COLUMNNAME_IsDefault);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	public org.compiere.model.I_C_BPartner getLBR_BP_Accountant() throws RuntimeException
    {
		return (org.compiere.model.I_C_BPartner)MTable.get(getCtx(), org.compiere.model.I_C_BPartner.Table_Name)
			.getPO(getLBR_BP_Accountant_ID(), get_TrxName());	}

	/** Set Accountant.
		@param LBR_BP_Accountant_ID 
		Accountant of the Organization
	  */
	public void setLBR_BP_Accountant_ID (int LBR_BP_Accountant_ID)
	{
		if (LBR_BP_Accountant_ID < 1) 
			set_Value (COLUMNNAME_LBR_BP_Accountant_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_BP_Accountant_ID, Integer.valueOf(LBR_BP_Accountant_ID));
	}

	/** Get Accountant.
		@return Accountant of the Organization
	  */
	public int getLBR_BP_Accountant_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_BP_Accountant_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set CRC.
		@param LBR_CRC 
		Accountant inscription number on CRC
	  */
	public void setLBR_CRC (String LBR_CRC)
	{
		set_Value (COLUMNNAME_LBR_CRC, LBR_CRC);
	}

	/** Get CRC.
		@return Accountant inscription number on CRC
	  */
	public String getLBR_CRC () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CRC);
	}

	/** Industry or Equivalent = 0 */
	public static final String LBR_SPED_ACTIVITY_IndustryOrEquivalent = "0";
	/** Service Provider = 1 */
	public static final String LBR_SPED_ACTIVITY_ServiceProvider = "1";
	/** Comercial Activity = 2 */
	public static final String LBR_SPED_ACTIVITY_ComercialActivity = "2";
	/** Legal person with special deductions = 3 */
	public static final String LBR_SPED_ACTIVITY_LegalPersonWithSpecialDeductions = "3";
	/** Real estate activity = 4 */
	public static final String LBR_SPED_ACTIVITY_RealEstateActivity = "4";
	/** Others = 9 */
	public static final String LBR_SPED_ACTIVITY_Others = "9";
	/** Set SPED Activity Indicator.
		@param LBR_SPED_Activity SPED Activity Indicator	  */
	public void setLBR_SPED_Activity (String LBR_SPED_Activity)
	{

		set_Value (COLUMNNAME_LBR_SPED_Activity, LBR_SPED_Activity);
	}

	/** Get SPED Activity Indicator.
		@return SPED Activity Indicator	  */
	public String getLBR_SPED_Activity () 
	{
		return (String)get_Value(COLUMNNAME_LBR_SPED_Activity);
	}

	/** Set SPED Options.
		@param LBR_SPEDOptions_ID SPED Options	  */
	public void setLBR_SPEDOptions_ID (int LBR_SPEDOptions_ID)
	{
		if (LBR_SPEDOptions_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_SPEDOptions_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_SPEDOptions_ID, Integer.valueOf(LBR_SPEDOptions_ID));
	}

	/** Get SPED Options.
		@return SPED Options	  */
	public int getLBR_SPEDOptions_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_SPEDOptions_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_SPEDOptions_UU.
		@param LBR_SPEDOptions_UU LBR_SPEDOptions_UU	  */
	public void setLBR_SPEDOptions_UU (String LBR_SPEDOptions_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_SPEDOptions_UU, LBR_SPEDOptions_UU);
	}

	/** Get LBR_SPEDOptions_UU.
		@return LBR_SPEDOptions_UU	  */
	public String getLBR_SPEDOptions_UU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_SPEDOptions_UU);
	}

	/** Profile A = A */
	public static final String LBR_SPED_PROFILE_ProfileA = "A";
	/** Profile B = B */
	public static final String LBR_SPED_PROFILE_ProfileB = "B";
	/** Profile C = C */
	public static final String LBR_SPED_PROFILE_ProfileC = "C";
	/** Set SPED Profile.
		@param LBR_SPED_Profile SPED Profile	  */
	public void setLBR_SPED_Profile (String LBR_SPED_Profile)
	{

		set_Value (COLUMNNAME_LBR_SPED_Profile, LBR_SPED_Profile);
	}

	/** Get SPED Profile.
		@return SPED Profile	  */
	public String getLBR_SPED_Profile () 
	{
		return (String)get_Value(COLUMNNAME_LBR_SPED_Profile);
	}
}