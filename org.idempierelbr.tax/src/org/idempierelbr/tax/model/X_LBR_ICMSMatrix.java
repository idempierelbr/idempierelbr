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

/** Generated Model for LBR_ICMSMatrix
 *  @author iDempiere (generated) 
 *  @version Release 2.0 - $Id$ */
public class X_LBR_ICMSMatrix extends PO implements I_LBR_ICMSMatrix, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20140129L;

    /** Standard Constructor */
    public X_LBR_ICMSMatrix (Properties ctx, int LBR_ICMSMatrix_ID, String trxName)
    {
      super (ctx, LBR_ICMSMatrix_ID, trxName);
      /** if (LBR_ICMSMatrix_ID == 0)
        {
			setC_Region_ID (0);
			setLBR_ICMSMatrix_ID (0);
			setTo_Region_ID (0);
        } */
    }

    /** Load Constructor */
    public X_LBR_ICMSMatrix (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_ICMSMatrix[")
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

	/** Set ICMS Matrix.
		@param LBR_ICMSMatrix_ID 
		Identifies ICMS Matriz
	  */
	public void setLBR_ICMSMatrix_ID (int LBR_ICMSMatrix_ID)
	{
		if (LBR_ICMSMatrix_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_ICMSMatrix_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_ICMSMatrix_ID, Integer.valueOf(LBR_ICMSMatrix_ID));
	}

	/** Get ICMS Matrix.
		@return Identifies ICMS Matriz
	  */
	public int getLBR_ICMSMatrix_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_ICMSMatrix_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_ICMSMatrix_UU.
		@param LBR_ICMSMatrix_UU LBR_ICMSMatrix_UU	  */
	public void setLBR_ICMSMatrix_UU (String LBR_ICMSMatrix_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_ICMSMatrix_UU, LBR_ICMSMatrix_UU);
	}

	/** Get LBR_ICMSMatrix_UU.
		@return LBR_ICMSMatrix_UU	  */
	public String getLBR_ICMSMatrix_UU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_ICMSMatrix_UU);
	}

	/** Set ST Tax.
		@param LBR_STTax_ID ST Tax	  */
	public void setLBR_STTax_ID (int LBR_STTax_ID)
	{
		set_Value (COLUMNNAME_LBR_STTax_ID, LBR_STTax_ID);
	}

	/** Get ST Tax.
		@return ST Tax	  */
	public int getLBR_STTax_ID () 
	{
				Integer ii = (Integer)get_Value(COLUMNNAME_LBR_STTax_ID);
				if (ii == null)
					 return 0;
				return ii.intValue();
	}

	/** Set Transaction Tax.
		@param LBR_Tax_ID 
		Identifies a transaction tax (document/line)
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
	public int getLBR_Tax_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_Tax_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.compiere.model.I_C_Region getTo_Region() throws RuntimeException
    {
		return (org.compiere.model.I_C_Region)MTable.get(getCtx(), org.compiere.model.I_C_Region.Table_Name)
			.getPO(getTo_Region_ID(), get_TrxName());	}

	/** Set To.
		@param To_Region_ID 
		Receiving Region
	  */
	public void setTo_Region_ID (int To_Region_ID)
	{
		if (To_Region_ID < 1) 
			set_Value (COLUMNNAME_To_Region_ID, null);
		else 
			set_Value (COLUMNNAME_To_Region_ID, Integer.valueOf(To_Region_ID));
	}

	/** Get To.
		@return Receiving Region
	  */
	public int getTo_Region_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_To_Region_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
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