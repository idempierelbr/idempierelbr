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

/** Generated Model for LBR_CSC
 *  @author iDempiere (generated)
 *  @version Release 11 - $Id$ */
@org.adempiere.base.Model(table="LBR_CSC")
public class X_LBR_CSC extends PO implements I_LBR_CSC, I_Persistent
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20240603L;

    /** Standard Constructor */
    public X_LBR_CSC (Properties ctx, int LBR_CSC_ID, String trxName)
    {
      super (ctx, LBR_CSC_ID, trxName);
      /** if (LBR_CSC_ID == 0)
        {
			setIsDefault (false);
// N
			setLBR_CSC_ID (0);
			setLBR_NFeEnv (null);
			setName (null);
			setValue (null);
        } */
    }

    /** Standard Constructor */
    public X_LBR_CSC (Properties ctx, int LBR_CSC_ID, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_CSC_ID, trxName, virtualColumns);
      /** if (LBR_CSC_ID == 0)
        {
			setIsDefault (false);
// N
			setLBR_CSC_ID (0);
			setLBR_NFeEnv (null);
			setName (null);
			setValue (null);
        } */
    }

    /** Standard Constructor */
    public X_LBR_CSC (Properties ctx, String LBR_CSC_UU, String trxName)
    {
      super (ctx, LBR_CSC_UU, trxName);
      /** if (LBR_CSC_UU == null)
        {
			setIsDefault (false);
// N
			setLBR_CSC_ID (0);
			setLBR_NFeEnv (null);
			setName (null);
			setValue (null);
        } */
    }

    /** Standard Constructor */
    public X_LBR_CSC (Properties ctx, String LBR_CSC_UU, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_CSC_UU, trxName, virtualColumns);
      /** if (LBR_CSC_UU == null)
        {
			setIsDefault (false);
// N
			setLBR_CSC_ID (0);
			setLBR_NFeEnv (null);
			setName (null);
			setValue (null);
        } */
    }

    /** Load Constructor */
    public X_LBR_CSC (Properties ctx, ResultSet rs, String trxName)
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
      StringBuilder sb = new StringBuilder ("X_LBR_CSC[")
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

	/** Set Default.
		@param IsDefault Default value
	*/
	public void setIsDefault (boolean IsDefault)
	{
		set_Value (COLUMNNAME_IsDefault, Boolean.valueOf(IsDefault));
	}

	/** Get Default.
		@return Default value
	  */
	public boolean isDefault()
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

	/** Set Taxpayer Security Code.
		@param LBR_CSC_ID Taxpayer Security Code
	*/
	public void setLBR_CSC_ID (int LBR_CSC_ID)
	{
		if (LBR_CSC_ID < 1)
			set_ValueNoCheck (COLUMNNAME_LBR_CSC_ID, null);
		else
			set_ValueNoCheck (COLUMNNAME_LBR_CSC_ID, Integer.valueOf(LBR_CSC_ID));
	}

	/** Get Taxpayer Security Code.
		@return Taxpayer Security Code	  */
	public int getLBR_CSC_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_CSC_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_CSC_UU.
		@param LBR_CSC_UU LBR_CSC_UU
	*/
	public void setLBR_CSC_UU (String LBR_CSC_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_CSC_UU, LBR_CSC_UU);
	}

	/** Get LBR_CSC_UU.
		@return LBR_CSC_UU	  */
	public String getLBR_CSC_UU()
	{
		return (String)get_Value(COLUMNNAME_LBR_CSC_UU);
	}

	/** Production = 1 */
	public static final String LBR_NFEENV_Production = "1";
	/** Homologation = 2 */
	public static final String LBR_NFEENV_Homologation = "2";
	/** Set Sefaz NF-e Environment.
		@param LBR_NFeEnv Sefaz NF-e Environment
	*/
	public void setLBR_NFeEnv (String LBR_NFeEnv)
	{

		set_Value (COLUMNNAME_LBR_NFeEnv, LBR_NFeEnv);
	}

	/** Get Sefaz NF-e Environment.
		@return Sefaz NF-e Environment	  */
	public String getLBR_NFeEnv()
	{
		return (String)get_Value(COLUMNNAME_LBR_NFeEnv);
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