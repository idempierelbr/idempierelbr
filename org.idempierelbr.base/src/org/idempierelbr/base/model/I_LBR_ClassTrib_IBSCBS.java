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

/** Generated Interface for LBR_ClassTrib_IBSCBS
 *  @author iDempiere (generated) 
 *  @version Release 13
 */
@SuppressWarnings("all")
public interface I_LBR_ClassTrib_IBSCBS 
{

    /** TableName=LBR_ClassTrib_IBSCBS */
    public static final String Table_Name = "LBR_ClassTrib_IBSCBS";

    /** AD_Table_ID=800066 */
    public static final int Table_ID = 800066;

    KeyNamePair Model = new KeyNamePair(Table_ID, Table_Name);

    /** AccessLevel = 6 - System - Client 
     */
    BigDecimal accessLevel = BigDecimal.valueOf(6);

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

    /** Column name DateFrom */
    public static final String COLUMNNAME_DateFrom = "DateFrom";

	/** Set Date From.
	  * Starting date for a range
	  */
	public void setDateFrom (Timestamp DateFrom);

	/** Get Date From.
	  * Starting date for a range
	  */
	public Timestamp getDateFrom();

    /** Column name DateTo */
    public static final String COLUMNNAME_DateTo = "DateTo";

	/** Set Date To.
	  * End date of a date range
	  */
	public void setDateTo (Timestamp DateTo);

	/** Get Date To.
	  * End date of a date range
	  */
	public Timestamp getDateTo();

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

    /** Column name LBR_CST_IBSCBS_ID */
    public static final String COLUMNNAME_LBR_CST_IBSCBS_ID = "LBR_CST_IBSCBS_ID";

	/** Set CST IBS / CBS	  */
	public void setLBR_CST_IBSCBS_ID (int LBR_CST_IBSCBS_ID);

	/** Get CST IBS / CBS	  */
	public int getLBR_CST_IBSCBS_ID();

	@Deprecated(since="13") // use better methods with cache
	public I_LBR_CST_IBSCBS getLBR_CST_IBSCBS() throws RuntimeException;

    /** Column name LBR_ClassTrib_IBSCBS_ID */
    public static final String COLUMNNAME_LBR_ClassTrib_IBSCBS_ID = "LBR_ClassTrib_IBSCBS_ID";

	/** Set ClassTrib IBS / CBS	  */
	public void setLBR_ClassTrib_IBSCBS_ID (int LBR_ClassTrib_IBSCBS_ID);

	/** Get ClassTrib IBS / CBS	  */
	public int getLBR_ClassTrib_IBSCBS_ID();

    /** Column name LBR_ClassTrib_IBSCBS_UU */
    public static final String COLUMNNAME_LBR_ClassTrib_IBSCBS_UU = "LBR_ClassTrib_IBSCBS_UU";

	/** Set ClassTrib IBS / CBS	  */
	public void setLBR_ClassTrib_IBSCBS_UU (String LBR_ClassTrib_IBSCBS_UU);

	/** Get ClassTrib IBS / CBS	  */
	public String getLBR_ClassTrib_IBSCBS_UU();

    /** Column name LBR_IBSCBSIndNFCe */
    public static final String COLUMNNAME_LBR_IBSCBSIndNFCe = "LBR_IBSCBSIndNFCe";

	/** Set IBS/CBS NFCe Indicator	  */
	public void setLBR_IBSCBSIndNFCe (String LBR_IBSCBSIndNFCe);

	/** Get IBS/CBS NFCe Indicator	  */
	public String getLBR_IBSCBSIndNFCe();

    /** Column name LBR_IBSCBSIndNFe */
    public static final String COLUMNNAME_LBR_IBSCBSIndNFe = "LBR_IBSCBSIndNFe";

	/** Set IBS/CBS NFe Indicator	  */
	public void setLBR_IBSCBSIndNFe (String LBR_IBSCBSIndNFe);

	/** Get IBS/CBS NFe Indicator	  */
	public String getLBR_IBSCBSIndNFe();

    /** Column name LBR_IBSCBSNomenclature */
    public static final String COLUMNNAME_LBR_IBSCBSNomenclature = "LBR_IBSCBSNomenclature";

