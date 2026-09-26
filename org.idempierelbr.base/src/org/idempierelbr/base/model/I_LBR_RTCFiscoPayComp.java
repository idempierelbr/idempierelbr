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

/** Generated Interface for LBR_RTCFiscoPayComp
 *  @author iDempiere (generated) 
 *  @version Release 13
 */
@SuppressWarnings("all")
public interface I_LBR_RTCFiscoPayComp 
{

    /** TableName=LBR_RTCFiscoPayComp */
    public static final String Table_Name = "LBR_RTCFiscoPayComp";

    /** AD_Table_ID=800117 */
    public static final int Table_ID = 800117;

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

    /** Column name DueDate */
    public static final String COLUMNNAME_DueDate = "DueDate";

	/** Set Due Date.
	  * Date when the payment is due
	  */
	public void setDueDate (Timestamp DueDate);

	/** Get Due Date.
	  * Date when the payment is due
	  */
	public Timestamp getDueDate();

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

    /** Column name LBR_DFeChave */
    public static final String COLUMNNAME_LBR_DFeChave = "LBR_DFeChave";

	/** Set Chave de Acesso do Documento	  */
	public void setLBR_DFeChave (String LBR_DFeChave);

	/** Get Chave de Acesso do Documento	  */
	public String getLBR_DFeChave();

    /** Column name LBR_FineAmt */
    public static final String COLUMNNAME_LBR_FineAmt = "LBR_FineAmt";

	/** Set Multa	  */
	public void setLBR_FineAmt (BigDecimal LBR_FineAmt);

	/** Get Multa	  */
	public BigDecimal getLBR_FineAmt();

    /** Column name LBR_InterestAmt */
    public static final String COLUMNNAME_LBR_InterestAmt = "LBR_InterestAmt";

	/** Set Juros	  */
	public void setLBR_InterestAmt (BigDecimal LBR_InterestAmt);

	/** Get Juros	  */
	public BigDecimal getLBR_InterestAmt();

    /** Column name LBR_NI */
    public static final String COLUMNNAME_LBR_NI = "LBR_NI";

	/** Set NI (CNPJ/CPF)	  */
	public void setLBR_NI (String LBR_NI);

	/** Get NI (CNPJ/CPF)	  */
	public String getLBR_NI();

    /** Column name LBR_PA */
    public static final String COLUMNNAME_LBR_PA = "LBR_PA";

	/** Set Período de Apuração	  */
	public void setLBR_PA (String LBR_PA);

	/** Get Período de Apuração	  */
	public String getLBR_PA();

    /** Column name LBR_PrincipalAmt */
    public static final String COLUMNNAME_LBR_PrincipalAmt = "LBR_PrincipalAmt";

	/** Set Principal	  */
	public void setLBR_PrincipalAmt (BigDecimal LBR_PrincipalAmt);

	/** Get Principal	  */
	public BigDecimal getLBR_PrincipalAmt();

    /** Column name LBR_RTCFiscoApuracao_ID */
    public static final String COLUMNNAME_LBR_RTCFiscoApuracao_ID = "LBR_RTCFiscoApuracao_ID";

	/** Set Apuração de IBS/CBS (RTC/Fisco)	  */
	public void setLBR_RTCFiscoApuracao_ID (int LBR_RTCFiscoApuracao_ID);

	/** Get Apuração de IBS/CBS (RTC/Fisco)	  */
	public int getLBR_RTCFiscoApuracao_ID();

	@Deprecated(since="13") // use better methods with cache
	public I_LBR_RTCFiscoApuracao getLBR_RTCFiscoApuracao() throws RuntimeException;

    /** Column name LBR_RTCFiscoPayComp_ID */
    public static final String COLUMNNAME_LBR_RTCFiscoPayComp_ID = "LBR_RTCFiscoPayComp_ID";

	/** Set Composição de Pagto de IBS/CBS (RTC/Fisco)	  */
	public void setLBR_RTCFiscoPayComp_ID (int LBR_RTCFiscoPayComp_ID);

	/** Get Composição de Pagto de IBS/CBS (RTC/Fisco)	  */
	public int getLBR_RTCFiscoPayComp_ID();

    /** Column name LBR_RTCFiscoPayComp_UU */
    public static final String COLUMNNAME_LBR_RTCFiscoPayComp_UU = "LBR_RTCFiscoPayComp_UU";

	/** Set LBR_RTCFiscoPayComp_UU	  */
	public void setLBR_RTCFiscoPayComp_UU (String LBR_RTCFiscoPayComp_UU);

	/** Get LBR_RTCFiscoPayComp_UU	  */
	public String getLBR_RTCFiscoPayComp_UU();

    /** Column name LBR_RTCFiscoPayment_ID */
    public static final String COLUMNNAME_LBR_RTCFiscoPayment_ID = "LBR_RTCFiscoPayment_ID";

	/** Set Pagamento de IBS/CBS (RTC/Fisco)	  */
	public void setLBR_RTCFiscoPayment_ID (int LBR_RTCFiscoPayment_ID);

	/** Get Pagamento de IBS/CBS (RTC/Fisco)	  */
	public int getLBR_RTCFiscoPayment_ID();

	@Deprecated(since="13") // use better methods with cache
	public I_LBR_RTCFiscoPayment getLBR_RTCFiscoPayment() throws RuntimeException;

    /** Column name SeqNo */
    public static final String COLUMNNAME_SeqNo = "SeqNo";

	/** Set Sequence.
	  * Method of ordering records;
 lowest number comes first
	  */
	public void setSeqNo (int SeqNo);

	/** Get Sequence.
	  * Method of ordering records;
 lowest number comes first
	  */
	public int getSeqNo();

    /** Column name TotalAmt */
    public static final String COLUMNNAME_TotalAmt = "TotalAmt";

	/** Set Total Amount.
	  * Total Amount
	  */
	public void setTotalAmt (BigDecimal TotalAmt);

	/** Get Total Amount.
	  * Total Amount
	  */
	public BigDecimal getTotalAmt();

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
