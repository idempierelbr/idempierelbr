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

/** Generated Model for LBR_NCMMono
 *  @author iDempiere (generated) 
 *  @version Release 4.1 - $Id$ */
public class X_LBR_NCMMono extends PO implements I_LBR_NCMMono, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20170828L;

    /** Standard Constructor */
    public X_LBR_NCMMono (Properties ctx, int LBR_NCMMono_ID, String trxName)
    {
      super (ctx, LBR_NCMMono_ID, trxName);
      /** if (LBR_NCMMono_ID == 0)
        {
			setC_Tax_ID (0);
// @C_Tax_ID@
        } */
    }

    /** Load Constructor */
    public X_LBR_NCMMono (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_NCMMono[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	public org.compiere.model.I_C_Tax getC_Tax() throws RuntimeException
    {
		return (org.compiere.model.I_C_Tax)MTable.get(getCtx(), org.compiere.model.I_C_Tax.Table_Name)
			.getPO(getC_Tax_ID(), get_TrxName());	}

	/** Set Tax.
		@param C_Tax_ID 
		Tax identifier
	  */
	public void setC_Tax_ID (int C_Tax_ID)
	{
		if (C_Tax_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_C_Tax_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_C_Tax_ID, Integer.valueOf(C_Tax_ID));
	}

	/** Get Tax.
		@return Tax identifier
	  */
	public int getC_Tax_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_Tax_ID);
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

	/** Set Monophase NCM.
		@param LBR_NCMMono_ID Monophase NCM	  */
	public void setLBR_NCMMono_ID (int LBR_NCMMono_ID)
	{
		if (LBR_NCMMono_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_NCMMono_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_NCMMono_ID, Integer.valueOf(LBR_NCMMono_ID));
	}

	/** Get Monophase NCM.
		@return Monophase NCM	  */
	public int getLBR_NCMMono_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_NCMMono_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Monophase NCM.
		@param LBR_NCMMono_UU Monophase NCM	  */
	public void setLBR_NCMMono_UU (String LBR_NCMMono_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_NCMMono_UU, LBR_NCMMono_UU);
	}

	/** Get Monophase NCM.
		@return Monophase NCM	  */
	public String getLBR_NCMMono_UU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_NCMMono_UU);
	}

	/** Set Search Key.
		@param Value 
		Search key for the record in the format required - must be unique
	  */
	public void setValue (String Value)
	{
		set_Value (COLUMNNAME_Value, Value);
	}

	/** Get Search Key.
		@return Search key for the record in the format required - must be unique
	  */
	public String getValue () 
	{
		return (String)get_Value(COLUMNNAME_Value);
	}
}