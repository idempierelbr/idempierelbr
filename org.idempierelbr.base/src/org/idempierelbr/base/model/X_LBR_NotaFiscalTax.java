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

/** Generated Model for LBR_NotaFiscalTax
 *  @author iDempiere (generated)
 *  @version Release 11 - $Id$ */
@org.adempiere.base.Model(table="LBR_NotaFiscalTax")
public class X_LBR_NotaFiscalTax extends PO implements I_LBR_NotaFiscalTax, I_Persistent
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20240603L;

    /** Standard Constructor */
    public X_LBR_NotaFiscalTax (Properties ctx, int LBR_NotaFiscalTax_ID, String trxName)
    {
      super (ctx, LBR_NotaFiscalTax_ID, trxName);
      /** if (LBR_NotaFiscalTax_ID == 0)
        {
			setC_Tax_ID (0);
			setIsTaxIncluded (false);
			setLBR_NotaFiscalTax_ID (0);
			setLBR_NotaFiscal_ID (0);
			setProcessed (false);
			setTaxAmt (Env.ZERO);
			setTaxBaseAmt (Env.ZERO);
        } */
    }

    /** Standard Constructor */
    public X_LBR_NotaFiscalTax (Properties ctx, int LBR_NotaFiscalTax_ID, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_NotaFiscalTax_ID, trxName, virtualColumns);
      /** if (LBR_NotaFiscalTax_ID == 0)
        {
			setC_Tax_ID (0);
			setIsTaxIncluded (false);
			setLBR_NotaFiscalTax_ID (0);
			setLBR_NotaFiscal_ID (0);
			setProcessed (false);
			setTaxAmt (Env.ZERO);
			setTaxBaseAmt (Env.ZERO);
        } */
    }

    /** Standard Constructor */
    public X_LBR_NotaFiscalTax (Properties ctx, String LBR_NotaFiscalTax_UU, String trxName)
    {
      super (ctx, LBR_NotaFiscalTax_UU, trxName);
      /** if (LBR_NotaFiscalTax_UU == null)
        {
			setC_Tax_ID (0);
			setIsTaxIncluded (false);
			setLBR_NotaFiscalTax_ID (0);
			setLBR_NotaFiscal_ID (0);
			setProcessed (false);
			setTaxAmt (Env.ZERO);
			setTaxBaseAmt (Env.ZERO);
        } */
    }

    /** Standard Constructor */
    public X_LBR_NotaFiscalTax (Properties ctx, String LBR_NotaFiscalTax_UU, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_NotaFiscalTax_UU, trxName, virtualColumns);
      /** if (LBR_NotaFiscalTax_UU == null)
        {
			setC_Tax_ID (0);
			setIsTaxIncluded (false);
			setLBR_NotaFiscalTax_ID (0);
			setLBR_NotaFiscal_ID (0);
			setProcessed (false);
			setTaxAmt (Env.ZERO);
			setTaxBaseAmt (Env.ZERO);
        } */
    }

    /** Load Constructor */
    public X_LBR_NotaFiscalTax (Properties ctx, ResultSet rs, String trxName)
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
      StringBuilder sb = new StringBuilder ("X_LBR_NotaFiscalTax[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	public org.compiere.model.I_C_TaxProvider getC_TaxProvider() throws RuntimeException
	{
		return (org.compiere.model.I_C_TaxProvider)MTable.get(getCtx(), org.compiere.model.I_C_TaxProvider.Table_ID)
			.getPO(getC_TaxProvider_ID(), get_TrxName());
	}

	/** Set Tax Provider.
		@param C_TaxProvider_ID Tax Provider
	*/
	public void setC_TaxProvider_ID (int C_TaxProvider_ID)
	{
		if (C_TaxProvider_ID < 1)
			set_ValueNoCheck (COLUMNNAME_C_TaxProvider_ID, null);
		else
			set_ValueNoCheck (COLUMNNAME_C_TaxProvider_ID, Integer.valueOf(C_TaxProvider_ID));
	}

	/** Get Tax Provider.
		@return Tax Provider	  */
	public int getC_TaxProvider_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_TaxProvider_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.compiere.model.I_C_Tax getC_Tax() throws RuntimeException
	{
		return (org.compiere.model.I_C_Tax)MTable.get(getCtx(), org.compiere.model.I_C_Tax.Table_ID)
			.getPO(getC_Tax_ID(), get_TrxName());
	}

	/** Set Tax.
		@param C_Tax_ID Tax identifier
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
	public int getC_Tax_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_Tax_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Price includes Tax.
		@param IsTaxIncluded Tax is included in the price 
	*/
	public void setIsTaxIncluded (boolean IsTaxIncluded)
	{
		set_Value (COLUMNNAME_IsTaxIncluded, Boolean.valueOf(IsTaxIncluded));
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

	/** Set LBR_NotaFiscalTax_ID.
		@param LBR_NotaFiscalTax_ID LBR_NotaFiscalTax_ID
	*/
	public void setLBR_NotaFiscalTax_ID (int LBR_NotaFiscalTax_ID)
	{
		if (LBR_NotaFiscalTax_ID < 1)
			set_ValueNoCheck (COLUMNNAME_LBR_NotaFiscalTax_ID, null);
		else
			set_ValueNoCheck (COLUMNNAME_LBR_NotaFiscalTax_ID, Integer.valueOf(LBR_NotaFiscalTax_ID));
	}

	/** Get LBR_NotaFiscalTax_ID.
		@return LBR_NotaFiscalTax_ID	  */
	public int getLBR_NotaFiscalTax_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_NotaFiscalTax_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_NotaFiscalTax_UU.
		@param LBR_NotaFiscalTax_UU LBR_NotaFiscalTax_UU
	*/
	public void setLBR_NotaFiscalTax_UU (String LBR_NotaFiscalTax_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_NotaFiscalTax_UU, LBR_NotaFiscalTax_UU);
	}

	/** Get LBR_NotaFiscalTax_UU.
		@return LBR_NotaFiscalTax_UU	  */
	public String getLBR_NotaFiscalTax_UU()
	{
		return (String)get_Value(COLUMNNAME_LBR_NotaFiscalTax_UU);
	}

	public I_LBR_NotaFiscal getLBR_NotaFiscal() throws RuntimeException
	{
		return (I_LBR_NotaFiscal)MTable.get(getCtx(), I_LBR_NotaFiscal.Table_ID)
			.getPO(getLBR_NotaFiscal_ID(), get_TrxName());
	}

	/** Set Brazilian Fiscal Invoice (Nota Fiscal).
		@param LBR_NotaFiscal_ID Brazilian Fiscal Invoice (Nota Fiscal) Identifier
	*/
	public void setLBR_NotaFiscal_ID (int LBR_NotaFiscal_ID)
	{
		if (LBR_NotaFiscal_ID < 1)
			set_ValueNoCheck (COLUMNNAME_LBR_NotaFiscal_ID, null);
		else
			set_ValueNoCheck (COLUMNNAME_LBR_NotaFiscal_ID, Integer.valueOf(LBR_NotaFiscal_ID));
	}

	/** Get Brazilian Fiscal Invoice (Nota Fiscal).
		@return Brazilian Fiscal Invoice (Nota Fiscal) Identifier
	  */
	public int getLBR_NotaFiscal_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_NotaFiscal_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Processed.
		@param Processed The document has been processed
	*/
	public void setProcessed (boolean Processed)
	{
		set_Value (COLUMNNAME_Processed, Boolean.valueOf(Processed));
	}

	/** Get Processed.
		@return The document has been processed
	  */
	public boolean isProcessed()
	{
		Object oo = get_Value(COLUMNNAME_Processed);
		if (oo != null)
		{
			 if (oo instanceof Boolean)
				 return ((Boolean)oo).booleanValue();
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Tax Amount.
		@param TaxAmt Tax Amount for a document
	*/
	public void setTaxAmt (BigDecimal TaxAmt)
	{
		set_ValueNoCheck (COLUMNNAME_TaxAmt, TaxAmt);
	}

	/** Get Tax Amount.
		@return Tax Amount for a document
	  */
	public BigDecimal getTaxAmt()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_TaxAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Tax base Amount.
		@param TaxBaseAmt Base for calculating the tax amount
	*/
	public void setTaxBaseAmt (BigDecimal TaxBaseAmt)
	{
		set_ValueNoCheck (COLUMNNAME_TaxBaseAmt, TaxBaseAmt);
	}

	/** Get Tax base Amount.
		@return Base for calculating the tax amount
	  */
	public BigDecimal getTaxBaseAmt()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_TaxBaseAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}
}