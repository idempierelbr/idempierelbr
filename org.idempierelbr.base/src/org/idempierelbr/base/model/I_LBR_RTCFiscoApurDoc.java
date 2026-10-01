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

/** Generated Interface for LBR_RTCFiscoApurDoc
 *  @author iDempiere (generated) 
 *  @version Release 13
 */
@SuppressWarnings("all")
public interface I_LBR_RTCFiscoApurDoc 
{

    /** TableName=LBR_RTCFiscoApurDoc */
    public static final String Table_Name = "LBR_RTCFiscoApurDoc";

    /** AD_Table_ID=800115 */
    public static final int Table_ID = 800115;

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

    /** Column name LBR_AppropriatedAmt */
    public static final String COLUMNNAME_LBR_AppropriatedAmt = "LBR_AppropriatedAmt";

	/** Set Apropriado	  */
	public void setLBR_AppropriatedAmt (BigDecimal LBR_AppropriatedAmt);

	/** Get Apropriado	  */
	public BigDecimal getLBR_AppropriatedAmt();

    /** Column name LBR_AssessedAmt */
    public static final String COLUMNNAME_LBR_AssessedAmt = "LBR_AssessedAmt";

	/** Set Valor Apurado	  */
	public void setLBR_AssessedAmt (BigDecimal LBR_AssessedAmt);

	/** Get Valor Apurado	  */
	public BigDecimal getLBR_AssessedAmt();

    /** Column name LBR_CreditBalanceAmt */
    public static final String COLUMNNAME_LBR_CreditBalanceAmt = "LBR_CreditBalanceAmt";

	/** Set Saldo Credor	  */
	public void setLBR_CreditBalanceAmt (BigDecimal LBR_CreditBalanceAmt);

	/** Get Saldo Credor	  */
	public BigDecimal getLBR_CreditBalanceAmt();

    /** Column name LBR_DFeChave */
    public static final String COLUMNNAME_LBR_DFeChave = "LBR_DFeChave";

	/** Set Chave de Acesso do Documento	  */
	public void setLBR_DFeChave (String LBR_DFeChave);

	/** Get Chave de Acesso do Documento	  */
	public String getLBR_DFeChave();

    /** Column name LBR_DateIssued */
    public static final String COLUMNNAME_LBR_DateIssued = "LBR_DateIssued";

	/** Set Data de Emissão	  */
	public void setLBR_DateIssued (Timestamp LBR_DateIssued);

	/** Get Data de Emissão	  */
	public Timestamp getLBR_DateIssued();

    /** Column name LBR_DateRegistered */
    public static final String COLUMNNAME_LBR_DateRegistered = "LBR_DateRegistered";

	/** Set Data de Registro	  */
	public void setLBR_DateRegistered (Timestamp LBR_DateRegistered);

	/** Get Data de Registro	  */
	public Timestamp getLBR_DateRegistered();

    /** Column name LBR_DateUpdated */
    public static final String COLUMNNAME_LBR_DateUpdated = "LBR_DateUpdated";

	/** Set Atualizado em (Fisco)	  */
	public void setLBR_DateUpdated (Timestamp LBR_DateUpdated);

	/** Get Atualizado em (Fisco)	  */
	public Timestamp getLBR_DateUpdated();

    /** Column name LBR_DebitBalanceAmt */
    public static final String COLUMNNAME_LBR_DebitBalanceAmt = "LBR_DebitBalanceAmt";

	/** Set Saldo Devedor	  */
	public void setLBR_DebitBalanceAmt (BigDecimal LBR_DebitBalanceAmt);

	/** Get Saldo Devedor	  */
	public BigDecimal getLBR_DebitBalanceAmt();

    /** Column name LBR_Documento */
    public static final String COLUMNNAME_LBR_Documento = "LBR_Documento";

	/** Set Documento	  */
	public void setLBR_Documento (int LBR_Documento);

	/** Get Documento	  */
	public int getLBR_Documento();

    /** Column name LBR_ExcessAmt */
    public static final String COLUMNNAME_LBR_ExcessAmt = "LBR_ExcessAmt";

	/** Set Excedentes	  */
	public void setLBR_ExcessAmt (BigDecimal LBR_ExcessAmt);

	/** Get Excedentes	  */
	public BigDecimal getLBR_ExcessAmt();

    /** Column name LBR_ExtinguishedAmt */
    public static final String COLUMNNAME_LBR_ExtinguishedAmt = "LBR_ExtinguishedAmt";

	/** Set Extinto	  */
	public void setLBR_ExtinguishedAmt (BigDecimal LBR_ExtinguishedAmt);

	/** Get Extinto	  */
	public BigDecimal getLBR_ExtinguishedAmt();

    /** Column name LBR_NonAppropriableAmt */
    public static final String COLUMNNAME_LBR_NonAppropriableAmt = "LBR_NonAppropriableAmt";

	/** Set Inapropriável	  */
	public void setLBR_NonAppropriableAmt (BigDecimal LBR_NonAppropriableAmt);

	/** Get Inapropriável	  */
	public BigDecimal getLBR_NonAppropriableAmt();

    /** Column name LBR_NonEnforceableAmt */
    public static final String COLUMNNAME_LBR_NonEnforceableAmt = "LBR_NonEnforceableAmt";

	/** Set Inexigível	  */
	public void setLBR_NonEnforceableAmt (BigDecimal LBR_NonEnforceableAmt);

	/** Get Inexigível	  */
	public BigDecimal getLBR_NonEnforceableAmt();

    /** Column name LBR_NonUsableAmt */
    public static final String COLUMNNAME_LBR_NonUsableAmt = "LBR_NonUsableAmt";

