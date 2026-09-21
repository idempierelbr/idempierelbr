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
 *****************************************************************************/

/** Generated Model - DO NOT CHANGE */
package org.idempierelbr.mdfe.model;

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.Properties;
import org.compiere.model.*;
import org.compiere.util.Env;
import org.compiere.util.KeyNamePair;

/** Generated Model for LBR_MDFePercurso
 *  @author iDempiere (generated)
 *  @version Release 13 - $Id$ */
@org.adempiere.base.Model(table="LBR_MDFePercurso")
public class X_LBR_MDFePercurso extends PO implements I_LBR_MDFePercurso, I_Persistent
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20260828L;

    /** Standard Constructor */
    public X_LBR_MDFePercurso (Properties ctx, int LBR_MDFePercurso_ID, String trxName)
    {
      super (ctx, LBR_MDFePercurso_ID, trxName);
      /** if (LBR_MDFePercurso_ID == 0)
        {
			setC_Region_ID (0);
			setLBR_MDFePercurso_ID (0);
			setLBR_MDFe_ID (0);
        } */
    }

    /** Standard Constructor */
    public X_LBR_MDFePercurso (Properties ctx, int LBR_MDFePercurso_ID, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_MDFePercurso_ID, trxName, virtualColumns);
      /** if (LBR_MDFePercurso_ID == 0)
        {
			setC_Region_ID (0);
			setLBR_MDFePercurso_ID (0);
			setLBR_MDFe_ID (0);
        } */
    }

    /** Standard Constructor */
    public X_LBR_MDFePercurso (Properties ctx, String LBR_MDFePercurso_UU, String trxName)
    {
      super (ctx, LBR_MDFePercurso_UU, trxName);
      /** if (LBR_MDFePercurso_UU == null)
        {
			setC_Region_ID (0);
			setLBR_MDFePercurso_ID (0);
			setLBR_MDFe_ID (0);
        } */
    }

    /** Standard Constructor */
    public X_LBR_MDFePercurso (Properties ctx, String LBR_MDFePercurso_UU, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_MDFePercurso_UU, trxName, virtualColumns);
      /** if (LBR_MDFePercurso_UU == null)
        {
			setC_Region_ID (0);
			setLBR_MDFePercurso_ID (0);
			setLBR_MDFe_ID (0);
        } */
    }

    /** Load Constructor */
    public X_LBR_MDFePercurso (Properties ctx, ResultSet rs, String trxName)
    {
      super (ctx, rs, trxName);
    }

    /** AccessLevel
      * @return 3 - Client+Organization
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
      StringBuilder sb = new StringBuilder ("X_LBR_MDFePercurso[")
        .append(get_ID()).append(",C_Region_ID=").append(getC_Region_ID()).append("]");
      return sb.toString();
    }

	/** Set UF.
		@param C_Region_ID infPercurso/UFPer
	*/
	public void setC_Region_ID (int C_Region_ID)
	{
		if (C_Region_ID < 1)
			set_Value (COLUMNNAME_C_Region_ID, null);
		else
			set_Value (COLUMNNAME_C_Region_ID, Integer.valueOf(C_Region_ID));
	}

	/** Get UF.
		@return infPercurso/UFPer
	  */
	public int getC_Region_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_Region_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_MDFePercurso.
		@param LBR_MDFePercurso_ID LBR_MDFePercurso
	*/
	public void setLBR_MDFePercurso_ID (int LBR_MDFePercurso_ID)
	{
		if (LBR_MDFePercurso_ID < 1)
			set_ValueNoCheck (COLUMNNAME_LBR_MDFePercurso_ID, null);
		else
			set_ValueNoCheck (COLUMNNAME_LBR_MDFePercurso_ID, Integer.valueOf(LBR_MDFePercurso_ID));
	}

	/** Get LBR_MDFePercurso.
		@return LBR_MDFePercurso
	  */
	public int getLBR_MDFePercurso_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_MDFePercurso_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_MDFePercurso_UU.
		@param LBR_MDFePercurso_UU LBR_MDFePercurso_UU
	*/
	public void setLBR_MDFePercurso_UU (String LBR_MDFePercurso_UU)
	{
		set_Value (COLUMNNAME_LBR_MDFePercurso_UU, LBR_MDFePercurso_UU);
	}

	/** Get LBR_MDFePercurso_UU.
		@return LBR_MDFePercurso_UU
	  */
	public String getLBR_MDFePercurso_UU()
	{
		return (String)get_Value(COLUMNNAME_LBR_MDFePercurso_UU);
	}

	/** Set MDF-e.
		@param LBR_MDFe_ID MDF-e
	*/
	public void setLBR_MDFe_ID (int LBR_MDFe_ID)
	{
		if (LBR_MDFe_ID < 1)
			set_Value (COLUMNNAME_LBR_MDFe_ID, null);
		else
			set_Value (COLUMNNAME_LBR_MDFe_ID, Integer.valueOf(LBR_MDFe_ID));
	}

	/** Get MDF-e.
		@return MDF-e
	  */
	public int getLBR_MDFe_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_MDFe_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Linha.
		@param Line Linha
	*/
	public void setLine (int Line)
	{
		set_Value (COLUMNNAME_Line, Integer.valueOf(Line));
	}

	/** Get Linha.
		@return Linha
	  */
	public int getLine()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_Line);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

}
