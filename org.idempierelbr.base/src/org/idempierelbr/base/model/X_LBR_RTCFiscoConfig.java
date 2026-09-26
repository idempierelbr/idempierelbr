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
import org.compiere.util.KeyNamePair;

/** Generated Model for LBR_RTCFiscoConfig
 *  @author iDempiere (generated)
 *  @version Release 13 - $Id$ */
@org.adempiere.base.Model(table="LBR_RTCFiscoConfig")
public class X_LBR_RTCFiscoConfig extends PO implements I_LBR_RTCFiscoConfig, I_Persistent
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20260924L;

    /** Standard Constructor */
    public X_LBR_RTCFiscoConfig (Properties ctx, int LBR_RTCFiscoConfig_ID, String trxName)
    {
      super (ctx, LBR_RTCFiscoConfig_ID, trxName);
      /** if (LBR_RTCFiscoConfig_ID == 0)
        {
			setLBR_CNPJBase (null);
			setLBR_ClientID (null);
			setLBR_ClientSecret (null);
			setLBR_RTCFiscoConfig_ID (0);
			setLBR_RTCTaxType (null);
			setLBR_WebhookBaseURL (null);
			setLBR_WebhookSecret (null);
        } */
    }

    /** Standard Constructor */
    public X_LBR_RTCFiscoConfig (Properties ctx, int LBR_RTCFiscoConfig_ID, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_RTCFiscoConfig_ID, trxName, virtualColumns);
      /** if (LBR_RTCFiscoConfig_ID == 0)
        {
			setLBR_CNPJBase (null);
			setLBR_ClientID (null);
			setLBR_ClientSecret (null);
			setLBR_RTCFiscoConfig_ID (0);
			setLBR_RTCTaxType (null);
			setLBR_WebhookBaseURL (null);
			setLBR_WebhookSecret (null);
        } */
    }

    /** Standard Constructor */
    public X_LBR_RTCFiscoConfig (Properties ctx, String LBR_RTCFiscoConfig_UU, String trxName)
    {
      super (ctx, LBR_RTCFiscoConfig_UU, trxName);
      /** if (LBR_RTCFiscoConfig_UU == null)
        {
			setLBR_CNPJBase (null);
			setLBR_ClientID (null);
			setLBR_ClientSecret (null);
			setLBR_RTCFiscoConfig_ID (0);
			setLBR_RTCTaxType (null);
			setLBR_WebhookBaseURL (null);
			setLBR_WebhookSecret (null);
        } */
    }

    /** Standard Constructor */
    public X_LBR_RTCFiscoConfig (Properties ctx, String LBR_RTCFiscoConfig_UU, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_RTCFiscoConfig_UU, trxName, virtualColumns);
      /** if (LBR_RTCFiscoConfig_UU == null)
        {
			setLBR_CNPJBase (null);
			setLBR_ClientID (null);
			setLBR_ClientSecret (null);
			setLBR_RTCFiscoConfig_ID (0);
			setLBR_RTCTaxType (null);
			setLBR_WebhookBaseURL (null);
			setLBR_WebhookSecret (null);
        } */
    }

    /** Load Constructor */
    public X_LBR_RTCFiscoConfig (Properties ctx, ResultSet rs, String trxName)
    {
      super (ctx, rs, trxName);
    }

    /** AccessLevel
      * @return 2 - Client
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
      StringBuilder sb = new StringBuilder ("X_LBR_RTCFiscoConfig[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set URL Base da API.
		@param LBR_APIBaseURL URL Base da API
	*/
	public void setLBR_APIBaseURL (String LBR_APIBaseURL)
	{
		set_Value (COLUMNNAME_LBR_APIBaseURL, LBR_APIBaseURL);
	}

	/** Get URL Base da API.
		@return URL Base da API	  */
	public String getLBR_APIBaseURL()
	{
		return (String)get_Value(COLUMNNAME_LBR_APIBaseURL);
	}

	/** Set CNPJ Base.
		@param LBR_CNPJBase CNPJ Base
	*/
	public void setLBR_CNPJBase (String LBR_CNPJBase)
	{
		set_Value (COLUMNNAME_LBR_CNPJBase, LBR_CNPJBase);
	}

	/** Get CNPJ Base.
		@return CNPJ Base	  */
	public String getLBR_CNPJBase()
	{
		return (String)get_Value(COLUMNNAME_LBR_CNPJBase);
	}

    /** Get Record ID/ColumnName
        @return ID/ColumnName pair
      */
    public KeyNamePair getKeyNamePair()
    {
        return new KeyNamePair(get_ID(), getLBR_CNPJBase());
    }

	/** Set Client ID.
		@param LBR_ClientID Client ID
	*/
	public void setLBR_ClientID (String LBR_ClientID)
	{
		set_Value (COLUMNNAME_LBR_ClientID, LBR_ClientID);
	}

	/** Get Client ID.
		@return Client ID	  */
	public String getLBR_ClientID()
	{
		return (String)get_Value(COLUMNNAME_LBR_ClientID);
	}

	/** Set Client Secret.
		@param LBR_ClientSecret Client Secret
	*/
	public void setLBR_ClientSecret (String LBR_ClientSecret)
	{
		set_Value (COLUMNNAME_LBR_ClientSecret, LBR_ClientSecret);
	}

	/** Get Client Secret.
		@return Client Secret	  */
	public String getLBR_ClientSecret()
	{
		return (String)get_Value(COLUMNNAME_LBR_ClientSecret);
	}

	/** Set Configuração da Integração (RTC/Fisco).
		@param LBR_RTCFiscoConfig_ID Configuração da Integração (RTC/Fisco)
	*/
	public void setLBR_RTCFiscoConfig_ID (int LBR_RTCFiscoConfig_ID)
	{
		if (LBR_RTCFiscoConfig_ID < 1)
			set_ValueNoCheck (COLUMNNAME_LBR_RTCFiscoConfig_ID, null);
		else
			set_ValueNoCheck (COLUMNNAME_LBR_RTCFiscoConfig_ID, Integer.valueOf(LBR_RTCFiscoConfig_ID));
	}

	/** Get Configuração da Integração (RTC/Fisco).
		@return Configuração da Integração (RTC/Fisco)	  */
	public int getLBR_RTCFiscoConfig_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_RTCFiscoConfig_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_RTCFiscoConfig_UU.
		@param LBR_RTCFiscoConfig_UU LBR_RTCFiscoConfig_UU
	*/
	public void setLBR_RTCFiscoConfig_UU (String LBR_RTCFiscoConfig_UU)
	{
		set_Value (COLUMNNAME_LBR_RTCFiscoConfig_UU, LBR_RTCFiscoConfig_UU);
	}

	/** Get LBR_RTCFiscoConfig_UU.
		@return LBR_RTCFiscoConfig_UU	  */
	public String getLBR_RTCFiscoConfig_UU()
	{
		return (String)get_Value(COLUMNNAME_LBR_RTCFiscoConfig_UU);
	}

	/** LBR_RTCTaxType AD_Reference_ID=800119 */
	public static final int LBR_RTCTAXTYPE_AD_Reference_ID=800119;
	/** CBS = CBS */
	public static final String LBR_RTCTAXTYPE_CBS = "CBS";
	/** IBS = IBS */
	public static final String LBR_RTCTAXTYPE_IBS = "IBS";
	/** Set Tributo.
		@param LBR_RTCTaxType Tributo
	*/
	public void setLBR_RTCTaxType (String LBR_RTCTaxType)
	{

		set_Value (COLUMNNAME_LBR_RTCTaxType, LBR_RTCTaxType);
	}

	/** Get Tributo.
		@return Tributo	  */
	public String getLBR_RTCTaxType()
	{
		return (String)get_Value(COLUMNNAME_LBR_RTCTaxType);
	}

	/** Set URL do Token.
		@param LBR_TokenURL URL do Token
	*/
	public void setLBR_TokenURL (String LBR_TokenURL)
	{
		set_Value (COLUMNNAME_LBR_TokenURL, LBR_TokenURL);
	}

	/** Get URL do Token.
		@return URL do Token	  */
	public String getLBR_TokenURL()
	{
		return (String)get_Value(COLUMNNAME_LBR_TokenURL);
	}

	/** Set URL Base do Webhook.
		@param LBR_WebhookBaseURL URL Base do Webhook
	*/
	public void setLBR_WebhookBaseURL (String LBR_WebhookBaseURL)
	{
		set_Value (COLUMNNAME_LBR_WebhookBaseURL, LBR_WebhookBaseURL);
	}

	/** Get URL Base do Webhook.
		@return URL Base do Webhook	  */
	public String getLBR_WebhookBaseURL()
	{
		return (String)get_Value(COLUMNNAME_LBR_WebhookBaseURL);
	}

	/** Set Segredo do Webhook.
		@param LBR_WebhookSecret Segredo do Webhook
	*/
	public void setLBR_WebhookSecret (String LBR_WebhookSecret)
	{
		set_Value (COLUMNNAME_LBR_WebhookSecret, LBR_WebhookSecret);
	}

	/** Get Segredo do Webhook.
		@return Segredo do Webhook	  */
	public String getLBR_WebhookSecret()
	{
		return (String)get_Value(COLUMNNAME_LBR_WebhookSecret);
	}
}