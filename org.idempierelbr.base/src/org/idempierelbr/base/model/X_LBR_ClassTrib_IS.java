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
import java.sql.Timestamp;
import java.util.Properties;
import org.compiere.model.*;

/** Generated Model for LBR_ClassTrib_IS
 *  @author iDempiere (generated)
 *  @version Release 12 - $Id$ */
@org.adempiere.base.Model(table="LBR_ClassTrib_IS")
public class X_LBR_ClassTrib_IS extends PO implements I_LBR_ClassTrib_IS, I_Persistent
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20251010L;

    /** Standard Constructor */
    public X_LBR_ClassTrib_IS (Properties ctx, int LBR_ClassTrib_IS_ID, String trxName)
    {
      super (ctx, LBR_ClassTrib_IS_ID, trxName);
      /** if (LBR_ClassTrib_IS_ID == 0)
        {
			setLBR_CST_IS_ID (0);
			setName (null);
			setValue (null);
        } */
    }

    /** Standard Constructor */
    public X_LBR_ClassTrib_IS (Properties ctx, int LBR_ClassTrib_IS_ID, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_ClassTrib_IS_ID, trxName, virtualColumns);
      /** if (LBR_ClassTrib_IS_ID == 0)
        {
			setLBR_CST_IS_ID (0);
			setName (null);
			setValue (null);
        } */
    }

    /** Standard Constructor */
    public X_LBR_ClassTrib_IS (Properties ctx, String LBR_ClassTrib_IS_UU, String trxName)
    {
      super (ctx, LBR_ClassTrib_IS_UU, trxName);
      /** if (LBR_ClassTrib_IS_UU == null)
        {
			setLBR_CST_IS_ID (0);
			setName (null);
			setValue (null);
        } */
    }

    /** Standard Constructor */
    public X_LBR_ClassTrib_IS (Properties ctx, String LBR_ClassTrib_IS_UU, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_ClassTrib_IS_UU, trxName, virtualColumns);
      /** if (LBR_ClassTrib_IS_UU == null)
        {
			setLBR_CST_IS_ID (0);
			setName (null);
			setValue (null);
        } */
    }

    /** Load Constructor */
    public X_LBR_ClassTrib_IS (Properties ctx, ResultSet rs, String trxName)
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
      StringBuilder sb = new StringBuilder ("X_LBR_ClassTrib_IS[")
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

	public I_LBR_CST_IS getLBR_CST_IS() throws RuntimeException
	{
		return (I_LBR_CST_IS)MTable.get(getCtx(), I_LBR_CST_IS.Table_ID)
			.getPO(getLBR_CST_IS_ID(), get_TrxName());
	}

	/** Set CST IS.
		@param LBR_CST_IS_ID CST IS
	*/
	public void setLBR_CST_IS_ID (int LBR_CST_IS_ID)
	{
		if (LBR_CST_IS_ID < 1)
			set_ValueNoCheck (COLUMNNAME_LBR_CST_IS_ID, null);
		else
			set_ValueNoCheck (COLUMNNAME_LBR_CST_IS_ID, Integer.valueOf(LBR_CST_IS_ID));
	}

	/** Get CST IS.
		@return CST IS	  */
	public int getLBR_CST_IS_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_CST_IS_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set ClassTrib IS.
		@param LBR_ClassTrib_IS_ID ClassTrib IS
	*/
	public void setLBR_ClassTrib_IS_ID (int LBR_ClassTrib_IS_ID)
	{
		if (LBR_ClassTrib_IS_ID < 1)
			set_ValueNoCheck (COLUMNNAME_LBR_ClassTrib_IS_ID, null);
		else
			set_ValueNoCheck (COLUMNNAME_LBR_ClassTrib_IS_ID, Integer.valueOf(LBR_ClassTrib_IS_ID));
	}

	/** Get ClassTrib IS.
		@return ClassTrib IS	  */
	public int getLBR_ClassTrib_IS_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_ClassTrib_IS_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set ClassTrib IS.
		@param LBR_ClassTrib_IS_UU ClassTrib IS
	*/
	public void setLBR_ClassTrib_IS_UU (String LBR_ClassTrib_IS_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_ClassTrib_IS_UU, LBR_ClassTrib_IS_UU);
	}

	/** Get ClassTrib IS.
		@return ClassTrib IS	  */
	public String getLBR_ClassTrib_IS_UU()
	{
		return (String)get_Value(COLUMNNAME_LBR_ClassTrib_IS_UU);
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