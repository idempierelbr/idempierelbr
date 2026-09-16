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

/** Generated Interface for LBR_NotaFiscalEventRec
 *  @author iDempiere (generated) 
 *  @version Release 13
 */
@SuppressWarnings("all")
public interface I_LBR_NotaFiscalEventRec 
{

    /** TableName=LBR_NotaFiscalEventRec */
    public static final String Table_Name = "LBR_NotaFiscalEventRec";

    /** AD_Table_ID=800089 */
    public static final int Table_ID = 800089;

    KeyNamePair Model = new KeyNamePair(Table_ID, Table_Name);

    /** AccessLevel = 3 - Client - Org 
     */
    BigDecimal accessLevel = BigDecimal.valueOf(3);

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

    /** Column name LBR_EventAuthor */
    public static final String COLUMNNAME_LBR_EventAuthor = "LBR_EventAuthor";

	/** Set CNPJ/CPF do Autor	  */
	public void setLBR_EventAuthor (String LBR_EventAuthor);

	/** Get CNPJ/CPF do Autor	  */
	public String getLBR_EventAuthor();

    /** Column name LBR_EventCode */
    public static final String COLUMNNAME_LBR_EventCode = "LBR_EventCode";

	/** Set Cód. do Evento	  */
	public void setLBR_EventCode (String LBR_EventCode);

	/** Get Cód. do Evento	  */
	public String getLBR_EventCode();

    /** Column name LBR_EventDate */
    public static final String COLUMNNAME_LBR_EventDate = "LBR_EventDate";

	/** Set Data do Evento	  */
	public void setLBR_EventDate (Timestamp LBR_EventDate);

	/** Get Data do Evento	  */
	public Timestamp getLBR_EventDate();

    /** Column name LBR_EventProt */
    public static final String COLUMNNAME_LBR_EventProt = "LBR_EventProt";

	/** Set Protocolo	  */
	public void setLBR_EventProt (String LBR_EventProt);

	/** Get Protocolo	  */
	public String getLBR_EventProt();

    /** Column name LBR_EventSeqNo */
    public static final String COLUMNNAME_LBR_EventSeqNo = "LBR_EventSeqNo";

	/** Set Seq. do Evento	  */
	public void setLBR_EventSeqNo (int LBR_EventSeqNo);

	/** Get Seq. do Evento	  */
	public int getLBR_EventSeqNo();

    /** Column name LBR_NFeID */
    public static final String COLUMNNAME_LBR_NFeID = "LBR_NFeID";

	/** Set NFe ID	  */
	public void setLBR_NFeID (String LBR_NFeID);

	/** Get NFe ID	  */
	public String getLBR_NFeID();

    /** Column name LBR_NFeXML_ID */
    public static final String COLUMNNAME_LBR_NFeXML_ID = "LBR_NFeXML_ID";

	/** Set NFe XML	  */
	public void setLBR_NFeXML_ID (int LBR_NFeXML_ID);

	/** Get NFe XML	  */
	public int getLBR_NFeXML_ID();

	@Deprecated(since="13") // use better methods with cache
	public I_LBR_NFeXML getLBR_NFeXML() throws RuntimeException;

    /** Column name LBR_NotaFiscalEventRec_ID */
    public static final String COLUMNNAME_LBR_NotaFiscalEventRec_ID = "LBR_NotaFiscalEventRec_ID";

	/** Set Eventos de DF-e Recebidos	  */
	public void setLBR_NotaFiscalEventRec_ID (int LBR_NotaFiscalEventRec_ID);

	/** Get Eventos de DF-e Recebidos	  */
	public int getLBR_NotaFiscalEventRec_ID();

    /** Column name LBR_NotaFiscalEventRec_UU */
    public static final String COLUMNNAME_LBR_NotaFiscalEventRec_UU = "LBR_NotaFiscalEventRec_UU";

	/** Set LBR_NotaFiscalEventRec_UU	  */
	public void setLBR_NotaFiscalEventRec_UU (String LBR_NotaFiscalEventRec_UU);

	/** Get LBR_NotaFiscalEventRec_UU	  */
	public String getLBR_NotaFiscalEventRec_UU();

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

	@Deprecated(since="13") // use better methods with cache
	public I_LBR_NotaFiscal getLBR_NotaFiscal() throws RuntimeException;

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
