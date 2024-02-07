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

/** Generated Model for LBR_CEST_NCMProd
 *  @author iDempiere (generated) 
 *  @version Release 2.1 - $Id$ */
public class X_LBR_CEST_NCMProd extends PO implements I_LBR_CEST_NCMProd, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20160324L;

    /** Standard Constructor */
    public X_LBR_CEST_NCMProd (Properties ctx, int LBR_CEST_NCMProd_ID, String trxName)
    {
      super (ctx, LBR_CEST_NCMProd_ID, trxName);
      /** if (LBR_CEST_NCMProd_ID == 0)
        {
			setLBR_CEST_NCMProd_ID (0);
        } */
    }

    /** Load Constructor */
    public X_LBR_CEST_NCMProd (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_CEST_NCMProd[")
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

	public I_LBR_CEST getLBR_CEST() throws RuntimeException
    {
		return (I_LBR_CEST)MTable.get(getCtx(), I_LBR_CEST.Table_Name)
			.getPO(getLBR_CEST_ID(), get_TrxName());	}

	/** Set CEST.
		@param LBR_CEST_ID CEST	  */
	public void setLBR_CEST_ID (int LBR_CEST_ID)
	{
		if (LBR_CEST_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_CEST_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_CEST_ID, Integer.valueOf(LBR_CEST_ID));
	}

	/** Get CEST.
		@return CEST	  */
	public int getLBR_CEST_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_CEST_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set CEST relations to NCM and products.
		@param LBR_CEST_NCMProd_ID CEST relations to NCM and products	  */
	public void setLBR_CEST_NCMProd_ID (int LBR_CEST_NCMProd_ID)
	{
		if (LBR_CEST_NCMProd_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_CEST_NCMProd_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_CEST_NCMProd_ID, Integer.valueOf(LBR_CEST_NCMProd_ID));
	}

	/** Get CEST relations to NCM and products.
		@return CEST relations to NCM and products	  */
	public int getLBR_CEST_NCMProd_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_CEST_NCMProd_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_CEST_NCMProd_UU.
		@param LBR_CEST_NCMProd_UU LBR_CEST_NCMProd_UU	  */
	public void setLBR_CEST_NCMProd_UU (String LBR_CEST_NCMProd_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_CEST_NCMProd_UU, LBR_CEST_NCMProd_UU);
	}

	/** Get LBR_CEST_NCMProd_UU.
		@return LBR_CEST_NCMProd_UU	  */
	public String getLBR_CEST_NCMProd_UU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CEST_NCMProd_UU);
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