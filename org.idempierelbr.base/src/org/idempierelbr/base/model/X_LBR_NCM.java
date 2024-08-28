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

/** Generated Model for LBR_NCM
 *  @author iDempiere (generated)
 *  @version Release 11 - $Id$ */
@org.adempiere.base.Model(table="LBR_NCM")
public class X_LBR_NCM extends PO implements I_LBR_NCM, I_Persistent
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20240603L;

    /** Standard Constructor */
    public X_LBR_NCM (Properties ctx, int LBR_NCM_ID, String trxName)
    {
      super (ctx, LBR_NCM_ID, trxName);
      /** if (LBR_NCM_ID == 0)
        {
			setLBR_HasSubstitution (false);
// N
			setLBR_NCM_ID (0);
			setValue (null);
        } */
    }

    /** Standard Constructor */
    public X_LBR_NCM (Properties ctx, int LBR_NCM_ID, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_NCM_ID, trxName, virtualColumns);
      /** if (LBR_NCM_ID == 0)
        {
			setLBR_HasSubstitution (false);
// N
			setLBR_NCM_ID (0);
			setValue (null);
        } */
    }

    /** Standard Constructor */
    public X_LBR_NCM (Properties ctx, String LBR_NCM_UU, String trxName)
    {
      super (ctx, LBR_NCM_UU, trxName);
      /** if (LBR_NCM_UU == null)
        {
			setLBR_HasSubstitution (false);
// N
			setLBR_NCM_ID (0);
			setValue (null);
        } */
    }

    /** Standard Constructor */
    public X_LBR_NCM (Properties ctx, String LBR_NCM_UU, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_NCM_UU, trxName, virtualColumns);
      /** if (LBR_NCM_UU == null)
        {
			setLBR_HasSubstitution (false);
// N
			setLBR_NCM_ID (0);
			setValue (null);
        } */
    }

    /** Load Constructor */
    public X_LBR_NCM (Properties ctx, ResultSet rs, String trxName)
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
      StringBuilder sb = new StringBuilder ("X_LBR_NCM[")
        .append(get_ID()).append("]");
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

	/** Set Has Substitution.
		@param LBR_HasSubstitution Defines if the record has Substituion
	*/
	public void setLBR_HasSubstitution (boolean LBR_HasSubstitution)
	{
		set_Value (COLUMNNAME_LBR_HasSubstitution, Boolean.valueOf(LBR_HasSubstitution));
	}

	/** Get Has Substitution.
		@return Defines if the record has Substituion
	  */
	public boolean isLBR_HasSubstitution()
	{
		Object oo = get_Value(COLUMNNAME_LBR_HasSubstitution);
		if (oo != null)
		{
			 if (oo instanceof Boolean)
				 return ((Boolean)oo).booleanValue();
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set NCM.
		@param LBR_NCM_ID NCM stands for Nomenclatura Comum do MERCOSUL
	*/
	public void setLBR_NCM_ID (int LBR_NCM_ID)
	{
		if (LBR_NCM_ID < 1)
			set_ValueNoCheck (COLUMNNAME_LBR_NCM_ID, null);
		else
			set_ValueNoCheck (COLUMNNAME_LBR_NCM_ID, Integer.valueOf(LBR_NCM_ID));
	}

	/** Get NCM.
		@return NCM stands for Nomenclatura Comum do MERCOSUL
	  */
	public int getLBR_NCM_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_NCM_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_NCM_UU.
		@param LBR_NCM_UU LBR_NCM_UU
	*/
	public void setLBR_NCM_UU (String LBR_NCM_UU)
	{
		set_Value (COLUMNNAME_LBR_NCM_UU, LBR_NCM_UU);
	}

	/** Get LBR_NCM_UU.
		@return LBR_NCM_UU	  */
	public String getLBR_NCM_UU()
	{
		return (String)get_Value(COLUMNNAME_LBR_NCM_UU);
	}

	/** Set Transaction Tax.
		@param LBR_Tax_ID Identifies a transaction tax (document/line)
	*/
	public void setLBR_Tax_ID (int LBR_Tax_ID)
	{
		if (LBR_Tax_ID < 1)
			set_ValueNoCheck(COLUMNNAME_LBR_Tax_ID, null);
		else
			set_ValueNoCheck (COLUMNNAME_LBR_Tax_ID, Integer.valueOf(LBR_Tax_ID));
	}

	/** Get Transaction Tax.
		@return Identifies a transaction tax (document/line)
	  */
	public int getLBR_Tax_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_Tax_ID);
		if (ii == null)
			return 0;
		return ii.intValue();
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