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
package org.idempierelbr.tax.model;

import java.math.BigDecimal;
import java.sql.Timestamp;
import org.compiere.model.*;
import org.compiere.util.KeyNamePair;

/** Generated Interface for LBR_DocLine_ISSQN
 *  @author iDempiere (generated) 
 *  @version Release 3.1
 */
@SuppressWarnings("all")
public interface I_LBR_DocLine_ISSQN 
{

    /** TableName=LBR_DocLine_ISSQN */
    public static final String Table_Name = "LBR_DocLine_ISSQN";

    /** AD_Table_ID=1000032 */
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

    /** Column name C_Country_ID */
    public static final String COLUMNNAME_C_Country_ID = "C_Country_ID";

	/** Set Country.
	  * Country 
	  */
	public void setC_Country_ID (int C_Country_ID);

	/** Get Country.
	  * Country 
	  */
	public int getC_Country_ID();

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

	public org.compiere.model.I_C_Region getC_Region() throws RuntimeException;

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

    /** Column name IsTaxIncluded */
    public static final String COLUMNNAME_IsTaxIncluded = "IsTaxIncluded";

	/** Set Price includes Tax.
	  * Tax is included in the price 
	  */
	public void setIsTaxIncluded (boolean IsTaxIncluded);

	/** Get Price includes Tax.
	  * Tax is included in the price 
	  */
	public boolean isTaxIncluded();

    /** Column name LBR_CodigoNBS */
    public static final String COLUMNNAME_LBR_CodigoNBS = "LBR_CodigoNBS";

	/** Set Código NBS	  */
	public void setLBR_CodigoNBS (String LBR_CodigoNBS);

	/** Get Código NBS	  */
	public String getLBR_CodigoNBS();

    /** Column name LBR_CondDiscountAmt */
    public static final String COLUMNNAME_LBR_CondDiscountAmt = "LBR_CondDiscountAmt";

	/** Set Conditioned Discount Amount	  */
	public void setLBR_CondDiscountAmt (BigDecimal LBR_CondDiscountAmt);

	/** Get Conditioned Discount Amount	  */
	public BigDecimal getLBR_CondDiscountAmt();

    /** Column name LBR_DocLine_Details_ID */
    public static final String COLUMNNAME_LBR_DocLine_Details_ID = "LBR_DocLine_Details_ID";

	/** Set Doc Line Details.
	  * Doc Line Details
	  */
	public void setLBR_DocLine_Details_ID (int LBR_DocLine_Details_ID);

	/** Get Doc Line Details.
	  * Doc Line Details
	  */
	public int getLBR_DocLine_Details_ID();

	public I_LBR_DocLine_Details getLBR_DocLine_Details() throws RuntimeException;

    /** Column name LBR_DocLine_ISSQN_ID */
    public static final String COLUMNNAME_LBR_DocLine_ISSQN_ID = "LBR_DocLine_ISSQN_ID";

	/** Set Doc Line ISSQN.
	  * Doc Line ISSQN
	  */
	public void setLBR_DocLine_ISSQN_ID (int LBR_DocLine_ISSQN_ID);

	/** Get Doc Line ISSQN.
	  * Doc Line ISSQN
	  */
	public int getLBR_DocLine_ISSQN_ID();

    /** Column name LBR_DocLine_ISSQN_UU */
    public static final String COLUMNNAME_LBR_DocLine_ISSQN_UU = "LBR_DocLine_ISSQN_UU";

	/** Set Doc Line ISSQN.
	  * Doc Line ISSQN
	  */
	public void setLBR_DocLine_ISSQN_UU (String LBR_DocLine_ISSQN_UU);

	/** Get Doc Line ISSQN.
	  * Doc Line ISSQN
	  */
	public String getLBR_DocLine_ISSQN_UU();

    /** Column name LBR_HasWithHold */
    public static final String COLUMNNAME_LBR_HasWithHold = "LBR_HasWithHold";

	/** Set Has WithHold.
	  * Indicates if the Tax has WithHold
	  */
	public void setLBR_HasWithHold (boolean LBR_HasWithHold);

	/** Get Has WithHold.
	  * Indicates if the Tax has WithHold
	  */
	public boolean isLBR_HasWithHold();

    /** Column name LBR_ISS_Chargeability */
    public static final String COLUMNNAME_LBR_ISS_Chargeability = "LBR_ISS_Chargeability";

	/** Set ISS Chargeability Indicator	  */
	public void setLBR_ISS_Chargeability (String LBR_ISS_Chargeability);

	/** Get ISS Chargeability Indicator	  */
	public String getLBR_ISS_Chargeability();

    /** Column name LBR_ISS_WithholdingAmt */
    public static final String COLUMNNAME_LBR_ISS_WithholdingAmt = "LBR_ISS_WithholdingAmt";

	/** Set ISS Withholding Amount	  */
	public void setLBR_ISS_WithholdingAmt (BigDecimal LBR_ISS_WithholdingAmt);

	/** Get ISS Withholding Amount	  */
	public BigDecimal getLBR_ISS_WithholdingAmt();

    /** Column name LBR_IncidenceCity_ID */
    public static final String COLUMNNAME_LBR_IncidenceCity_ID = "LBR_IncidenceCity_ID";

	/** Set Incidence City.
	  * Incidence City
	  */
	public void setLBR_IncidenceCity_ID (int LBR_IncidenceCity_ID);

	/** Get Incidence City.
	  * Incidence City
	  */
	public int getLBR_IncidenceCity_ID();

	public org.compiere.model.I_C_City getLBR_IncidenceCity() throws RuntimeException;

