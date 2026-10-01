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

/** Generated Model for LBR_MDFeAverb
 *  @author iDempiere (generated)
 *  @version Release 13 - $Id$ */
@org.adempiere.base.Model(table="LBR_MDFeAverb")
public class X_LBR_MDFeAverb extends PO implements I_LBR_MDFeAverb, I_Persistent
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20260828L;

    /** Standard Constructor */
    public X_LBR_MDFeAverb (Properties ctx, int LBR_MDFeAverb_ID, String trxName)
    {
      super (ctx, LBR_MDFeAverb_ID, trxName);
      /** if (LBR_MDFeAverb_ID == 0)
        {
			setLBR_MDFeAverb_ID (0);
			setLBR_MDFeSeg_ID (0);
			setLBR_NAver (null);
        } */
    }

    /** Standard Constructor */
    public X_LBR_MDFeAverb (Properties ctx, int LBR_MDFeAverb_ID, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_MDFeAverb_ID, trxName, virtualColumns);
      /** if (LBR_MDFeAverb_ID == 0)
        {
			setLBR_MDFeAverb_ID (0);
			setLBR_MDFeSeg_ID (0);
			setLBR_NAver (null);
        } */
    }

    /** Standard Constructor */
    public X_LBR_MDFeAverb (Properties ctx, String LBR_MDFeAverb_UU, String trxName)
    {
      super (ctx, LBR_MDFeAverb_UU, trxName);
      /** if (LBR_MDFeAverb_UU == null)
        {
			setLBR_MDFeAverb_ID (0);
			setLBR_MDFeSeg_ID (0);
			setLBR_NAver (null);
        } */
    }

    /** Standard Constructor */
    public X_LBR_MDFeAverb (Properties ctx, String LBR_MDFeAverb_UU, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_MDFeAverb_UU, trxName, virtualColumns);
      /** if (LBR_MDFeAverb_UU == null)
        {
			setLBR_MDFeAverb_ID (0);
			setLBR_MDFeSeg_ID (0);
			setLBR_NAver (null);
        } */
    }

    /** Load Constructor */
    public X_LBR_MDFeAverb (Properties ctx, ResultSet rs, String trxName)
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
      StringBuilder sb = new StringBuilder ("X_LBR_MDFeAverb[")
        .append(get_ID()).append(",LBR_NAver=").append(getLBR_NAver()).append("]");
      return sb.toString();
    }

	/** Set LBR_MDFeAverb.
		@param LBR_MDFeAverb_ID LBR_MDFeAverb
	*/
	public void setLBR_MDFeAverb_ID (int LBR_MDFeAverb_ID)
	{
		if (LBR_MDFeAverb_ID < 1)
			set_ValueNoCheck (COLUMNNAME_LBR_MDFeAverb_ID, null);
		else
			set_ValueNoCheck (COLUMNNAME_LBR_MDFeAverb_ID, Integer.valueOf(LBR_MDFeAverb_ID));
	}

	/** Get LBR_MDFeAverb.
		@return LBR_MDFeAverb
	  */
	public int getLBR_MDFeAverb_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_MDFeAverb_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_MDFeAverb_UU.
		@param LBR_MDFeAverb_UU LBR_MDFeAverb_UU
	*/
	public void setLBR_MDFeAverb_UU (String LBR_MDFeAverb_UU)
	{
		set_Value (COLUMNNAME_LBR_MDFeAverb_UU, LBR_MDFeAverb_UU);
	}

	/** Get LBR_MDFeAverb_UU.
		@return LBR_MDFeAverb_UU
	  */
	public String getLBR_MDFeAverb_UU()
	{
		return (String)get_Value(COLUMNNAME_LBR_MDFeAverb_UU);
	}

	/** Set Seguro.
		@param LBR_MDFeSeg_ID Seguro
	*/
	public void setLBR_MDFeSeg_ID (int LBR_MDFeSeg_ID)
	{
		if (LBR_MDFeSeg_ID < 1)
			set_Value (COLUMNNAME_LBR_MDFeSeg_ID, null);
		else
			set_Value (COLUMNNAME_LBR_MDFeSeg_ID, Integer.valueOf(LBR_MDFeSeg_ID));
	}

	/** Get Seguro.
		@return Seguro
	  */
	public int getLBR_MDFeSeg_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_MDFeSeg_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Numero da averbacao.
		@param LBR_NAver nAver
	*/
	public void setLBR_NAver (String LBR_NAver)
	{
		set_Value (COLUMNNAME_LBR_NAver, LBR_NAver);
	}

	/** Get Numero da averbacao.
		@return nAver
	  */
	public String getLBR_NAver()
	{
		return (String)get_Value(COLUMNNAME_LBR_NAver);
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
