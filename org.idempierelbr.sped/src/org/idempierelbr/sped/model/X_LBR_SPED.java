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

/** Generated Model for LBR_SPED
 *  @author iDempiere (generated) 
 *  @version Release 2.1 - $Id$ */
public class X_LBR_SPED extends PO implements I_LBR_SPED, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20150703L;

    /** Standard Constructor */
    public X_LBR_SPED (Properties ctx, int LBR_SPED_ID, String trxName)
    {
      super (ctx, LBR_SPED_ID, trxName);
      /** if (LBR_SPED_ID == 0)
        {
			setC_Period_ID (0);
			setC_Year_ID (0);
			setLBR_SPED_ID (0);
        } */
    }

    /** Load Constructor */
    public X_LBR_SPED (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_SPED[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	public org.compiere.model.I_C_Period getC_Period() throws RuntimeException
    {
		return (org.compiere.model.I_C_Period)MTable.get(getCtx(), org.compiere.model.I_C_Period.Table_Name)
			.getPO(getC_Period_ID(), get_TrxName());	}

	/** Set Period.
		@param C_Period_ID 
		Period of the Calendar
	  */
	public void setC_Period_ID (int C_Period_ID)
	{
		if (C_Period_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_C_Period_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_C_Period_ID, Integer.valueOf(C_Period_ID));
	}

	/** Get Period.
		@return Period of the Calendar
	  */
	public int getC_Period_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_Period_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.compiere.model.I_C_Year getC_Year() throws RuntimeException
    {
		return (org.compiere.model.I_C_Year)MTable.get(getCtx(), org.compiere.model.I_C_Year.Table_Name)
			.getPO(getC_Year_ID(), get_TrxName());	}

	/** Set Year.
		@param C_Year_ID 
		Calendar Year
	  */
	public void setC_Year_ID (int C_Year_ID)
	{
		if (C_Year_ID < 1) 
			set_Value (COLUMNNAME_C_Year_ID, null);
		else 
			set_Value (COLUMNNAME_C_Year_ID, Integer.valueOf(C_Year_ID));
	}

	/** Get Year.
		@return Calendar Year
	  */
	public int getC_Year_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_Year_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set SPED.
		@param LBR_SPED_ID SPED	  */
	public void setLBR_SPED_ID (int LBR_SPED_ID)
	{
		if (LBR_SPED_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_SPED_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_SPED_ID, Integer.valueOf(LBR_SPED_ID));
	}

	/** Get SPED.
		@return SPED	  */
	public int getLBR_SPED_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_SPED_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}
}