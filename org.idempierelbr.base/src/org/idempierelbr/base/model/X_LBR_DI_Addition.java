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
import org.compiere.util.KeyNamePair;

/** Generated Model for LBR_DI_Addition
 *  @author iDempiere (generated)
 *  @version Release 11 - $Id$ */
@org.adempiere.base.Model(table="LBR_DI_Addition")
public class X_LBR_DI_Addition extends PO implements I_LBR_DI_Addition, I_Persistent
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20240603L;

    /** Standard Constructor */
    public X_LBR_DI_Addition (Properties ctx, int LBR_DI_Addition_ID, String trxName)
    {
      super (ctx, LBR_DI_Addition_ID, trxName);
      /** if (LBR_DI_Addition_ID == 0)
        {
			setLBR_BP_Exporter_ID (0);
			setLBR_DI_Addition_ID (0);
			setLBR_DI_ID (0);
			setSeqNo (0);
// @SQL=SELECT COALESCE(MAX(SeqNo),0)+1 AS DefaultValue FROM LBR_DI_Addition WHERE LBR_DI_ID=@LBR_DI_ID@
        } */
    }

    /** Standard Constructor */
    public X_LBR_DI_Addition (Properties ctx, int LBR_DI_Addition_ID, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_DI_Addition_ID, trxName, virtualColumns);
      /** if (LBR_DI_Addition_ID == 0)
        {
			setLBR_BP_Exporter_ID (0);
			setLBR_DI_Addition_ID (0);
			setLBR_DI_ID (0);
			setSeqNo (0);
// @SQL=SELECT COALESCE(MAX(SeqNo),0)+1 AS DefaultValue FROM LBR_DI_Addition WHERE LBR_DI_ID=@LBR_DI_ID@
        } */
    }

    /** Standard Constructor */
    public X_LBR_DI_Addition (Properties ctx, String LBR_DI_Addition_UU, String trxName)
    {
      super (ctx, LBR_DI_Addition_UU, trxName);
      /** if (LBR_DI_Addition_UU == null)
        {
			setLBR_BP_Exporter_ID (0);
			setLBR_DI_Addition_ID (0);
			setLBR_DI_ID (0);
			setSeqNo (0);
// @SQL=SELECT COALESCE(MAX(SeqNo),0)+1 AS DefaultValue FROM LBR_DI_Addition WHERE LBR_DI_ID=@LBR_DI_ID@
        } */
    }

    /** Standard Constructor */
    public X_LBR_DI_Addition (Properties ctx, String LBR_DI_Addition_UU, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_DI_Addition_UU, trxName, virtualColumns);
      /** if (LBR_DI_Addition_UU == null)
        {
			setLBR_BP_Exporter_ID (0);
			setLBR_DI_Addition_ID (0);
			setLBR_DI_ID (0);
			setSeqNo (0);
// @SQL=SELECT COALESCE(MAX(SeqNo),0)+1 AS DefaultValue FROM LBR_DI_Addition WHERE LBR_DI_ID=@LBR_DI_ID@
        } */
    }

    /** Load Constructor */
    public X_LBR_DI_Addition (Properties ctx, ResultSet rs, String trxName)
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
      StringBuilder sb = new StringBuilder ("X_LBR_DI_Addition[")
        .append(get_ID()).append("]");
      return sb.toString();
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

	public org.compiere.model.I_C_BPartner getLBR_BP_Exporter() throws RuntimeException
	{
		return (org.compiere.model.I_C_BPartner)MTable.get(getCtx(), org.compiere.model.I_C_BPartner.Table_ID)
			.getPO(getLBR_BP_Exporter_ID(), get_TrxName());
	}

	/** Set Business Partner (Exporter).
		@param LBR_BP_Exporter_ID Identifies a Business Partner
	*/
	public void setLBR_BP_Exporter_ID (int LBR_BP_Exporter_ID)
	{
		if (LBR_BP_Exporter_ID < 1)
			set_Value (COLUMNNAME_LBR_BP_Exporter_ID, null);
		else
			set_Value (COLUMNNAME_LBR_BP_Exporter_ID, Integer.valueOf(LBR_BP_Exporter_ID));
	}

	/** Get Business Partner (Exporter).
		@return Identifies a Business Partner
	  */
	public int getLBR_BP_Exporter_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_BP_Exporter_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.compiere.model.I_C_BPartner getLBR_BP_Manufacturer() throws RuntimeException
	{
		return (org.compiere.model.I_C_BPartner)MTable.get(getCtx(), org.compiere.model.I_C_BPartner.Table_ID)
			.getPO(getLBR_BP_Manufacturer_ID(), get_TrxName());
	}

	/** Set Business Partner (Manufacturer).
		@param LBR_BP_Manufacturer_ID Identifies a Business Partner
	*/
	public void setLBR_BP_Manufacturer_ID (int LBR_BP_Manufacturer_ID)
	{
		if (LBR_BP_Manufacturer_ID < 1)
			set_Value (COLUMNNAME_LBR_BP_Manufacturer_ID, null);
		else
			set_Value (COLUMNNAME_LBR_BP_Manufacturer_ID, Integer.valueOf(LBR_BP_Manufacturer_ID));
	}

	/** Get Business Partner (Manufacturer).
		@return Identifies a Business Partner
	  */
	public int getLBR_BP_Manufacturer_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_BP_Manufacturer_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
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

	/** Set Import Declaration (DI) Addition.
		@param LBR_DI_Addition_UU Identifies an Import Declaration (DI) Addiction
	*/
	public void setLBR_DI_Addition_UU (String LBR_DI_Addition_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_DI_Addition_UU, LBR_DI_Addition_UU);
	}

	/** Get Import Declaration (DI) Addition.
		@return Identifies an Import Declaration (DI) Addiction
	  */
	public String getLBR_DI_Addition_UU()
	{
		return (String)get_Value(COLUMNNAME_LBR_DI_Addition_UU);
	}

	public I_LBR_DI getLBR_DI() throws RuntimeException
	{
		return (I_LBR_DI)MTable.get(getCtx(), I_LBR_DI.Table_ID)
			.getPO(getLBR_DI_ID(), get_TrxName());
	}

	/** Set Import Declaration (DI).
		@param LBR_DI_ID Identifies an Import Declaration (DI)
	*/
	public void setLBR_DI_ID (int LBR_DI_ID)
	{
		if (LBR_DI_ID < 1)
			set_ValueNoCheck (COLUMNNAME_LBR_DI_ID, null);
		else
			set_ValueNoCheck (COLUMNNAME_LBR_DI_ID, Integer.valueOf(LBR_DI_ID));
	}

	/** Get Import Declaration (DI).
		@return Identifies an Import Declaration (DI)
	  */
	public int getLBR_DI_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_DI_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
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

    /** Get Record ID/ColumnName
        @return ID/ColumnName pair
      */
    public KeyNamePair getKeyNamePair()
    {
        return new KeyNamePair(get_ID(), String.valueOf(getSeqNo()));
    }
}