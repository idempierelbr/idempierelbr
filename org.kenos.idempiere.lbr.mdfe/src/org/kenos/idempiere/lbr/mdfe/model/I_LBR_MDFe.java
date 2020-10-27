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
package org.kenos.idempiere.lbr.mdfe.model;

import java.math.BigDecimal;
import java.sql.Timestamp;
import org.compiere.model.*;
import org.compiere.util.KeyNamePair;

/** Generated Interface for LBR_MDFe
 *  @author iDempiere (generated) 
 *  @version Release 4.1
 */
@SuppressWarnings("all")
public interface I_LBR_MDFe 
{

    /** TableName=LBR_MDFe */
    public static final String Table_Name = "LBR_MDFe";

    /** AD_Table_ID=1120351 */
    public static final int Table_ID = MTable.getTable_ID(Table_Name);

    KeyNamePair Model = new KeyNamePair(Table_ID, Table_Name);

    /** AccessLevel = 3 - Client - Org 
     */
    BigDecimal accessLevel = BigDecimal.valueOf(3);

    /** Load Meta Data */

    /** Column name AD_Client_ID */
    public static final String COLUMNNAME_AD_Client_ID = "AD_Client_ID";

	/** Get Client.
	  * Client/Tenant for this installation.
	  */
	public int getAD_Client_ID();

    /** Column name AD_Org_ID */
    public static final String COLUMNNAME_AD_Org_ID = "AD_Org_ID";

	/** Set Organization.
	  * Organizational entity within client
	  */
	public void setAD_Org_ID (int AD_Org_ID);

	/** Get Organization.
	  * Organizational entity within client
	  */
	public int getAD_Org_ID();

    /** Column name C_City_ID */
    public static final String COLUMNNAME_C_City_ID = "C_City_ID";

	/** Set City.
	  * City
	  */
	public void setC_City_ID (int C_City_ID);

	/** Get City.
	  * City
	  */
	public int getC_City_ID();

	public org.compiere.model.I_C_City getC_City() throws RuntimeException;

    /** Column name C_Region_ID */
    public static final String COLUMNNAME_C_Region_ID = "C_Region_ID";

	/** Set Region.
	  * Identifies a geographical Region
	  */
	public void setC_Region_ID (int C_Region_ID);

	/** Get Region.
	  * Identifies a geographical Region
	  */
	public int getC_Region_ID();

    /** Column name C_SalesRegion_ID */
    public static final String COLUMNNAME_C_SalesRegion_ID = "C_SalesRegion_ID";

	/** Set Sales Region.
	  * Sales coverage region
	  */
	public void setC_SalesRegion_ID (int C_SalesRegion_ID);

	/** Get Sales Region.
	  * Sales coverage region
	  */
	public int getC_SalesRegion_ID();

	public org.compiere.model.I_C_Region getC_SalesRegion() throws RuntimeException;

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

    /** Column name DateDoc */
    public static final String COLUMNNAME_DateDoc = "DateDoc";

	/** Set Document Date.
	  * Date of the Document
	  */
	public void setDateDoc (Timestamp DateDoc);

	/** Get Document Date.
	  * Date of the Document
	  */
	public Timestamp getDateDoc();

    /** Column name DateStartPlan */
    public static final String COLUMNNAME_DateStartPlan = "DateStartPlan";

	/** Set Start Plan.
	  * Planned Start Date
	  */
	public void setDateStartPlan (Timestamp DateStartPlan);

	/** Get Start Plan.
	  * Planned Start Date
	  */
	public Timestamp getDateStartPlan();

    /** Column name DateTrx */
    public static final String COLUMNNAME_DateTrx = "DateTrx";

	/** Set Transaction Date.
	  * Transaction Date
	  */
	public void setDateTrx (Timestamp DateTrx);

	/** Get Transaction Date.
	  * Transaction Date
	  */
	public Timestamp getDateTrx();

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

    /** Column name DocAction */
    public static final String COLUMNNAME_DocAction = "DocAction";

	/** Set Document Action.
	  * The targeted status of the document
	  */
	public void setDocAction (String DocAction);

