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
/** Generated Model - DO NOT CHANGE */
package org.adempierelbr.model;

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.util.Properties;
import org.compiere.model.*;
import org.compiere.util.Env;

/** Generated Model for LBR_MDFeVehicle
 *  @author iDempiere (generated) 
 *  @version Release 4.1 - $Id$ */
public class X_LBR_MDFeVehicle extends PO implements I_LBR_MDFeVehicle, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20170626L;

    /** Standard Constructor */
    public X_LBR_MDFeVehicle (Properties ctx, int LBR_MDFeVehicle_ID, String trxName)
    {
      super (ctx, LBR_MDFeVehicle_ID, trxName);
      /** if (LBR_MDFeVehicle_ID == 0)
        {
			setC_SalesRegion_ID (0);
			setLBR_MDFeVehicle_ID (0);
			setLBR_TruckType (null);
			setLBR_VehicleType (null);
			setlbr_BPShipperLicensePlate (null);
        } */
    }

    /** Load Constructor */
    public X_LBR_MDFeVehicle (Properties ctx, ResultSet rs, String trxName)
    {
      super (ctx, rs, trxName);
    }

    /** AccessLevel
      * @return 3 - Client - Org 
      */
    protected int get_AccessLevel()
    {
      return accessLevel.intValue();
    }

    /** Load Meta Data */
    protected POInfo initPO (Properties ctx)
    {
      POInfo poi = POInfo.getPOInfo (ctx, Table_ID, get_TrxName());
      return poi;
    }

    public String toString()
    {
      StringBuffer sb = new StringBuffer ("X_LBR_MDFeVehicle[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	public org.compiere.model.I_C_Region getC_Region() throws RuntimeException
    {
		return (org.compiere.model.I_C_Region)MTable.get(getCtx(), org.compiere.model.I_C_Region.Table_Name)
			.getPO(getC_Region_ID(), get_TrxName());	}

	/** Set Region.
		@param C_Region_ID 
		Identifies a geographical Region
	  */
	public void setC_Region_ID (int C_Region_ID)
	{
		if (C_Region_ID < 1) 
			set_Value (COLUMNNAME_C_Region_ID, null);
		else 
			set_Value (COLUMNNAME_C_Region_ID, Integer.valueOf(C_Region_ID));
	}

	/** Get Region.
		@return Identifies a geographical Region
	  */
	public int getC_Region_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_Region_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.compiere.model.I_C_Region getC_SalesRegion() throws RuntimeException
    {
		return (org.compiere.model.I_C_Region)MTable.get(getCtx(), org.compiere.model.I_C_Region.Table_Name)
			.getPO(getC_SalesRegion_ID(), get_TrxName());	}

	/** Set Sales Region.
		@param C_SalesRegion_ID 
		Sales coverage region
	  */
	public void setC_SalesRegion_ID (int C_SalesRegion_ID)
	{
		if (C_SalesRegion_ID < 1) 
			set_Value (COLUMNNAME_C_SalesRegion_ID, null);
		else 
			set_Value (COLUMNNAME_C_SalesRegion_ID, Integer.valueOf(C_SalesRegion_ID));
	}

	/** Get Sales Region.
		@return Sales coverage region
	  */
	public int getC_SalesRegion_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_SalesRegion_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.adempierelbr.model.I_LBR_MDFeDriver getLBR_MDFeDriver() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_MDFeDriver)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_MDFeDriver.Table_Name)
			.getPO(getLBR_MDFeDriver_ID(), get_TrxName());	}

	/** Set MDFe Driver.
		@param LBR_MDFeDriver_ID MDFe Driver	  */
	public void setLBR_MDFeDriver_ID (int LBR_MDFeDriver_ID)
	{
		if (LBR_MDFeDriver_ID < 1) 
			set_Value (COLUMNNAME_LBR_MDFeDriver_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_MDFeDriver_ID, Integer.valueOf(LBR_MDFeDriver_ID));
	}

	/** Get MDFe Driver.
		@return MDFe Driver	  */
	public int getLBR_MDFeDriver_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_MDFeDriver_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set MDFe Vehicle.
		@param LBR_MDFeVehicle_ID MDFe Vehicle	  */
	public void setLBR_MDFeVehicle_ID (int LBR_MDFeVehicle_ID)
	{
		if (LBR_MDFeVehicle_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_MDFeVehicle_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_MDFeVehicle_ID, Integer.valueOf(LBR_MDFeVehicle_ID));
	}

	/** Get MDFe Vehicle.
		@return MDFe Vehicle	  */
	public int getLBR_MDFeVehicle_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_MDFeVehicle_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** TAC Aggregate = 0 */
	public static final String LBR_OWNERTYPE_TACAggregate = "0";
	/** TAC Independent = 1 */
	public static final String LBR_OWNERTYPE_TACIndependent = "1";
	/** Other = 2 */
	public static final String LBR_OWNERTYPE_Other = "2";
	/** Set Owner Type.
		@param LBR_OwnerType Owner Type	  */
	public void setLBR_OwnerType (String LBR_OwnerType)
	{

		set_Value (COLUMNNAME_LBR_OwnerType, LBR_OwnerType);
	}

	/** Get Owner Type.
		@return Owner Type	  */
	public String getLBR_OwnerType () 
	{
		return (String)get_Value(COLUMNNAME_LBR_OwnerType);
	}

	/** Set RENAVAM.
		@param LBR_RENAVAM 
		Registro Nacional de Veículos Automotores (RENAVAM)
	  */
	public void setLBR_RENAVAM (String LBR_RENAVAM)
	{
		set_Value (COLUMNNAME_LBR_RENAVAM, LBR_RENAVAM);
	}

	/** Get RENAVAM.
		@return Registro Nacional de Veículos Automotores (RENAVAM)
	  */
	public String getLBR_RENAVAM () 
	{
		return (String)get_Value(COLUMNNAME_LBR_RENAVAM);
	}

	/** Set RNTRC.
		@param LBR_RNTRC 
		Registro Nacional dos Transportadores Rodoviários de Carga
	  */
	public void setLBR_RNTRC (String LBR_RNTRC)
	{
		set_Value (COLUMNNAME_LBR_RNTRC, LBR_RNTRC);
	}

	/** Get RNTRC.
		@return Registro Nacional dos Transportadores Rodoviários de Carga
	  */
	public String getLBR_RNTRC () 
	{
		return (String)get_Value(COLUMNNAME_LBR_RNTRC);
	}

	/** Not Applicable = 00 */
	public static final String LBR_TRUCKTYPE_NotApplicable = "00";
	/** Open = 01 */
	public static final String LBR_TRUCKTYPE_Open = "01";
	/** Closed/Box = 02 */
	public static final String LBR_TRUCKTYPE_ClosedBox = "02";
	/** Grain = 03 */
	public static final String LBR_TRUCKTYPE_Grain = "03";
	/** Container = 04 */
	public static final String LBR_TRUCKTYPE_Container = "04";
	/** Sider = 05 */
	public static final String LBR_TRUCKTYPE_Sider = "05";
	/** Set Truck Type.
		@param LBR_TruckType Truck Type	  */
	public void setLBR_TruckType (String LBR_TruckType)
	{

		set_Value (COLUMNNAME_LBR_TruckType, LBR_TruckType);
	}

	/** Get Truck Type.
		@return Truck Type	  */
	public String getLBR_TruckType () 
	{
		return (String)get_Value(COLUMNNAME_LBR_TruckType);
	}

	/** Set Vehicle Size KG.
		@param LBR_VehicleSizeKG 
		Vehicle Size KG
	  */
	public void setLBR_VehicleSizeKG (BigDecimal LBR_VehicleSizeKG)
	{
		set_Value (COLUMNNAME_LBR_VehicleSizeKG, LBR_VehicleSizeKG);
	}

	/** Get Vehicle Size KG.
		@return Vehicle Size KG
	  */
	public BigDecimal getLBR_VehicleSizeKG () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_VehicleSizeKG);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Vehicle Size M3.
		@param LBR_VehicleSizeM3 
		Vehicle Size M3
	  */
	public void setLBR_VehicleSizeM3 (BigDecimal LBR_VehicleSizeM3)
	{
		set_Value (COLUMNNAME_LBR_VehicleSizeM3, LBR_VehicleSizeM3);
	}

	/** Get Vehicle Size M3.
		@return Vehicle Size M3
	  */
	public BigDecimal getLBR_VehicleSizeM3 () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_VehicleSizeM3);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Truck = 01 */
	public static final String LBR_VEHICLETYPE_Truck = "01";
	/** Toco = 02 */
	public static final String LBR_VEHICLETYPE_Toco = "02";
	/** Heavy Truck = 03 */
	public static final String LBR_VEHICLETYPE_HeavyTruck = "03";
	/** VAN = 04 */
	public static final String LBR_VEHICLETYPE_VAN = "04";
	/** Utility vehicle = 05 */
	public static final String LBR_VEHICLETYPE_UtilityVehicle = "05";
	/** Other = 06 */
	public static final String LBR_VEHICLETYPE_Other = "06";
	/** Set Vehicle Type.
		@param LBR_VehicleType Vehicle Type	  */
	public void setLBR_VehicleType (String LBR_VehicleType)
	{

		set_Value (COLUMNNAME_LBR_VehicleType, LBR_VehicleType);
	}

	/** Get Vehicle Type.
		@return Vehicle Type	  */
	public String getLBR_VehicleType () 
	{
		return (String)get_Value(COLUMNNAME_LBR_VehicleType);
	}

	/** Set Name.
		@param Name 
		Alphanumeric identifier of the entity
	  */
	public void setName (String Name)
	{
		set_Value (COLUMNNAME_Name, Name);
	}

	/** Get Name.
		@return Alphanumeric identifier of the entity
	  */
	public String getName () 
	{
		return (String)get_Value(COLUMNNAME_Name);
	}

	/** Set Search Key.
		@param Value 
		Search key for the record in the format required - must be unique
	  */
	public void setValue (String Value)
	{
		set_Value (COLUMNNAME_Value, Value);
	}

	/** Get Search Key.
		@return Search key for the record in the format required - must be unique
	  */
	public String getValue () 
	{
		return (String)get_Value(COLUMNNAME_Value);
	}

	/** Set Weight.
		@param Weight 
		Weight of a product
	  */
	public void setWeight (BigDecimal Weight)
	{
		set_Value (COLUMNNAME_Weight, Weight);
	}

	/** Get Weight.
		@return Weight of a product
	  */
	public BigDecimal getWeight () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_Weight);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set BP Shipper License Plate.
		@param lbr_BPShipperLicensePlate 
		Defines the BP Shipper License Plate
	  */
	public void setlbr_BPShipperLicensePlate (String lbr_BPShipperLicensePlate)
	{
		set_Value (COLUMNNAME_lbr_BPShipperLicensePlate, lbr_BPShipperLicensePlate);
	}

	/** Get BP Shipper License Plate.
		@return Defines the BP Shipper License Plate
	  */
	public String getlbr_BPShipperLicensePlate () 
	{
		return (String)get_Value(COLUMNNAME_lbr_BPShipperLicensePlate);
	}

	/** Set CNPJ.
		@param lbr_CNPJ 
		Used to identify Legal Entities in Brazil
	  */
	public void setlbr_CNPJ (String lbr_CNPJ)
	{
		set_Value (COLUMNNAME_lbr_CNPJ, lbr_CNPJ);
	}

	/** Get CNPJ.
		@return Used to identify Legal Entities in Brazil
	  */
	public String getlbr_CNPJ () 
	{
		return (String)get_Value(COLUMNNAME_lbr_CNPJ);
	}

	/** Set CPF.
		@param lbr_CPF 
		Used to identify individuals in Brazil
	  */
	public void setlbr_CPF (String lbr_CPF)
	{
		set_Value (COLUMNNAME_lbr_CPF, lbr_CPF);
	}

	/** Get CPF.
		@return Used to identify individuals in Brazil
	  */
	public String getlbr_CPF () 
	{
		return (String)get_Value(COLUMNNAME_lbr_CPF);
	}

	/** Set IE.
		@param lbr_IE 
		Used to Identify the IE (State Tax ID)
	  */
	public void setlbr_IE (String lbr_IE)
	{
		set_Value (COLUMNNAME_lbr_IE, lbr_IE);
	}

	/** Get IE.
		@return Used to Identify the IE (State Tax ID)
	  */
	public String getlbr_IE () 
	{
		return (String)get_Value(COLUMNNAME_lbr_IE);
	}
}