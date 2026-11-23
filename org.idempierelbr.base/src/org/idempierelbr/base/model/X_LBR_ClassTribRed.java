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
import java.sql.Timestamp;
import java.util.Properties;
import org.compiere.model.*;
import org.compiere.util.Env;
import org.compiere.util.KeyNamePair;

/** Generated Model for LBR_ClassTribRed
 *  @author iDempiere (generated)
 *  @version Release 13 - $Id$ */
@org.adempiere.base.Model(table="LBR_ClassTribRed")
public class X_LBR_ClassTribRed extends PO implements I_LBR_ClassTribRed, I_Persistent
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20261123L;

    /** Standard Constructor */
    public X_LBR_ClassTribRed (Properties ctx, int LBR_ClassTribRed_ID, String trxName)
    {
      super (ctx, LBR_ClassTribRed_ID, trxName);
      /** if (LBR_ClassTribRed_ID == 0)
        {
			setLBR_ClassTribRed_ID (0);
			setLBR_ClassTrib_IBSCBS_ID (0);
			setLBR_TaxGroup_ID (0);
			setLBR_TaxRedRate (Env.ZERO);
			setValidFrom (new Timestamp( System.currentTimeMillis() ));
        } */
    }

    /** Standard Constructor */
    public X_LBR_ClassTribRed (Properties ctx, int LBR_ClassTribRed_ID, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_ClassTribRed_ID, trxName, virtualColumns);
      /** if (LBR_ClassTribRed_ID == 0)
        {
			setLBR_ClassTribRed_ID (0);
			setLBR_ClassTrib_IBSCBS_ID (0);
			setLBR_TaxGroup_ID (0);
			setLBR_TaxRedRate (Env.ZERO);
			setValidFrom (new Timestamp( System.currentTimeMillis() ));
        } */
    }

    /** Standard Constructor */
    public X_LBR_ClassTribRed (Properties ctx, String LBR_ClassTribRed_UU, String trxName)
    {
      super (ctx, LBR_ClassTribRed_UU, trxName);
      /** if (LBR_ClassTribRed_UU == null)
        {
			setLBR_ClassTribRed_ID (0);
			setLBR_ClassTrib_IBSCBS_ID (0);
			setLBR_TaxGroup_ID (0);
			setLBR_TaxRedRate (Env.ZERO);
			setValidFrom (new Timestamp( System.currentTimeMillis() ));
        } */
    }

    /** Standard Constructor */
    public X_LBR_ClassTribRed (Properties ctx, String LBR_ClassTribRed_UU, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_ClassTribRed_UU, trxName, virtualColumns);
      /** if (LBR_ClassTribRed_UU == null)
        {
			setLBR_ClassTribRed_ID (0);
			setLBR_ClassTrib_IBSCBS_ID (0);
			setLBR_TaxGroup_ID (0);
			setLBR_TaxRedRate (Env.ZERO);
			setValidFrom (new Timestamp( System.currentTimeMillis() ));
        } */
    }

    /** Load Constructor */
    public X_LBR_ClassTribRed (Properties ctx, ResultSet rs, String trxName)
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
      StringBuilder sb = new StringBuilder ("X_LBR_ClassTribRed[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set Redução da Classificação Tributária.
		@param LBR_ClassTribRed_ID Percentual de redução da alíquota do IBS/CBS por tributo e vigência (dado oficial).
	*/
	public void setLBR_ClassTribRed_ID (int LBR_ClassTribRed_ID)
	{
		if (LBR_ClassTribRed_ID < 1)
			set_ValueNoCheck (COLUMNNAME_LBR_ClassTribRed_ID, null);
		else
			set_ValueNoCheck (COLUMNNAME_LBR_ClassTribRed_ID, Integer.valueOf(LBR_ClassTribRed_ID));
	}

	/** Get Redução da Classificação Tributária.
		@return Percentual de redução da alíquota do IBS/CBS por tributo e vigência (dado oficial).
	  */
	public int getLBR_ClassTribRed_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_ClassTribRed_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_ClassTribRed_UU.
		@param LBR_ClassTribRed_UU LBR_ClassTribRed_UU
	*/
	public void setLBR_ClassTribRed_UU (String LBR_ClassTribRed_UU)
	{
		set_Value (COLUMNNAME_LBR_ClassTribRed_UU, LBR_ClassTribRed_UU);
	}

	/** Get LBR_ClassTribRed_UU.
		@return LBR_ClassTribRed_UU	  */
	public String getLBR_ClassTribRed_UU()
	{
		return (String)get_Value(COLUMNNAME_LBR_ClassTribRed_UU);
	}

	@Deprecated(since="13") // use better methods with cache
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
			set_ValueNoCheck (COLUMNNAME_LBR_ClassTrib_IBSCBS_ID, null);
		else
			set_ValueNoCheck (COLUMNNAME_LBR_ClassTrib_IBSCBS_ID, Integer.valueOf(LBR_ClassTrib_IBSCBS_ID));
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

	@Deprecated(since="13") // use better methods with cache
	public I_LBR_TaxGroup getLBR_TaxGroup() throws RuntimeException
	{
		return (I_LBR_TaxGroup)MTable.get(getCtx(), I_LBR_TaxGroup.Table_ID)
			.getPO(getLBR_TaxGroup_ID(), get_TrxName());
	}

	/** Set Tax Group.
		@param LBR_TaxGroup_ID Identifies a NF Tax Group
	*/
	public void setLBR_TaxGroup_ID (int LBR_TaxGroup_ID)
	{
		if (LBR_TaxGroup_ID < 1)
			set_Value (COLUMNNAME_LBR_TaxGroup_ID, null);
		else
			set_Value (COLUMNNAME_LBR_TaxGroup_ID, Integer.valueOf(LBR_TaxGroup_ID));
	}

	/** Get Tax Group.
		@return Identifies a NF Tax Group
	  */
	public int getLBR_TaxGroup_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_TaxGroup_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

    /** Get Record ID/ColumnName
        @return ID/ColumnName pair
      */
    public KeyNamePair getKeyNamePair()
    {
        return new KeyNamePair(get_ID(), String.valueOf(getLBR_TaxGroup_ID()));
    }

	/** Set Tax Red. Rate.
		@param LBR_TaxRedRate Indicates the Tax Red. Rate
	*/
	public void setLBR_TaxRedRate (BigDecimal LBR_TaxRedRate)
	{
		set_Value (COLUMNNAME_LBR_TaxRedRate, LBR_TaxRedRate);
	}

	/** Get Tax Red. Rate.
		@return Indicates the Tax Red. Rate
	  */
	public BigDecimal getLBR_TaxRedRate()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_TaxRedRate);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Valid from.
		@param ValidFrom Valid from including this date (first day)
	*/
	public void setValidFrom (Timestamp ValidFrom)
	{
		set_Value (COLUMNNAME_ValidFrom, ValidFrom);
	}

	/** Get Valid from.
		@return Valid from including this date (first day)
	  */
	public Timestamp getValidFrom()
	{
		return (Timestamp)get_Value(COLUMNNAME_ValidFrom);
	}

	/** Set Valid to.
		@param ValidTo Valid to including this date (last day)
	*/
	public void setValidTo (Timestamp ValidTo)
	{
		set_Value (COLUMNNAME_ValidTo, ValidTo);
	}

	/** Get Valid to.
		@return Valid to including this date (last day)
	  */
	public Timestamp getValidTo()
	{
		return (Timestamp)get_Value(COLUMNNAME_ValidTo);
	}
}