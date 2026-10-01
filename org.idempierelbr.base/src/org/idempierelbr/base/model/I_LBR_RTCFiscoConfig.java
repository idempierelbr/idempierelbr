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
package org.idempierelbr.base.model;

import java.math.BigDecimal;
import java.sql.Timestamp;
import org.compiere.model.*;
import org.compiere.util.KeyNamePair;

/** Generated Interface for LBR_RTCFiscoConfig
 *  @author iDempiere (generated) 
 *  @version Release 13
 */
@SuppressWarnings("all")
public interface I_LBR_RTCFiscoConfig 
{

    /** TableName=LBR_RTCFiscoConfig */
    public static final String Table_Name = "LBR_RTCFiscoConfig";

    /** AD_Table_ID=800112 */
    public static final int Table_ID = 800112;

    KeyNamePair Model = new KeyNamePair(Table_ID, Table_Name);

    /** AccessLevel = 2 - Client 
     */
    BigDecimal accessLevel = BigDecimal.valueOf(2);

    /** Load Meta Data */

    /** Column name AD_Client_ID */
    public static final String COLUMNNAME_AD_Client_ID = "AD_Client_ID";

	/** Get Tenant.
	  * Tenant for this installation.
	  */
	public int getAD_Client_ID();

    /** Column name AD_Org_ID */
    public static final String COLUMNNAME_AD_Org_ID = "AD_Org_ID";

	/** Set Organization.
	  * Organizational entity within tenant
	  */
	public void setAD_Org_ID (int AD_Org_ID);

	/** Get Organization.
	  * Organizational entity within tenant
	  */
	public int getAD_Org_ID();

    /** Column name Created */
    public static final String COLUMNNAME_Created = "Created";

	/** Get Created.
	  * Date this record was created
	  */
	public Timestamp getCreated();

    /** Column name CreatedBy */
    public static final String COLUMNNAME_CreatedBy = "CreatedBy";

	/** Get Created By.
	  * User who created this records
	  */
	public int getCreatedBy();

    /** Column name IsActive */
    public static final String COLUMNNAME_IsActive = "IsActive";

	/** Set Active.
	  * The record is active in the system
	  */
	public void setIsActive (boolean IsActive);

	/** Get Active.
	  * The record is active in the system
	  */
	public boolean isActive();

    /** Column name LBR_APIBaseURL */
    public static final String COLUMNNAME_LBR_APIBaseURL = "LBR_APIBaseURL";

	/** Set URL Base da API	  */
	public void setLBR_APIBaseURL (String LBR_APIBaseURL);

	/** Get URL Base da API	  */
	public String getLBR_APIBaseURL();

    /** Column name LBR_CNPJBase */
    public static final String COLUMNNAME_LBR_CNPJBase = "LBR_CNPJBase";

	/** Set CNPJ Base	  */
	public void setLBR_CNPJBase (String LBR_CNPJBase);

	/** Get CNPJ Base	  */
	public String getLBR_CNPJBase();

    /** Column name LBR_ClientID */
    public static final String COLUMNNAME_LBR_ClientID = "LBR_ClientID";

	/** Set Client ID	  */
	public void setLBR_ClientID (String LBR_ClientID);

	/** Get Client ID	  */
	public String getLBR_ClientID();

    /** Column name LBR_ClientSecret */
    public static final String COLUMNNAME_LBR_ClientSecret = "LBR_ClientSecret";

	/** Set Client Secret	  */
	public void setLBR_ClientSecret (String LBR_ClientSecret);

	/** Get Client Secret	  */
	public String getLBR_ClientSecret();

    /** Column name LBR_RTCFiscoConfig_ID */
    public static final String COLUMNNAME_LBR_RTCFiscoConfig_ID = "LBR_RTCFiscoConfig_ID";

	/** Set Configuração da Integração (RTC/Fisco)	  */
	public void setLBR_RTCFiscoConfig_ID (int LBR_RTCFiscoConfig_ID);

	/** Get Configuração da Integração (RTC/Fisco)	  */
	public int getLBR_RTCFiscoConfig_ID();

    /** Column name LBR_RTCFiscoConfig_UU */
    public static final String COLUMNNAME_LBR_RTCFiscoConfig_UU = "LBR_RTCFiscoConfig_UU";

	/** Set LBR_RTCFiscoConfig_UU	  */
	public void setLBR_RTCFiscoConfig_UU (String LBR_RTCFiscoConfig_UU);

	/** Get LBR_RTCFiscoConfig_UU	  */
	public String getLBR_RTCFiscoConfig_UU();

    /** Column name LBR_RTCTaxType */
    public static final String COLUMNNAME_LBR_RTCTaxType = "LBR_RTCTaxType";

	/** Set Tributo	  */
	public void setLBR_RTCTaxType (String LBR_RTCTaxType);

	/** Get Tributo	  */
	public String getLBR_RTCTaxType();

    /** Column name LBR_TokenURL */
    public static final String COLUMNNAME_LBR_TokenURL = "LBR_TokenURL";

	/** Set URL do Token	  */
	public void setLBR_TokenURL (String LBR_TokenURL);

	/** Get URL do Token	  */
	public String getLBR_TokenURL();

    /** Column name LBR_WebhookBaseURL */
    public static final String COLUMNNAME_LBR_WebhookBaseURL = "LBR_WebhookBaseURL";

	/** Set URL Base do Webhook	  */
	public void setLBR_WebhookBaseURL (String LBR_WebhookBaseURL);

	/** Get URL Base do Webhook	  */
	public String getLBR_WebhookBaseURL();

    /** Column name LBR_WebhookSecret */
    public static final String COLUMNNAME_LBR_WebhookSecret = "LBR_WebhookSecret";

	/** Set Segredo do Webhook	  */
	public void setLBR_WebhookSecret (String LBR_WebhookSecret);

	/** Get Segredo do Webhook	  */
	public String getLBR_WebhookSecret();

    /** Column name Updated */
    public static final String COLUMNNAME_Updated = "Updated";

	/** Get Updated.
	  * Date this record was updated
	  */
	public Timestamp getUpdated();

    /** Column name UpdatedBy */
    public static final String COLUMNNAME_UpdatedBy = "UpdatedBy";

	/** Get Updated By.
	  * User who updated this records
	  */
	public int getUpdatedBy();
}
