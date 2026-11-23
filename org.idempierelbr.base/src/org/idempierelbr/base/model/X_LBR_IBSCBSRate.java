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

/** Generated Model for LBR_IBSCBSRate
 *  @author iDempiere (generated)
 *  @version Release 13 - $Id$ */
@org.adempiere.base.Model(table="LBR_IBSCBSRate")
public class X_LBR_IBSCBSRate extends PO implements I_LBR_IBSCBSRate, I_Persistent
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20261123L;

    /** Standard Constructor */
    public X_LBR_IBSCBSRate (Properties ctx, int LBR_IBSCBSRate_ID, String trxName)
    {
      super (ctx, LBR_IBSCBSRate_ID, trxName);
      /** if (LBR_IBSCBSRate_ID == 0)
        {
			setLBR_IBSCBSRate_ID (0);
			setLBR_TaxGroup_ID (0);
			setLBR_TaxRate (Env.ZERO);
			setValidFrom (new Timestamp( System.currentTimeMillis() ));
        } */
    }

    /** Standard Constructor */
    public X_LBR_IBSCBSRate (Properties ctx, int LBR_IBSCBSRate_ID, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_IBSCBSRate_ID, trxName, virtualColumns);
      /** if (LBR_IBSCBSRate_ID == 0)
        {
			setLBR_IBSCBSRate_ID (0);
			setLBR_TaxGroup_ID (0);
			setLBR_TaxRate (Env.ZERO);
			setValidFrom (new Timestamp( System.currentTimeMillis() ));
        } */
    }

    /** Standard Constructor */
    public X_LBR_IBSCBSRate (Properties ctx, String LBR_IBSCBSRate_UU, String trxName)
    {
      super (ctx, LBR_IBSCBSRate_UU, trxName);
      /** if (LBR_IBSCBSRate_UU == null)
        {
			setLBR_IBSCBSRate_ID (0);
			setLBR_TaxGroup_ID (0);
			setLBR_TaxRate (Env.ZERO);
			setValidFrom (new Timestamp( System.currentTimeMillis() ));
        } */
    }

    /** Standard Constructor */
    public X_LBR_IBSCBSRate (Properties ctx, String LBR_IBSCBSRate_UU, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_IBSCBSRate_UU, trxName, virtualColumns);
      /** if (LBR_IBSCBSRate_UU == null)
        {
			setLBR_IBSCBSRate_ID (0);
			setLBR_TaxGroup_ID (0);
			setLBR_TaxRate (Env.ZERO);
			setValidFrom (new Timestamp( System.currentTimeMillis() ));
        } */
    }

    /** Load Constructor */
    public X_LBR_IBSCBSRate (Properties ctx, ResultSet rs, String trxName)
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
      StringBuilder sb = new StringBuilder ("X_LBR_IBSCBSRate[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	@Deprecated(since="13") // use better methods with cache
	public org.compiere.model.I_C_City getC_City() throws RuntimeException
	{
		return (org.compiere.model.I_C_City)MTable.get(getCtx(), org.compiere.model.I_C_City.Table_ID)
			.getPO(getC_City_ID(), get_TrxName());
	}

	/** Set City.
		@param C_City_ID City
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
	public int getC_City_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_City_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	@Deprecated(since="13") // use better methods with cache
	public org.compiere.model.I_C_Region getC_Region() throws RuntimeException
	{
		return (org.compiere.model.I_C_Region)MTable.get(getCtx(), org.compiere.model.I_C_Region.Table_ID)
			.getPO(getC_Region_ID(), get_TrxName());
	}

	/** Set Region.
		@param C_Region_ID Identifies a geographical Region
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
	public int getC_Region_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_Region_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
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

	/** Set Alíquota de IBS/CBS.
		@param LBR_IBSCBSRate_ID Alíquota do IBS/CBS por tributo, UF, município ou classificação tributária e vigência. Registros de System são oficiais; o da empresa sobrescreve.
	*/
	public void setLBR_IBSCBSRate_ID (int LBR_IBSCBSRate_ID)
	{
		if (LBR_IBSCBSRate_ID < 1)
			set_ValueNoCheck (COLUMNNAME_LBR_IBSCBSRate_ID, null);
		else
			set_ValueNoCheck (COLUMNNAME_LBR_IBSCBSRate_ID, Integer.valueOf(LBR_IBSCBSRate_ID));
	}

	/** Get Alíquota de IBS/CBS.
		@return Alíquota do IBS/CBS por tributo, UF, município ou classificação tributária e vigência. Registros de System são oficiais; o da empresa sobrescreve.
	  */
	public int getLBR_IBSCBSRate_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_IBSCBSRate_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_IBSCBSRate_UU.
		@param LBR_IBSCBSRate_UU LBR_IBSCBSRate_UU
	*/
	public void setLBR_IBSCBSRate_UU (String LBR_IBSCBSRate_UU)
	{
		set_Value (COLUMNNAME_LBR_IBSCBSRate_UU, LBR_IBSCBSRate_UU);
	}

	/** Get LBR_IBSCBSRate_UU.
		@return LBR_IBSCBSRate_UU	  */
	public String getLBR_IBSCBSRate_UU()
	{
		return (String)get_Value(COLUMNNAME_LBR_IBSCBSRate_UU);
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