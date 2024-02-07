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

/** Generated Model for LBR_TaxLine
 *  @author iDempiere (generated) 
 *  @version Release 2.0 - $Id$ */
public class X_LBR_TaxLine extends PO implements I_LBR_TaxLine, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20140128L;

    /** Standard Constructor */
    public X_LBR_TaxLine (Properties ctx, int LBR_TaxLine_ID, String trxName)
    {
      super (ctx, LBR_TaxLine_ID, trxName);
      /** if (LBR_TaxLine_ID == 0)
        {
			setIsTaxIncluded (false);
// N
			setLBR_PostTax (true);
// Y
			setLBR_Tax_ID (0);
			setLBR_TaxLine_ID (0);
			setLBR_TaxName_ID (0);
        } */
    }

    /** Load Constructor */
    public X_LBR_TaxLine (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_TaxLine[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set Price includes Tax.
		@param IsTaxIncluded 
		Tax is included in the price 
	  */
	public void setIsTaxIncluded (boolean IsTaxIncluded)
	{
		set_Value (COLUMNNAME_IsTaxIncluded, Boolean.valueOf(IsTaxIncluded));
	}

	/** Get Price includes Tax.
		@return Tax is included in the price 
	  */
	public boolean isTaxIncluded () 
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

	public I_LBR_LegalMessage getLBR_LegalMessage() throws RuntimeException
    {
		return (I_LBR_LegalMessage)MTable.get(getCtx(), I_LBR_LegalMessage.Table_Name)
			.getPO(getLBR_LegalMessage_ID(), get_TrxName());	}

	/** Set Legal Message.
		@param LBR_LegalMessage_ID 
		Identifies a Legal Message
	  */
	public void setLBR_LegalMessage_ID (int LBR_LegalMessage_ID)
	{
		if (LBR_LegalMessage_ID < 1) 
			set_Value (COLUMNNAME_LBR_LegalMessage_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_LegalMessage_ID, Integer.valueOf(LBR_LegalMessage_ID));
	}

	/** Get Legal Message.
		@return Identifies a Legal Message
	  */
	public int getLBR_LegalMessage_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_LegalMessage_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Post Tax.
		@param LBR_PostTax 
		Indicates if the Tax should be Posted (Account)
	  */
	public void setLBR_PostTax (boolean LBR_PostTax)
	{
		set_Value (COLUMNNAME_LBR_PostTax, Boolean.valueOf(LBR_PostTax));
	}

	/** Get Post Tax.
		@return Indicates if the Tax should be Posted (Account)
	  */
	public boolean isLBR_PostTax () 
	{
		Object oo = get_Value(COLUMNNAME_LBR_PostTax);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Tax Amount.
		@param LBR_TaxAmt 
		Defines the Tax Amount
	  */
	public void setLBR_TaxAmt (BigDecimal LBR_TaxAmt)
	{
		set_Value (COLUMNNAME_LBR_TaxAmt, LBR_TaxAmt);
	}

	/** Get Tax Amount.
		@return Defines the Tax Amount
	  */
	public BigDecimal getLBR_TaxAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_TaxAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Tax Base.
		@param LBR_TaxBase 
		Indicates the Tax Base
	  */
	public void setLBR_TaxBase (BigDecimal LBR_TaxBase)
	{
		set_Value (COLUMNNAME_LBR_TaxBase, LBR_TaxBase);
	}

	/** Get Tax Base.
		@return Indicates the Tax Base
	  */
	public BigDecimal getLBR_TaxBase () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_TaxBase);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Tax Base Amount.
		@param LBR_TaxBaseAmt 
		Defines the Tax Base Amount
	  */
	public void setLBR_TaxBaseAmt (BigDecimal LBR_TaxBaseAmt)
	{
		set_Value (COLUMNNAME_LBR_TaxBaseAmt, LBR_TaxBaseAmt);
	}

	/** Get Tax Base Amount.
		@return Defines the Tax Base Amount
	  */
	public BigDecimal getLBR_TaxBaseAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_TaxBaseAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	public I_LBR_TaxBaseType getLBR_TaxBaseType() throws RuntimeException
    {
		return (I_LBR_TaxBaseType)MTable.get(getCtx(), I_LBR_TaxBaseType.Table_Name)
			.getPO(getLBR_TaxBaseType_ID(), get_TrxName());	}

	/** Set Tax Base Type.
		@param LBR_TaxBaseType_ID Tax Base Type	  */
	public void setLBR_TaxBaseType_ID (int LBR_TaxBaseType_ID)
	{
		if (LBR_TaxBaseType_ID < 1) 
			set_Value (COLUMNNAME_LBR_TaxBaseType_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_TaxBaseType_ID, Integer.valueOf(LBR_TaxBaseType_ID));
	}

	/** Get Tax Base Type.
		@return Tax Base Type	  */
	public int getLBR_TaxBaseType_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_TaxBaseType_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public I_LBR_Tax getLBR_Tax() throws RuntimeException
    {
		return (I_LBR_Tax)MTable.get(getCtx(), I_LBR_Tax.Table_Name)
			.getPO(getLBR_Tax_ID(), get_TrxName());	}

	/** Set Transaction Tax.
		@param LBR_Tax_ID 
		Identifies a transaction tax (document/line)
	  */
	public void setLBR_Tax_ID (int LBR_Tax_ID)
	{
		if (LBR_Tax_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_Tax_ID, null);
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

	/** Set Transaction Tax Line.
		@param LBR_TaxLine_ID 
		Tax Line for the Transaction Tax
	  */
	public void setLBR_TaxLine_ID (int LBR_TaxLine_ID)
	{
		if (LBR_TaxLine_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_TaxLine_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_TaxLine_ID, Integer.valueOf(LBR_TaxLine_ID));
	}

	/** Get Transaction Tax Line.
		@return Tax Line for the Transaction Tax
	  */
	public int getLBR_TaxLine_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_TaxLine_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_TaxLine_UU.
		@param LBR_TaxLine_UU LBR_TaxLine_UU	  */
	public void setLBR_TaxLine_UU (String LBR_TaxLine_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_TaxLine_UU, LBR_TaxLine_UU);
	}

	/** Get LBR_TaxLine_UU.
		@return LBR_TaxLine_UU	  */
	public String getLBR_TaxLine_UU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_TaxLine_UU);
	}

	/** Set Tax List Amount (Flat Rate).
		@param LBR_TaxListAmt 
		Tax List Amount (Flat Rate) stated by law
	  */
	public void setLBR_TaxListAmt (BigDecimal LBR_TaxListAmt)
	{
		set_Value (COLUMNNAME_LBR_TaxListAmt, LBR_TaxListAmt);
	}

	/** Get Tax List Amount (Flat Rate).
		@return Tax List Amount (Flat Rate) stated by law
	  */
	public BigDecimal getLBR_TaxListAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_TaxListAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	public I_LBR_TaxName getLBR_TaxName() throws RuntimeException
    {
		return (I_LBR_TaxName)MTable.get(getCtx(), I_LBR_TaxName.Table_Name)
			.getPO(getLBR_TaxName_ID(), get_TrxName());	}

	/** Set Tax Name.
		@param LBR_TaxName_ID 
		Primary key table LBR_TaxName
	  */
	public void setLBR_TaxName_ID (int LBR_TaxName_ID)
	{
		if (LBR_TaxName_ID < 1) 
			set_Value (COLUMNNAME_LBR_TaxName_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_TaxName_ID, Integer.valueOf(LBR_TaxName_ID));
	}

	/** Get Tax Name.
		@return Primary key table LBR_TaxName
	  */
	public int getLBR_TaxName_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_TaxName_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Tax Rate.
		@param LBR_TaxRate 
		Indicates the Tax Rate
	  */
	public void setLBR_TaxRate (BigDecimal LBR_TaxRate)
	{
		set_Value (COLUMNNAME_LBR_TaxRate, LBR_TaxRate);
	}

	/** Get Tax Rate.
		@return Indicates the Tax Rate
	  */
	public BigDecimal getLBR_TaxRate () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_TaxRate);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	public I_LBR_TaxStatus getLBR_TaxStatus() throws RuntimeException
    {
		return (I_LBR_TaxStatus)MTable.get(getCtx(), I_LBR_TaxStatus.Table_Name)
			.getPO(getLBR_TaxStatus_ID(), get_TrxName());	}

	/** Set Tax Status.
		@param LBR_TaxStatus_ID 
		Brazilian Tax Status
	  */
	public void setLBR_TaxStatus_ID (int LBR_TaxStatus_ID)
	{
		if (LBR_TaxStatus_ID < 1) 
			set_Value (COLUMNNAME_LBR_TaxStatus_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_TaxStatus_ID, Integer.valueOf(LBR_TaxStatus_ID));
	}

	/** Get Tax Status.
		@return Brazilian Tax Status
	  */
	public int getLBR_TaxStatus_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_TaxStatus_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Quantity.
		@param Qty 
		Quantity
	  */
	public void setQty (BigDecimal Qty)
	{
		set_Value (COLUMNNAME_Qty, Qty);
	}

	/** Get Quantity.
		@return Quantity
	  */
	public BigDecimal getQty () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_Qty);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}
}