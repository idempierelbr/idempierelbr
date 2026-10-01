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

/** Generated Interface for LBR_RTCFiscoApuracao
 *  @author iDempiere (generated) 
 *  @version Release 13
 */
@SuppressWarnings("all")
public interface I_LBR_RTCFiscoApuracao 
{

    /** TableName=LBR_RTCFiscoApuracao */
    public static final String Table_Name = "LBR_RTCFiscoApuracao";

    /** AD_Table_ID=800114 */
    public static final int Table_ID = 800114;

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

    /** Column name C_Period_ID */
    public static final String COLUMNNAME_C_Period_ID = "C_Period_ID";

	/** Set Period.
	  * Period of the Calendar
	  */
	public void setC_Period_ID (int C_Period_ID);

	/** Get Period.
	  * Period of the Calendar
	  */
	public int getC_Period_ID();

	@Deprecated(since="13") // use better methods with cache
	public org.compiere.model.I_C_Period getC_Period() throws RuntimeException;

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

    /** Column name LBR_Balance */
    public static final String COLUMNNAME_LBR_Balance = "LBR_Balance";

	/** Set Saldo	  */
	public void setLBR_Balance (BigDecimal LBR_Balance);

	/** Get Saldo	  */
	public BigDecimal getLBR_Balance();

    /** Column name LBR_CNPJBase */
    public static final String COLUMNNAME_LBR_CNPJBase = "LBR_CNPJBase";

	/** Set CNPJ Base	  */
	public void setLBR_CNPJBase (String LBR_CNPJBase);

	/** Get CNPJ Base	  */
	public String getLBR_CNPJBase();

    /** Column name LBR_DateUpdated */
    public static final String COLUMNNAME_LBR_DateUpdated = "LBR_DateUpdated";

	/** Set Atualizado em (Fisco)	  */
	public void setLBR_DateUpdated (Timestamp LBR_DateUpdated);

	/** Get Atualizado em (Fisco)	  */
	public Timestamp getLBR_DateUpdated();

    /** Column name LBR_PA */
    public static final String COLUMNNAME_LBR_PA = "LBR_PA";

	/** Set Período de Apuração	  */
	public void setLBR_PA (String LBR_PA);

	/** Get Período de Apuração	  */
	public String getLBR_PA();

    /** Column name LBR_RTCFiscoApuracao_ID */
    public static final String COLUMNNAME_LBR_RTCFiscoApuracao_ID = "LBR_RTCFiscoApuracao_ID";

	/** Set Apuração de IBS/CBS (RTC/Fisco)	  */
	public void setLBR_RTCFiscoApuracao_ID (int LBR_RTCFiscoApuracao_ID);

	/** Get Apuração de IBS/CBS (RTC/Fisco)	  */
	public int getLBR_RTCFiscoApuracao_ID();

    /** Column name LBR_RTCFiscoApuracao_UU */
    public static final String COLUMNNAME_LBR_RTCFiscoApuracao_UU = "LBR_RTCFiscoApuracao_UU";

	/** Set LBR_RTCFiscoApuracao_UU	  */
	public void setLBR_RTCFiscoApuracao_UU (String LBR_RTCFiscoApuracao_UU);

	/** Get LBR_RTCFiscoApuracao_UU	  */
	public String getLBR_RTCFiscoApuracao_UU();

    /** Column name LBR_RTCTaxType */
    public static final String COLUMNNAME_LBR_RTCTaxType = "LBR_RTCTaxType";

	/** Set Tributo	  */
	public void setLBR_RTCTaxType (String LBR_RTCTaxType);

	/** Get Tributo	  */
	public String getLBR_RTCTaxType();

    /** Column name LBR_TotalCredit */
    public static final String COLUMNNAME_LBR_TotalCredit = "LBR_TotalCredit";

	/** Set Total de Crédito	  */
	public void setLBR_TotalCredit (BigDecimal LBR_TotalCredit);

	/** Get Total de Crédito	  */
	public BigDecimal getLBR_TotalCredit();

    /** Column name LBR_TotalDebit */
    public static final String COLUMNNAME_LBR_TotalDebit = "LBR_TotalDebit";

	/** Set Total de Débito	  */
	public void setLBR_TotalDebit (BigDecimal LBR_TotalDebit);

	/** Get Total de Débito	  */
	public BigDecimal getLBR_TotalDebit();

    /** Column name LBR_TotalPaid */
    public static final String COLUMNNAME_LBR_TotalPaid = "LBR_TotalPaid";

	/** Set Total Pago	  */
	public void setLBR_TotalPaid (BigDecimal LBR_TotalPaid);

	/** Get Total Pago	  */
	public BigDecimal getLBR_TotalPaid();

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
