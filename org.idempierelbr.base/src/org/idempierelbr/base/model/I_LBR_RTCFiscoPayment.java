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

/** Generated Interface for LBR_RTCFiscoPayment
 *  @author iDempiere (generated) 
 *  @version Release 13
 */
@SuppressWarnings("all")
public interface I_LBR_RTCFiscoPayment 
{

    /** TableName=LBR_RTCFiscoPayment */
    public static final String Table_Name = "LBR_RTCFiscoPayment";

    /** AD_Table_ID=800116 */
    public static final int Table_ID = 800116;

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

    /** Column name LBR_CNPJBase */
    public static final String COLUMNNAME_LBR_CNPJBase = "LBR_CNPJBase";

	/** Set CNPJ Base	  */
	public void setLBR_CNPJBase (String LBR_CNPJBase);

	/** Get CNPJ Base	  */
	public String getLBR_CNPJBase();

    /** Column name LBR_DARFNo */
    public static final String COLUMNNAME_LBR_DARFNo = "LBR_DARFNo";

	/** Set Número do DARF	  */
	public void setLBR_DARFNo (String LBR_DARFNo);

	/** Get Número do DARF	  */
	public String getLBR_DARFNo();

    /** Column name LBR_DateCollection */
    public static final String COLUMNNAME_LBR_DateCollection = "LBR_DateCollection";

	/** Set Data de Arrecadação	  */
	public void setLBR_DateCollection (Timestamp LBR_DateCollection);

	/** Get Data de Arrecadação	  */
	public Timestamp getLBR_DateCollection();

    /** Column name LBR_NI */
    public static final String COLUMNNAME_LBR_NI = "LBR_NI";

	/** Set NI (CNPJ/CPF)	  */
	public void setLBR_NI (String LBR_NI);

	/** Get NI (CNPJ/CPF)	  */
	public String getLBR_NI();

    /** Column name LBR_PaymentType */
    public static final String COLUMNNAME_LBR_PaymentType = "LBR_PaymentType";

	/** Set Tipo de Pagamento	  */
	public void setLBR_PaymentType (int LBR_PaymentType);

	/** Get Tipo de Pagamento	  */
	public int getLBR_PaymentType();

    /** Column name LBR_RTCFiscoPayment_ID */
    public static final String COLUMNNAME_LBR_RTCFiscoPayment_ID = "LBR_RTCFiscoPayment_ID";

	/** Set Pagamento de IBS/CBS (RTC/Fisco)	  */
	public void setLBR_RTCFiscoPayment_ID (int LBR_RTCFiscoPayment_ID);

	/** Get Pagamento de IBS/CBS (RTC/Fisco)	  */
	public int getLBR_RTCFiscoPayment_ID();

    /** Column name LBR_RTCFiscoPayment_UU */
    public static final String COLUMNNAME_LBR_RTCFiscoPayment_UU = "LBR_RTCFiscoPayment_UU";

	/** Set LBR_RTCFiscoPayment_UU	  */
	public void setLBR_RTCFiscoPayment_UU (String LBR_RTCFiscoPayment_UU);

	/** Get LBR_RTCFiscoPayment_UU	  */
	public String getLBR_RTCFiscoPayment_UU();

    /** Column name LBR_RTCFiscoRequest_ID */
    public static final String COLUMNNAME_LBR_RTCFiscoRequest_ID = "LBR_RTCFiscoRequest_ID";

	/** Set Request (RTC/Fisco)	  */
	public void setLBR_RTCFiscoRequest_ID (int LBR_RTCFiscoRequest_ID);

	/** Get Request (RTC/Fisco)	  */
	public int getLBR_RTCFiscoRequest_ID();

	@Deprecated(since="13") // use better methods with cache
	public I_LBR_RTCFiscoRequest getLBR_RTCFiscoRequest() throws RuntimeException;

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