	/** Set Nomenclatura Exigida.
	  * Nomenclatura exigida pela classificação tributária: NCM, NBS, qualquer das duas ou nenhuma.
	  */
	public void setLBR_IBSCBSNomenclature (String LBR_IBSCBSNomenclature);

	/** Get Nomenclatura Exigida.
	  * Nomenclatura exigida pela classificação tributária: NCM, NBS, qualquer das duas ou nenhuma.
	  */
	public String getLBR_IBSCBSNomenclature();

    /** Column name LBR_IBSCBSRateType */
    public static final String COLUMNNAME_LBR_IBSCBSRateType = "LBR_IBSCBSRateType";

	/** Set Tipo de Alíquota do IBS/CBS.
	  * Tipo de alíquota da classificação tributária: padrão, fixa, uniforme nacional, uniforme setorial ou sem alíquota.
	  */
	public void setLBR_IBSCBSRateType (String LBR_IBSCBSRateType);

	/** Get Tipo de Alíquota do IBS/CBS.
	  * Tipo de alíquota da classificação tributária: padrão, fixa, uniforme nacional, uniforme setorial ou sem alíquota.
	  */
	public String getLBR_IBSCBSRateType();

    /** Column name LBR_IBSCBSTreatment */
    public static final String COLUMNNAME_LBR_IBSCBSTreatment = "LBR_IBSCBSTreatment";

	/** Set Tratamento Tributário.
	  * Tratamento tributário do IBS/CBS associado à classificação tributária, conforme a Calculadora de Tributos da Receita Federal.
	  */
	public void setLBR_IBSCBSTreatment (String LBR_IBSCBSTreatment);

	/** Get Tratamento Tributário.
	  * Tratamento tributário do IBS/CBS associado à classificação tributária, conforme a Calculadora de Tributos da Receita Federal.
	  */
	public String getLBR_IBSCBSTreatment();

    /** Column name LBR_IndIBSCBSRedBC */
    public static final String COLUMNNAME_LBR_IndIBSCBSRedBC = "LBR_IndIBSCBSRedBC";

	/** Set IBS/CBS Red BC Indicator	  */
	public void setLBR_IndIBSCBSRedBC (String LBR_IndIBSCBSRedBC);

	/** Get IBS/CBS Red BC Indicator	  */
	public String getLBR_IndIBSCBSRedBC();

    /** Column name LBR_IndgEstornoCred */
    public static final String COLUMNNAME_LBR_IndgEstornoCred = "LBR_IndgEstornoCred";

	/** Set Indicador de Grupo Estorno de Crédito.
	  * Indica se o grupo gEstornoCred é exigido ou vedado nesta classificação tributária.
	  */
	public void setLBR_IndgEstornoCred (String LBR_IndgEstornoCred);

	/** Get Indicador de Grupo Estorno de Crédito.
	  * Indica se o grupo gEstornoCred é exigido ou vedado nesta classificação tributária.
	  */
	public String getLBR_IndgEstornoCred();

    /** Column name LBR_IndgIBSCBSCredPres */
    public static final String COLUMNNAME_LBR_IndgIBSCBSCredPres = "LBR_IndgIBSCBSCredPres";

	/** Set IBS/CBS CredPres Group Indicator	  */
	public void setLBR_IndgIBSCBSCredPres (String LBR_IndgIBSCBSCredPres);

	/** Get IBS/CBS CredPres Group Indicator	  */
	public String getLBR_IndgIBSCBSCredPres();

    /** Column name LBR_IndgIBSCBSMono */
    public static final String COLUMNNAME_LBR_IndgIBSCBSMono = "LBR_IndgIBSCBSMono";

	/** Set IBS/CBS Mono Group Indicator	  */
	public void setLBR_IndgIBSCBSMono (String LBR_IndgIBSCBSMono);

	/** Get IBS/CBS Mono Group Indicator	  */
	public String getLBR_IndgIBSCBSMono();

    /** Column name LBR_IndgIBSCBSMonoDif */
    public static final String COLUMNNAME_LBR_IndgIBSCBSMonoDif = "LBR_IndgIBSCBSMonoDif";