	/** Set Inutilizável	  */
	public void setLBR_NonUsableAmt (BigDecimal LBR_NonUsableAmt);

	/** Get Inutilizável	  */
	public BigDecimal getLBR_NonUsableAmt();

    /** Column name LBR_Origem */
    public static final String COLUMNNAME_LBR_Origem = "LBR_Origem";

	/** Set Origem	  */
	public void setLBR_Origem (int LBR_Origem);

	/** Get Origem	  */
	public int getLBR_Origem();

    /** Column name LBR_PrescribedAmt */
    public static final String COLUMNNAME_LBR_PrescribedAmt = "LBR_PrescribedAmt";

	/** Set Prescrito	  */
	public void setLBR_PrescribedAmt (BigDecimal LBR_PrescribedAmt);

	/** Get Prescrito	  */
	public BigDecimal getLBR_PrescribedAmt();

    /** Column name LBR_RTCFiscoApurDoc_ID */
    public static final String COLUMNNAME_LBR_RTCFiscoApurDoc_ID = "LBR_RTCFiscoApurDoc_ID";

	/** Set Doc. de Apuração de IBS/CBS (RTC/Fisco)	  */
	public void setLBR_RTCFiscoApurDoc_ID (int LBR_RTCFiscoApurDoc_ID);

	/** Get Doc. de Apuração de IBS/CBS (RTC/Fisco)	  */
	public int getLBR_RTCFiscoApurDoc_ID();

    /** Column name LBR_RTCFiscoApurDoc_UU */
    public static final String COLUMNNAME_LBR_RTCFiscoApurDoc_UU = "LBR_RTCFiscoApurDoc_UU";

	/** Set LBR_RTCFiscoApurDoc_UU	  */
	public void setLBR_RTCFiscoApurDoc_UU (String LBR_RTCFiscoApurDoc_UU);

	/** Get LBR_RTCFiscoApurDoc_UU	  */
	public String getLBR_RTCFiscoApurDoc_UU();

    /** Column name LBR_RTCFiscoApuracao_ID */
    public static final String COLUMNNAME_LBR_RTCFiscoApuracao_ID = "LBR_RTCFiscoApuracao_ID";

	/** Set Apuração de IBS/CBS (RTC/Fisco)	  */
	public void setLBR_RTCFiscoApuracao_ID (int LBR_RTCFiscoApuracao_ID);

	/** Get Apuração de IBS/CBS (RTC/Fisco)	  */
	public int getLBR_RTCFiscoApuracao_ID();

	@Deprecated(since="13") // use better methods with cache
	public I_LBR_RTCFiscoApuracao getLBR_RTCFiscoApuracao() throws RuntimeException;

    /** Column name LBR_RTCFiscoDocType */
    public static final String COLUMNNAME_LBR_RTCFiscoDocType = "LBR_RTCFiscoDocType";

	/** Set Tipo do Documento	  */
	public void setLBR_RTCFiscoDocType (String LBR_RTCFiscoDocType);

	/** Get Tipo do Documento	  */
	public String getLBR_RTCFiscoDocType();

    /** Column name LBR_RTCFiscoRequest_ID */
    public static final String COLUMNNAME_LBR_RTCFiscoRequest_ID = "LBR_RTCFiscoRequest_ID";

	/** Set Request (RTC/Fisco)	  */
	public void setLBR_RTCFiscoRequest_ID (int LBR_RTCFiscoRequest_ID);

	/** Get Request (RTC/Fisco)	  */
	public int getLBR_RTCFiscoRequest_ID();

	@Deprecated(since="13") // use better methods with cache
	public I_LBR_RTCFiscoRequest getLBR_RTCFiscoRequest() throws RuntimeException;

    /** Column name LBR_RefundRequestAmt */
    public static final String COLUMNNAME_LBR_RefundRequestAmt = "LBR_RefundRequestAmt";

	/** Set Pedido de Ressarcimento	  */
	public void setLBR_RefundRequestAmt (BigDecimal LBR_RefundRequestAmt);

	/** Get Pedido de Ressarcimento	  */
	public BigDecimal getLBR_RefundRequestAmt();

    /** Column name LBR_RestoredAmt */
    public static final String COLUMNNAME_LBR_RestoredAmt = "LBR_RestoredAmt";

	/** Set Restabelecido	  */
	public void setLBR_RestoredAmt (BigDecimal LBR_RestoredAmt);

	/** Get Restabelecido	  */
	public BigDecimal getLBR_RestoredAmt();

    /** Column name LBR_SuspendedAmt */
    public static final String COLUMNNAME_LBR_SuspendedAmt = "LBR_SuspendedAmt";

	/** Set Suspenso	  */
	public void setLBR_SuspendedAmt (BigDecimal LBR_SuspendedAmt);

	/** Get Suspenso	  */
	public BigDecimal getLBR_SuspendedAmt();

    /** Column name LBR_ToAppropriateAmt */
    public static final String COLUMNNAME_LBR_ToAppropriateAmt = "LBR_ToAppropriateAmt";

	/** Set A Apropriar	  */
	public void setLBR_ToAppropriateAmt (BigDecimal LBR_ToAppropriateAmt);

	/** Get A Apropriar	  */
	public BigDecimal getLBR_ToAppropriateAmt();

    /** Column name LBR_UsedAmt */
    public static final String COLUMNNAME_LBR_UsedAmt = "LBR_UsedAmt";

	/** Set Utilizado	  */
	public void setLBR_UsedAmt (BigDecimal LBR_UsedAmt);

	/** Get Utilizado	  */
	public BigDecimal getLBR_UsedAmt();

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
