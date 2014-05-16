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
package org.idempierelbr.nfe.model;

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.util.Properties;
import org.compiere.model.*;
import org.compiere.util.Env;
import org.idempierelbr.tax.model.I_LBR_CFOP;

/** Generated Model for LBR_NotaFiscalTransp
 *  @author iDempiere (generated) 
 *  @version Release 2.0 - $Id$ */
public class X_LBR_NotaFiscalTransp extends PO implements I_LBR_NotaFiscalTransp, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20140513L;

    /** Standard Constructor */
    public X_LBR_NotaFiscalTransp (Properties ctx, int LBR_NotaFiscalTransp_ID, String trxName)
    {
      super (ctx, LBR_NotaFiscalTransp_ID, trxName);
      /** if (LBR_NotaFiscalTransp_ID == 0)
        {
			setLBR_IsICMSTaxExempt (false);
// N
			setLBR_NFeModShipping (null);
// 0
			setLBR_NotaFiscal_ID (0);
			setLBR_NotaFiscalTransp_ID (0);
        } */
    }

    /** Load Constructor */
    public X_LBR_NotaFiscalTransp (Properties ctx, ResultSet rs, String trxName)
    {
      super (ctx, rs, trxName);
    }

    /** AccessLevel
      * @return 1 - Org 
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
      StringBuffer sb = new StringBuffer ("X_LBR_NotaFiscalTransp[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	public org.compiere.model.I_C_City getC_City() throws RuntimeException
    {
		return (org.compiere.model.I_C_City)MTable.get(getCtx(), org.compiere.model.I_C_City.Table_Name)
			.getPO(getC_City_ID(), get_TrxName());	}

	/** Set City.
		@param C_City_ID 
		City
	  */
	public void setC_City_ID (int C_City_ID)
	{
		if (C_City_ID < 1) 
			set_Value (COLUMNNAME_C_City_ID, null);
		else 
			set_Value (COLUMNNAME_C_City_ID, Integer.valueOf(C_City_ID));
	}

	/** Get City.
		@return City
	  */
	public int getC_City_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_City_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Charge amount.
		@param ChargeAmt 
		Charge Amount
	  */
	public void setChargeAmt (BigDecimal ChargeAmt)
	{
		set_Value (COLUMNNAME_ChargeAmt, ChargeAmt);
	}

	/** Get Charge amount.
		@return Charge Amount
	  */
	public BigDecimal getChargeAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_ChargeAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
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

	public I_LBR_CFOP getLBR_CFOP() throws RuntimeException
    {
		return (I_LBR_CFOP)MTable.get(getCtx(), I_LBR_CFOP.Table_Name)
			.getPO(getLBR_CFOP_ID(), get_TrxName());	}

	/** Set CFOP.
		@param LBR_CFOP_ID 
		Indentifies the CFOP
	  */
	public void setLBR_CFOP_ID (int LBR_CFOP_ID)
	{
		if (LBR_CFOP_ID < 1) 
			set_Value (COLUMNNAME_LBR_CFOP_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_CFOP_ID, Integer.valueOf(LBR_CFOP_ID));
	}

	/** Get CFOP.
		@return Indentifies the CFOP
	  */
	public int getLBR_CFOP_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_CFOP_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Ferry Identification.
		@param LBR_Ferry Ferry Identification	  */
	public void setLBR_Ferry (String LBR_Ferry)
	{
		set_Value (COLUMNNAME_LBR_Ferry, LBR_Ferry);
	}

	/** Get Ferry Identification.
		@return Ferry Identification	  */
	public String getLBR_Ferry () 
	{
		return (String)get_Value(COLUMNNAME_LBR_Ferry);
	}

	/** Set ICMS Tax exempt.
		@param LBR_IsICMSTaxExempt ICMS Tax exempt	  */
	public void setLBR_IsICMSTaxExempt (boolean LBR_IsICMSTaxExempt)
	{
		set_Value (COLUMNNAME_LBR_IsICMSTaxExempt, Boolean.valueOf(LBR_IsICMSTaxExempt));
	}

	/** Get ICMS Tax exempt.
		@return ICMS Tax exempt	  */
	public boolean isLBR_IsICMSTaxExempt () 
	{
		Object oo = get_Value(COLUMNNAME_LBR_IsICMSTaxExempt);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set License Plate.
		@param LBR_LicensePlate License Plate	  */
	public void setLBR_LicensePlate (String LBR_LicensePlate)
	{
		set_Value (COLUMNNAME_LBR_LicensePlate, LBR_LicensePlate);
	}

	/** Get License Plate.
		@return License Plate	  */
	public String getLBR_LicensePlate () 
	{
		return (String)get_Value(COLUMNNAME_LBR_LicensePlate);
	}

	public org.compiere.model.I_C_Region getLBR_LicensePlateRegion() throws RuntimeException
    {
		return (org.compiere.model.I_C_Region)MTable.get(getCtx(), org.compiere.model.I_C_Region.Table_Name)
			.getPO(getLBR_LicensePlateRegion_ID(), get_TrxName());	}

	/** Set License Plate Region.
		@param LBR_LicensePlateRegion_ID License Plate Region	  */
	public void setLBR_LicensePlateRegion_ID (int LBR_LicensePlateRegion_ID)
	{
		if (LBR_LicensePlateRegion_ID < 1) 
			set_Value (COLUMNNAME_LBR_LicensePlateRegion_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_LicensePlateRegion_ID, Integer.valueOf(LBR_LicensePlateRegion_ID));
	}

	/** Get License Plate Region.
		@return License Plate Region	  */
	public int getLBR_LicensePlateRegion_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_LicensePlateRegion_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.compiere.model.I_C_BPartner_Location getLBR_M_Shipper_Location() throws RuntimeException
    {
		return (org.compiere.model.I_C_BPartner_Location)MTable.get(getCtx(), org.compiere.model.I_C_BPartner_Location.Table_Name)
			.getPO(getLBR_M_Shipper_Location_ID(), get_TrxName());	}

	/** Set Shipper Location.
		@param LBR_M_Shipper_Location_ID Shipper Location	  */
	public void setLBR_M_Shipper_Location_ID (int LBR_M_Shipper_Location_ID)
	{
		if (LBR_M_Shipper_Location_ID < 1) 
			set_Value (COLUMNNAME_LBR_M_Shipper_Location_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_M_Shipper_Location_ID, Integer.valueOf(LBR_M_Shipper_Location_ID));
	}

	/** Get Shipper Location.
		@return Shipper Location	  */
	public int getLBR_M_Shipper_Location_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_M_Shipper_Location_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Issuer = 0 */
	public static final String LBR_NFEMODSHIPPING_Issuer = "0";
	/** Recipient / Sender = 1 */
	public static final String LBR_NFEMODSHIPPING_RecipientSender = "1";
	/** Third parties = 2 */
	public static final String LBR_NFEMODSHIPPING_ThirdParties = "2";
	/** Without freight = 9 */
	public static final String LBR_NFEMODSHIPPING_WithoutFreight = "9";
	/** Set NFe Mode of Shipping.
		@param LBR_NFeModShipping NFe Mode of Shipping	  */
	public void setLBR_NFeModShipping (String LBR_NFeModShipping)
	{

		set_Value (COLUMNNAME_LBR_NFeModShipping, LBR_NFeModShipping);
	}

	/** Get NFe Mode of Shipping.
		@return NFe Mode of Shipping	  */
	public String getLBR_NFeModShipping () 
	{
		return (String)get_Value(COLUMNNAME_LBR_NFeModShipping);
	}

	/** Vehicle / trailer = 0 */
	public static final String LBR_NFETRANSPVEHICLETYPE_VehicleTrailer = "0";
	/** Ferry = 1 */
	public static final String LBR_NFETRANSPVEHICLETYPE_Ferry = "1";
	/** Wagon = 2 */
	public static final String LBR_NFETRANSPVEHICLETYPE_Wagon = "2";
	/** Set NFe Transportation Vehicle Type.
		@param LBR_NFeTranspVehicleType NFe Transportation Vehicle Type	  */
	public void setLBR_NFeTranspVehicleType (String LBR_NFeTranspVehicleType)
	{

		set_Value (COLUMNNAME_LBR_NFeTranspVehicleType, LBR_NFeTranspVehicleType);
	}

	/** Get NFe Transportation Vehicle Type.
		@return NFe Transportation Vehicle Type	  */
	public String getLBR_NFeTranspVehicleType () 
	{
		return (String)get_Value(COLUMNNAME_LBR_NFeTranspVehicleType);
	}

	public I_LBR_NotaFiscal getLBR_NotaFiscal() throws RuntimeException
    {
		return (I_LBR_NotaFiscal)MTable.get(getCtx(), I_LBR_NotaFiscal.Table_Name)
			.getPO(getLBR_NotaFiscal_ID(), get_TrxName());	}

	/** Set Brazilian Fiscal Invoice (Nota Fiscal).
		@param LBR_NotaFiscal_ID 
		Brazilian Fiscal Invoice (Nota Fiscal) Identifier
	  */
	public void setLBR_NotaFiscal_ID (int LBR_NotaFiscal_ID)
	{
		if (LBR_NotaFiscal_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_NotaFiscal_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_NotaFiscal_ID, Integer.valueOf(LBR_NotaFiscal_ID));
	}

	/** Get Brazilian Fiscal Invoice (Nota Fiscal).
		@return Brazilian Fiscal Invoice (Nota Fiscal) Identifier
	  */
	public int getLBR_NotaFiscal_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_NotaFiscal_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Brazilian Fiscal Invoice (Nota Fiscal) Transportation.
		@param LBR_NotaFiscalTransp_ID Brazilian Fiscal Invoice (Nota Fiscal) Transportation	  */
	public void setLBR_NotaFiscalTransp_ID (int LBR_NotaFiscalTransp_ID)
	{
		if (LBR_NotaFiscalTransp_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_NotaFiscalTransp_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_NotaFiscalTransp_ID, Integer.valueOf(LBR_NotaFiscalTransp_ID));
	}

	/** Get Brazilian Fiscal Invoice (Nota Fiscal) Transportation.
		@return Brazilian Fiscal Invoice (Nota Fiscal) Transportation	  */
	public int getLBR_NotaFiscalTransp_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_NotaFiscalTransp_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Brazilian Fiscal Invoice (Nota Fiscal) Transportation.
		@param LBR_NotaFiscalTransp_UU Brazilian Fiscal Invoice (Nota Fiscal) Transportation	  */
	public void setLBR_NotaFiscalTransp_UU (String LBR_NotaFiscalTransp_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_NotaFiscalTransp_UU, LBR_NotaFiscalTransp_UU);
	}

	/** Get Brazilian Fiscal Invoice (Nota Fiscal) Transportation.
		@return Brazilian Fiscal Invoice (Nota Fiscal) Transportation	  */
	public String getLBR_NotaFiscalTransp_UU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_NotaFiscalTransp_UU);
	}

	/** Set National Registry of Cargo Carriers.
		@param LBR_RNTC National Registry of Cargo Carriers	  */
	public void setLBR_RNTC (String LBR_RNTC)
	{
		set_Value (COLUMNNAME_LBR_RNTC, LBR_RNTC);
	}

	/** Get National Registry of Cargo Carriers.
		@return National Registry of Cargo Carriers	  */
	public String getLBR_RNTC () 
	{
		return (String)get_Value(COLUMNNAME_LBR_RNTC);
	}

	/** Set Tax Amount.
		@param LBR_TaxAmt 
		Defines the Tax Amount
	  */
	public void setLBR_TaxAmt (BigDecimal LBR_TaxAmt)
	{
		set_Value (COLUMNNAME_LBR_TaxAmt, LBR_TaxAmt);
	}

	/** Get Tax Amount.
		@return Defines the Tax Amount
	  */
	public BigDecimal getLBR_TaxAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_TaxAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Tax Base Amount.
		@param LBR_TaxBaseAmt 
		Defines the Tax Base Amount
	  */
	public void setLBR_TaxBaseAmt (BigDecimal LBR_TaxBaseAmt)
	{
		set_Value (COLUMNNAME_LBR_TaxBaseAmt, LBR_TaxBaseAmt);
	}

	/** Get Tax Base Amount.
		@return Defines the Tax Base Amount
	  */
	public BigDecimal getLBR_TaxBaseAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_TaxBaseAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Tax Rate.
		@param LBR_TaxRate 
		Indicates the Tax Rate
	  */
	public void setLBR_TaxRate (BigDecimal LBR_TaxRate)
	{
		set_Value (COLUMNNAME_LBR_TaxRate, LBR_TaxRate);
	}

	/** Get Tax Rate.
		@return Indicates the Tax Rate
	  */
	public BigDecimal getLBR_TaxRate () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_TaxRate);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Wagon Identification.
		@param LBR_Wagon Wagon Identification	  */
	public void setLBR_Wagon (String LBR_Wagon)
	{
		set_Value (COLUMNNAME_LBR_Wagon, LBR_Wagon);
	}

	/** Get Wagon Identification.
		@return Wagon Identification	  */
	public String getLBR_Wagon () 
	{
		return (String)get_Value(COLUMNNAME_LBR_Wagon);
	}

	public org.compiere.model.I_M_Shipper getM_Shipper() throws RuntimeException
    {
		return (org.compiere.model.I_M_Shipper)MTable.get(getCtx(), org.compiere.model.I_M_Shipper.Table_Name)
			.getPO(getM_Shipper_ID(), get_TrxName());	}

	/** Set Shipper.
		@param M_Shipper_ID 
		Method or manner of product delivery
	  */
	public void setM_Shipper_ID (int M_Shipper_ID)
	{
		if (M_Shipper_ID < 1) 
			set_Value (COLUMNNAME_M_Shipper_ID, null);
		else 
			set_Value (COLUMNNAME_M_Shipper_ID, Integer.valueOf(M_Shipper_ID));
	}

	/** Get Shipper.
		@return Method or manner of product delivery
	  */
	public int getM_Shipper_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_M_Shipper_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}
}