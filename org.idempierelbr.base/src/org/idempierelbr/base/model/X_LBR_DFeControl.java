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

/** Generated Model for LBR_DFeControl
 *  @author iDempiere (generated)
 *  @version Release 13 - $Id$ */
@org.adempiere.base.Model(table="LBR_DFeControl")
public class X_LBR_DFeControl extends PO implements I_LBR_DFeControl, I_Persistent
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20260827L;

    /** Standard Constructor */
    public X_LBR_DFeControl (Properties ctx, int LBR_DFeControl_ID, String trxName)
    {
      super (ctx, LBR_DFeControl_ID, trxName);
      /** if (LBR_DFeControl_ID == 0)
        {
			setLBR_DFeControl_ID (0);
			setLBR_NFeEnv (null);
        } */
    }

    /** Standard Constructor */
    public X_LBR_DFeControl (Properties ctx, int LBR_DFeControl_ID, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_DFeControl_ID, trxName, virtualColumns);
      /** if (LBR_DFeControl_ID == 0)
        {
			setLBR_DFeControl_ID (0);
			setLBR_NFeEnv (null);
        } */
    }

    /** Standard Constructor */
    public X_LBR_DFeControl (Properties ctx, String LBR_DFeControl_UU, String trxName)
    {
      super (ctx, LBR_DFeControl_UU, trxName);
      /** if (LBR_DFeControl_UU == null)
        {
			setLBR_DFeControl_ID (0);
			setLBR_NFeEnv (null);
        } */
    }

    /** Standard Constructor */
    public X_LBR_DFeControl (Properties ctx, String LBR_DFeControl_UU, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_DFeControl_UU, trxName, virtualColumns);
      /** if (LBR_DFeControl_UU == null)
        {
			setLBR_DFeControl_ID (0);
			setLBR_NFeEnv (null);
        } */
    }

    /** Load Constructor */
    public X_LBR_DFeControl (Properties ctx, ResultSet rs, String trxName)
    {
      super (ctx, rs, trxName);
    }

    /** AccessLevel
      * @return 3 - Client - Org
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
      StringBuilder sb = new StringBuilder ("X_LBR_DFeControl[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set Fim do Bloqueio.
		@param LBR_BlockedUntil Fim do Bloqueio
	*/
	public void setLBR_BlockedUntil (Timestamp LBR_BlockedUntil)
	{
		set_Value (COLUMNNAME_LBR_BlockedUntil, LBR_BlockedUntil);
	}

	/** Get Fim do Bloqueio.
		@return Fim do Bloqueio	  */
	public Timestamp getLBR_BlockedUntil()
	{
		return (Timestamp)get_Value(COLUMNNAME_LBR_BlockedUntil);
	}

	/** Set Controle de DF-e.
		@param LBR_DFeControl_ID Controle de DF-e
	*/
	public void setLBR_DFeControl_ID (int LBR_DFeControl_ID)
	{
		if (LBR_DFeControl_ID < 1)
			set_ValueNoCheck (COLUMNNAME_LBR_DFeControl_ID, null);
		else
			set_ValueNoCheck (COLUMNNAME_LBR_DFeControl_ID, Integer.valueOf(LBR_DFeControl_ID));
	}

	/** Get Controle de DF-e.
		@return Controle de DF-e	  */
	public int getLBR_DFeControl_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_DFeControl_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_DFeControl_UU.
		@param LBR_DFeControl_UU LBR_DFeControl_UU
	*/
	public void setLBR_DFeControl_UU (String LBR_DFeControl_UU)
	{
		set_Value (COLUMNNAME_LBR_DFeControl_UU, LBR_DFeControl_UU);
	}

	/** Get LBR_DFeControl_UU.
		@return LBR_DFeControl_UU	  */
	public String getLBR_DFeControl_UU()
	{
		return (String)get_Value(COLUMNNAME_LBR_DFeControl_UU);
	}

	/** Set Last NSU.
		@param LBR_LastNSU Last NSU
	*/
	public void setLBR_LastNSU (String LBR_LastNSU)
	{
		set_Value (COLUMNNAME_LBR_LastNSU, LBR_LastNSU);
	}

	/** Get Last NSU.
		@return Last NSU	  */
	public String getLBR_LastNSU()
	{
		return (String)get_Value(COLUMNNAME_LBR_LastNSU);
	}

	/** Set Último Request.
		@param LBR_LastRequest Último Request
	*/
	public void setLBR_LastRequest (Timestamp LBR_LastRequest)
	{
		set_Value (COLUMNNAME_LBR_LastRequest, LBR_LastRequest);
	}

	/** Get Último Request.
		@return Último Request	  */
	public Timestamp getLBR_LastRequest()
	{
		return (Timestamp)get_Value(COLUMNNAME_LBR_LastRequest);
	}

	/** Set Último Response.
		@param LBR_LastcStat Último Response
	*/
	public void setLBR_LastcStat (String LBR_LastcStat)
	{
		set_Value (COLUMNNAME_LBR_LastcStat, LBR_LastcStat);
	}

	/** Get Último Response.
		@return Último Response	  */
	public String getLBR_LastcStat()
	{
		return (String)get_Value(COLUMNNAME_LBR_LastcStat);
	}

	/** Set Último NSU Conhecido.
		@param LBR_MaxNSU Último NSU Conhecido
	*/
	public void setLBR_MaxNSU (String LBR_MaxNSU)
	{
		set_Value (COLUMNNAME_LBR_MaxNSU, LBR_MaxNSU);
	}

	/** Get Último NSU Conhecido.
		@return Último NSU Conhecido	  */
	public String getLBR_MaxNSU()
	{
		return (String)get_Value(COLUMNNAME_LBR_MaxNSU);
	}

	/** Production = 1 */
	public static final String LBR_NFEENV_Production = "1";
	/** Homologation = 2 */
	public static final String LBR_NFEENV_Homologation = "2";
	/** Set Sefaz NF-e Environment.
		@param LBR_NFeEnv Sefaz NF-e Environment
	*/
	public void setLBR_NFeEnv (String LBR_NFeEnv)
	{

		set_Value (COLUMNNAME_LBR_NFeEnv, LBR_NFeEnv);
	}

	/** Get Sefaz NF-e Environment.
		@return Sefaz NF-e Environment	  */
	public String getLBR_NFeEnv()
	{
		return (String)get_Value(COLUMNNAME_LBR_NFeEnv);
	}

	/** Set Qtd. de Consultas (na Hora Corrente).
		@param LBR_QueryCount Qtd. de Consultas (na Hora Corrente)
	*/
	public void setLBR_QueryCount (int LBR_QueryCount)
	{
		set_Value (COLUMNNAME_LBR_QueryCount, Integer.valueOf(LBR_QueryCount));
	}

	/** Get Qtd. de Consultas (na Hora Corrente).
		@return Qtd. de Consultas (na Hora Corrente)	  */
	public int getLBR_QueryCount()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_QueryCount);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}
}