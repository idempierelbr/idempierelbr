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

import java.sql.ResultSet;
import java.util.Properties;
import org.compiere.model.*;

/** Generated Model for LBR_BPartnerCategory
 *  @author iDempiere (generated) 
 *  @version Release 2.0 - $Id$ */
public class X_LBR_BPartnerCategory extends PO implements I_LBR_BPartnerCategory, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20140117L;

    /** Standard Constructor */
    public X_LBR_BPartnerCategory (Properties ctx, int LBR_BPartnerCategory_ID, String trxName)
    {
      super (ctx, LBR_BPartnerCategory_ID, trxName);
      /** if (LBR_BPartnerCategory_ID == 0)
        {
			setLBR_BPartnerCategory_ID (0);
			setName (null);
        } */
    }

    /** Load Constructor */
    public X_LBR_BPartnerCategory (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_BPartnerCategory[")
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

	/** Set CFOP Business Partner Category.
		@param LBR_BPartnerCategory_ID 
		Identifies a CFOP Business Partner Category
	  */
	public void setLBR_BPartnerCategory_ID (int LBR_BPartnerCategory_ID)
	{
		if (LBR_BPartnerCategory_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_BPartnerCategory_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_BPartnerCategory_ID, Integer.valueOf(LBR_BPartnerCategory_ID));
	}

	/** Get CFOP Business Partner Category.
		@return Identifies a CFOP Business Partner Category
	  */
	public int getLBR_BPartnerCategory_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_BPartnerCategory_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_BPartnerCategory_UU.
		@param LBR_BPartnerCategory_UU LBR_BPartnerCategory_UU	  */
	public void setLBR_BPartnerCategory_UU (String LBR_BPartnerCategory_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_BPartnerCategory_UU, LBR_BPartnerCategory_UU);
	}

	/** Get LBR_BPartnerCategory_UU.
		@return LBR_BPartnerCategory_UU	  */
	public String getLBR_BPartnerCategory_UU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_BPartnerCategory_UU);
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
}