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

/** Generated Model for LBR_NFSLotLine
 *  @author iDempiere (generated)
 *  @version Release 11 - $Id$ */
@org.adempiere.base.Model(table="LBR_NFSLotLine")
public class X_LBR_NFSLotLine extends PO implements I_LBR_NFSLotLine, I_Persistent
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20240603L;

    /** Standard Constructor */
    public X_LBR_NFSLotLine (Properties ctx, int LBR_NFSLotLine_ID, String trxName)
    {
      super (ctx, LBR_NFSLotLine_ID, trxName);
      /** if (LBR_NFSLotLine_ID == 0)
        {
			setLBR_NFSLot_ID (0);
			setLBR_NFS_ID (0);
        } */
    }

    /** Standard Constructor */
    public X_LBR_NFSLotLine (Properties ctx, int LBR_NFSLotLine_ID, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_NFSLotLine_ID, trxName, virtualColumns);
      /** if (LBR_NFSLotLine_ID == 0)
        {
			setLBR_NFSLot_ID (0);
			setLBR_NFS_ID (0);
        } */
    }

    /** Standard Constructor */
    public X_LBR_NFSLotLine (Properties ctx, String LBR_NFSLotLine_UU, String trxName)
    {
      super (ctx, LBR_NFSLotLine_UU, trxName);
      /** if (LBR_NFSLotLine_UU == null)
        {
			setLBR_NFSLot_ID (0);
			setLBR_NFS_ID (0);
        } */
    }

    /** Standard Constructor */
    public X_LBR_NFSLotLine (Properties ctx, String LBR_NFSLotLine_UU, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_NFSLotLine_UU, trxName, virtualColumns);
      /** if (LBR_NFSLotLine_UU == null)
        {
			setLBR_NFSLot_ID (0);
			setLBR_NFS_ID (0);
        } */
    }

    /** Load Constructor */
    public X_LBR_NFSLotLine (Properties ctx, ResultSet rs, String trxName)
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
      StringBuilder sb = new StringBuilder ("X_LBR_NFSLotLine[")
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

	/** Set Linha do Lote de RPS.
		@param LBR_NFSLotLine_ID Linha do Lote de RPS
	*/
	public void setLBR_NFSLotLine_ID (int LBR_NFSLotLine_ID)
	{
		if (LBR_NFSLotLine_ID < 1)
			set_ValueNoCheck (COLUMNNAME_LBR_NFSLotLine_ID, null);
		else
			set_ValueNoCheck (COLUMNNAME_LBR_NFSLotLine_ID, Integer.valueOf(LBR_NFSLotLine_ID));
	}

	/** Get Linha do Lote de RPS.
		@return Linha do Lote de RPS	  */
	public int getLBR_NFSLotLine_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_NFSLotLine_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_NFSLotLine_UU.
		@param LBR_NFSLotLine_UU LBR_NFSLotLine_UU
	*/
	public void setLBR_NFSLotLine_UU (String LBR_NFSLotLine_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_NFSLotLine_UU, LBR_NFSLotLine_UU);
	}

	/** Get LBR_NFSLotLine_UU.
		@return LBR_NFSLotLine_UU	  */
	public String getLBR_NFSLotLine_UU()
	{
		return (String)get_Value(COLUMNNAME_LBR_NFSLotLine_UU);
	}

	public I_LBR_NFSLot getLBR_NFSLot() throws RuntimeException
	{
		return (I_LBR_NFSLot)MTable.get(getCtx(), I_LBR_NFSLot.Table_ID)
			.getPO(getLBR_NFSLot_ID(), get_TrxName());
	}

	/** Set Lote de RPS.
		@param LBR_NFSLot_ID Lote de RPS
	*/
	public void setLBR_NFSLot_ID (int LBR_NFSLot_ID)
	{
		if (LBR_NFSLot_ID < 1)
			set_ValueNoCheck (COLUMNNAME_LBR_NFSLot_ID, null);
		else
			set_ValueNoCheck (COLUMNNAME_LBR_NFSLot_ID, Integer.valueOf(LBR_NFSLot_ID));
	}

	/** Get Lote de RPS.
		@return Lote de RPS	  */
	public int getLBR_NFSLot_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_NFSLot_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public I_LBR_NFS getLBR_NFS() throws RuntimeException
	{
		return (I_LBR_NFS)MTable.get(getCtx(), I_LBR_NFS.Table_ID)
			.getPO(getLBR_NFS_ID(), get_TrxName());
	}

	/** Set Nota Fiscal de Serviço.
		@param LBR_NFS_ID Nota Fiscal de Serviço
	*/
	public void setLBR_NFS_ID (int LBR_NFS_ID)
	{
		if (LBR_NFS_ID < 1)
			set_ValueNoCheck (COLUMNNAME_LBR_NFS_ID, null);
		else
			set_ValueNoCheck (COLUMNNAME_LBR_NFS_ID, Integer.valueOf(LBR_NFS_ID));
	}

	/** Get Nota Fiscal de Serviço.
		@return Nota Fiscal de Serviço	  */
	public int getLBR_NFS_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_NFS_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Código de Retorno.
		@param LBR_NFSeStatusCode Código de Retorno
	*/
	public void setLBR_NFSeStatusCode (String LBR_NFSeStatusCode)
	{
		set_Value (COLUMNNAME_LBR_NFSeStatusCode, LBR_NFSeStatusCode);
	}

	/** Get Código de Retorno.
		@return Código de Retorno	  */
	public String getLBR_NFSeStatusCode()
	{
		return (String)get_Value(COLUMNNAME_LBR_NFSeStatusCode);
	}

	/** Set Descrição do Retorno.
		@param LBR_NFSeStatusDescr Descrição do Retorno
	*/
	public void setLBR_NFSeStatusDescr (String LBR_NFSeStatusDescr)
	{
		set_Value (COLUMNNAME_LBR_NFSeStatusDescr, LBR_NFSeStatusDescr);
	}

	/** Get Descrição do Retorno.
		@return Descrição do Retorno	  */
	public String getLBR_NFSeStatusDescr()
	{
		return (String)get_Value(COLUMNNAME_LBR_NFSeStatusDescr);
	}

	/** Set Número da RPS.
		@param LBR_RPSNumero Número da RPS
	*/
	public void setLBR_RPSNumero (String LBR_RPSNumero)
	{
		set_Value (COLUMNNAME_LBR_RPSNumero, LBR_RPSNumero);
	}

	/** Get Número da RPS.
		@return Número da RPS	  */
	public String getLBR_RPSNumero()
	{
		return (String)get_Value(COLUMNNAME_LBR_RPSNumero);
	}
}