	/** Set IBS/CBS MonoDif Group Indicator	  */
	public void setLBR_IndgIBSCBSMonoDif (String LBR_IndgIBSCBSMonoDif);

	/** Get IBS/CBS MonoDif Group Indicator	  */
	public String getLBR_IndgIBSCBSMonoDif();

    /** Column name LBR_IndgIBSCBSMonoRet */
    public static final String COLUMNNAME_LBR_IndgIBSCBSMonoRet = "LBR_IndgIBSCBSMonoRet";

	/** Set IBS/CBS MonoRet Group Indicator	  */
	public void setLBR_IndgIBSCBSMonoRet (String LBR_IndgIBSCBSMonoRet);

	/** Get IBS/CBS MonoRet Group Indicator	  */
	public String getLBR_IndgIBSCBSMonoRet();

    /** Column name LBR_IndgIBSCBSMonoReten */
    public static final String COLUMNNAME_LBR_IndgIBSCBSMonoReten = "LBR_IndgIBSCBSMonoReten";

	/** Set IBS/CBS MonoReten Group Indicator	  */
	public void setLBR_IndgIBSCBSMonoReten (String LBR_IndgIBSCBSMonoReten);

	/** Get IBS/CBS MonoReten Group Indicator	  */
	public String getLBR_IndgIBSCBSMonoReten();

    /** Column name LBR_IndgIBSCBSTribRegular */
    public static final String COLUMNNAME_LBR_IndgIBSCBSTribRegular = "LBR_IndgIBSCBSTribRegular";

	/** Set IBS/CBS TribRegular Group Indicator	  */
	public void setLBR_IndgIBSCBSTribRegular (String LBR_IndgIBSCBSTribRegular);

	/** Get IBS/CBS TribRegular Group Indicator	  */
	public String getLBR_IndgIBSCBSTribRegular();

    /** Column name LBR_IsBuyerCBSCredit */
    public static final String COLUMNNAME_LBR_IsBuyerCBSCredit = "LBR_IsBuyerCBSCredit";

	/** Set Crédito de CBS do Adquirente.
	  * Indica que o adquirente pode apropriar crédito da CBS nesta classificação tributária.
	  */
	public void setLBR_IsBuyerCBSCredit (boolean LBR_IsBuyerCBSCredit);

	/** Get Crédito de CBS do Adquirente.
	  * Indica que o adquirente pode apropriar crédito da CBS nesta classificação tributária.
	  */
	public boolean isLBR_IsBuyerCBSCredit();

    /** Column name LBR_IsBuyerIBSCredit */
    public static final String COLUMNNAME_LBR_IsBuyerIBSCredit = "LBR_IsBuyerIBSCredit";

	/** Set Crédito de IBS do Adquirente.
	  * Indica que o adquirente pode apropriar crédito do IBS nesta classificação tributária.
	  */
	public void setLBR_IsBuyerIBSCredit (boolean LBR_IsBuyerIBSCredit);

	/** Get Crédito de IBS do Adquirente.
	  * Indica que o adquirente pode apropriar crédito do IBS nesta classificação tributária.
	  */
	public boolean isLBR_IsBuyerIBSCredit();

    /** Column name LBR_IsBuyerPresCredit */
    public static final String COLUMNNAME_LBR_IsBuyerPresCredit = "LBR_IsBuyerPresCredit";

	/** Set Crédito Presumido do Adquirente.
	  * Indica que a classificação tributária dá crédito presumido ao adquirente.
	  */
	public void setLBR_IsBuyerPresCredit (boolean LBR_IsBuyerPresCredit);

	/** Get Crédito Presumido do Adquirente.
	  * Indica que a classificação tributária dá crédito presumido ao adquirente.
	  */
	public boolean isLBR_IsBuyerPresCredit();

    /** Column name LBR_IsSupplierPresCredit */
    public static final String COLUMNNAME_LBR_IsSupplierPresCredit = "LBR_IsSupplierPresCredit";

