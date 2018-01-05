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
package org.idempierelbr.nfs.model;

import java.sql.ResultSet;
import java.util.Properties;
import org.compiere.model.*;

/** Generated Model for LBR_NFSeWS
 *  @author iDempiere (generated) 
 *  @version Release 3.1 - $Id$ */
public class X_LBR_NFSeWS extends PO implements I_LBR_NFSeWS, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20170111L;

    /** Standard Constructor */
    public X_LBR_NFSeWS (Properties ctx, int LBR_NFSeWS_ID, String trxName)
    {
      super (ctx, LBR_NFSeWS_ID, trxName);
      /** if (LBR_NFSeWS_ID == 0)
        {
			setLBR_NFSConfig_ID (0);
			setLBR_NFSeWS_ID (0);
			setLBR_NFeEnv (null);
			setName (null);
			setURL (null);
        } */
    }

    /** Load Constructor */
    public X_LBR_NFSeWS (Properties ctx, ResultSet rs, String trxName)
    {
      super (ctx, rs, trxName);
    }

    /** AccessLevel
      * @return 1 - Org 
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
      StringBuffer sb = new StringBuffer ("X_LBR_NFSeWS[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	public I_LBR_NFSConfig getLBR_NFSConfig() throws RuntimeException
    {
		return (I_LBR_NFSConfig)MTable.get(getCtx(), I_LBR_NFSConfig.Table_Name)
			.getPO(getLBR_NFSConfig_ID(), get_TrxName());	}

	/** Set Configuração de Nota Fiscal de Serviço.
		@param LBR_NFSConfig_ID Configuração de Nota Fiscal de Serviço	  */
	public void setLBR_NFSConfig_ID (int LBR_NFSConfig_ID)
	{
		if (LBR_NFSConfig_ID < 1) 
			set_Value (COLUMNNAME_LBR_NFSConfig_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_NFSConfig_ID, Integer.valueOf(LBR_NFSConfig_ID));
	}

	/** Get Configuração de Nota Fiscal de Serviço.
		@return Configuração de Nota Fiscal de Serviço	  */
	public int getLBR_NFSConfig_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_NFSConfig_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set URL de Impressão do DANFE.
		@param LBR_NFSPrintURL URL de Impressão do DANFE	  */
	public void setLBR_NFSPrintURL (String LBR_NFSPrintURL)
	{
		set_Value (COLUMNNAME_LBR_NFSPrintURL, LBR_NFSPrintURL);
	}

	/** Get URL de Impressão do DANFE.
		@return URL de Impressão do DANFE	  */
	public String getLBR_NFSPrintURL () 
	{
		return (String)get_Value(COLUMNNAME_LBR_NFSPrintURL);
	}

	/** Set URL dos Web Services da NFS.
		@param LBR_NFSeWS_ID URL dos Web Services da NFS	  */
	public void setLBR_NFSeWS_ID (int LBR_NFSeWS_ID)
	{
		if (LBR_NFSeWS_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_NFSeWS_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_NFSeWS_ID, Integer.valueOf(LBR_NFSeWS_ID));
	}

	/** Get URL dos Web Services da NFS.
		@return URL dos Web Services da NFS	  */
	public int getLBR_NFSeWS_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_NFSeWS_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_NFSeWS_UU.
		@param LBR_NFSeWS_UU LBR_NFSeWS_UU	  */
	public void setLBR_NFSeWS_UU (String LBR_NFSeWS_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_NFSeWS_UU, LBR_NFSeWS_UU);
	}

	/** Get LBR_NFSeWS_UU.
		@return LBR_NFSeWS_UU	  */
	public String getLBR_NFSeWS_UU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_NFSeWS_UU);
	}

	/** Production = 1 */
	public static final String LBR_NFEENV_Production = "1";
	/** Homologation = 2 */
	public static final String LBR_NFEENV_Homologation = "2";
	/** Set Sefaz NF-e Environment.
		@param LBR_NFeEnv Sefaz NF-e Environment	  */
	public void setLBR_NFeEnv (String LBR_NFeEnv)
	{

		set_Value (COLUMNNAME_LBR_NFeEnv, LBR_NFeEnv);
	}

	/** Get Sefaz NF-e Environment.
		@return Sefaz NF-e Environment	  */
	public String getLBR_NFeEnv () 
	{
		return (String)get_Value(COLUMNNAME_LBR_NFeEnv);
	}

	/** Set Name.
		@param Name 
		Alphanumeric identifier of the entity
	  */
	public void setName (String Name)
	{
		set_Value (COLUMNNAME_Name, Name);
	}

	/** Get Name.
		@return Alphanumeric identifier of the entity
	  */
	public String getName () 
	{
		return (String)get_Value(COLUMNNAME_Name);
	}

	/** Set Password.
		@param Password 
		Password of any length (case sensitive)
	  */
	public void setPassword (String Password)
	{
		set_Value (COLUMNNAME_Password, Password);
	}

	/** Get Password.
		@return Password of any length (case sensitive)
	  */
	public String getPassword () 
	{
		return (String)get_Value(COLUMNNAME_Password);
	}

	/** Set URL.
		@param URL 
		Full URL address - e.g. http://www.idempiere.org
	  */
	public void setURL (String URL)
	{
		set_Value (COLUMNNAME_URL, URL);
	}

	/** Get URL.
		@return Full URL address - e.g. http://www.idempiere.org
	  */
	public String getURL () 
	{
		return (String)get_Value(COLUMNNAME_URL);
	}

	/** Set User Name.
		@param UserName User Name	  */
	public void setUserName (String UserName)
	{
		set_Value (COLUMNNAME_UserName, UserName);
	}

	/** Get User Name.
		@return User Name	  */
	public String getUserName () 
	{
		return (String)get_Value(COLUMNNAME_UserName);
	}

	/** Set Version No.
		@param VersionNo 
		Version Number
	  */
	public void setVersionNo (String VersionNo)
	{
		set_Value (COLUMNNAME_VersionNo, VersionNo);
	}

	/** Get Version No.
		@return Version Number
	  */
	public String getVersionNo () 
	{
		return (String)get_Value(COLUMNNAME_VersionNo);
	}
}