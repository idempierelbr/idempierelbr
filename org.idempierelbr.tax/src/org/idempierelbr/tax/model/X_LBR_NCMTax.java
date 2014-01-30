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
package org.idempierelbr.tax.model;

import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.Properties;
import org.compiere.model.*;
import org.compiere.util.KeyNamePair;
import org.idempierelbr.core.model.I_LBR_NCM;

/** Generated Model for LBR_NCMTax
 *  @author iDempiere (generated) 
 *  @version Release 2.0 - $Id$ */
public class X_LBR_NCMTax extends PO implements I_LBR_NCMTax, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20140129L;

    /** Standard Constructor */
    public X_LBR_NCMTax (Properties ctx, int LBR_NCMTax_ID, String trxName)
    {
      super (ctx, LBR_NCMTax_ID, trxName);
      /** if (LBR_NCMTax_ID == 0)
        {
			setLBR_HasSubstitution (false);
// N
			setLBR_NCM_ID (0);
			setLBR_NCMTax_ID (0);
			setValidFrom (new Timestamp( System.currentTimeMillis() ));
        } */
    }

    /** Load Constructor */
    public X_LBR_NCMTax (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_NCMTax[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	public org.compiere.model.I_C_Region getC_Region() throws RuntimeException
    {
		return (org.compiere.model.I_C_Region)MTable.get(getCtx(), org.compiere.model.I_C_Region.Table_Name)
			.getPO(getC_Region_ID(), get_TrxName());	}

	/** Set Region.
		@param C_Region_ID 
		Identifies a geographical Region
	  */
	public void setC_Region_ID (int C_Region_ID)
	{
		if (C_Region_ID < 1) 
			set_Value (COLUMNNAME_C_Region_ID, null);
		else 
			set_Value (COLUMNNAME_C_Region_ID, Integer.valueOf(C_Region_ID));
	}

	/** Get Region.
		@return Identifies a geographical Region
	  */
	public int getC_Region_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_Region_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
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

	/** Set Has Substitution.
		@param LBR_HasSubstitution 
		Defines if the record has Substituion
	  */
	public void setLBR_HasSubstitution (boolean LBR_HasSubstitution)
	{
		set_Value (COLUMNNAME_LBR_HasSubstitution, Boolean.valueOf(LBR_HasSubstitution));
	}

	/** Get Has Substitution.
		@return Defines if the record has Substituion
	  */
	public boolean isLBR_HasSubstitution () 
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

	public I_LBR_NCM getLBR_NCM() throws RuntimeException
    {
		return (I_LBR_NCM)MTable.get(getCtx(), I_LBR_NCM.Table_Name)
			.getPO(getLBR_NCM_ID(), get_TrxName());	}

	/** Set NCM.
		@param LBR_NCM_ID 
		NCM stands for Nomenclatura Comum do MERCOSUL
	  */
	public void setLBR_NCM_ID (int LBR_NCM_ID)
	{
		if (LBR_NCM_ID < 1) 
			set_Value (COLUMNNAME_LBR_NCM_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_NCM_ID, Integer.valueOf(LBR_NCM_ID));
	}

	/** Get NCM.
		@return NCM stands for Nomenclatura Comum do MERCOSUL
	  */
	public int getLBR_NCM_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_NCM_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set NCM Tax.
		@param LBR_NCMTax_ID 
		Defines NCM Tax
	  */
	public void setLBR_NCMTax_ID (int LBR_NCMTax_ID)
	{
		if (LBR_NCMTax_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_NCMTax_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_NCMTax_ID, Integer.valueOf(LBR_NCMTax_ID));
	}

	/** Get NCM Tax.
		@return Defines NCM Tax
	  */
	public int getLBR_NCMTax_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_NCMTax_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_NCMTax_UU.
		@param LBR_NCMTax_UU LBR_NCMTax_UU	  */
	public void setLBR_NCMTax_UU (String LBR_NCMTax_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_NCMTax_UU, LBR_NCMTax_UU);
	}

	/** Get LBR_NCMTax_UU.
		@return LBR_NCMTax_UU	  */
	public String getLBR_NCMTax_UU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_NCMTax_UU);
	}

	/** Set Transaction Tax.
		@param LBR_Tax_ID 
		Identifies a transaction tax (document/line)
	  */
	public void setLBR_Tax_ID (int LBR_Tax_ID)
	{
		set_Value (COLUMNNAME_LBR_Tax_ID, LBR_Tax_ID);
	}

	/** Get Transaction Tax.
		@return Identifies a transaction tax (document/line)
	  */
	public int getLBR_Tax_ID () 
	{
				return (Integer) get_Value(COLUMNNAME_LBR_Tax_ID);
	}

    /** Get Record ID/ColumnName
        @return ID/ColumnName pair
      */
    public KeyNamePair getKeyNamePair() 
    {
        return new KeyNamePair(get_ID(), String.valueOf(getLBR_Tax_ID()));
    }

	/** Set Valid from.
		@param ValidFrom 
		Valid from including this date (first day)
	  */
	public void setValidFrom (Timestamp ValidFrom)
	{
		set_Value (COLUMNNAME_ValidFrom, ValidFrom);
	}

	/** Get Valid from.
		@return Valid from including this date (first day)
	  */
	public Timestamp getValidFrom () 
	{
		return (Timestamp)get_Value(COLUMNNAME_ValidFrom);
	}
}