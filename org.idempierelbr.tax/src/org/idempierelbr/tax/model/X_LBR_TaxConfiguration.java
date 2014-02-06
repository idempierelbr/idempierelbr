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
import java.util.Properties;
import org.compiere.model.*;

/** Generated Model for LBR_TaxConfiguration
 *  @author iDempiere (generated) 
 *  @version Release 2.0 - $Id$ */
public class X_LBR_TaxConfiguration extends PO implements I_LBR_TaxConfiguration, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20140203L;

    /** Standard Constructor */
    public X_LBR_TaxConfiguration (Properties ctx, int LBR_TaxConfiguration_ID, String trxName)
    {
      super (ctx, LBR_TaxConfiguration_ID, trxName);
      /** if (LBR_TaxConfiguration_ID == 0)
        {
			setIsSOTrx (true);
// Y
			setLBR_FiscalGroup_Product_ID (0);
			setLBR_IsPOTrx (true);
// Y
			setLBR_TaxConfiguration_ID (0);
			setM_Product_ID (0);
        } */
    }

    /** Load Constructor */
    public X_LBR_TaxConfiguration (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_TaxConfiguration[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set Sales Transaction.
		@param IsSOTrx 
		This is a Sales Transaction
	  */
	public void setIsSOTrx (boolean IsSOTrx)
	{
		set_Value (COLUMNNAME_IsSOTrx, Boolean.valueOf(IsSOTrx));
	}

	/** Get Sales Transaction.
		@return This is a Sales Transaction
	  */
	public boolean isSOTrx () 
	{
		Object oo = get_Value(COLUMNNAME_IsSOTrx);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Fiscal Group = G */
	public static final String LBR_EXCEPTIONTYPE_FiscalGroup = "G";
	/** Product = P */
	public static final String LBR_EXCEPTIONTYPE_Product = "P";
	/** Set Tax Exception Type.
		@param LBR_ExceptionType 
		Defines the Tax Exception Type
	  */
	public void setLBR_ExceptionType (String LBR_ExceptionType)
	{

		set_Value (COLUMNNAME_LBR_ExceptionType, LBR_ExceptionType);
	}

	/** Get Tax Exception Type.
		@return Defines the Tax Exception Type
	  */
	public String getLBR_ExceptionType () 
	{
		return (String)get_Value(COLUMNNAME_LBR_ExceptionType);
	}

	public I_LBR_FiscalGroup_Product getLBR_FiscalGroup_Product() throws RuntimeException
    {
		return (I_LBR_FiscalGroup_Product)MTable.get(getCtx(), I_LBR_FiscalGroup_Product.Table_Name)
			.getPO(getLBR_FiscalGroup_Product_ID(), get_TrxName());	}

	/** Set Product Fiscal Group.
		@param LBR_FiscalGroup_Product_ID 
		Identifies a Product Fiscal Group
	  */
	public void setLBR_FiscalGroup_Product_ID (int LBR_FiscalGroup_Product_ID)
	{
		if (LBR_FiscalGroup_Product_ID < 1) 
			set_Value (COLUMNNAME_LBR_FiscalGroup_Product_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_FiscalGroup_Product_ID, Integer.valueOf(LBR_FiscalGroup_Product_ID));
	}

	/** Get Product Fiscal Group.
		@return Identifies a Product Fiscal Group
	  */
	public int getLBR_FiscalGroup_Product_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_FiscalGroup_Product_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Purchase Transaction.
		@param LBR_IsPOTrx 
		This is a Purchase Transaction
	  */
	public void setLBR_IsPOTrx (boolean LBR_IsPOTrx)
	{
		set_Value (COLUMNNAME_LBR_IsPOTrx, Boolean.valueOf(LBR_IsPOTrx));
	}

	/** Get Purchase Transaction.
		@return This is a Purchase Transaction
	  */
	public boolean isLBR_IsPOTrx () 
	{
		Object oo = get_Value(COLUMNNAME_LBR_IsPOTrx);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Tax Configuration.
		@param LBR_TaxConfiguration_ID 
		Tax Configuration Used
	  */
	public void setLBR_TaxConfiguration_ID (int LBR_TaxConfiguration_ID)
	{
		if (LBR_TaxConfiguration_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_TaxConfiguration_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_TaxConfiguration_ID, Integer.valueOf(LBR_TaxConfiguration_ID));
	}

	/** Get Tax Configuration.
		@return Tax Configuration Used
	  */
	public int getLBR_TaxConfiguration_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_TaxConfiguration_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_TaxConfiguration_UU.
		@param LBR_TaxConfiguration_UU LBR_TaxConfiguration_UU	  */
	public void setLBR_TaxConfiguration_UU (String LBR_TaxConfiguration_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_TaxConfiguration_UU, LBR_TaxConfiguration_UU);
	}

	/** Get LBR_TaxConfiguration_UU.
		@return LBR_TaxConfiguration_UU	  */
	public String getLBR_TaxConfiguration_UU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_TaxConfiguration_UU);
	}

	public org.compiere.model.I_M_Product getM_Product() throws RuntimeException
    {
		return (org.compiere.model.I_M_Product)MTable.get(getCtx(), org.compiere.model.I_M_Product.Table_Name)
			.getPO(getM_Product_ID(), get_TrxName());	}

	/** Set Product.
		@param M_Product_ID 
		Product, Service, Item
	  */
	public void setM_Product_ID (int M_Product_ID)
	{
		if (M_Product_ID < 1) 
			set_Value (COLUMNNAME_M_Product_ID, null);
		else 
			set_Value (COLUMNNAME_M_Product_ID, Integer.valueOf(M_Product_ID));
	}

	/** Get Product.
		@return Product, Service, Item
	  */
	public int getM_Product_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_M_Product_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}
}