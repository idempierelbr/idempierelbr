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
import java.sql.Timestamp;
import java.util.Properties;
import org.compiere.model.*;
import org.compiere.util.Env;

/** Generated Model for LBR_ClassTrib_IBSCBS
 *  @author iDempiere (generated)
 *  @version Release 12 - $Id$ */
@org.adempiere.base.Model(table="LBR_ClassTrib_IBSCBS")
public class X_LBR_ClassTrib_IBSCBS extends PO implements I_LBR_ClassTrib_IBSCBS, I_Persistent
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20251010L;

    /** Standard Constructor */
    public X_LBR_ClassTrib_IBSCBS (Properties ctx, int LBR_ClassTrib_IBSCBS_ID, String trxName)
    {
      super (ctx, LBR_ClassTrib_IBSCBS_ID, trxName);
      /** if (LBR_ClassTrib_IBSCBS_ID == 0)
        {
			setLBR_CST_IBSCBS_ID (0);
			setName (null);
			setValue (null);
        } */
    }

    /** Standard Constructor */
    public X_LBR_ClassTrib_IBSCBS (Properties ctx, int LBR_ClassTrib_IBSCBS_ID, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_ClassTrib_IBSCBS_ID, trxName, virtualColumns);
      /** if (LBR_ClassTrib_IBSCBS_ID == 0)
        {
			setLBR_CST_IBSCBS_ID (0);
			setName (null);
			setValue (null);
        } */
    }

    /** Standard Constructor */
    public X_LBR_ClassTrib_IBSCBS (Properties ctx, String LBR_ClassTrib_IBSCBS_UU, String trxName)
    {
      super (ctx, LBR_ClassTrib_IBSCBS_UU, trxName);
      /** if (LBR_ClassTrib_IBSCBS_UU == null)
        {
			setLBR_CST_IBSCBS_ID (0);
			setName (null);
			setValue (null);
        } */
    }

    /** Standard Constructor */
    public X_LBR_ClassTrib_IBSCBS (Properties ctx, String LBR_ClassTrib_IBSCBS_UU, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_ClassTrib_IBSCBS_UU, trxName, virtualColumns);
      /** if (LBR_ClassTrib_IBSCBS_UU == null)
        {
			setLBR_CST_IBSCBS_ID (0);
			setName (null);
			setValue (null);
        } */
    }

    /** Load Constructor */
    public X_LBR_ClassTrib_IBSCBS (Properties ctx, ResultSet rs, String trxName)
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
      StringBuilder sb = new StringBuilder ("X_LBR_ClassTrib_IBSCBS[")
        .append(get_ID()).append(",Name=").append(getName()).append("]");
      return sb.toString();
    }

	/** Set Date From.
		@param DateFrom Starting date for a range
	*/
	public void setDateFrom (Timestamp DateFrom)
	{
		set_Value (COLUMNNAME_DateFrom, DateFrom);
	}

	/** Get Date From.
		@return Starting date for a range
	  */
	public Timestamp getDateFrom()
	{
		return (Timestamp)get_Value(COLUMNNAME_DateFrom);
	}

	/** Set Date To.
		@param DateTo End date of a date range
	*/
	public void setDateTo (Timestamp DateTo)
	{
		set_Value (COLUMNNAME_DateTo, DateTo);
	}

	/** Get Date To.
		@return End date of a date range
	  */
	public Timestamp getDateTo()
	{
		return (Timestamp)get_Value(COLUMNNAME_DateTo);
	}

	/** Set Description.
		@param Description Optional short description of the record
	*/
	public void setDescription (String Description)
	{
		set_Value (COLUMNNAME_Description, Description);
	}

	/** Get Description.
		@return Optional short description of the record
	  */
	public String getDescription()
	{
		return (String)get_Value(COLUMNNAME_Description);
	}

	public I_LBR_CST_IBSCBS getLBR_CST_IBSCBS() throws RuntimeException
	{
		return (I_LBR_CST_IBSCBS)MTable.get(getCtx(), I_LBR_CST_IBSCBS.Table_ID)
			.getPO(getLBR_CST_IBSCBS_ID(), get_TrxName());
	}

	/** Set CST IBS / CBS.
		@param LBR_CST_IBSCBS_ID CST IBS / CBS
	*/
	public void setLBR_CST_IBSCBS_ID (int LBR_CST_IBSCBS_ID)
	{
		if (LBR_CST_IBSCBS_ID < 1)
			set_ValueNoCheck (COLUMNNAME_LBR_CST_IBSCBS_ID, null);
		else
			set_ValueNoCheck (COLUMNNAME_LBR_CST_IBSCBS_ID, Integer.valueOf(LBR_CST_IBSCBS_ID));
	}

	/** Get CST IBS / CBS.
		@return CST IBS / CBS	  */
	public int getLBR_CST_IBSCBS_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_CST_IBSCBS_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set ClassTrib IBS / CBS.
		@param LBR_ClassTrib_IBSCBS_ID ClassTrib IBS / CBS
	*/
	public void setLBR_ClassTrib_IBSCBS_ID (int LBR_ClassTrib_IBSCBS_ID)
	{
		if (LBR_ClassTrib_IBSCBS_ID < 1)
			set_ValueNoCheck (COLUMNNAME_LBR_ClassTrib_IBSCBS_ID, null);
		else
			set_ValueNoCheck (COLUMNNAME_LBR_ClassTrib_IBSCBS_ID, Integer.valueOf(LBR_ClassTrib_IBSCBS_ID));
	}

	/** Get ClassTrib IBS / CBS.
		@return ClassTrib IBS / CBS	  */
	public int getLBR_ClassTrib_IBSCBS_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_ClassTrib_IBSCBS_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set ClassTrib IBS / CBS.
		@param LBR_ClassTrib_IBSCBS_UU ClassTrib IBS / CBS
	*/
	public void setLBR_ClassTrib_IBSCBS_UU (String LBR_ClassTrib_IBSCBS_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_ClassTrib_IBSCBS_UU, LBR_ClassTrib_IBSCBS_UU);
	}

	/** Get ClassTrib IBS / CBS.
		@return ClassTrib IBS / CBS	  */
	public String getLBR_ClassTrib_IBSCBS_UU()
	{
		return (String)get_Value(COLUMNNAME_LBR_ClassTrib_IBSCBS_UU);
	}

	/** LBR_IndIBSCBSRedBC AD_Reference_ID=319 */
	public static final int LBR_INDIBSCBSREDBC_AD_Reference_ID=319;
	/** No = N */
	public static final String LBR_INDIBSCBSREDBC_No = "N";
	/** Yes = Y */
	public static final String LBR_INDIBSCBSREDBC_Yes = "Y";
	/** Set IBS/CBS Red BC Indicator.
		@param LBR_IndIBSCBSRedBC IBS/CBS Red BC Indicator
	*/
	public void setLBR_IndIBSCBSRedBC (String LBR_IndIBSCBSRedBC)
	{

		set_Value (COLUMNNAME_LBR_IndIBSCBSRedBC, LBR_IndIBSCBSRedBC);
	}

	/** Get IBS/CBS Red BC Indicator.
		@return IBS/CBS Red BC Indicator	  */
	public String getLBR_IndIBSCBSRedBC()
	{
		return (String)get_Value(COLUMNNAME_LBR_IndIBSCBSRedBC);
	}

	/** LBR_IndgIBSCBSCredPres AD_Reference_ID=800060 */
	public static final int LBR_INDGIBSCBSCREDPRES_AD_Reference_ID=800060;
	/** 0 - Not Allowed = 0 */
	public static final String LBR_INDGIBSCBSCREDPRES_0_NotAllowed = "0";
	/** 1 - Required = 1 */
	public static final String LBR_INDGIBSCBSCREDPRES_1_Required = "1";
	/** Set IBS/CBS CredPres Group Indicator.
		@param LBR_IndgIBSCBSCredPres IBS/CBS CredPres Group Indicator
	*/
	public void setLBR_IndgIBSCBSCredPres (String LBR_IndgIBSCBSCredPres)
	{

		set_Value (COLUMNNAME_LBR_IndgIBSCBSCredPres, LBR_IndgIBSCBSCredPres);
	}

	/** Get IBS/CBS CredPres Group Indicator.
		@return IBS/CBS CredPres Group Indicator	  */
	public String getLBR_IndgIBSCBSCredPres()
	{
		return (String)get_Value(COLUMNNAME_LBR_IndgIBSCBSCredPres);
	}

	/** LBR_IndgIBSCBSMono AD_Reference_ID=800060 */
	public static final int LBR_INDGIBSCBSMONO_AD_Reference_ID=800060;
	/** 0 - Not Allowed = 0 */
	public static final String LBR_INDGIBSCBSMONO_0_NotAllowed = "0";
	/** 1 - Required = 1 */
	public static final String LBR_INDGIBSCBSMONO_1_Required = "1";
	/** Set IBS/CBS Mono Group Indicator.
		@param LBR_IndgIBSCBSMono IBS/CBS Mono Group Indicator
	*/
	public void setLBR_IndgIBSCBSMono (String LBR_IndgIBSCBSMono)
	{

		set_Value (COLUMNNAME_LBR_IndgIBSCBSMono, LBR_IndgIBSCBSMono);
	}

	/** Get IBS/CBS Mono Group Indicator.
		@return IBS/CBS Mono Group Indicator	  */
	public String getLBR_IndgIBSCBSMono()
	{
		return (String)get_Value(COLUMNNAME_LBR_IndgIBSCBSMono);
	}

	/** LBR_IndgIBSCBSMonoDif AD_Reference_ID=800060 */
	public static final int LBR_INDGIBSCBSMONODIF_AD_Reference_ID=800060;
	/** 0 - Not Allowed = 0 */
	public static final String LBR_INDGIBSCBSMONODIF_0_NotAllowed = "0";
	/** 1 - Required = 1 */
	public static final String LBR_INDGIBSCBSMONODIF_1_Required = "1";
	/** Set IBS/CBS MonoDig Group Indicator.
		@param LBR_IndgIBSCBSMonoDif IBS/CBS MonoDig Group Indicator
	*/
	public void setLBR_IndgIBSCBSMonoDif (String LBR_IndgIBSCBSMonoDif)
	{

		set_Value (COLUMNNAME_LBR_IndgIBSCBSMonoDif, LBR_IndgIBSCBSMonoDif);
	}

	/** Get IBS/CBS MonoDig Group Indicator.
		@return IBS/CBS MonoDig Group Indicator	  */
	public String getLBR_IndgIBSCBSMonoDif()
	{
		return (String)get_Value(COLUMNNAME_LBR_IndgIBSCBSMonoDif);
	}

	/** LBR_IndgIBSCBSMonoRet AD_Reference_ID=800060 */
	public static final int LBR_INDGIBSCBSMONORET_AD_Reference_ID=800060;
	/** 0 - Not Allowed = 0 */
	public static final String LBR_INDGIBSCBSMONORET_0_NotAllowed = "0";
	/** 1 - Required = 1 */
	public static final String LBR_INDGIBSCBSMONORET_1_Required = "1";
	/** Set IBS/CBS MonoRet Group Indicator.
		@param LBR_IndgIBSCBSMonoRet IBS/CBS MonoRet Group Indicator
	*/
	public void setLBR_IndgIBSCBSMonoRet (String LBR_IndgIBSCBSMonoRet)
	{

		set_Value (COLUMNNAME_LBR_IndgIBSCBSMonoRet, LBR_IndgIBSCBSMonoRet);
	}

	/** Get IBS/CBS MonoRet Group Indicator.
		@return IBS/CBS MonoRet Group Indicator	  */
	public String getLBR_IndgIBSCBSMonoRet()
	{
		return (String)get_Value(COLUMNNAME_LBR_IndgIBSCBSMonoRet);
	}

	/** LBR_IndgIBSCBSMonoReten AD_Reference_ID=800060 */
	public static final int LBR_INDGIBSCBSMONORETEN_AD_Reference_ID=800060;
	/** 0 - Not Allowed = 0 */
	public static final String LBR_INDGIBSCBSMONORETEN_0_NotAllowed = "0";
	/** 1 - Required = 1 */
	public static final String LBR_INDGIBSCBSMONORETEN_1_Required = "1";
	/** Set IBS/CBS MonoReten Group Indicator.
		@param LBR_IndgIBSCBSMonoReten IBS/CBS MonoReten Group Indicator
	*/
	public void setLBR_IndgIBSCBSMonoReten (String LBR_IndgIBSCBSMonoReten)
	{

		set_Value (COLUMNNAME_LBR_IndgIBSCBSMonoReten, LBR_IndgIBSCBSMonoReten);
	}

	/** Get IBS/CBS MonoReten Group Indicator.
		@return IBS/CBS MonoReten Group Indicator	  */
	public String getLBR_IndgIBSCBSMonoReten()
	{
		return (String)get_Value(COLUMNNAME_LBR_IndgIBSCBSMonoReten);
	}

	/** LBR_IndgIBSCBSTribRegular AD_Reference_ID=800060 */
	public static final int LBR_INDGIBSCBSTRIBREGULAR_AD_Reference_ID=800060;
	/** 0 - Not Allowed = 0 */
	public static final String LBR_INDGIBSCBSTRIBREGULAR_0_NotAllowed = "0";
	/** 1 - Required = 1 */
	public static final String LBR_INDGIBSCBSTRIBREGULAR_1_Required = "1";
	/** Set IBS/CBS TribRegular Group Indicator.
		@param LBR_IndgIBSCBSTribRegular IBS/CBS TribRegular Group Indicator
	*/
	public void setLBR_IndgIBSCBSTribRegular (String LBR_IndgIBSCBSTribRegular)
	{

		set_Value (COLUMNNAME_LBR_IndgIBSCBSTribRegular, LBR_IndgIBSCBSTribRegular);
	}

	/** Get IBS/CBS TribRegular Group Indicator.
		@return IBS/CBS TribRegular Group Indicator	  */
	public String getLBR_IndgIBSCBSTribRegular()
	{
		return (String)get_Value(COLUMNNAME_LBR_IndgIBSCBSTribRegular);
	}

	/** Set Red. CBS (%).
		@param LBR_PRedCBS Red. CBS (%)
	*/
	public void setLBR_PRedCBS (BigDecimal LBR_PRedCBS)
	{
		set_Value (COLUMNNAME_LBR_PRedCBS, LBR_PRedCBS);
	}

	/** Get Red. CBS (%).
		@return Red. CBS (%)	  */
	public BigDecimal getLBR_PRedCBS()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_PRedCBS);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Red. IBS (%).
		@param LBR_PRedIBS Red. IBS (%)
	*/
	public void setLBR_PRedIBS (BigDecimal LBR_PRedIBS)
	{
		set_Value (COLUMNNAME_LBR_PRedIBS, LBR_PRedIBS);
	}

	/** Get Red. IBS (%).
		@return Red. IBS (%)	  */
	public BigDecimal getLBR_PRedIBS()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_PRedIBS);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Name.
		@param Name Alphanumeric identifier of the entity
	*/
	public void setName (String Name)
	{
		set_Value (COLUMNNAME_Name, Name);
	}

	/** Get Name.
		@return Alphanumeric identifier of the entity
	  */
	public String getName()
	{
		return (String)get_Value(COLUMNNAME_Name);
	}

	/** Set Updated Date.
		@param UpdatedDate Updated Date
	*/
	public void setUpdatedDate (Timestamp UpdatedDate)
	{
		set_Value (COLUMNNAME_UpdatedDate, UpdatedDate);
	}

	/** Get Updated Date.
		@return Updated Date	  */
	public Timestamp getUpdatedDate()
	{
		return (Timestamp)get_Value(COLUMNNAME_UpdatedDate);
	}

	/** Set Search Key.
		@param Value Search key for the record in the format required - must be unique
	*/
	public void setValue (String Value)
	{
		set_Value (COLUMNNAME_Value, Value);
	}

	/** Get Search Key.
		@return Search key for the record in the format required - must be unique
	  */
	public String getValue()
	{
		return (String)get_Value(COLUMNNAME_Value);
	}
}