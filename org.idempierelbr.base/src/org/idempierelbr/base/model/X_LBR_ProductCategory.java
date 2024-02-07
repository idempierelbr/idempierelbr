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

/** Generated Model for LBR_ProductCategory
 *  @author iDempiere (generated) 
 *  @version Release 2.0 - $Id$ */
public class X_LBR_ProductCategory extends PO implements I_LBR_ProductCategory, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20140116L;

    /** Standard Constructor */
    public X_LBR_ProductCategory (Properties ctx, int LBR_ProductCategory_ID, String trxName)
    {
      super (ctx, LBR_ProductCategory_ID, trxName);
      /** if (LBR_ProductCategory_ID == 0)
        {
			setLBR_ProductCategory_ID (0);
			setName (null);
        } */
    }

    /** Load Constructor */
    public X_LBR_ProductCategory (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_ProductCategory[")
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

	/** Set CFOP Product Category.
		@param LBR_ProductCategory_ID 
		Identifies a CFOP Product Category
	  */
	public void setLBR_ProductCategory_ID (int LBR_ProductCategory_ID)
	{
		if (LBR_ProductCategory_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_ProductCategory_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_ProductCategory_ID, Integer.valueOf(LBR_ProductCategory_ID));
	}

	/** Get CFOP Product Category.
		@return Identifies a CFOP Product Category
	  */
	public int getLBR_ProductCategory_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_ProductCategory_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_ProductCategory_UU.
		@param LBR_ProductCategory_UU LBR_ProductCategory_UU	  */
	public void setLBR_ProductCategory_UU (String LBR_ProductCategory_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_ProductCategory_UU, LBR_ProductCategory_UU);
	}

	/** Get LBR_ProductCategory_UU.
		@return LBR_ProductCategory_UU	  */
	public String getLBR_ProductCategory_UU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_ProductCategory_UU);
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