	/** Get Document Action.
	  * The targeted status of the document
	  */
	public String getDocAction();

    /** Column name DocStatus */
    public static final String COLUMNNAME_DocStatus = "DocStatus";

	/** Set Document Status.
	  * The current status of the document
	  */
	public void setDocStatus (String DocStatus);

	/** Get Document Status.
	  * The current status of the document
	  */
	public String getDocStatus();

    /** Column name DocumentNo */
    public static final String COLUMNNAME_DocumentNo = "DocumentNo";

	/** Set Document No.
	  * Document sequence number of the document
	  */
	public void setDocumentNo (String DocumentNo);

	/** Get Document No.
	  * Document sequence number of the document
	  */
	public String getDocumentNo();

    /** Column name GrandTotal */
    public static final String COLUMNNAME_GrandTotal = "GrandTotal";

	/** Set Grand Total.
	  * Total amount of document
	  */
	public void setGrandTotal (BigDecimal GrandTotal);

	/** Get Grand Total.
	  * Total amount of document
	  */
	public BigDecimal getGrandTotal();

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

    /** Column name LBR_CIOT */
    public static final String COLUMNNAME_LBR_CIOT = "LBR_CIOT";

	/** Set CIOT.
	  * Codigo Identificador da Operação de Transporte
	  */
	public void setLBR_CIOT (String LBR_CIOT);

	/** Get CIOT.
	  * Codigo Identificador da Operação de Transporte
	  */
	public String getLBR_CIOT();

    /** Column name LBR_CSRTHash */
    public static final String COLUMNNAME_LBR_CSRTHash = "LBR_CSRTHash";

	/** Set CSRT Hash.
	  * CSRT Hash is generated using NFe ID and CSRT Code
	  */
	public void setLBR_CSRTHash (String LBR_CSRTHash);

	/** Get CSRT Hash.
	  * CSRT Hash is generated using NFe ID and CSRT Code
	  */
	public String getLBR_CSRTHash();

    /** Column name LBR_CommType */
    public static final String COLUMNNAME_LBR_CommType = "LBR_CommType";

	/** Set Communication Type	  */
	public void setLBR_CommType (String LBR_CommType);

	/** Get Communication Type	  */
	public String getLBR_CommType();

    /** Column name LBR_EndRegion_ID */
    public static final String COLUMNNAME_LBR_EndRegion_ID = "LBR_EndRegion_ID";

	/** Set End Region	  */
	public void setLBR_EndRegion_ID (int LBR_EndRegion_ID);

	/** Get End Region	  */
	public int getLBR_EndRegion_ID();

	public I_C_Region getLBR_EndRegion() throws RuntimeException;

    /** Column name LBR_GreenChannel */
    public static final String COLUMNNAME_LBR_GreenChannel = "LBR_GreenChannel";

	/** Set Green Channel	  */
	public void setLBR_GreenChannel (String LBR_GreenChannel);

	/** Get Green Channel	  */
	public String getLBR_GreenChannel();

    /** Column name LBR_MDFeIssuerType */
    public static final String COLUMNNAME_LBR_MDFeIssuerType = "LBR_MDFeIssuerType";

	/** Set Issuer Type	  */
	public void setLBR_MDFeIssuerType (String LBR_MDFeIssuerType);

	/** Get Issuer Type	  */
	public String getLBR_MDFeIssuerType();

    /** Column name LBR_MDFeTrailer1_ID */
    public static final String COLUMNNAME_LBR_MDFeTrailer1_ID = "LBR_MDFeTrailer1_ID";

	/** Set Vehicle Trailer 1	  */
	public void setLBR_MDFeTrailer1_ID (int LBR_MDFeTrailer1_ID);

	/** Get Vehicle Trailer 1	  */
	public int getLBR_MDFeTrailer1_ID();

	public I_LBR_MDFeVehicle getLBR_MDFeTrailer1() throws RuntimeException;

    /** Column name LBR_MDFeTrailer2_ID */
    public static final String COLUMNNAME_LBR_MDFeTrailer2_ID = "LBR_MDFeTrailer2_ID";

