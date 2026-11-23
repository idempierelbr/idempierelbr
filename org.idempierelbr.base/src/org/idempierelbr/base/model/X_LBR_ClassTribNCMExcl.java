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
import java.sql.Timestamp;
import java.util.Properties;
import org.compiere.model.*;
import org.compiere.util.KeyNamePair;

/** Generated Model for LBR_ClassTribNCMExcl
 *  @author iDempiere (generated)
 *  @version Release 13 - $Id$ */
@org.adempiere.base.Model(table="LBR_ClassTribNCMExcl")
public class X_LBR_ClassTribNCMExcl extends PO implements I_LBR_ClassTribNCMExcl, I_Persistent
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20261123L;

    /** Standard Constructor */
    public X_LBR_ClassTribNCMExcl (Properties ctx, int LBR_ClassTribNCMExcl_ID, String trxName)
    {
      super (ctx, LBR_ClassTribNCMExcl_ID, trxName);
      /** if (LBR_ClassTribNCMExcl_ID == 0)
        {
			setLBR_ClassTribNCMExcl_ID (0);
			setLBR_ClassTribNCM_ID (0);
			setLBR_NCMCode (null);
			setValidFrom (new Timestamp( System.currentTimeMillis() ));
        } */
    }

    /** Standard Constructor */
    public X_LBR_ClassTribNCMExcl (Properties ctx, int LBR_ClassTribNCMExcl_ID, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_ClassTribNCMExcl_ID, trxName, virtualColumns);
      /** if (LBR_ClassTribNCMExcl_ID == 0)
        {
			setLBR_ClassTribNCMExcl_ID (0);
			setLBR_ClassTribNCM_ID (0);
			setLBR_NCMCode (null);
			setValidFrom (new Timestamp( System.currentTimeMillis() ));
        } */
    }

    /** Standard Constructor */
    public X_LBR_ClassTribNCMExcl (Properties ctx, String LBR_ClassTribNCMExcl_UU, String trxName)
    {
      super (ctx, LBR_ClassTribNCMExcl_UU, trxName);
      /** if (LBR_ClassTribNCMExcl_UU == null)
        {
			setLBR_ClassTribNCMExcl_ID (0);
			setLBR_ClassTribNCM_ID (0);
			setLBR_NCMCode (null);
			setValidFrom (new Timestamp( System.currentTimeMillis() ));
        } */
    }

    /** Standard Constructor */
    public X_LBR_ClassTribNCMExcl (Properties ctx, String LBR_ClassTribNCMExcl_UU, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_ClassTribNCMExcl_UU, trxName, virtualColumns);
      /** if (LBR_ClassTribNCMExcl_UU == null)
        {
			setLBR_ClassTribNCMExcl_ID (0);
			setLBR_ClassTribNCM_ID (0);
			setLBR_NCMCode (null);
			setValidFrom (new Timestamp( System.currentTimeMillis() ));
        } */
    }

    /** Load Constructor */
    public X_LBR_ClassTribNCMExcl (Properties ctx, ResultSet rs, String trxName)
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
      StringBuilder sb = new StringBuilder ("X_LBR_ClassTribNCMExcl[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set Exceção de NCM.
		@param LBR_ClassTribNCMExcl_ID NCM excluído do NCM aplicável da classificação tributária.
	*/
	public void setLBR_ClassTribNCMExcl_ID (int LBR_ClassTribNCMExcl_ID)
	{
		if (LBR_ClassTribNCMExcl_ID < 1)
			set_ValueNoCheck (COLUMNNAME_LBR_ClassTribNCMExcl_ID, null);
		else
			set_ValueNoCheck (COLUMNNAME_LBR_ClassTribNCMExcl_ID, Integer.valueOf(LBR_ClassTribNCMExcl_ID));
	}

	/** Get Exceção de NCM.
		@return NCM excluído do NCM aplicável da classificação tributária.
	  */
	public int getLBR_ClassTribNCMExcl_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_ClassTribNCMExcl_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_ClassTribNCMExcl_UU.
		@param LBR_ClassTribNCMExcl_UU LBR_ClassTribNCMExcl_UU
	*/
	public void setLBR_ClassTribNCMExcl_UU (String LBR_ClassTribNCMExcl_UU)
	{
		set_Value (COLUMNNAME_LBR_ClassTribNCMExcl_UU, LBR_ClassTribNCMExcl_UU);
	}

	/** Get LBR_ClassTribNCMExcl_UU.
		@return LBR_ClassTribNCMExcl_UU	  */
	public String getLBR_ClassTribNCMExcl_UU()
	{
		return (String)get_Value(COLUMNNAME_LBR_ClassTribNCMExcl_UU);
	}

	@Deprecated(since="13") // use better methods with cache
	public I_LBR_ClassTribNCM getLBR_ClassTribNCM() throws RuntimeException
	{
		return (I_LBR_ClassTribNCM)MTable.get(getCtx(), I_LBR_ClassTribNCM.Table_ID)
			.getPO(getLBR_ClassTribNCM_ID(), get_TrxName());
	}

	/** Set NCM Aplicável.
		@param LBR_ClassTribNCM_ID NCM ou prefixo de NCM a que a classificação tributária se aplica (anexos da LC 214/2025).
	*/
	public void setLBR_ClassTribNCM_ID (int LBR_ClassTribNCM_ID)
	{
		if (LBR_ClassTribNCM_ID < 1)
			set_ValueNoCheck (COLUMNNAME_LBR_ClassTribNCM_ID, null);
		else
			set_ValueNoCheck (COLUMNNAME_LBR_ClassTribNCM_ID, Integer.valueOf(LBR_ClassTribNCM_ID));
	}

	/** Get NCM Aplicável.
		@return NCM ou prefixo de NCM a que a classificação tributária se aplica (anexos da LC 214/2025).
	  */
	public int getLBR_ClassTribNCM_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_ClassTribNCM_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Código NCM.
		@param LBR_NCMCode NCM completo ou prefixo (capítulo, posição ou subposição), só dígitos.
	*/
	public void setLBR_NCMCode (String LBR_NCMCode)
	{
		set_Value (COLUMNNAME_LBR_NCMCode, LBR_NCMCode);
	}

	/** Get Código NCM.
		@return NCM completo ou prefixo (capítulo, posição ou subposição), só dígitos.
	  */
	public String getLBR_NCMCode()
	{
		return (String)get_Value(COLUMNNAME_LBR_NCMCode);
	}

    /** Get Record ID/ColumnName
        @return ID/ColumnName pair
      */
    public KeyNamePair getKeyNamePair()
    {
        return new KeyNamePair(get_ID(), getLBR_NCMCode());
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