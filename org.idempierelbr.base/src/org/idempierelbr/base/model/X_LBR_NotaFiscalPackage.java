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

/** Generated Model for LBR_NotaFiscalPackage
 *  @author iDempiere (generated)
 *  @version Release 11 - $Id$ */
@org.adempiere.base.Model(table="LBR_NotaFiscalPackage")
public class X_LBR_NotaFiscalPackage extends PO implements I_LBR_NotaFiscalPackage, I_Persistent
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20240603L;

    /** Standard Constructor */
    public X_LBR_NotaFiscalPackage (Properties ctx, int LBR_NotaFiscalPackage_ID, String trxName)
    {
      super (ctx, LBR_NotaFiscalPackage_ID, trxName);
      /** if (LBR_NotaFiscalPackage_ID == 0)
        {
			setLBR_NotaFiscalPackage_ID (0);
			setLBR_NotaFiscalTransp_ID (0);
        } */
    }

    /** Standard Constructor */
    public X_LBR_NotaFiscalPackage (Properties ctx, int LBR_NotaFiscalPackage_ID, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_NotaFiscalPackage_ID, trxName, virtualColumns);
      /** if (LBR_NotaFiscalPackage_ID == 0)
        {
			setLBR_NotaFiscalPackage_ID (0);
			setLBR_NotaFiscalTransp_ID (0);
        } */
    }

    /** Standard Constructor */
    public X_LBR_NotaFiscalPackage (Properties ctx, String LBR_NotaFiscalPackage_UU, String trxName)
    {
      super (ctx, LBR_NotaFiscalPackage_UU, trxName);
      /** if (LBR_NotaFiscalPackage_UU == null)
        {
			setLBR_NotaFiscalPackage_ID (0);
			setLBR_NotaFiscalTransp_ID (0);
        } */
    }

    /** Standard Constructor */
    public X_LBR_NotaFiscalPackage (Properties ctx, String LBR_NotaFiscalPackage_UU, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_NotaFiscalPackage_UU, trxName, virtualColumns);
      /** if (LBR_NotaFiscalPackage_UU == null)
        {
			setLBR_NotaFiscalPackage_ID (0);
			setLBR_NotaFiscalTransp_ID (0);
        } */
    }

    /** Load Constructor */
    public X_LBR_NotaFiscalPackage (Properties ctx, ResultSet rs, String trxName)
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
      StringBuilder sb = new StringBuilder ("X_LBR_NotaFiscalPackage[")
        .append(get_ID()).append("]");
      return sb.toString();
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

	/** Set Brand Name.
		@param LBR_BrandName Brand Name
	*/
	public void setLBR_BrandName (String LBR_BrandName)
	{
		set_Value (COLUMNNAME_LBR_BrandName, LBR_BrandName);
	}

	/** Get Brand Name.
		@return Brand Name	  */
	public String getLBR_BrandName()
	{
		return (String)get_Value(COLUMNNAME_LBR_BrandName);
	}

	/** Set Gross Weight.
		@param LBR_GrossWeight Gross Weight of a product
	*/
	public void setLBR_GrossWeight (BigDecimal LBR_GrossWeight)
	{
		set_Value (COLUMNNAME_LBR_GrossWeight, LBR_GrossWeight);
	}

	/** Get Gross Weight.
		@return Gross Weight of a product
	  */
	public BigDecimal getLBR_GrossWeight()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_GrossWeight);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Net Weight.
		@param LBR_NetWeight Net Weight of a product
	*/
	public void setLBR_NetWeight (BigDecimal LBR_NetWeight)
	{
		set_Value (COLUMNNAME_LBR_NetWeight, LBR_NetWeight);
	}

	/** Get Net Weight.
		@return Net Weight of a product
	  */
	public BigDecimal getLBR_NetWeight()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_NetWeight);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Brazilian Fiscal Invoice (Nota Fiscal) Package.
		@param LBR_NotaFiscalPackage_ID Brazilian Fiscal Invoice (Nota Fiscal) Package
	*/
	public void setLBR_NotaFiscalPackage_ID (int LBR_NotaFiscalPackage_ID)
	{
		if (LBR_NotaFiscalPackage_ID < 1)
			set_ValueNoCheck (COLUMNNAME_LBR_NotaFiscalPackage_ID, null);
		else
			set_ValueNoCheck (COLUMNNAME_LBR_NotaFiscalPackage_ID, Integer.valueOf(LBR_NotaFiscalPackage_ID));
	}

	/** Get Brazilian Fiscal Invoice (Nota Fiscal) Package.
		@return Brazilian Fiscal Invoice (Nota Fiscal) Package	  */
	public int getLBR_NotaFiscalPackage_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_NotaFiscalPackage_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Brazilian Fiscal Invoice (Nota Fiscal) Package.
		@param LBR_NotaFiscalPackage_UU Brazilian Fiscal Invoice (Nota Fiscal) Package
	*/
	public void setLBR_NotaFiscalPackage_UU (String LBR_NotaFiscalPackage_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_NotaFiscalPackage_UU, LBR_NotaFiscalPackage_UU);
	}

	/** Get Brazilian Fiscal Invoice (Nota Fiscal) Package.
		@return Brazilian Fiscal Invoice (Nota Fiscal) Package	  */
	public String getLBR_NotaFiscalPackage_UU()
	{
		return (String)get_Value(COLUMNNAME_LBR_NotaFiscalPackage_UU);
	}

	public I_LBR_NotaFiscalTransp getLBR_NotaFiscalTransp() throws RuntimeException
	{
		return (I_LBR_NotaFiscalTransp)MTable.get(getCtx(), I_LBR_NotaFiscalTransp.Table_ID)
			.getPO(getLBR_NotaFiscalTransp_ID(), get_TrxName());
	}

	/** Set Brazilian Fiscal Invoice (Nota Fiscal) Transportation.
		@param LBR_NotaFiscalTransp_ID Brazilian Fiscal Invoice (Nota Fiscal) Transportation
	*/
	public void setLBR_NotaFiscalTransp_ID (int LBR_NotaFiscalTransp_ID)
	{
		if (LBR_NotaFiscalTransp_ID < 1)
			set_ValueNoCheck (COLUMNNAME_LBR_NotaFiscalTransp_ID, null);
		else
			set_ValueNoCheck (COLUMNNAME_LBR_NotaFiscalTransp_ID, Integer.valueOf(LBR_NotaFiscalTransp_ID));
	}

	/** Get Brazilian Fiscal Invoice (Nota Fiscal) Transportation.
		@return Brazilian Fiscal Invoice (Nota Fiscal) Transportation	  */
	public int getLBR_NotaFiscalTransp_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_NotaFiscalTransp_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Numeration.
		@param LBR_Numeration Numeration
	*/
	public void setLBR_Numeration (String LBR_Numeration)
	{
		set_Value (COLUMNNAME_LBR_Numeration, LBR_Numeration);
	}

	/** Get Numeration.
		@return Numeration	  */
	public String getLBR_Numeration()
	{
		return (String)get_Value(COLUMNNAME_LBR_Numeration);
	}

	/** Set Seal.
		@param LBR_SealNo Seal No
	*/
	public void setLBR_SealNo (String LBR_SealNo)
	{
		set_Value (COLUMNNAME_LBR_SealNo, LBR_SealNo);
	}

	/** Get Seal.
		@return Seal No
	  */
	public String getLBR_SealNo()
	{
		return (String)get_Value(COLUMNNAME_LBR_SealNo);
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
}