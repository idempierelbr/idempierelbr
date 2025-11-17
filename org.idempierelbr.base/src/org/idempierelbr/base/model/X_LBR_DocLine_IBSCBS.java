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

/** Generated Model for LBR_DocLine_IBSCBS
 *  @author iDempiere (generated)
 *  @version Release 12 - $Id$ */
@org.adempiere.base.Model(table="LBR_DocLine_IBSCBS")
public class X_LBR_DocLine_IBSCBS extends PO implements I_LBR_DocLine_IBSCBS, I_Persistent
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20251117L;

    /** Standard Constructor */
    public X_LBR_DocLine_IBSCBS (Properties ctx, int LBR_DocLine_IBSCBS_ID, String trxName)
    {
      super (ctx, LBR_DocLine_IBSCBS_ID, trxName);
      /** if (LBR_DocLine_IBSCBS_ID == 0)
        {
			setLBR_CBS_IsTaxIncluded (true);
// Y
			setLBR_CST_IBSCBS_ID (0);
			setLBR_ClassTrib_IBSCBS_ID (0);
			setLBR_DocLine_Details_ID (0);
			setLBR_IBS_Mun_IsTaxIncluded (true);
// Y
			setLBR_IBS_UF_IsTaxIncluded (true);
// Y
        } */
    }

    /** Standard Constructor */
    public X_LBR_DocLine_IBSCBS (Properties ctx, int LBR_DocLine_IBSCBS_ID, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_DocLine_IBSCBS_ID, trxName, virtualColumns);
      /** if (LBR_DocLine_IBSCBS_ID == 0)
        {
			setLBR_CBS_IsTaxIncluded (true);
// Y
			setLBR_CST_IBSCBS_ID (0);
			setLBR_ClassTrib_IBSCBS_ID (0);
			setLBR_DocLine_Details_ID (0);
			setLBR_IBS_Mun_IsTaxIncluded (true);
// Y
			setLBR_IBS_UF_IsTaxIncluded (true);
// Y
        } */
    }

    /** Standard Constructor */
    public X_LBR_DocLine_IBSCBS (Properties ctx, String LBR_DocLine_IBSCBS_UU, String trxName)
    {
      super (ctx, LBR_DocLine_IBSCBS_UU, trxName);
      /** if (LBR_DocLine_IBSCBS_UU == null)
        {
			setLBR_CBS_IsTaxIncluded (true);
// Y
			setLBR_CST_IBSCBS_ID (0);
			setLBR_ClassTrib_IBSCBS_ID (0);
			setLBR_DocLine_Details_ID (0);
			setLBR_IBS_Mun_IsTaxIncluded (true);
// Y
			setLBR_IBS_UF_IsTaxIncluded (true);
// Y
        } */
    }

    /** Standard Constructor */
    public X_LBR_DocLine_IBSCBS (Properties ctx, String LBR_DocLine_IBSCBS_UU, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_DocLine_IBSCBS_UU, trxName, virtualColumns);
      /** if (LBR_DocLine_IBSCBS_UU == null)
        {
			setLBR_CBS_IsTaxIncluded (true);
// Y
			setLBR_CST_IBSCBS_ID (0);
			setLBR_ClassTrib_IBSCBS_ID (0);
			setLBR_DocLine_Details_ID (0);
			setLBR_IBS_Mun_IsTaxIncluded (true);
// Y
			setLBR_IBS_UF_IsTaxIncluded (true);
// Y
        } */
    }

    /** Load Constructor */
    public X_LBR_DocLine_IBSCBS (Properties ctx, ResultSet rs, String trxName)
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
      StringBuilder sb = new StringBuilder ("X_LBR_DocLine_IBSCBS[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set Price includes Tax.
		@param LBR_CBS_IsTaxIncluded Tax is included in the price 
	*/
	public void setLBR_CBS_IsTaxIncluded (boolean LBR_CBS_IsTaxIncluded)
	{
		set_Value (COLUMNNAME_LBR_CBS_IsTaxIncluded, Boolean.valueOf(LBR_CBS_IsTaxIncluded));
	}

	/** Get Price includes Tax.
		@return Tax is included in the price 
	  */
	public boolean isLBR_CBS_IsTaxIncluded()
	{
		Object oo = get_Value(COLUMNNAME_LBR_CBS_IsTaxIncluded);
		if (oo != null)
		{
			 if (oo instanceof Boolean)
				 return ((Boolean)oo).booleanValue();
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set CBS Tax Amt.
		@param LBR_CBS_TaxAmt Indicates the CBS Tax Amt
	*/
	public void setLBR_CBS_TaxAmt (BigDecimal LBR_CBS_TaxAmt)
	{
		set_Value (COLUMNNAME_LBR_CBS_TaxAmt, LBR_CBS_TaxAmt);
	}

	/** Get CBS Tax Amt.
		@return Indicates the CBS Tax Amt
	  */
	public BigDecimal getLBR_CBS_TaxAmt()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_CBS_TaxAmt);
		return bd;
	}

	/** Set CBS Tax Deferral Amt.
		@param LBR_CBS_TaxDeferralAmt Indicates the CBS Tax Deferral Amt
	*/
	public void setLBR_CBS_TaxDeferralAmt (BigDecimal LBR_CBS_TaxDeferralAmt)
	{
		set_Value (COLUMNNAME_LBR_CBS_TaxDeferralAmt, LBR_CBS_TaxDeferralAmt);
	}

	/** Get CBS Tax Deferral Amt.
		@return Indicates the CBS Tax Deferral Amt
	  */
	public BigDecimal getLBR_CBS_TaxDeferralAmt()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_CBS_TaxDeferralAmt);
		return bd;
	}

	/** Set CBS Tax Deferral Rate.
		@param LBR_CBS_TaxDeferralRate Indicates the CBS Tax Deferral Rate
	*/
	public void setLBR_CBS_TaxDeferralRate (BigDecimal LBR_CBS_TaxDeferralRate)
	{
		set_Value (COLUMNNAME_LBR_CBS_TaxDeferralRate, LBR_CBS_TaxDeferralRate);
	}

	/** Get CBS Tax Deferral Rate.
		@return Indicates the CBS Tax Deferral Rate
	  */
	public BigDecimal getLBR_CBS_TaxDeferralRate()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_CBS_TaxDeferralRate);
		return bd;
	}

	/** Set CBS Tax Dev. Amt.
		@param LBR_CBS_TaxDevAmt Indicates the CBS Tax Dev. Amt
	*/
	public void setLBR_CBS_TaxDevAmt (BigDecimal LBR_CBS_TaxDevAmt)
	{
		set_Value (COLUMNNAME_LBR_CBS_TaxDevAmt, LBR_CBS_TaxDevAmt);
	}

	/** Get CBS Tax Dev. Amt.
		@return Indicates the CBS Tax Dev. Amt
	  */
	public BigDecimal getLBR_CBS_TaxDevAmt()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_CBS_TaxDevAmt);
		return bd;
	}

	/** Set CBS Tax Rate.
		@param LBR_CBS_TaxRate Indicates the CBS Tax Rate
	*/
	public void setLBR_CBS_TaxRate (BigDecimal LBR_CBS_TaxRate)
	{
		set_Value (COLUMNNAME_LBR_CBS_TaxRate, LBR_CBS_TaxRate);
	}

	/** Get CBS Tax Rate.
		@return Indicates the CBS Tax Rate
	  */
	public BigDecimal getLBR_CBS_TaxRate()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_CBS_TaxRate);
		return bd;
	}

	/** Set CBS Tax Red. Efet. Rate.
		@param LBR_CBS_TaxRedEfetRate Indicates the CBS Tax Red. Efet. Rate
	*/
	public void setLBR_CBS_TaxRedEfetRate (BigDecimal LBR_CBS_TaxRedEfetRate)
	{
		set_Value (COLUMNNAME_LBR_CBS_TaxRedEfetRate, LBR_CBS_TaxRedEfetRate);
	}

	/** Get CBS Tax Red. Efet. Rate.
		@return Indicates the CBS Tax Red. Efet. Rate
	  */
	public BigDecimal getLBR_CBS_TaxRedEfetRate()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_CBS_TaxRedEfetRate);
		return bd;
	}

	/** Set CBS Tax Red. Rate.
		@param LBR_CBS_TaxRedRate Indicates the CBS Tax Red. Rate
	*/
	public void setLBR_CBS_TaxRedRate (BigDecimal LBR_CBS_TaxRedRate)
	{
		set_Value (COLUMNNAME_LBR_CBS_TaxRedRate, LBR_CBS_TaxRedRate);
	}

	/** Get CBS Tax Red. Rate.
		@return Indicates the CBS Tax Red. Rate
	  */
	public BigDecimal getLBR_CBS_TaxRedRate()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_CBS_TaxRedRate);
		return bd;
	}

	public I_LBR_CST_IBSCBS getLBR_CST_IBSCBS() throws RuntimeException
	{
		return (I_LBR_CST_IBSCBS)MTable.get(getCtx(), I_LBR_CST_IBSCBS.Table_ID)
			.getPO(getLBR_CST_IBSCBS_ID(), get_TrxName());
	}

	/** Set CST IBS / CBS.
		@param LBR_CST_IBSCBS_ID CST IBS / CBS
	*/
	public void setLBR_CST_IBSCBS_ID (int LBR_CST_IBSCBS_ID)
	{
		if (LBR_CST_IBSCBS_ID < 1)
			set_Value (COLUMNNAME_LBR_CST_IBSCBS_ID, null);
		else
			set_Value (COLUMNNAME_LBR_CST_IBSCBS_ID, Integer.valueOf(LBR_CST_IBSCBS_ID));
	}

	/** Get CST IBS / CBS.
		@return CST IBS / CBS	  */
	public int getLBR_CST_IBSCBS_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_CST_IBSCBS_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public I_LBR_ClassTrib_IBSCBS getLBR_ClassTrib_IBSCBS() throws RuntimeException
	{
		return (I_LBR_ClassTrib_IBSCBS)MTable.get(getCtx(), I_LBR_ClassTrib_IBSCBS.Table_ID)
			.getPO(getLBR_ClassTrib_IBSCBS_ID(), get_TrxName());
	}

	/** Set ClassTrib IBS / CBS.
		@param LBR_ClassTrib_IBSCBS_ID ClassTrib IBS / CBS
	*/
	public void setLBR_ClassTrib_IBSCBS_ID (int LBR_ClassTrib_IBSCBS_ID)
	{
		if (LBR_ClassTrib_IBSCBS_ID < 1)
			set_Value (COLUMNNAME_LBR_ClassTrib_IBSCBS_ID, null);
		else
			set_Value (COLUMNNAME_LBR_ClassTrib_IBSCBS_ID, Integer.valueOf(LBR_ClassTrib_IBSCBS_ID));
	}

	/** Get ClassTrib IBS / CBS.
		@return ClassTrib IBS / CBS	  */
	public int getLBR_ClassTrib_IBSCBS_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_ClassTrib_IBSCBS_ID);
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

	/** Set Doc Line IBS / CBS.
		@param LBR_DocLine_IBSCBS_ID Doc Line IBS / CBS
	*/
	public void setLBR_DocLine_IBSCBS_ID (int LBR_DocLine_IBSCBS_ID)
	{
		if (LBR_DocLine_IBSCBS_ID < 1)
			set_ValueNoCheck (COLUMNNAME_LBR_DocLine_IBSCBS_ID, null);
		else
			set_ValueNoCheck (COLUMNNAME_LBR_DocLine_IBSCBS_ID, Integer.valueOf(LBR_DocLine_IBSCBS_ID));
	}

	/** Get Doc Line IBS / CBS.
		@return Doc Line IBS / CBS	  */
	public int getLBR_DocLine_IBSCBS_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_DocLine_IBSCBS_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Doc Line IBS / CBS.
		@param LBR_DocLine_IBSCBS_UU Doc Line IBS / CBS
	*/
	public void setLBR_DocLine_IBSCBS_UU (String LBR_DocLine_IBSCBS_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_DocLine_IBSCBS_UU, LBR_DocLine_IBSCBS_UU);
	}

	/** Get Doc Line IBS / CBS.
		@return Doc Line IBS / CBS	  */
	public String getLBR_DocLine_IBSCBS_UU()
	{
		return (String)get_Value(COLUMNNAME_LBR_DocLine_IBSCBS_UU);
	}

	/** Set Price includes Tax.
		@param LBR_IBS_Mun_IsTaxIncluded Tax is included in the price 
	*/
	public void setLBR_IBS_Mun_IsTaxIncluded (boolean LBR_IBS_Mun_IsTaxIncluded)
	{
		set_Value (COLUMNNAME_LBR_IBS_Mun_IsTaxIncluded, Boolean.valueOf(LBR_IBS_Mun_IsTaxIncluded));
	}

	/** Get Price includes Tax.
		@return Tax is included in the price 
	  */
	public boolean isLBR_IBS_Mun_IsTaxIncluded()
	{
		Object oo = get_Value(COLUMNNAME_LBR_IBS_Mun_IsTaxIncluded);
		if (oo != null)
		{
			 if (oo instanceof Boolean)
				 return ((Boolean)oo).booleanValue();
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set IBS Mun. Tax Amt.
		@param LBR_IBS_Mun_TaxAmt Indicates the IBS Mun. Tax Amt
	*/
	public void setLBR_IBS_Mun_TaxAmt (BigDecimal LBR_IBS_Mun_TaxAmt)
	{
		set_Value (COLUMNNAME_LBR_IBS_Mun_TaxAmt, LBR_IBS_Mun_TaxAmt);
	}

	/** Get IBS Mun. Tax Amt.
		@return Indicates the IBS Mun. Tax Amt
	  */
	public BigDecimal getLBR_IBS_Mun_TaxAmt()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_IBS_Mun_TaxAmt);
		return bd;
	}

	/** Set IBS Mun. Tax Deferral Amt.
		@param LBR_IBS_Mun_TaxDeferralAmt Indicates the IBS Mun. Tax Deferral Amt
	*/
	public void setLBR_IBS_Mun_TaxDeferralAmt (BigDecimal LBR_IBS_Mun_TaxDeferralAmt)
	{
		set_Value (COLUMNNAME_LBR_IBS_Mun_TaxDeferralAmt, LBR_IBS_Mun_TaxDeferralAmt);
	}

	/** Get IBS Mun. Tax Deferral Amt.
		@return Indicates the IBS Mun. Tax Deferral Amt
	  */
	public BigDecimal getLBR_IBS_Mun_TaxDeferralAmt()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_IBS_Mun_TaxDeferralAmt);
		return bd;
	}

	/** Set IBS Mun. Tax Deferral Rate.
		@param LBR_IBS_Mun_TaxDeferralRate Indicates the IBS Mun. Tax Deferral Rate
	*/
	public void setLBR_IBS_Mun_TaxDeferralRate (BigDecimal LBR_IBS_Mun_TaxDeferralRate)
	{
		set_Value (COLUMNNAME_LBR_IBS_Mun_TaxDeferralRate, LBR_IBS_Mun_TaxDeferralRate);
	}

	/** Get IBS Mun. Tax Deferral Rate.
		@return Indicates the IBS Mun. Tax Deferral Rate
	  */
	public BigDecimal getLBR_IBS_Mun_TaxDeferralRate()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_IBS_Mun_TaxDeferralRate);
		return bd;
	}

	/** Set IBS Mun. Tax Dev. Amt.
		@param LBR_IBS_Mun_TaxDevAmt Indicates the IBS Mun. Tax Dev. Amt
	*/
	public void setLBR_IBS_Mun_TaxDevAmt (BigDecimal LBR_IBS_Mun_TaxDevAmt)
	{
		set_Value (COLUMNNAME_LBR_IBS_Mun_TaxDevAmt, LBR_IBS_Mun_TaxDevAmt);
	}

	/** Get IBS Mun. Tax Dev. Amt.
		@return Indicates the IBS Mun. Tax Dev. Amt
	  */
	public BigDecimal getLBR_IBS_Mun_TaxDevAmt()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_IBS_Mun_TaxDevAmt);
		return bd;
	}

	/** Set IBS Mun. Tax Rate.
		@param LBR_IBS_Mun_TaxRate Indicates the IBS Mun. Tax Rate
	*/
	public void setLBR_IBS_Mun_TaxRate (BigDecimal LBR_IBS_Mun_TaxRate)
	{
		set_Value (COLUMNNAME_LBR_IBS_Mun_TaxRate, LBR_IBS_Mun_TaxRate);
	}

	/** Get IBS Mun. Tax Rate.
		@return Indicates the IBS Mun. Tax Rate
	  */
	public BigDecimal getLBR_IBS_Mun_TaxRate()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_IBS_Mun_TaxRate);
		return bd;
	}

	/** Set IBS Mun. Tax Red. Efet. Rate.
		@param LBR_IBS_Mun_TaxRedEfetRate Indicates the IBS Mun. Tax Red. Efet. Rate
	*/
	public void setLBR_IBS_Mun_TaxRedEfetRate (BigDecimal LBR_IBS_Mun_TaxRedEfetRate)
	{
		set_Value (COLUMNNAME_LBR_IBS_Mun_TaxRedEfetRate, LBR_IBS_Mun_TaxRedEfetRate);
	}

	/** Get IBS Mun. Tax Red. Efet. Rate.
		@return Indicates the IBS Mun. Tax Red. Efet. Rate
	  */
	public BigDecimal getLBR_IBS_Mun_TaxRedEfetRate()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_IBS_Mun_TaxRedEfetRate);
		return bd;
	}

	/** Set IBS Mun. Tax Red. Rate.
		@param LBR_IBS_Mun_TaxRedRate Indicates the IBS Mun. Tax Red. Rate
	*/
	public void setLBR_IBS_Mun_TaxRedRate (BigDecimal LBR_IBS_Mun_TaxRedRate)
	{
		set_Value (COLUMNNAME_LBR_IBS_Mun_TaxRedRate, LBR_IBS_Mun_TaxRedRate);
	}

	/** Get IBS Mun. Tax Red. Rate.
		@return Indicates the IBS Mun. Tax Red. Rate
	  */
	public BigDecimal getLBR_IBS_Mun_TaxRedRate()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_IBS_Mun_TaxRedRate);
		return bd;
	}

	/** Set Price includes Tax.
		@param LBR_IBS_UF_IsTaxIncluded Tax is included in the price 
	*/
	public void setLBR_IBS_UF_IsTaxIncluded (boolean LBR_IBS_UF_IsTaxIncluded)
	{
		set_Value (COLUMNNAME_LBR_IBS_UF_IsTaxIncluded, Boolean.valueOf(LBR_IBS_UF_IsTaxIncluded));
	}

	/** Get Price includes Tax.
		@return Tax is included in the price 
	  */
	public boolean isLBR_IBS_UF_IsTaxIncluded()
	{
		Object oo = get_Value(COLUMNNAME_LBR_IBS_UF_IsTaxIncluded);
		if (oo != null)
		{
			 if (oo instanceof Boolean)
				 return ((Boolean)oo).booleanValue();
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set IBS UF Tax Amt.
		@param LBR_IBS_UF_TaxAmt Indicates the IBS UF Tax Amt
	*/
	public void setLBR_IBS_UF_TaxAmt (BigDecimal LBR_IBS_UF_TaxAmt)
	{
		set_Value (COLUMNNAME_LBR_IBS_UF_TaxAmt, LBR_IBS_UF_TaxAmt);
	}

	/** Get IBS UF Tax Amt.
		@return Indicates the IBS UF Tax Amt
	  */
	public BigDecimal getLBR_IBS_UF_TaxAmt()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_IBS_UF_TaxAmt);
		return bd;
	}

	/** Set IBS UF Tax Deferral Amt.
		@param LBR_IBS_UF_TaxDeferralAmt Indicates the IBS UF Tax Deferral Amt
	*/
	public void setLBR_IBS_UF_TaxDeferralAmt (BigDecimal LBR_IBS_UF_TaxDeferralAmt)
	{
		set_Value (COLUMNNAME_LBR_IBS_UF_TaxDeferralAmt, LBR_IBS_UF_TaxDeferralAmt);
	}

	/** Get IBS UF Tax Deferral Amt.
		@return Indicates the IBS UF Tax Deferral Amt
	  */
	public BigDecimal getLBR_IBS_UF_TaxDeferralAmt()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_IBS_UF_TaxDeferralAmt);
		return bd;
	}

	/** Set IBS UF Tax Deferral Rate.
		@param LBR_IBS_UF_TaxDeferralRate Indicates the IBS UF Tax Deferral Rate
	*/
	public void setLBR_IBS_UF_TaxDeferralRate (BigDecimal LBR_IBS_UF_TaxDeferralRate)
	{
		set_Value (COLUMNNAME_LBR_IBS_UF_TaxDeferralRate, LBR_IBS_UF_TaxDeferralRate);
	}

	/** Get IBS UF Tax Deferral Rate.
		@return Indicates the IBS UF Tax Deferral Rate
	  */
	public BigDecimal getLBR_IBS_UF_TaxDeferralRate()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_IBS_UF_TaxDeferralRate);
		return bd;
	}

	/** Set IBS UF Tax Dev. Amt.
		@param LBR_IBS_UF_TaxDevAmt Indicates the IBS UF Tax Dev. Amt
	*/
	public void setLBR_IBS_UF_TaxDevAmt (BigDecimal LBR_IBS_UF_TaxDevAmt)
	{
		set_Value (COLUMNNAME_LBR_IBS_UF_TaxDevAmt, LBR_IBS_UF_TaxDevAmt);
	}

	/** Get IBS UF Tax Dev. Amt.
		@return Indicates the IBS UF Tax Dev. Amt
	  */
	public BigDecimal getLBR_IBS_UF_TaxDevAmt()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_IBS_UF_TaxDevAmt);
		return bd;
	}

	/** Set IBS UF Tax Rate.
		@param LBR_IBS_UF_TaxRate Indicates the IBS UF Tax Rate
	*/
	public void setLBR_IBS_UF_TaxRate (BigDecimal LBR_IBS_UF_TaxRate)
	{
		set_Value (COLUMNNAME_LBR_IBS_UF_TaxRate, LBR_IBS_UF_TaxRate);
	}

	/** Get IBS UF Tax Rate.
		@return Indicates the IBS UF Tax Rate
	  */
	public BigDecimal getLBR_IBS_UF_TaxRate()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_IBS_UF_TaxRate);
		return bd;
	}

	/** Set IBS UF Tax Red. Efet. Rate.
		@param LBR_IBS_UF_TaxRedEfetRate Indicates the IBS UF Tax Red. Efet. Rate
	*/
	public void setLBR_IBS_UF_TaxRedEfetRate (BigDecimal LBR_IBS_UF_TaxRedEfetRate)
	{
		set_Value (COLUMNNAME_LBR_IBS_UF_TaxRedEfetRate, LBR_IBS_UF_TaxRedEfetRate);
	}

	/** Get IBS UF Tax Red. Efet. Rate.
		@return Indicates the IBS UF Tax Red. Efet. Rate
	  */
	public BigDecimal getLBR_IBS_UF_TaxRedEfetRate()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_IBS_UF_TaxRedEfetRate);
		return bd;
	}

	/** Set IBS UF Tax Red. Rate.
		@param LBR_IBS_UF_TaxRedRate Indicates the IBS UF Tax Red. Rate
	*/
	public void setLBR_IBS_UF_TaxRedRate (BigDecimal LBR_IBS_UF_TaxRedRate)
	{
		set_Value (COLUMNNAME_LBR_IBS_UF_TaxRedRate, LBR_IBS_UF_TaxRedRate);
	}

	/** Get IBS UF Tax Red. Rate.
		@return Indicates the IBS UF Tax Red. Rate
	  */
	public BigDecimal getLBR_IBS_UF_TaxRedRate()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_IBS_UF_TaxRedRate);
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
		return bd;
	}
}