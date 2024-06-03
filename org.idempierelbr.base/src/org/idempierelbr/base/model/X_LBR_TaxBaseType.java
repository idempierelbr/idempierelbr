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

/** Generated Model for LBR_TaxBaseType
 *  @author iDempiere (generated)
 *  @version Release 11 - $Id$ */
@org.adempiere.base.Model(table="LBR_TaxBaseType")
public class X_LBR_TaxBaseType extends PO implements I_LBR_TaxBaseType, I_Persistent
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20240603L;

    /** Standard Constructor */
    public X_LBR_TaxBaseType (Properties ctx, int LBR_TaxBaseType_ID, String trxName)
    {
      super (ctx, LBR_TaxBaseType_ID, trxName);
      /** if (LBR_TaxBaseType_ID == 0)
        {
			setLBR_TaxBaseType_ID (0);
			setLBR_TaxStatus_ID (0);
			setName (null);
        } */
    }

    /** Standard Constructor */
    public X_LBR_TaxBaseType (Properties ctx, int LBR_TaxBaseType_ID, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_TaxBaseType_ID, trxName, virtualColumns);
      /** if (LBR_TaxBaseType_ID == 0)
        {
			setLBR_TaxBaseType_ID (0);
			setLBR_TaxStatus_ID (0);
			setName (null);
        } */
    }

    /** Standard Constructor */
    public X_LBR_TaxBaseType (Properties ctx, String LBR_TaxBaseType_UU, String trxName)
    {
      super (ctx, LBR_TaxBaseType_UU, trxName);
      /** if (LBR_TaxBaseType_UU == null)
        {
			setLBR_TaxBaseType_ID (0);
			setLBR_TaxStatus_ID (0);
			setName (null);
        } */
    }

    /** Standard Constructor */
    public X_LBR_TaxBaseType (Properties ctx, String LBR_TaxBaseType_UU, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_TaxBaseType_UU, trxName, virtualColumns);
      /** if (LBR_TaxBaseType_UU == null)
        {
			setLBR_TaxBaseType_ID (0);
			setLBR_TaxStatus_ID (0);
			setName (null);
        } */
    }

    /** Load Constructor */
    public X_LBR_TaxBaseType (Properties ctx, ResultSet rs, String trxName)
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
      StringBuilder sb = new StringBuilder ("X_LBR_TaxBaseType[")
        .append(get_ID()).append(",Name=").append(getName()).append("]");
      return sb.toString();
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

	/** Set Tax Base Type.
		@param LBR_TaxBaseType_ID Tax Base Type
	*/
	public void setLBR_TaxBaseType_ID (int LBR_TaxBaseType_ID)
	{
		if (LBR_TaxBaseType_ID < 1)
			set_ValueNoCheck (COLUMNNAME_LBR_TaxBaseType_ID, null);
		else
			set_ValueNoCheck (COLUMNNAME_LBR_TaxBaseType_ID, Integer.valueOf(LBR_TaxBaseType_ID));
	}

	/** Get Tax Base Type.
		@return Tax Base Type	  */
	public int getLBR_TaxBaseType_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_TaxBaseType_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_TaxBaseType_UU.
		@param LBR_TaxBaseType_UU LBR_TaxBaseType_UU
	*/
	public void setLBR_TaxBaseType_UU (String LBR_TaxBaseType_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_TaxBaseType_UU, LBR_TaxBaseType_UU);
	}

	/** Get LBR_TaxBaseType_UU.
		@return LBR_TaxBaseType_UU	  */
	public String getLBR_TaxBaseType_UU()
	{
		return (String)get_Value(COLUMNNAME_LBR_TaxBaseType_UU);
	}

	public I_LBR_TaxStatus getLBR_TaxStatus() throws RuntimeException
	{
		return (I_LBR_TaxStatus)MTable.get(getCtx(), I_LBR_TaxStatus.Table_ID)
			.getPO(getLBR_TaxStatus_ID(), get_TrxName());
	}

	/** Set Tax Status.
		@param LBR_TaxStatus_ID Brazilian Tax Status
	*/
	public void setLBR_TaxStatus_ID (int LBR_TaxStatus_ID)
	{
		if (LBR_TaxStatus_ID < 1)
			set_ValueNoCheck (COLUMNNAME_LBR_TaxStatus_ID, null);
		else
			set_ValueNoCheck (COLUMNNAME_LBR_TaxStatus_ID, Integer.valueOf(LBR_TaxStatus_ID));
	}

	/** Get Tax Status.
		@return Brazilian Tax Status
	  */
	public int getLBR_TaxStatus_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_TaxStatus_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
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

	/** Set Script.
		@param Script Dynamic Java Language Script to calculate result
	*/
	public void setScript (String Script)
	{
		set_Value (COLUMNNAME_Script, Script);
	}

	/** Get Script.
		@return Dynamic Java Language Script to calculate result
	  */
	public String getScript()
	{
		return (String)get_Value(COLUMNNAME_Script);
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