	/** Set Vehicle Trailer 2	  */
	public void setLBR_MDFeTrailer2_ID (int LBR_MDFeTrailer2_ID);

	/** Get Vehicle Trailer 2	  */
	public int getLBR_MDFeTrailer2_ID();

	public org.kenos.idempiere.lbr.mdfe.model.I_LBR_MDFeVehicle getLBR_MDFeTrailer2() throws RuntimeException;

    /** Column name LBR_MDFeTrailer3_ID */
    public static final String COLUMNNAME_LBR_MDFeTrailer3_ID = "LBR_MDFeTrailer3_ID";

	/** Set Vehicle Trailer 3	  */
	public void setLBR_MDFeTrailer3_ID (int LBR_MDFeTrailer3_ID);

	/** Get Vehicle Trailer 3	  */
	public int getLBR_MDFeTrailer3_ID();

	public org.kenos.idempiere.lbr.mdfe.model.I_LBR_MDFeVehicle getLBR_MDFeTrailer3() throws RuntimeException;

    /** Column name LBR_MDFeVehicle_ID */
    public static final String COLUMNNAME_LBR_MDFeVehicle_ID = "LBR_MDFeVehicle_ID";

	/** Set MDFe Vehicle	  */
	public void setLBR_MDFeVehicle_ID (int LBR_MDFeVehicle_ID);

	/** Get MDFe Vehicle	  */
	public int getLBR_MDFeVehicle_ID();

	public org.kenos.idempiere.lbr.mdfe.model.I_LBR_MDFeVehicle getLBR_MDFeVehicle() throws RuntimeException;

    /** Column name LBR_MDFe_ID */
    public static final String COLUMNNAME_LBR_MDFe_ID = "LBR_MDFe_ID";

	/** Set MDF-e.
	  * Manifesto Eletrônico de Documentos Fiscais
	  */
	public void setLBR_MDFe_ID (int LBR_MDFe_ID);

	/** Get MDF-e.
	  * Manifesto Eletrônico de Documentos Fiscais
	  */
	public int getLBR_MDFe_ID();

    /** Column name LBR_PostLoading */
    public static final String COLUMNNAME_LBR_PostLoading = "LBR_PostLoading";

	/** Set Post Loading	  */
	public void setLBR_PostLoading (String LBR_PostLoading);

	/** Get Post Loading	  */
	public String getLBR_PostLoading();

    /** Column name LBR_RNTRC */
    public static final String COLUMNNAME_LBR_RNTRC = "LBR_RNTRC";

	/** Set RNTRC.
	  * Registro Nacional dos Transportadores Rodoviários de Carga
	  */
	public void setLBR_RNTRC (String LBR_RNTRC);

	/** Get RNTRC.
	  * Registro Nacional dos Transportadores Rodoviários de Carga
	  */
	public String getLBR_RNTRC();

    /** Column name LBR_ShipmentType */
    public static final String COLUMNNAME_LBR_ShipmentType = "LBR_ShipmentType";

	/** Set Shipment Type	  */
	public void setLBR_ShipmentType (String LBR_ShipmentType);

	/** Get Shipment Type	  */
	public String getLBR_ShipmentType();

    /** Column name LBR_WeightUOM */
    public static final String COLUMNNAME_LBR_WeightUOM = "LBR_WeightUOM";

	/** Set UOM	  */
	public void setLBR_WeightUOM (String LBR_WeightUOM);

	/** Get UOM	  */
	public String getLBR_WeightUOM();

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

    /** Column name Processing */
    public static final String COLUMNNAME_Processing = "Processing";

	/** Set Process Now	  */
	public void setProcessing (boolean Processing);

	/** Get Process Now	  */
	public boolean isProcessing();

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

    /** Column name Weight */
    public static final String COLUMNNAME_Weight = "Weight";

	/** Set Weight.
	  * Weight of a product
	  */
	public void setWeight (BigDecimal Weight);

	/** Get Weight.
	  * Weight of a product
	  */
	public BigDecimal getWeight();

    /** Column name lbr_DigestValue */
    public static final String COLUMNNAME_lbr_DigestValue = "lbr_DigestValue";

