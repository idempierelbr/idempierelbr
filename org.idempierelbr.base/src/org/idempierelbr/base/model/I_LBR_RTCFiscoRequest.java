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

/** Generated Interface for LBR_RTCFiscoRequest
 *  @author iDempiere (generated) 
 *  @version Release 13
 */
@SuppressWarnings("all")
public interface I_LBR_RTCFiscoRequest 
{

    /** TableName=LBR_RTCFiscoRequest */
    public static final String Table_Name = "LBR_RTCFiscoRequest";

    /** AD_Table_ID=800113 */
    public static final int Table_ID = 800113;

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

    /** Column name LBR_DateRequested */
    public static final String COLUMNNAME_LBR_DateRequested = "LBR_DateRequested";

	/** Set Data da Solicitação	  */
	public void setLBR_DateRequested (Timestamp LBR_DateRequested);

	/** Get Data da Solicitação	  */
	public Timestamp getLBR_DateRequested();

    /** Column name LBR_ErrorCode */
    public static final String COLUMNNAME_LBR_ErrorCode = "LBR_ErrorCode";

	/** Set Código do Erro	  */
	public void setLBR_ErrorCode (String LBR_ErrorCode);

	/** Get Código do Erro	  */
	public String getLBR_ErrorCode();

    /** Column name LBR_ErrorMsg */
    public static final String COLUMNNAME_LBR_ErrorMsg = "LBR_ErrorMsg";

	/** Set Mensagem do Erro	  */
	public void setLBR_ErrorMsg (String LBR_ErrorMsg);

	/** Get Mensagem do Erro	  */
	public String getLBR_ErrorMsg();

    /** Column name LBR_GeneratedAt */
    public static final String COLUMNNAME_LBR_GeneratedAt = "LBR_GeneratedAt";

	/** Set Gerado em	  */
	public void setLBR_GeneratedAt (Timestamp LBR_GeneratedAt);

	/** Get Gerado em	  */
	public Timestamp getLBR_GeneratedAt();

    /** Column name LBR_RTCFiscoConfig_ID */
    public static final String COLUMNNAME_LBR_RTCFiscoConfig_ID = "LBR_RTCFiscoConfig_ID";

	/** Set Configuração da Integração (RTC/Fisco)	  */
	public void setLBR_RTCFiscoConfig_ID (int LBR_RTCFiscoConfig_ID);

	/** Get Configuração da Integração (RTC/Fisco)	  */
	public int getLBR_RTCFiscoConfig_ID();

	@Deprecated(since="13") // use better methods with cache
	public I_LBR_RTCFiscoConfig getLBR_RTCFiscoConfig() throws RuntimeException;

    /** Column name LBR_RTCFiscoReqStatus */
    public static final String COLUMNNAME_LBR_RTCFiscoReqStatus = "LBR_RTCFiscoReqStatus";

	/** Set Status da Solicitação	  */
	public void setLBR_RTCFiscoReqStatus (String LBR_RTCFiscoReqStatus);

	/** Get Status da Solicitação	  */
	public String getLBR_RTCFiscoReqStatus();

    /** Column name LBR_RTCFiscoRequest_ID */
    public static final String COLUMNNAME_LBR_RTCFiscoRequest_ID = "LBR_RTCFiscoRequest_ID";

	/** Set Request (RTC/Fisco)	  */
	public void setLBR_RTCFiscoRequest_ID (int LBR_RTCFiscoRequest_ID);

	/** Get Request (RTC/Fisco)	  */
	public int getLBR_RTCFiscoRequest_ID();

    /** Column name LBR_RTCFiscoRequest_UU */
    public static final String COLUMNNAME_LBR_RTCFiscoRequest_UU = "LBR_RTCFiscoRequest_UU";

	/** Set LBR_RTCFiscoRequest_UU	  */
	public void setLBR_RTCFiscoRequest_UU (String LBR_RTCFiscoRequest_UU);

	/** Get LBR_RTCFiscoRequest_UU	  */
	public String getLBR_RTCFiscoRequest_UU();

    /** Column name LBR_RTCFiscoService */
    public static final String COLUMNNAME_LBR_RTCFiscoService = "LBR_RTCFiscoService";

	/** Set Serviço	  */
	public void setLBR_RTCFiscoService (String LBR_RTCFiscoService);

	/** Get Serviço	  */
	public String getLBR_RTCFiscoService();

    /** Column name LBR_RTCTaxType */
    public static final String COLUMNNAME_LBR_RTCTaxType = "LBR_RTCTaxType";

	/** Set Tributo	  */
	public void setLBR_RTCTaxType (String LBR_RTCTaxType);

	/** Get Tributo	  */
	public String getLBR_RTCTaxType();

    /** Column name LBR_SignedURL */
    public static final String COLUMNNAME_LBR_SignedURL = "LBR_SignedURL";

	/** Set URL Assinada	  */
	public void setLBR_SignedURL (String LBR_SignedURL);

	/** Get URL Assinada	  */
	public String getLBR_SignedURL();

    /** Column name LBR_SignedURLExpiresAt */
    public static final String COLUMNNAME_LBR_SignedURLExpiresAt = "LBR_SignedURLExpiresAt";

	/** Set Expiração da URL Assinada	  */
	public void setLBR_SignedURLExpiresAt (Timestamp LBR_SignedURLExpiresAt);

	/** Get Expiração da URL Assinada	  */
	public Timestamp getLBR_SignedURLExpiresAt();

    /** Column name LBR_TEASeconds */
    public static final String COLUMNNAME_LBR_TEASeconds = "LBR_TEASeconds";

	/** Set Tempo Estimado (Segundos)	  */
	public void setLBR_TEASeconds (int LBR_TEASeconds);

	/** Get Tempo Estimado (Segundos)	  */
	public int getLBR_TEASeconds();

    /** Column name LBR_Ticket */
    public static final String COLUMNNAME_LBR_Ticket = "LBR_Ticket";

	/** Set Ticket da Solicitação	  */
	public void setLBR_Ticket (String LBR_Ticket);

	/** Get Ticket da Solicitação	  */
	public String getLBR_Ticket();

    /** Column name Processed */
    public static final String COLUMNNAME_Processed = "Processed";

	/** Set Processed.
	  * The document has been processed
	  */
	public void setProcessed (boolean Processed);

	/** Get Processed.
	  * The document has been processed
	  */
	public boolean isProcessed();

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
