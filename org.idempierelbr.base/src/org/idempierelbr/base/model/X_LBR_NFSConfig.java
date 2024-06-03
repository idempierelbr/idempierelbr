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

/** Generated Model for LBR_NFSConfig
 *  @author iDempiere (generated)
 *  @version Release 11 - $Id$ */
@org.adempiere.base.Model(table="LBR_NFSConfig")
public class X_LBR_NFSConfig extends PO implements I_LBR_NFSConfig, I_Persistent
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20240603L;

    /** Standard Constructor */
    public X_LBR_NFSConfig (Properties ctx, int LBR_NFSConfig_ID, String trxName)
    {
      super (ctx, LBR_NFSConfig_ID, trxName);
      /** if (LBR_NFSConfig_ID == 0)
        {
			setLBR_NFSConfig_ID (0);
			setLBR_NFSModel (null);
// --
			setLBR_ProcessingType (null);
// A
        } */
    }

    /** Standard Constructor */
    public X_LBR_NFSConfig (Properties ctx, int LBR_NFSConfig_ID, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_NFSConfig_ID, trxName, virtualColumns);
      /** if (LBR_NFSConfig_ID == 0)
        {
			setLBR_NFSConfig_ID (0);
			setLBR_NFSModel (null);
// --
			setLBR_ProcessingType (null);
// A
        } */
    }

    /** Standard Constructor */
    public X_LBR_NFSConfig (Properties ctx, String LBR_NFSConfig_UU, String trxName)
    {
      super (ctx, LBR_NFSConfig_UU, trxName);
      /** if (LBR_NFSConfig_UU == null)
        {
			setLBR_NFSConfig_ID (0);
			setLBR_NFSModel (null);
// --
			setLBR_ProcessingType (null);
// A
        } */
    }

    /** Standard Constructor */
    public X_LBR_NFSConfig (Properties ctx, String LBR_NFSConfig_UU, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_NFSConfig_UU, trxName, virtualColumns);
      /** if (LBR_NFSConfig_UU == null)
        {
			setLBR_NFSConfig_ID (0);
			setLBR_NFSModel (null);
// --
			setLBR_ProcessingType (null);
// A
        } */
    }

    /** Load Constructor */
    public X_LBR_NFSConfig (Properties ctx, ResultSet rs, String trxName)
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
      StringBuilder sb = new StringBuilder ("X_LBR_NFSConfig[")
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

	/** Set Configuração de Nota Fiscal de Serviço.
		@param LBR_NFSConfig_ID Configuração de Nota Fiscal de Serviço
	*/
	public void setLBR_NFSConfig_ID (int LBR_NFSConfig_ID)
	{
		if (LBR_NFSConfig_ID < 1)
			set_ValueNoCheck (COLUMNNAME_LBR_NFSConfig_ID, null);
		else
			set_ValueNoCheck (COLUMNNAME_LBR_NFSConfig_ID, Integer.valueOf(LBR_NFSConfig_ID));
	}

	/** Get Configuração de Nota Fiscal de Serviço.
		@return Configuração de Nota Fiscal de Serviço	  */
	public int getLBR_NFSConfig_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_NFSConfig_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_NFSConfig_UU.
		@param LBR_NFSConfig_UU LBR_NFSConfig_UU
	*/
	public void setLBR_NFSConfig_UU (String LBR_NFSConfig_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_NFSConfig_UU, LBR_NFSConfig_UU);
	}

	/** Get LBR_NFSConfig_UU.
		@return LBR_NFSConfig_UU	  */
	public String getLBR_NFSConfig_UU()
	{
		return (String)get_Value(COLUMNNAME_LBR_NFSConfig_UU);
	}

	/** Set Modelo de NFS.
		@param LBR_NFSModel Modelo de NFS
	*/
	public void setLBR_NFSModel (String LBR_NFSModel)
	{
		set_Value (COLUMNNAME_LBR_NFSModel, LBR_NFSModel);
	}

	/** Get Modelo de NFS.
		@return Modelo de NFS	  */
	public String getLBR_NFSModel()
	{
		return (String)get_Value(COLUMNNAME_LBR_NFSModel);
	}

	/** Set Fornecedor de NFS-e para Prefeitura.
		@param LBR_NFSPlayer Fornecedor de NFS-e para Prefeitura
	*/
	public void setLBR_NFSPlayer (String LBR_NFSPlayer)
	{
		set_Value (COLUMNNAME_LBR_NFSPlayer, LBR_NFSPlayer);
	}

	/** Get Fornecedor de NFS-e para Prefeitura.
		@return Fornecedor de NFS-e para Prefeitura	  */
	public String getLBR_NFSPlayer()
	{
		return (String)get_Value(COLUMNNAME_LBR_NFSPlayer);
	}

	/** Asynchronous = A */
	public static final String LBR_PROCESSINGTYPE_Asynchronous = "A";
	/** Synchronous = S */
	public static final String LBR_PROCESSINGTYPE_Synchronous = "S";
	/** Set Processing Type.
		@param LBR_ProcessingType Processing Type
	*/
	public void setLBR_ProcessingType (String LBR_ProcessingType)
	{

		set_Value (COLUMNNAME_LBR_ProcessingType, LBR_ProcessingType);
	}

	/** Get Processing Type.
		@return Processing Type	  */
	public String getLBR_ProcessingType()
	{
		return (String)get_Value(COLUMNNAME_LBR_ProcessingType);
	}
}