	/** Set Digest Value	  */
	public void setlbr_DigestValue (String lbr_DigestValue);

	/** Get Digest Value	  */
	public String getlbr_DigestValue();

    /** Column name lbr_MotivoCancel */
    public static final String COLUMNNAME_lbr_MotivoCancel = "lbr_MotivoCancel";

	/** Set Motivo do Cancelamento.
	  * Motivo do Cancelamento (Entre 15 e 255 caracteres)
	  */
	public void setlbr_MotivoCancel (String lbr_MotivoCancel);

	/** Get Motivo do Cancelamento.
	  * Motivo do Cancelamento (Entre 15 e 255 caracteres)
	  */
	public String getlbr_MotivoCancel();

    /** Column name lbr_NFDescription */
    public static final String COLUMNNAME_lbr_NFDescription = "lbr_NFDescription";

	/** Set Nota Fiscal Description.
	  * Description Printed on Nota Fiscal
	  */
	public void setlbr_NFDescription (String lbr_NFDescription);

	/** Get Nota Fiscal Description.
	  * Description Printed on Nota Fiscal
	  */
	public String getlbr_NFDescription();

    /** Column name lbr_NFModel */
    public static final String COLUMNNAME_lbr_NFModel = "lbr_NFModel";

	/** Set NF Model.
	  * Identifies the model of Nota Fiscal
	  */
	public void setlbr_NFModel (String lbr_NFModel);

	/** Get NF Model.
	  * Identifies the model of Nota Fiscal
	  */
	public String getlbr_NFModel();

    /** Column name lbr_NFSerie */
    public static final String COLUMNNAME_lbr_NFSerie = "lbr_NFSerie";

	/** Set NF Serie	  */
	public void setlbr_NFSerie (String lbr_NFSerie);

	/** Get NF Serie	  */
	public String getlbr_NFSerie();

    /** Column name lbr_NFeAnswerStatus */
    public static final String COLUMNNAME_lbr_NFeAnswerStatus = "lbr_NFeAnswerStatus";

	/** Set NFe Answer Status.
	  * Status of Answer NFe
	  */
	public void setlbr_NFeAnswerStatus (String lbr_NFeAnswerStatus);

	/** Get NFe Answer Status.
	  * Status of Answer NFe
	  */
	public String getlbr_NFeAnswerStatus();

    /** Column name lbr_NFeEnv */
    public static final String COLUMNNAME_lbr_NFeEnv = "lbr_NFeEnv";

	/** Set NFe Environment	  */
	public void setlbr_NFeEnv (String lbr_NFeEnv);

	/** Get NFe Environment	  */
	public String getlbr_NFeEnv();

    /** Column name lbr_NFeID */
    public static final String COLUMNNAME_lbr_NFeID = "lbr_NFeID";

	/** Set NFe ID.
	  * Identification of NFe
	  */
	public void setlbr_NFeID (String lbr_NFeID);

	/** Get NFe ID.
	  * Identification of NFe
	  */
	public String getlbr_NFeID();

    /** Column name lbr_NFeProt */
    public static final String COLUMNNAME_lbr_NFeProt = "lbr_NFeProt";

	/** Set NFe Protocol	  */
	public void setlbr_NFeProt (String lbr_NFeProt);

	/** Get NFe Protocol	  */
	public String getlbr_NFeProt();

    /** Column name lbr_NFeRecID */
    public static final String COLUMNNAME_lbr_NFeRecID = "lbr_NFeRecID";

	/** Set Recebimento ID	  */
	public void setlbr_NFeRecID (String lbr_NFeRecID);

	/** Get Recebimento ID	  */
	public String getlbr_NFeRecID();

    /** Column name lbr_NFeStatus */
    public static final String COLUMNNAME_lbr_NFeStatus = "lbr_NFeStatus";

	/** Set NFe Status.
	  * Status of NFe
	  */
	public void setlbr_NFeStatus (String lbr_NFeStatus);

	/** Get NFe Status.
	  * Status of NFe
	  */
	public String getlbr_NFeStatus();
}
