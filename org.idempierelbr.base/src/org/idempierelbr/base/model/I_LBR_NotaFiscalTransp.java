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

/** Generated Interface for LBR_NotaFiscalTransp
 *  @author iDempiere (generated) 
 *  @version Release 11
 */
@SuppressWarnings("all")
public interface I_LBR_NotaFiscalTransp 
{

    /** TableName=LBR_NotaFiscalTransp */
    public static final String Table_Name = "LBR_NotaFiscalTransp";

    /** AD_Table_ID=1000036 */
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

	public org.compiere.model.I_C_Region getC_Region() throws RuntimeException;

    /** Column name ChargeAmt */
    public static final String COLUMNNAME_ChargeAmt = "ChargeAmt";

	/** Set Charge amount.
	  * Charge Amount
	  */
	public void setChargeAmt (BigDecimal ChargeAmt);

	/** Get Charge amount.
	  * Charge Amount
	  */
	public BigDecimal getChargeAmt();

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

    /** Column name LBR_CFOP_ID */
    public static final String COLUMNNAME_LBR_CFOP_ID = "LBR_CFOP_ID";

	/** Set CFOP.
	  * Indentifies the CFOP
	  */
	public void setLBR_CFOP_ID (int LBR_CFOP_ID);

	/** Get CFOP.
	  * Indentifies the CFOP
	  */
	public int getLBR_CFOP_ID();

	public I_LBR_CFOP getLBR_CFOP() throws RuntimeException;

    /** Column name LBR_Ferry */
    public static final String COLUMNNAME_LBR_Ferry = "LBR_Ferry";

	/** Set Ferry Identification	  */
	public void setLBR_Ferry (String LBR_Ferry);

	/** Get Ferry Identification	  */
	public String getLBR_Ferry();

    /** Column name LBR_IsICMSTaxExempt */
    public static final String COLUMNNAME_LBR_IsICMSTaxExempt = "LBR_IsICMSTaxExempt";

	/** Set ICMS Tax exempt	  */
	public void setLBR_IsICMSTaxExempt (boolean LBR_IsICMSTaxExempt);

	/** Get ICMS Tax exempt	  */
	public boolean isLBR_IsICMSTaxExempt();

    /** Column name LBR_LicensePlate */
    public static final String COLUMNNAME_LBR_LicensePlate = "LBR_LicensePlate";

	/** Set License Plate	  */
	public void setLBR_LicensePlate (String LBR_LicensePlate);

	/** Get License Plate	  */
	public String getLBR_LicensePlate();

    /** Column name LBR_LicensePlateRegion_ID */
    public static final String COLUMNNAME_LBR_LicensePlateRegion_ID = "LBR_LicensePlateRegion_ID";

	/** Set License Plate Region	  */
	public void setLBR_LicensePlateRegion_ID (int LBR_LicensePlateRegion_ID);

	/** Get License Plate Region	  */
	public int getLBR_LicensePlateRegion_ID();

	public org.compiere.model.I_C_Region getLBR_LicensePlateRegion() throws RuntimeException;

    /** Column name LBR_M_Shipper_Location_ID */
    public static final String COLUMNNAME_LBR_M_Shipper_Location_ID = "LBR_M_Shipper_Location_ID";

	/** Set Shipper Location	  */
	public void setLBR_M_Shipper_Location_ID (int LBR_M_Shipper_Location_ID);

	/** Get Shipper Location	  */
	public int getLBR_M_Shipper_Location_ID();

	public org.compiere.model.I_C_BPartner_Location getLBR_M_Shipper_Location() throws RuntimeException;

    /** Column name LBR_NFeModShipping */
    public static final String COLUMNNAME_LBR_NFeModShipping = "LBR_NFeModShipping";

	/** Set NFe Mode of Shipping	  */
	public void setLBR_NFeModShipping (String LBR_NFeModShipping);

	/** Get NFe Mode of Shipping	  */
	public String getLBR_NFeModShipping();

    /** Column name LBR_NFeTranspVehicleType */
    public static final String COLUMNNAME_LBR_NFeTranspVehicleType = "LBR_NFeTranspVehicleType";

	/** Set NFe Transportation Vehicle Type	  */
	public void setLBR_NFeTranspVehicleType (String LBR_NFeTranspVehicleType);

	/** Get NFe Transportation Vehicle Type	  */
	public String getLBR_NFeTranspVehicleType();

    /** Column name LBR_NotaFiscalTransp_ID */
    public static final String COLUMNNAME_LBR_NotaFiscalTransp_ID = "LBR_NotaFiscalTransp_ID";

	/** Set Brazilian Fiscal Invoice (Nota Fiscal) Transportation	  */
	public void setLBR_NotaFiscalTransp_ID (int LBR_NotaFiscalTransp_ID);

	/** Get Brazilian Fiscal Invoice (Nota Fiscal) Transportation	  */
	public int getLBR_NotaFiscalTransp_ID();

    /** Column name LBR_NotaFiscalTransp_UU */
    public static final String COLUMNNAME_LBR_NotaFiscalTransp_UU = "LBR_NotaFiscalTransp_UU";

	/** Set Brazilian Fiscal Invoice (Nota Fiscal) Transportation	  */
	public void setLBR_NotaFiscalTransp_UU (String LBR_NotaFiscalTransp_UU);

	/** Get Brazilian Fiscal Invoice (Nota Fiscal) Transportation	  */
	public String getLBR_NotaFiscalTransp_UU();

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

    /** Column name LBR_RNTC */
    public static final String COLUMNNAME_LBR_RNTC = "LBR_RNTC";

	/** Set National Registry of Cargo Carriers	  */
	public void setLBR_RNTC (String LBR_RNTC);

	/** Get National Registry of Cargo Carriers	  */
	public String getLBR_RNTC();

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

    /** Column name LBR_Wagon */
    public static final String COLUMNNAME_LBR_Wagon = "LBR_Wagon";

	/** Set Wagon Identification	  */
	public void setLBR_Wagon (String LBR_Wagon);

	/** Get Wagon Identification	  */
	public String getLBR_Wagon();

    /** Column name M_Shipper_ID */
    public static final String COLUMNNAME_M_Shipper_ID = "M_Shipper_ID";

	/** Set Shipper.
	  * Method or manner of product delivery
	  */
	public void setM_Shipper_ID (int M_Shipper_ID);

	/** Get Shipper.
	  * Method or manner of product delivery
	  */
	public int getM_Shipper_ID();

	public org.compiere.model.I_M_Shipper getM_Shipper() throws RuntimeException;

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
