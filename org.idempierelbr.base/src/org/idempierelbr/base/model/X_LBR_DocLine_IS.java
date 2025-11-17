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

/** Generated Model for LBR_DocLine_IS
 *  @author iDempiere (generated)
 *  @version Release 12 - $Id$ */
@org.adempiere.base.Model(table="LBR_DocLine_IS")
public class X_LBR_DocLine_IS extends PO implements I_LBR_DocLine_IS, I_Persistent
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20251117L;

    /** Standard Constructor */
    public X_LBR_DocLine_IS (Properties ctx, int LBR_DocLine_IS_ID, String trxName)
    {
      super (ctx, LBR_DocLine_IS_ID, trxName);
      /** if (LBR_DocLine_IS_ID == 0)
        {
			setIsTaxIncluded (true);
// Y
			setLBR_CST_IS_ID (0);
			setLBR_ClassTrib_IS_ID (0);
			setLBR_DocLine_Details_ID (0);
        } */
    }

    /** Standard Constructor */
    public X_LBR_DocLine_IS (Properties ctx, int LBR_DocLine_IS_ID, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_DocLine_IS_ID, trxName, virtualColumns);
      /** if (LBR_DocLine_IS_ID == 0)
        {
			setIsTaxIncluded (true);
// Y
			setLBR_CST_IS_ID (0);
			setLBR_ClassTrib_IS_ID (0);
			setLBR_DocLine_Details_ID (0);
        } */
    }

    /** Standard Constructor */
    public X_LBR_DocLine_IS (Properties ctx, String LBR_DocLine_IS_UU, String trxName)
    {
      super (ctx, LBR_DocLine_IS_UU, trxName);
      /** if (LBR_DocLine_IS_UU == null)
        {
			setIsTaxIncluded (true);
// Y
			setLBR_CST_IS_ID (0);
			setLBR_ClassTrib_IS_ID (0);
			setLBR_DocLine_Details_ID (0);
        } */
    }

    /** Standard Constructor */
    public X_LBR_DocLine_IS (Properties ctx, String LBR_DocLine_IS_UU, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_DocLine_IS_UU, trxName, virtualColumns);
      /** if (LBR_DocLine_IS_UU == null)
        {
			setIsTaxIncluded (true);
// Y
			setLBR_CST_IS_ID (0);
			setLBR_ClassTrib_IS_ID (0);
			setLBR_DocLine_Details_ID (0);
        } */
    }

    /** Load Constructor */
    public X_LBR_DocLine_IS (Properties ctx, ResultSet rs, String trxName)
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
      StringBuilder sb = new StringBuilder ("X_LBR_DocLine_IS[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set Price includes Tax.
		@param IsTaxIncluded Tax is included in the price 
	*/
	public void setIsTaxIncluded (boolean IsTaxIncluded)
	{
		set_ValueNoCheck (COLUMNNAME_IsTaxIncluded, Boolean.valueOf(IsTaxIncluded));
	}

	/** Get Price includes Tax.
		@return Tax is included in the price 
	  */
	public boolean isTaxIncluded()
	{
		Object oo = get_Value(COLUMNNAME_IsTaxIncluded);
		if (oo != null)
		{
			 if (oo instanceof Boolean)
				 return ((Boolean)oo).booleanValue();
			return "Y".equals(oo);
		}
		return false;
	}

	public I_LBR_CST_IS getLBR_CST_IS() throws RuntimeException
	{
		return (I_LBR_CST_IS)MTable.get(getCtx(), I_LBR_CST_IS.Table_ID)
			.getPO(getLBR_CST_IS_ID(), get_TrxName());
	}

	/** Set CST IS.
		@param LBR_CST_IS_ID CST IS
	*/
	public void setLBR_CST_IS_ID (int LBR_CST_IS_ID)
	{
		if (LBR_CST_IS_ID < 1)
			set_Value (COLUMNNAME_LBR_CST_IS_ID, null);
		else
			set_Value (COLUMNNAME_LBR_CST_IS_ID, Integer.valueOf(LBR_CST_IS_ID));
	}

	/** Get CST IS.
		@return CST IS	  */
	public int getLBR_CST_IS_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_CST_IS_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public I_LBR_ClassTrib_IS getLBR_ClassTrib_IS() throws RuntimeException
	{
		return (I_LBR_ClassTrib_IS)MTable.get(getCtx(), I_LBR_ClassTrib_IS.Table_ID)
			.getPO(getLBR_ClassTrib_IS_ID(), get_TrxName());
	}

	/** Set ClassTrib IS.
		@param LBR_ClassTrib_IS_ID ClassTrib IS
	*/
	public void setLBR_ClassTrib_IS_ID (int LBR_ClassTrib_IS_ID)
	{
		if (LBR_ClassTrib_IS_ID < 1)
			set_Value (COLUMNNAME_LBR_ClassTrib_IS_ID, null);
		else
			set_Value (COLUMNNAME_LBR_ClassTrib_IS_ID, Integer.valueOf(LBR_ClassTrib_IS_ID));
	}

	/** Get ClassTrib IS.
		@return ClassTrib IS	  */
	public int getLBR_ClassTrib_IS_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_ClassTrib_IS_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public I_LBR_DocLine_Details getLBR_DocLine_Details() throws RuntimeException
	{
		return (I_LBR_DocLine_Details)MTable.get(getCtx(), I_LBR_DocLine_Details.Table_ID)
			.getPO(getLBR_DocLine_Details_ID(), get_TrxName());
	}

	/** Set Doc Line Details.
		@param LBR_DocLine_Details_ID Doc Line Details
	*/
	public void setLBR_DocLine_Details_ID (int LBR_DocLine_Details_ID)
	{
		if (LBR_DocLine_Details_ID < 1)
			set_ValueNoCheck (COLUMNNAME_LBR_DocLine_Details_ID, null);
		else
			set_ValueNoCheck (COLUMNNAME_LBR_DocLine_Details_ID, Integer.valueOf(LBR_DocLine_Details_ID));
	}

	/** Get Doc Line Details.
		@return Doc Line Details
	  */
	public int getLBR_DocLine_Details_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_DocLine_Details_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Doc Line IS.
		@param LBR_DocLine_IS_ID Doc Line IS
	*/
	public void setLBR_DocLine_IS_ID (int LBR_DocLine_IS_ID)
	{
		if (LBR_DocLine_IS_ID < 1)
			set_ValueNoCheck (COLUMNNAME_LBR_DocLine_IS_ID, null);
		else
			set_ValueNoCheck (COLUMNNAME_LBR_DocLine_IS_ID, Integer.valueOf(LBR_DocLine_IS_ID));
	}

	/** Get Doc Line IS.
		@return Doc Line IS	  */
	public int getLBR_DocLine_IS_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_DocLine_IS_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Doc Line IS.
		@param LBR_DocLine_IS_UU Doc Line IS
	*/
	public void setLBR_DocLine_IS_UU (String LBR_DocLine_IS_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_DocLine_IS_UU, LBR_DocLine_IS_UU);
	}

	/** Get Doc Line IS.
		@return Doc Line IS	  */
	public String getLBR_DocLine_IS_UU()
	{
		return (String)get_Value(COLUMNNAME_LBR_DocLine_IS_UU);
	}

	/** Set Taxable Quantity.
		@param LBR_QtyTax Taxable Quantity
	*/
	public void setLBR_QtyTax (BigDecimal LBR_QtyTax)
	{
		set_Value (COLUMNNAME_LBR_QtyTax, LBR_QtyTax);
	}

	/** Get Taxable Quantity.
		@return Taxable Quantity
	  */
	public BigDecimal getLBR_QtyTax()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_QtyTax);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Tax Amount.
		@param LBR_TaxAmt Defines the Tax Amount
	*/
	public void setLBR_TaxAmt (BigDecimal LBR_TaxAmt)
	{
		set_Value (COLUMNNAME_LBR_TaxAmt, LBR_TaxAmt);
	}

	/** Get Tax Amount.
		@return Defines the Tax Amount
	  */
	public BigDecimal getLBR_TaxAmt()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_TaxAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Tax Base Amount.
		@param LBR_TaxBaseAmt Defines the Tax Base Amount
	*/
	public void setLBR_TaxBaseAmt (BigDecimal LBR_TaxBaseAmt)
	{
		set_Value (COLUMNNAME_LBR_TaxBaseAmt, LBR_TaxBaseAmt);
	}

	/** Get Tax Base Amount.
		@return Defines the Tax Base Amount
	  */
	public BigDecimal getLBR_TaxBaseAmt()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_TaxBaseAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Tax Rate.
		@param LBR_TaxRate Indicates the Tax Rate
	*/
	public void setLBR_TaxRate (BigDecimal LBR_TaxRate)
	{
		set_Value (COLUMNNAME_LBR_TaxRate, LBR_TaxRate);
	}

	/** Get Tax Rate.
		@return Indicates the Tax Rate
	  */
	public BigDecimal getLBR_TaxRate()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_TaxRate);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Tax Rate Espec..
		@param LBR_TaxRateEspec Indicates the Tax Rate Espec.
	*/
	public void setLBR_TaxRateEspec (BigDecimal LBR_TaxRateEspec)
	{
		set_Value (COLUMNNAME_LBR_TaxRateEspec, LBR_TaxRateEspec);
	}

	/** Get Tax Rate Espec..
		@return Indicates the Tax Rate Espec.
	  */
	public BigDecimal getLBR_TaxRateEspec()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_TaxRateEspec);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	public org.compiere.model.I_C_UOM getLBR_UOMTax() throws RuntimeException
	{
		return (org.compiere.model.I_C_UOM)MTable.get(getCtx(), org.compiere.model.I_C_UOM.Table_ID)
			.getPO(getLBR_UOMTax_ID(), get_TrxName());
	}

	/** Set Taxable UOM.
		@param LBR_UOMTax_ID Taxable Unit of Measure
	*/
	public void setLBR_UOMTax_ID (int LBR_UOMTax_ID)
	{
		if (LBR_UOMTax_ID < 1)
			set_Value (COLUMNNAME_LBR_UOMTax_ID, null);
		else
			set_Value (COLUMNNAME_LBR_UOMTax_ID, Integer.valueOf(LBR_UOMTax_ID));
	}

	/** Get Taxable UOM.
		@return Taxable Unit of Measure
	  */
	public int getLBR_UOMTax_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_UOMTax_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}
}