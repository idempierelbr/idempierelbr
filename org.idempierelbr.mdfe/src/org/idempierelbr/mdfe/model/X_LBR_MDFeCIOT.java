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

/** Generated Model for LBR_MDFeCIOT
 *  @author iDempiere (generated)
 *  @version Release 13 - $Id$ */
@org.adempiere.base.Model(table="LBR_MDFeCIOT")
public class X_LBR_MDFeCIOT extends PO implements I_LBR_MDFeCIOT, I_Persistent
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20260828L;

    /** Standard Constructor */
    public X_LBR_MDFeCIOT (Properties ctx, int LBR_MDFeCIOT_ID, String trxName)
    {
      super (ctx, LBR_MDFeCIOT_ID, trxName);
      /** if (LBR_MDFeCIOT_ID == 0)
        {
			setLBR_MDFeCIOT_ID (0);
			setLBR_MDFe_ID (0);
        } */
    }

    /** Standard Constructor */
    public X_LBR_MDFeCIOT (Properties ctx, int LBR_MDFeCIOT_ID, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_MDFeCIOT_ID, trxName, virtualColumns);
      /** if (LBR_MDFeCIOT_ID == 0)
        {
			setLBR_MDFeCIOT_ID (0);
			setLBR_MDFe_ID (0);
        } */
    }

    /** Standard Constructor */
    public X_LBR_MDFeCIOT (Properties ctx, String LBR_MDFeCIOT_UU, String trxName)
    {
      super (ctx, LBR_MDFeCIOT_UU, trxName);
      /** if (LBR_MDFeCIOT_UU == null)
        {
			setLBR_MDFeCIOT_ID (0);
			setLBR_MDFe_ID (0);
        } */
    }

    /** Standard Constructor */
    public X_LBR_MDFeCIOT (Properties ctx, String LBR_MDFeCIOT_UU, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_MDFeCIOT_UU, trxName, virtualColumns);
      /** if (LBR_MDFeCIOT_UU == null)
        {
			setLBR_MDFeCIOT_ID (0);
			setLBR_MDFe_ID (0);
        } */
    }

    /** Load Constructor */
    public X_LBR_MDFeCIOT (Properties ctx, ResultSet rs, String trxName)
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
      StringBuilder sb = new StringBuilder ("X_LBR_MDFeCIOT[")
        .append(get_ID()).append(",LBR_CIOT=").append(getLBR_CIOT()).append("]");
      return sb.toString();
    }

	/** Set CIOT.
		@param LBR_CIOT infCIOT/CIOT
	*/
	public void setLBR_CIOT (String LBR_CIOT)
	{
		set_Value (COLUMNNAME_LBR_CIOT, LBR_CIOT);
	}

	/** Get CIOT.
		@return infCIOT/CIOT
	  */
	public String getLBR_CIOT()
	{
		return (String)get_Value(COLUMNNAME_LBR_CIOT);
	}

	/** Set CNPJ.
		@param LBR_CNPJ CNPJ
	*/
	public void setLBR_CNPJ (String LBR_CNPJ)
	{
		set_Value (COLUMNNAME_LBR_CNPJ, LBR_CNPJ);
	}

	/** Get CNPJ.
		@return CNPJ
	  */
	public String getLBR_CNPJ()
	{
		return (String)get_Value(COLUMNNAME_LBR_CNPJ);
	}

	/** Set CPF.
		@param LBR_CPF CPF
	*/
	public void setLBR_CPF (String LBR_CPF)
	{
		set_Value (COLUMNNAME_LBR_CPF, LBR_CPF);
	}

	/** Get CPF.
		@return CPF
	  */
	public String getLBR_CPF()
	{
		return (String)get_Value(COLUMNNAME_LBR_CPF);
	}

	/** Set LBR_MDFeCIOT.
		@param LBR_MDFeCIOT_ID LBR_MDFeCIOT
	*/
	public void setLBR_MDFeCIOT_ID (int LBR_MDFeCIOT_ID)
	{
		if (LBR_MDFeCIOT_ID < 1)
			set_ValueNoCheck (COLUMNNAME_LBR_MDFeCIOT_ID, null);
		else
			set_ValueNoCheck (COLUMNNAME_LBR_MDFeCIOT_ID, Integer.valueOf(LBR_MDFeCIOT_ID));
	}

	/** Get LBR_MDFeCIOT.
		@return LBR_MDFeCIOT
	  */
	public int getLBR_MDFeCIOT_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_MDFeCIOT_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_MDFeCIOT_UU.
		@param LBR_MDFeCIOT_UU LBR_MDFeCIOT_UU
	*/
	public void setLBR_MDFeCIOT_UU (String LBR_MDFeCIOT_UU)
	{
		set_Value (COLUMNNAME_LBR_MDFeCIOT_UU, LBR_MDFeCIOT_UU);
	}

	/** Get LBR_MDFeCIOT_UU.
		@return LBR_MDFeCIOT_UU
	  */
	public String getLBR_MDFeCIOT_UU()
	{
		return (String)get_Value(COLUMNNAME_LBR_MDFeCIOT_UU);
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
