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

/** Generated Model for LBR_MDFeMunDescarga
 *  @author iDempiere (generated)
 *  @version Release 13 - $Id$ */
@org.adempiere.base.Model(table="LBR_MDFeMunDescarga")
public class X_LBR_MDFeMunDescarga extends PO implements I_LBR_MDFeMunDescarga, I_Persistent
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20260828L;

    /** Standard Constructor */
    public X_LBR_MDFeMunDescarga (Properties ctx, int LBR_MDFeMunDescarga_ID, String trxName)
    {
      super (ctx, LBR_MDFeMunDescarga_ID, trxName);
      /** if (LBR_MDFeMunDescarga_ID == 0)
        {
			setLBR_MDFeMunDescarga_ID (0);
			setLBR_MDFe_ID (0);
			setLBR_cMun (null);
			setLBR_xMun (null);
        } */
    }

    /** Standard Constructor */
    public X_LBR_MDFeMunDescarga (Properties ctx, int LBR_MDFeMunDescarga_ID, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_MDFeMunDescarga_ID, trxName, virtualColumns);
      /** if (LBR_MDFeMunDescarga_ID == 0)
        {
			setLBR_MDFeMunDescarga_ID (0);
			setLBR_MDFe_ID (0);
			setLBR_cMun (null);
			setLBR_xMun (null);
        } */
    }

    /** Standard Constructor */
    public X_LBR_MDFeMunDescarga (Properties ctx, String LBR_MDFeMunDescarga_UU, String trxName)
    {
      super (ctx, LBR_MDFeMunDescarga_UU, trxName);
      /** if (LBR_MDFeMunDescarga_UU == null)
        {
			setLBR_MDFeMunDescarga_ID (0);
			setLBR_MDFe_ID (0);
			setLBR_cMun (null);
			setLBR_xMun (null);
        } */
    }

    /** Standard Constructor */
    public X_LBR_MDFeMunDescarga (Properties ctx, String LBR_MDFeMunDescarga_UU, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_MDFeMunDescarga_UU, trxName, virtualColumns);
      /** if (LBR_MDFeMunDescarga_UU == null)
        {
			setLBR_MDFeMunDescarga_ID (0);
			setLBR_MDFe_ID (0);
			setLBR_cMun (null);
			setLBR_xMun (null);
        } */
    }

    /** Load Constructor */
    public X_LBR_MDFeMunDescarga (Properties ctx, ResultSet rs, String trxName)
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
      StringBuilder sb = new StringBuilder ("X_LBR_MDFeMunDescarga[")
        .append(get_ID()).append(",LBR_xMun=").append(getLBR_xMun()).append("]");
      return sb.toString();
    }

	/** Set Municipio.
		@param C_City_ID Municipio
	*/
	public void setC_City_ID (int C_City_ID)
	{
		if (C_City_ID < 1)
			set_Value (COLUMNNAME_C_City_ID, null);
		else
			set_Value (COLUMNNAME_C_City_ID, Integer.valueOf(C_City_ID));
	}

	/** Get Municipio.
		@return Municipio
	  */
	public int getC_City_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_City_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_MDFeMunDescarga.
		@param LBR_MDFeMunDescarga_ID LBR_MDFeMunDescarga
	*/
	public void setLBR_MDFeMunDescarga_ID (int LBR_MDFeMunDescarga_ID)
	{
		if (LBR_MDFeMunDescarga_ID < 1)
			set_ValueNoCheck (COLUMNNAME_LBR_MDFeMunDescarga_ID, null);
		else
			set_ValueNoCheck (COLUMNNAME_LBR_MDFeMunDescarga_ID, Integer.valueOf(LBR_MDFeMunDescarga_ID));
	}

	/** Get LBR_MDFeMunDescarga.
		@return LBR_MDFeMunDescarga
	  */
	public int getLBR_MDFeMunDescarga_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_MDFeMunDescarga_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_MDFeMunDescarga_UU.
		@param LBR_MDFeMunDescarga_UU LBR_MDFeMunDescarga_UU
	*/
	public void setLBR_MDFeMunDescarga_UU (String LBR_MDFeMunDescarga_UU)
	{
		set_Value (COLUMNNAME_LBR_MDFeMunDescarga_UU, LBR_MDFeMunDescarga_UU);
	}

	/** Get LBR_MDFeMunDescarga_UU.
		@return LBR_MDFeMunDescarga_UU
	  */
	public String getLBR_MDFeMunDescarga_UU()
	{
		return (String)get_Value(COLUMNNAME_LBR_MDFeMunDescarga_UU);
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

	/** Set Codigo IBGE.
		@param LBR_cMun cMunDescarga
	*/
	public void setLBR_cMun (String LBR_cMun)
	{
		set_Value (COLUMNNAME_LBR_cMun, LBR_cMun);
	}

	/** Get Codigo IBGE.
		@return cMunDescarga
	  */
	public String getLBR_cMun()
	{
		return (String)get_Value(COLUMNNAME_LBR_cMun);
	}

	/** Set Nome do municipio.
		@param LBR_xMun xMunDescarga
	*/
	public void setLBR_xMun (String LBR_xMun)
	{
		set_Value (COLUMNNAME_LBR_xMun, LBR_xMun);
	}

	/** Get Nome do municipio.
		@return xMunDescarga
	  */
	public String getLBR_xMun()
	{
		return (String)get_Value(COLUMNNAME_LBR_xMun);
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
