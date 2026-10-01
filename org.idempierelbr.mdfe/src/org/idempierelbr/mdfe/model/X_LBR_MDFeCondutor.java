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

/** Generated Model for LBR_MDFeCondutor
 *  @author iDempiere (generated)
 *  @version Release 13 - $Id$ */
@org.adempiere.base.Model(table="LBR_MDFeCondutor")
public class X_LBR_MDFeCondutor extends PO implements I_LBR_MDFeCondutor, I_Persistent
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20260828L;

    /** Standard Constructor */
    public X_LBR_MDFeCondutor (Properties ctx, int LBR_MDFeCondutor_ID, String trxName)
    {
      super (ctx, LBR_MDFeCondutor_ID, trxName);
      /** if (LBR_MDFeCondutor_ID == 0)
        {
			setLBR_MDFeCondutor_ID (0);
			setLBR_MDFe_ID (0);
			setName (null);
        } */
    }

    /** Standard Constructor */
    public X_LBR_MDFeCondutor (Properties ctx, int LBR_MDFeCondutor_ID, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_MDFeCondutor_ID, trxName, virtualColumns);
      /** if (LBR_MDFeCondutor_ID == 0)
        {
			setLBR_MDFeCondutor_ID (0);
			setLBR_MDFe_ID (0);
			setName (null);
        } */
    }

    /** Standard Constructor */
    public X_LBR_MDFeCondutor (Properties ctx, String LBR_MDFeCondutor_UU, String trxName)
    {
      super (ctx, LBR_MDFeCondutor_UU, trxName);
      /** if (LBR_MDFeCondutor_UU == null)
        {
			setLBR_MDFeCondutor_ID (0);
			setLBR_MDFe_ID (0);
			setName (null);
        } */
    }

    /** Standard Constructor */
    public X_LBR_MDFeCondutor (Properties ctx, String LBR_MDFeCondutor_UU, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_MDFeCondutor_UU, trxName, virtualColumns);
      /** if (LBR_MDFeCondutor_UU == null)
        {
			setLBR_MDFeCondutor_ID (0);
			setLBR_MDFe_ID (0);
			setName (null);
        } */
    }

    /** Load Constructor */
    public X_LBR_MDFeCondutor (Properties ctx, ResultSet rs, String trxName)
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
      StringBuilder sb = new StringBuilder ("X_LBR_MDFeCondutor[")
        .append(get_ID()).append(",Name=").append(getName()).append("]");
      return sb.toString();
    }

	/** Set CPF.
		@param LBR_CPF condutor/CPF
	*/
	public void setLBR_CPF (String LBR_CPF)
	{
		set_Value (COLUMNNAME_LBR_CPF, LBR_CPF);
	}

	/** Get CPF.
		@return condutor/CPF
	  */
	public String getLBR_CPF()
	{
		return (String)get_Value(COLUMNNAME_LBR_CPF);
	}

	/** Set LBR_MDFeCondutor.
		@param LBR_MDFeCondutor_ID LBR_MDFeCondutor
	*/
	public void setLBR_MDFeCondutor_ID (int LBR_MDFeCondutor_ID)
	{
		if (LBR_MDFeCondutor_ID < 1)
			set_ValueNoCheck (COLUMNNAME_LBR_MDFeCondutor_ID, null);
		else
			set_ValueNoCheck (COLUMNNAME_LBR_MDFeCondutor_ID, Integer.valueOf(LBR_MDFeCondutor_ID));
	}

	/** Get LBR_MDFeCondutor.
		@return LBR_MDFeCondutor
	  */
	public int getLBR_MDFeCondutor_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_MDFeCondutor_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_MDFeCondutor_UU.
		@param LBR_MDFeCondutor_UU LBR_MDFeCondutor_UU
	*/
	public void setLBR_MDFeCondutor_UU (String LBR_MDFeCondutor_UU)
	{
		set_Value (COLUMNNAME_LBR_MDFeCondutor_UU, LBR_MDFeCondutor_UU);
	}

	/** Get LBR_MDFeCondutor_UU.
		@return LBR_MDFeCondutor_UU
	  */
	public String getLBR_MDFeCondutor_UU()
	{
		return (String)get_Value(COLUMNNAME_LBR_MDFeCondutor_UU);
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

	/** Set Nome.
		@param Name condutor/xNome
	*/
	public void setName (String Name)
	{
		set_Value (COLUMNNAME_Name, Name);
	}

	/** Get Nome.
		@return condutor/xNome
	  */
	public String getName()
	{
		return (String)get_Value(COLUMNNAME_Name);
	}

}
