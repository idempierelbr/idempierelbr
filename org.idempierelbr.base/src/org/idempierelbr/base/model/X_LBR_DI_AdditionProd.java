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

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.util.Properties;
import org.compiere.model.*;
import org.compiere.util.Env;
import org.compiere.util.KeyNamePair;

/** Generated Model for LBR_DI_AdditionProd
 *  @author iDempiere (generated)
 *  @version Release 11 - $Id$ */
@org.adempiere.base.Model(table="LBR_DI_AdditionProd")
public class X_LBR_DI_AdditionProd extends PO implements I_LBR_DI_AdditionProd, I_Persistent
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20240603L;

    /** Standard Constructor */
    public X_LBR_DI_AdditionProd (Properties ctx, int LBR_DI_AdditionProd_ID, String trxName)
    {
      super (ctx, LBR_DI_AdditionProd_ID, trxName);
      /** if (LBR_DI_AdditionProd_ID == 0)
        {
			setLBR_DI_AdditionProd_ID (0);
			setLBR_DI_Addition_ID (0);
			setSeqNo (0);
// @SQL=SELECT COALESCE(MAX(SeqNo),0)+1 AS DefaultValue FROM LBR_DI_AdditionProd WHERE LBR_DI_Addition_ID=@LBR_DI_Addition_ID@
        } */
    }

    /** Standard Constructor */
    public X_LBR_DI_AdditionProd (Properties ctx, int LBR_DI_AdditionProd_ID, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_DI_AdditionProd_ID, trxName, virtualColumns);
      /** if (LBR_DI_AdditionProd_ID == 0)
        {
			setLBR_DI_AdditionProd_ID (0);
			setLBR_DI_Addition_ID (0);
			setSeqNo (0);
// @SQL=SELECT COALESCE(MAX(SeqNo),0)+1 AS DefaultValue FROM LBR_DI_AdditionProd WHERE LBR_DI_Addition_ID=@LBR_DI_Addition_ID@
        } */
    }

    /** Standard Constructor */
    public X_LBR_DI_AdditionProd (Properties ctx, String LBR_DI_AdditionProd_UU, String trxName)
    {
      super (ctx, LBR_DI_AdditionProd_UU, trxName);
      /** if (LBR_DI_AdditionProd_UU == null)
        {
			setLBR_DI_AdditionProd_ID (0);
			setLBR_DI_Addition_ID (0);
			setSeqNo (0);
// @SQL=SELECT COALESCE(MAX(SeqNo),0)+1 AS DefaultValue FROM LBR_DI_AdditionProd WHERE LBR_DI_Addition_ID=@LBR_DI_Addition_ID@
        } */
    }

    /** Standard Constructor */
    public X_LBR_DI_AdditionProd (Properties ctx, String LBR_DI_AdditionProd_UU, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_DI_AdditionProd_UU, trxName, virtualColumns);
      /** if (LBR_DI_AdditionProd_UU == null)
        {
			setLBR_DI_AdditionProd_ID (0);
			setLBR_DI_Addition_ID (0);
			setSeqNo (0);
// @SQL=SELECT COALESCE(MAX(SeqNo),0)+1 AS DefaultValue FROM LBR_DI_AdditionProd WHERE LBR_DI_Addition_ID=@LBR_DI_Addition_ID@
        } */
    }

    /** Load Constructor */
    public X_LBR_DI_AdditionProd (Properties ctx, ResultSet rs, String trxName)
    {
      super (ctx, rs, trxName);
    }

    /** AccessLevel
      * @return 1 - Org
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
      StringBuilder sb = new StringBuilder ("X_LBR_DI_AdditionProd[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	public org.compiere.model.I_C_Currency getC_Currency() throws RuntimeException
	{
		return (org.compiere.model.I_C_Currency)MTable.get(getCtx(), org.compiere.model.I_C_Currency.Table_ID)
			.getPO(getC_Currency_ID(), get_TrxName());
	}

	/** Set Currency.
		@param C_Currency_ID The Currency for this record
	*/
	public void setC_Currency_ID (int C_Currency_ID)
	{
		if (C_Currency_ID < 1)
			set_Value (COLUMNNAME_C_Currency_ID, null);
		else
			set_Value (COLUMNNAME_C_Currency_ID, Integer.valueOf(C_Currency_ID));
	}

	/** Get Currency.
		@return The Currency for this record
	  */
	public int getC_Currency_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_Currency_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.compiere.model.I_C_UOM getC_UOM() throws RuntimeException
	{
		return (org.compiere.model.I_C_UOM)MTable.get(getCtx(), org.compiere.model.I_C_UOM.Table_ID)
			.getPO(getC_UOM_ID(), get_TrxName());
	}

	/** Set UOM.
		@param C_UOM_ID Unit of Measure
	*/
	public void setC_UOM_ID (int C_UOM_ID)
	{
		if (C_UOM_ID < 1)
			set_Value (COLUMNNAME_C_UOM_ID, null);
		else
			set_Value (COLUMNNAME_C_UOM_ID, Integer.valueOf(C_UOM_ID));
	}

	/** Get UOM.
		@return Unit of Measure
	  */
	public int getC_UOM_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_UOM_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
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

	/** Set DI Addition Product.
		@param LBR_DI_AdditionProd_ID Identifies an Import Declaration (DI) Addiction Product
	*/
	public void setLBR_DI_AdditionProd_ID (int LBR_DI_AdditionProd_ID)
	{
		if (LBR_DI_AdditionProd_ID < 1)
			set_ValueNoCheck (COLUMNNAME_LBR_DI_AdditionProd_ID, null);
		else
			set_ValueNoCheck (COLUMNNAME_LBR_DI_AdditionProd_ID, Integer.valueOf(LBR_DI_AdditionProd_ID));
	}

	/** Get DI Addition Product.
		@return Identifies an Import Declaration (DI) Addiction Product
	  */
	public int getLBR_DI_AdditionProd_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_DI_AdditionProd_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set DI Addition Product.
		@param LBR_DI_AdditionProd_UU Identifies an Import Declaration (DI) Addiction Product
	*/
	public void setLBR_DI_AdditionProd_UU (String LBR_DI_AdditionProd_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_DI_AdditionProd_UU, LBR_DI_AdditionProd_UU);
	}

	/** Get DI Addition Product.
		@return Identifies an Import Declaration (DI) Addiction Product
	  */
	public String getLBR_DI_AdditionProd_UU()
	{
		return (String)get_Value(COLUMNNAME_LBR_DI_AdditionProd_UU);
	}

	public I_LBR_DI_Addition getLBR_DI_Addition() throws RuntimeException
	{
		return (I_LBR_DI_Addition)MTable.get(getCtx(), I_LBR_DI_Addition.Table_ID)
			.getPO(getLBR_DI_Addition_ID(), get_TrxName());
	}

	/** Set Import Declaration (DI) Addition.
		@param LBR_DI_Addition_ID Identifies an Import Declaration (DI) Addiction
	*/
	public void setLBR_DI_Addition_ID (int LBR_DI_Addition_ID)
	{
		if (LBR_DI_Addition_ID < 1)
			set_ValueNoCheck (COLUMNNAME_LBR_DI_Addition_ID, null);
		else
			set_ValueNoCheck (COLUMNNAME_LBR_DI_Addition_ID, Integer.valueOf(LBR_DI_Addition_ID));
	}

	/** Get Import Declaration (DI) Addition.
		@return Identifies an Import Declaration (DI) Addiction
	  */
	public int getLBR_DI_Addition_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_DI_Addition_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Specification.
		@param LBR_Specification Optional short description of the record
	*/
	public void setLBR_Specification (String LBR_Specification)
	{
		set_Value (COLUMNNAME_LBR_Specification, LBR_Specification);
	}

	/** Get Specification.
		@return Optional short description of the record
	  */
	public String getLBR_Specification()
	{
		return (String)get_Value(COLUMNNAME_LBR_Specification);
	}

	public org.compiere.model.I_M_Product getM_Product() throws RuntimeException
	{
		return (org.compiere.model.I_M_Product)MTable.get(getCtx(), org.compiere.model.I_M_Product.Table_ID)
			.getPO(getM_Product_ID(), get_TrxName());
	}

	/** Set Product.
		@param M_Product_ID Product, Service, Item
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
	public int getM_Product_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_M_Product_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

    /** Get Record ID/ColumnName
        @return ID/ColumnName pair
      */
    public KeyNamePair getKeyNamePair()
    {
        return new KeyNamePair(get_ID(), String.valueOf(getM_Product_ID()));
    }

	/** Set Unit Price.
		@param PriceActual Actual Price 
	*/
	public void setPriceActual (BigDecimal PriceActual)
	{
		set_Value (COLUMNNAME_PriceActual, PriceActual);
	}

	/** Get Unit Price.
		@return Actual Price 
	  */
	public BigDecimal getPriceActual()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_PriceActual);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Quantity.
		@param Qty Quantity
	*/
	public void setQty (BigDecimal Qty)
	{
		set_Value (COLUMNNAME_Qty, Qty);
	}

	/** Get Quantity.
		@return Quantity
	  */
	public BigDecimal getQty()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_Qty);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Sequence.
		@param SeqNo Method of ordering records; lowest number comes first
	*/
	public void setSeqNo (int SeqNo)
	{
		set_Value (COLUMNNAME_SeqNo, Integer.valueOf(SeqNo));
	}

	/** Get Sequence.
		@return Method of ordering records; lowest number comes first
	  */
	public int getSeqNo()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_SeqNo);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}
}