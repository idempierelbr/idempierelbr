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

/** Generated Model for LBR_MDFeAutXML
 *  @author iDempiere (generated)
 *  @version Release 13 - $Id$ */
@org.adempiere.base.Model(table="LBR_MDFeAutXML")
public class X_LBR_MDFeAutXML extends PO implements I_LBR_MDFeAutXML, I_Persistent
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20260828L;

    /** Standard Constructor */
    public X_LBR_MDFeAutXML (Properties ctx, int LBR_MDFeAutXML_ID, String trxName)
    {
      super (ctx, LBR_MDFeAutXML_ID, trxName);
      /** if (LBR_MDFeAutXML_ID == 0)
        {
			setLBR_MDFeAutXML_ID (0);
			setLBR_MDFe_ID (0);
        } */
    }

    /** Standard Constructor */
    public X_LBR_MDFeAutXML (Properties ctx, int LBR_MDFeAutXML_ID, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_MDFeAutXML_ID, trxName, virtualColumns);
      /** if (LBR_MDFeAutXML_ID == 0)
        {
			setLBR_MDFeAutXML_ID (0);
			setLBR_MDFe_ID (0);
        } */
    }

    /** Standard Constructor */
    public X_LBR_MDFeAutXML (Properties ctx, String LBR_MDFeAutXML_UU, String trxName)
    {
      super (ctx, LBR_MDFeAutXML_UU, trxName);
      /** if (LBR_MDFeAutXML_UU == null)
        {
			setLBR_MDFeAutXML_ID (0);
			setLBR_MDFe_ID (0);
        } */
    }

    /** Standard Constructor */
    public X_LBR_MDFeAutXML (Properties ctx, String LBR_MDFeAutXML_UU, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_MDFeAutXML_UU, trxName, virtualColumns);
      /** if (LBR_MDFeAutXML_UU == null)
        {
			setLBR_MDFeAutXML_ID (0);
			setLBR_MDFe_ID (0);
        } */
    }

    /** Load Constructor */
    public X_LBR_MDFeAutXML (Properties ctx, ResultSet rs, String trxName)
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
      StringBuilder sb = new StringBuilder ("X_LBR_MDFeAutXML[")
        .append(get_ID()).append(",LBR_CNPJ=").append(getLBR_CNPJ()).append("]");
      return sb.toString();
    }

	/** Set CNPJ.
		@param LBR_CNPJ autXML/CNPJ
	*/
	public void setLBR_CNPJ (String LBR_CNPJ)
	{
		set_Value (COLUMNNAME_LBR_CNPJ, LBR_CNPJ);
	}

	/** Get CNPJ.
		@return autXML/CNPJ
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

	/** Set LBR_MDFeAutXML.
		@param LBR_MDFeAutXML_ID LBR_MDFeAutXML
	*/
	public void setLBR_MDFeAutXML_ID (int LBR_MDFeAutXML_ID)
	{
		if (LBR_MDFeAutXML_ID < 1)
			set_ValueNoCheck (COLUMNNAME_LBR_MDFeAutXML_ID, null);
		else
			set_ValueNoCheck (COLUMNNAME_LBR_MDFeAutXML_ID, Integer.valueOf(LBR_MDFeAutXML_ID));
	}

	/** Get LBR_MDFeAutXML.
		@return LBR_MDFeAutXML
	  */
	public int getLBR_MDFeAutXML_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_MDFeAutXML_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_MDFeAutXML_UU.
		@param LBR_MDFeAutXML_UU LBR_MDFeAutXML_UU
	*/
	public void setLBR_MDFeAutXML_UU (String LBR_MDFeAutXML_UU)
	{
		set_Value (COLUMNNAME_LBR_MDFeAutXML_UU, LBR_MDFeAutXML_UU);
	}

	/** Get LBR_MDFeAutXML_UU.
		@return LBR_MDFeAutXML_UU
	  */
	public String getLBR_MDFeAutXML_UU()
	{
		return (String)get_Value(COLUMNNAME_LBR_MDFeAutXML_UU);
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
