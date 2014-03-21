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

/** Generated Model for LBR_ISSMatrix
 *  @author iDempiere (generated) 
 *  @version Release 2.0 - $Id$ */
public class X_LBR_ISSMatrix extends PO implements I_LBR_ISSMatrix, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20140129L;

    /** Standard Constructor */
    public X_LBR_ISSMatrix (Properties ctx, int LBR_ISSMatrix_ID, String trxName)
    {
      super (ctx, LBR_ISSMatrix_ID, trxName);
      /** if (LBR_ISSMatrix_ID == 0)
        {
			setC_City_ID (0);
			setC_Region_ID (0);
			setLBR_ISSMatrix_ID (0);
        } */
    }

    /** Load Constructor */
    public X_LBR_ISSMatrix (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_ISSMatrix[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	public org.compiere.model.I_C_City getC_City() throws RuntimeException
    {
		return (org.compiere.model.I_C_City)MTable.get(getCtx(), org.compiere.model.I_C_City.Table_Name)
			.getPO(getC_City_ID(), get_TrxName());	}

	/** Set City.
		@param C_City_ID 
		City
	  */
	public void setC_City_ID (int C_City_ID)
	{
		if (C_City_ID < 1) 
			set_Value (COLUMNNAME_C_City_ID, null);
		else 
			set_Value (COLUMNNAME_C_City_ID, Integer.valueOf(C_City_ID));
	}

	/** Get City.
		@return City
	  */
	public int getC_City_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_City_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
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

	/** Set ISS (Services) Matrix.
		@param LBR_ISSMatrix_ID 
		Indicates the ISS Matrix
	  */
	public void setLBR_ISSMatrix_ID (int LBR_ISSMatrix_ID)
	{
		if (LBR_ISSMatrix_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_ISSMatrix_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_ISSMatrix_ID, Integer.valueOf(LBR_ISSMatrix_ID));
	}

	/** Get ISS (Services) Matrix.
		@return Indicates the ISS Matrix
	  */
	public int getLBR_ISSMatrix_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_ISSMatrix_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_ISSMatrix_UU.
		@param LBR_ISSMatrix_UU LBR_ISSMatrix_UU	  */
	public void setLBR_ISSMatrix_UU (String LBR_ISSMatrix_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_ISSMatrix_UU, LBR_ISSMatrix_UU);
	}

	/** Get LBR_ISSMatrix_UU.
		@return LBR_ISSMatrix_UU	  */
	public String getLBR_ISSMatrix_UU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_ISSMatrix_UU);
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