    /** Column name LBR_IncidenceRegion_ID */
    public static final String COLUMNNAME_LBR_IncidenceRegion_ID = "LBR_IncidenceRegion_ID";

	/** Set Incidence Region.
	  * Identifies a geographical Region
	  */
	public void setLBR_IncidenceRegion_ID (int LBR_IncidenceRegion_ID);

	/** Get Incidence Region.
	  * Identifies a geographical Region
	  */
	public int getLBR_IncidenceRegion_ID();

	public org.compiere.model.I_C_Region getLBR_IncidenceRegion() throws RuntimeException;

    /** Column name LBR_OtherWithholdingsAmt */
    public static final String COLUMNNAME_LBR_OtherWithholdingsAmt = "LBR_OtherWithholdingsAmt";

	/** Set Other Withholdings Amount	  */
	public void setLBR_OtherWithholdingsAmt (BigDecimal LBR_OtherWithholdingsAmt);

	/** Get Other Withholdings Amount	  */
	public BigDecimal getLBR_OtherWithholdingsAmt();

    /** Column name LBR_ResponsavelRetencao */
    public static final String COLUMNNAME_LBR_ResponsavelRetencao = "LBR_ResponsavelRetencao";

	/** Set Responsável pela Retenção	  */
	public void setLBR_ResponsavelRetencao (String LBR_ResponsavelRetencao);

	/** Get Responsável pela Retenção	  */
	public String getLBR_ResponsavelRetencao();

    /** Column name LBR_ServiceCode */
    public static final String COLUMNNAME_LBR_ServiceCode = "LBR_ServiceCode";

	/** Set Service Code	  */
	public void setLBR_ServiceCode (String LBR_ServiceCode);

	/** Get Service Code	  */
	public String getLBR_ServiceCode();

    /** Column name LBR_ServiceCodeOfCity */
    public static final String COLUMNNAME_LBR_ServiceCodeOfCity = "LBR_ServiceCodeOfCity";

	/** Set Código de Tributação do Município	  */
	public void setLBR_ServiceCodeOfCity (String LBR_ServiceCodeOfCity);

	/** Get Código de Tributação do Município	  */
	public String getLBR_ServiceCodeOfCity();

    /** Column name LBR_ServiceType */
    public static final String COLUMNNAME_LBR_ServiceType = "LBR_ServiceType";

	/** Set Service Type	  */
	public void setLBR_ServiceType (String LBR_ServiceType);

	/** Get Service Type	  */
	public String getLBR_ServiceType();

    /** Column name LBR_TaxAmt */
    public static final String COLUMNNAME_LBR_TaxAmt = "LBR_TaxAmt";

	/** Set Tax Amount.
	  * Defines the Tax Amount
	  */
	public void setLBR_TaxAmt (BigDecimal LBR_TaxAmt);

	/** Get Tax Amount.
	  * Defines the Tax Amount
	  */
	public BigDecimal getLBR_TaxAmt();

    /** Column name LBR_TaxBaseAmt */
    public static final String COLUMNNAME_LBR_TaxBaseAmt = "LBR_TaxBaseAmt";

	/** Set Tax Base Amount.
	  * Defines the Tax Base Amount
	  */
	public void setLBR_TaxBaseAmt (BigDecimal LBR_TaxBaseAmt);

	/** Get Tax Base Amount.
	  * Defines the Tax Base Amount
	  */
	public BigDecimal getLBR_TaxBaseAmt();

    /** Column name LBR_TaxBaseDeductionAmt */
    public static final String COLUMNNAME_LBR_TaxBaseDeductionAmt = "LBR_TaxBaseDeductionAmt";

	/** Set Tax Base Deduction Amount.
	  * Defines the Tax Base Deduction Amount
	  */
	public void setLBR_TaxBaseDeductionAmt (BigDecimal LBR_TaxBaseDeductionAmt);

	/** Get Tax Base Deduction Amount.
	  * Defines the Tax Base Deduction Amount
	  */
	public BigDecimal getLBR_TaxBaseDeductionAmt();

    /** Column name LBR_TaxIncentive */
    public static final String COLUMNNAME_LBR_TaxIncentive = "LBR_TaxIncentive";

	/** Set Tax Incentive Indicator	  */
	public void setLBR_TaxIncentive (String LBR_TaxIncentive);

	/** Get Tax Incentive Indicator	  */
	public String getLBR_TaxIncentive();

    /** Column name LBR_TaxRate */
    public static final String COLUMNNAME_LBR_TaxRate = "LBR_TaxRate";

	/** Set Tax Rate.
	  * Indicates the Tax Rate
	  */
	public void setLBR_TaxRate (BigDecimal LBR_TaxRate);

	/** Get Tax Rate.
	  * Indicates the Tax Rate
	  */
	public BigDecimal getLBR_TaxRate();

    /** Column name LBR_UncondDiscountAmt */
    public static final String COLUMNNAME_LBR_UncondDiscountAmt = "LBR_UncondDiscountAmt";

	/** Set Unconditioned Discount Amount	  */
	public void setLBR_UncondDiscountAmt (BigDecimal LBR_UncondDiscountAmt);

	/** Get Unconditioned Discount Amount	  */
	public BigDecimal getLBR_UncondDiscountAmt();

    /** Column name ProcessName */
    public static final String COLUMNNAME_ProcessName = "ProcessName";

	/** Set Process Name.
	  * Name of the Process
	  */
	public void setProcessName (String ProcessName);

	/** Get Process Name.
	  * Name of the Process
	  */
	public String getProcessName();

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
