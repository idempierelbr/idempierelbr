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

/** Generated Interface for LBR_MDFeVehicle
 *  @author iDempiere (generated) 
 *  @version Release 4.1
 */
@SuppressWarnings("all")
public interface I_LBR_MDFeVehicle 
{

    /** TableName=LBR_MDFeVehicle */
    public static final String Table_Name = "LBR_MDFeVehicle";

    /** AD_Table_ID=1120357 */
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

    /** Column name LBR_MDFeDriver_ID */
    public static final String COLUMNNAME_LBR_MDFeDriver_ID = "LBR_MDFeDriver_ID";

	/** Set MDFe Driver	  */
	public void setLBR_MDFeDriver_ID (int LBR_MDFeDriver_ID);

	/** Get MDFe Driver	  */
	public int getLBR_MDFeDriver_ID();

	public org.kenos.idempiere.lbr.mdfe.model.I_LBR_MDFeDriver getLBR_MDFeDriver() throws RuntimeException;

    /** Column name LBR_MDFeVehicle_ID */
    public static final String COLUMNNAME_LBR_MDFeVehicle_ID = "LBR_MDFeVehicle_ID";

	/** Set MDFe Vehicle	  */
	public void setLBR_MDFeVehicle_ID (int LBR_MDFeVehicle_ID);

	/** Get MDFe Vehicle	  */
	public int getLBR_MDFeVehicle_ID();

    /** Column name LBR_OwnerType */
    public static final String COLUMNNAME_LBR_OwnerType = "LBR_OwnerType";

	/** Set Owner Type	  */
	public void setLBR_OwnerType (String LBR_OwnerType);

	/** Get Owner Type	  */
	public String getLBR_OwnerType();

    /** Column name LBR_RENAVAM */
    public static final String COLUMNNAME_LBR_RENAVAM = "LBR_RENAVAM";

	/** Set RENAVAM.
	  * Registro Nacional de Veículos Automotores (RENAVAM)
	  */
	public void setLBR_RENAVAM (String LBR_RENAVAM);

	/** Get RENAVAM.
	  * Registro Nacional de Veículos Automotores (RENAVAM)
	  */
	public String getLBR_RENAVAM();

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

    /** Column name LBR_TruckType */
    public static final String COLUMNNAME_LBR_TruckType = "LBR_TruckType";

	/** Set Truck Type	  */
	public void setLBR_TruckType (String LBR_TruckType);

	/** Get Truck Type	  */
	public String getLBR_TruckType();

    /** Column name LBR_VehicleSizeKG */
    public static final String COLUMNNAME_LBR_VehicleSizeKG = "LBR_VehicleSizeKG";

	/** Set Vehicle Size KG.
	  * Vehicle Size KG
	  */
	public void setLBR_VehicleSizeKG (BigDecimal LBR_VehicleSizeKG);

	/** Get Vehicle Size KG.
	  * Vehicle Size KG
	  */
	public BigDecimal getLBR_VehicleSizeKG();

    /** Column name LBR_VehicleSizeM3 */
    public static final String COLUMNNAME_LBR_VehicleSizeM3 = "LBR_VehicleSizeM3";

	/** Set Vehicle Size M3.
	  * Vehicle Size M3
	  */
	public void setLBR_VehicleSizeM3 (BigDecimal LBR_VehicleSizeM3);

	/** Get Vehicle Size M3.
	  * Vehicle Size M3
	  */
	public BigDecimal getLBR_VehicleSizeM3();

    /** Column name LBR_VehicleType */
    public static final String COLUMNNAME_LBR_VehicleType = "LBR_VehicleType";

	/** Set Vehicle Type	  */
	public void setLBR_VehicleType (String LBR_VehicleType);

	/** Get Vehicle Type	  */
	public String getLBR_VehicleType();

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

    /** Column name lbr_BPShipperLicensePlate */
    public static final String COLUMNNAME_lbr_BPShipperLicensePlate = "lbr_BPShipperLicensePlate";

	/** Set BP Shipper License Plate.
	  * Defines the BP Shipper License Plate
	  */
	public void setlbr_BPShipperLicensePlate (String lbr_BPShipperLicensePlate);

	/** Get BP Shipper License Plate.
	  * Defines the BP Shipper License Plate
	  */
	public String getlbr_BPShipperLicensePlate();

    /** Column name lbr_CNPJ */
    public static final String COLUMNNAME_lbr_CNPJ = "lbr_CNPJ";

	/** Set CNPJ.
	  * Used to identify Legal Entities in Brazil
	  */
	public void setlbr_CNPJ (String lbr_CNPJ);

	/** Get CNPJ.
	  * Used to identify Legal Entities in Brazil
	  */
	public String getlbr_CNPJ();

    /** Column name lbr_CPF */
    public static final String COLUMNNAME_lbr_CPF = "lbr_CPF";

	/** Set CPF.
	  * Used to identify individuals in Brazil
	  */
	public void setlbr_CPF (String lbr_CPF);

	/** Get CPF.
	  * Used to identify individuals in Brazil
	  */
	public String getlbr_CPF();

    /** Column name lbr_IE */
    public static final String COLUMNNAME_lbr_IE = "lbr_IE";

	/** Set IE.
	  * Used to Identify the IE (State Tax ID)
	  */
	public void setlbr_IE (String lbr_IE);

	/** Get IE.
	  * Used to Identify the IE (State Tax ID)
	  */
	public String getlbr_IE();
}
