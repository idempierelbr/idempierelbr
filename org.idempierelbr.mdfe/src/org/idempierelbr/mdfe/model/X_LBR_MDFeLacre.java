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

/** Generated Model for LBR_MDFeLacre
 *  @author iDempiere (generated)
 *  @version Release 13 - $Id$ */
@org.adempiere.base.Model(table="LBR_MDFeLacre")
public class X_LBR_MDFeLacre extends PO implements I_LBR_MDFeLacre, I_Persistent
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20260828L;

    /** Standard Constructor */
    public X_LBR_MDFeLacre (Properties ctx, int LBR_MDFeLacre_ID, String trxName)
    {
      super (ctx, LBR_MDFeLacre_ID, trxName);
      /** if (LBR_MDFeLacre_ID == 0)
        {
			setLBR_MDFeLacre_ID (0);
			setLBR_MDFe_ID (0);
			setLBR_NLacre (null);
        } */
    }

    /** Standard Constructor */
    public X_LBR_MDFeLacre (Properties ctx, int LBR_MDFeLacre_ID, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_MDFeLacre_ID, trxName, virtualColumns);
      /** if (LBR_MDFeLacre_ID == 0)
        {
			setLBR_MDFeLacre_ID (0);
			setLBR_MDFe_ID (0);
			setLBR_NLacre (null);
        } */
    }

    /** Standard Constructor */
    public X_LBR_MDFeLacre (Properties ctx, String LBR_MDFeLacre_UU, String trxName)
    {
      super (ctx, LBR_MDFeLacre_UU, trxName);
      /** if (LBR_MDFeLacre_UU == null)
        {
			setLBR_MDFeLacre_ID (0);
			setLBR_MDFe_ID (0);
			setLBR_NLacre (null);
        } */
    }

    /** Standard Constructor */
    public X_LBR_MDFeLacre (Properties ctx, String LBR_MDFeLacre_UU, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_MDFeLacre_UU, trxName, virtualColumns);
      /** if (LBR_MDFeLacre_UU == null)
        {
			setLBR_MDFeLacre_ID (0);
			setLBR_MDFe_ID (0);
			setLBR_NLacre (null);
        } */
    }

    /** Load Constructor */
    public X_LBR_MDFeLacre (Properties ctx, ResultSet rs, String trxName)
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
      StringBuilder sb = new StringBuilder ("X_LBR_MDFeLacre[")
        .append(get_ID()).append(",LBR_NLacre=").append(getLBR_NLacre()).append("]");
      return sb.toString();
    }

	/** LBR_LacreScope */
	/** MDF-e (lacres) = M */
	public static final String LBR_LACRESCOPE_MDF_ELacres = "M";
	/** Modal rodoviario (lacRodo) = R */
	public static final String LBR_LACRESCOPE_ModalRodoviarioLacRodo = "R";
	/** Set Escopo do lacre.
		@param LBR_LacreScope lacres ou lacRodo
	*/
	public void setLBR_LacreScope (String LBR_LacreScope)
	{
		set_Value (COLUMNNAME_LBR_LacreScope, LBR_LacreScope);
	}

	/** Get Escopo do lacre.
		@return lacres ou lacRodo
	  */
	public String getLBR_LacreScope()
	{
		return (String)get_Value(COLUMNNAME_LBR_LacreScope);
	}

	/** Set LBR_MDFeLacre.
		@param LBR_MDFeLacre_ID LBR_MDFeLacre
	*/
	public void setLBR_MDFeLacre_ID (int LBR_MDFeLacre_ID)
	{
		if (LBR_MDFeLacre_ID < 1)
			set_ValueNoCheck (COLUMNNAME_LBR_MDFeLacre_ID, null);
		else
			set_ValueNoCheck (COLUMNNAME_LBR_MDFeLacre_ID, Integer.valueOf(LBR_MDFeLacre_ID));
	}

	/** Get LBR_MDFeLacre.
		@return LBR_MDFeLacre
	  */
	public int getLBR_MDFeLacre_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_MDFeLacre_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_MDFeLacre_UU.
		@param LBR_MDFeLacre_UU LBR_MDFeLacre_UU
	*/
	public void setLBR_MDFeLacre_UU (String LBR_MDFeLacre_UU)
	{
		set_Value (COLUMNNAME_LBR_MDFeLacre_UU, LBR_MDFeLacre_UU);
	}

	/** Get LBR_MDFeLacre_UU.
		@return LBR_MDFeLacre_UU
	  */
	public String getLBR_MDFeLacre_UU()
	{
		return (String)get_Value(COLUMNNAME_LBR_MDFeLacre_UU);
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

	/** Set Numero do lacre.
		@param LBR_NLacre nLacre
	*/
	public void setLBR_NLacre (String LBR_NLacre)
	{
		set_Value (COLUMNNAME_LBR_NLacre, LBR_NLacre);
	}

	/** Get Numero do lacre.
		@return nLacre
	  */
	public String getLBR_NLacre()
	{
		return (String)get_Value(COLUMNNAME_LBR_NLacre);
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
