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

/** Generated Interface for LBR_NotaFiscalEventLine
 *  @author iDempiere (generated) 
 *  @version Release 11
 */
@SuppressWarnings("all")
public interface I_LBR_NotaFiscalEventLine 
{

    /** TableName=LBR_NotaFiscalEventLine */
    public static final String Table_Name = "LBR_NotaFiscalEventLine";

    /** AD_Table_ID=1000049 */
    public static final int Table_ID = MTable.getTable_ID(Table_Name);

    KeyNamePair Model = new KeyNamePair(Table_ID, Table_Name);

    /** AccessLevel = 1 - Org 
     */
    BigDecimal accessLevel = BigDecimal.valueOf(1);

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

    /** Column name Description */
    public static final String COLUMNNAME_Description = "Description";

	/** Set Description.
	  * Optional short description of the record
	  */
	public void setDescription (String Description);

	/** Get Description.
	  * Optional short description of the record
	  */
	public String getDescription();

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

    /** Column name LBR_CorrectionReason */
    public static final String COLUMNNAME_LBR_CorrectionReason = "LBR_CorrectionReason";

	/** Set Correction Reason	  */
	public void setLBR_CorrectionReason (String LBR_CorrectionReason);

	/** Get Correction Reason	  */
	public String getLBR_CorrectionReason();

    /** Column name LBR_Justification */
    public static final String COLUMNNAME_LBR_Justification = "LBR_Justification";

	/** Set Justification	  */
	public void setLBR_Justification (String LBR_Justification);

	/** Get Justification	  */
	public String getLBR_Justification();

    /** Column name LBR_LotSendingProt */
    public static final String COLUMNNAME_LBR_LotSendingProt = "LBR_LotSendingProt";

	/** Set NF-e Lot Sending Protocol.
	  * Indicates the protocol of the sending process to Sefaz
	  */
	public void setLBR_LotSendingProt (String LBR_LotSendingProt);

	/** Get NF-e Lot Sending Protocol.
	  * Indicates the protocol of the sending process to Sefaz
	  */
	public String getLBR_LotSendingProt();

    /** Column name LBR_NFeEventSeqNo */
    public static final String COLUMNNAME_LBR_NFeEventSeqNo = "LBR_NFeEventSeqNo";

	/** Set NF-e Event Sequence Number	  */
	public void setLBR_NFeEventSeqNo (int LBR_NFeEventSeqNo);

	/** Get NF-e Event Sequence Number	  */
	public int getLBR_NFeEventSeqNo();

    /** Column name LBR_NFeEventType */
    public static final String COLUMNNAME_LBR_NFeEventType = "LBR_NFeEventType";

	/** Set NF-e Event Type	  */
	public void setLBR_NFeEventType (String LBR_NFeEventType);

	/** Get NF-e Event Type	  */
	public String getLBR_NFeEventType();

    /** Column name LBR_NFeID */
    public static final String COLUMNNAME_LBR_NFeID = "LBR_NFeID";

	/** Set NFe ID	  */
	public void setLBR_NFeID (String LBR_NFeID);

	/** Get NFe ID	  */
	public String getLBR_NFeID();

    /** Column name LBR_NFeStatus */
    public static final String COLUMNNAME_LBR_NFeStatus = "LBR_NFeStatus";

	/** Set NFe Status	  */
	public void setLBR_NFeStatus (String LBR_NFeStatus);

	/** Get NFe Status	  */
	public String getLBR_NFeStatus();

    /** Column name LBR_NFeXML_ID */
    public static final String COLUMNNAME_LBR_NFeXML_ID = "LBR_NFeXML_ID";

	/** Set NFe XML	  */
	public void setLBR_NFeXML_ID (int LBR_NFeXML_ID);

	/** Get NFe XML	  */
	public int getLBR_NFeXML_ID();

	public I_LBR_NFeXML getLBR_NFeXML() throws RuntimeException;

    /** Column name LBR_NotaFiscalEventLine_ID */
    public static final String COLUMNNAME_LBR_NotaFiscalEventLine_ID = "LBR_NotaFiscalEventLine_ID";

	/** Set NF-e Event Lot Line.
	  * Identifies a NF-e Event Lot Line
	  */
	public void setLBR_NotaFiscalEventLine_ID (int LBR_NotaFiscalEventLine_ID);

	/** Get NF-e Event Lot Line.
	  * Identifies a NF-e Event Lot Line
	  */
	public int getLBR_NotaFiscalEventLine_ID();

    /** Column name LBR_NotaFiscalEventLine_UU */
    public static final String COLUMNNAME_LBR_NotaFiscalEventLine_UU = "LBR_NotaFiscalEventLine_UU";

	/** Set NF-e Event Lot Line.
	  * Identifies a NF-e Event Lot Line
	  */
	public void setLBR_NotaFiscalEventLine_UU (String LBR_NotaFiscalEventLine_UU);

	/** Get NF-e Event Lot Line.
	  * Identifies a NF-e Event Lot Line
	  */
	public String getLBR_NotaFiscalEventLine_UU();

    /** Column name LBR_NotaFiscalEvent_ID */
    public static final String COLUMNNAME_LBR_NotaFiscalEvent_ID = "LBR_NotaFiscalEvent_ID";

	/** Set NF-e Event Lot.
	  * Identifies a NF-e Event Lot
	  */
	public void setLBR_NotaFiscalEvent_ID (int LBR_NotaFiscalEvent_ID);

	/** Get NF-e Event Lot.
	  * Identifies a NF-e Event Lot
	  */
	public int getLBR_NotaFiscalEvent_ID();

	public I_LBR_NotaFiscalEvent getLBR_NotaFiscalEvent() throws RuntimeException;

    /** Column name LBR_NotaFiscal_ID */
    public static final String COLUMNNAME_LBR_NotaFiscal_ID = "LBR_NotaFiscal_ID";

	/** Set Brazilian Fiscal Invoice (Nota Fiscal).
	  * Brazilian Fiscal Invoice (Nota Fiscal) Identifier
	  */
	public void setLBR_NotaFiscal_ID (int LBR_NotaFiscal_ID);

	/** Get Brazilian Fiscal Invoice (Nota Fiscal).
	  * Brazilian Fiscal Invoice (Nota Fiscal) Identifier
	  */
	public int getLBR_NotaFiscal_ID();

	public I_LBR_NotaFiscal getLBR_NotaFiscal() throws RuntimeException;

    /** Column name LBR_TipoDeManifestacao */
    public static final String COLUMNNAME_LBR_TipoDeManifestacao = "LBR_TipoDeManifestacao";

	/** Set Tipo de Manifestacao	  */
	public void setLBR_TipoDeManifestacao (String LBR_TipoDeManifestacao);

	/** Get Tipo de Manifestacao	  */
	public String getLBR_TipoDeManifestacao();

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