	/** Set Crédito Presumido do Fornecedor.
	  * Indica que a classificação tributária dá crédito presumido ao fornecedor.
	  */
	public void setLBR_IsSupplierPresCredit (boolean LBR_IsSupplierPresCredit);

	/** Get Crédito Presumido do Fornecedor.
	  * Indica que a classificação tributária dá crédito presumido ao fornecedor.
	  */
	public boolean isLBR_IsSupplierPresCredit();

    /** Column name LBR_IsZeroRate */
    public static final String COLUMNNAME_LBR_IsZeroRate = "LBR_IsZeroRate";

	/** Set Alíquota Zero.
	  * Indica que a alíquota do IBS/CBS aplicada nesta classificação é zero (suspensão, exclusão de base, documento específico e outros).
	  */
	public void setLBR_IsZeroRate (boolean LBR_IsZeroRate);

	/** Get Alíquota Zero.
	  * Indica que a alíquota do IBS/CBS aplicada nesta classificação é zero (suspensão, exclusão de base, documento específico e outros).
	  */
	public boolean isLBR_IsZeroRate();

    /** Column name LBR_PRedCBS */
    public static final String COLUMNNAME_LBR_PRedCBS = "LBR_PRedCBS";

	/** Set Red. CBS (%)	  */
	public void setLBR_PRedCBS (BigDecimal LBR_PRedCBS);

	/** Get Red. CBS (%)	  */
	public BigDecimal getLBR_PRedCBS();

    /** Column name LBR_PRedIBS */
    public static final String COLUMNNAME_LBR_PRedIBS = "LBR_PRedIBS";

	/** Set Red. IBS (%)	  */
	public void setLBR_PRedIBS (BigDecimal LBR_PRedIBS);

	/** Get Red. IBS (%)	  */
	public BigDecimal getLBR_PRedIBS();

    /** Column name LBR_PriorOpCredit */
    public static final String COLUMNNAME_LBR_PriorOpCredit = "LBR_PriorOpCredit";

	/** Set Crédito da Operação Antecedente.
	  * Tratamento do crédito da operação antecedente: manutenção ou anulação.
	  */
	public void setLBR_PriorOpCredit (String LBR_PriorOpCredit);

	/** Get Crédito da Operação Antecedente.
	  * Tratamento do crédito da operação antecedente: manutenção ou anulação.
	  */
	public String getLBR_PriorOpCredit();

    /** Column name LBR_TaxBase */
    public static final String COLUMNNAME_LBR_TaxBase = "LBR_TaxBase";

	/** Set Tax Base.
	  * Indicates the Tax Base
	  */
	public void setLBR_TaxBase (BigDecimal LBR_TaxBase);

	/** Get Tax Base.
	  * Indicates the Tax Base
	  */
	public BigDecimal getLBR_TaxBase();

    /** Column name LBR_TaxDeferralRate */
    public static final String COLUMNNAME_LBR_TaxDeferralRate = "LBR_TaxDeferralRate";

	/** Set Tax Deferral Rate (%).
	  * Identifies the Tax Deferral Rate (%)
	  */
	public void setLBR_TaxDeferralRate (BigDecimal LBR_TaxDeferralRate);

	/** Get Tax Deferral Rate (%).
	  * Identifies the Tax Deferral Rate (%)
	  */
	public BigDecimal getLBR_TaxDeferralRate();

    /** Column name Name */
    public static final String COLUMNNAME_Name = "Name";

	/** Set Name.
	  * Alphanumeric identifier of the entity
	  */
	public void setName (String Name);

	/** Get Name.
	  * Alphanumeric identifier of the entity
	  */
	public String getName();

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

    /** Column name UpdatedDate */
    public static final String COLUMNNAME_UpdatedDate = "UpdatedDate";

	/** Set Updated Date	  */
	public void setUpdatedDate (Timestamp UpdatedDate);

	/** Get Updated Date	  */
	public Timestamp getUpdatedDate();

    /** Column name Value */
    public static final String COLUMNNAME_Value = "Value";

	/** Set Search Key.
	  * Search key for the record in the format required - must be unique
	  */
	public void setValue (String Value);

	/** Get Search Key.
	  * Search key for the record in the format required - must be unique
	  */
	public String getValue();
}
