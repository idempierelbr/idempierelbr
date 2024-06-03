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
package org.idempierelbr.base.model;

import java.sql.ResultSet;
import java.util.Properties;
import org.compiere.model.*;

/** Generated Model for LBR_BoletoSD
 *  @author iDempiere (generated)
 *  @version Release 11 - $Id$ */
@org.adempiere.base.Model(table="LBR_BoletoSD")
public class X_LBR_BoletoSD extends PO implements I_LBR_BoletoSD, I_Persistent
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20240603L;

    /** Standard Constructor */
    public X_LBR_BoletoSD (Properties ctx, int LBR_BoletoSD_ID, String trxName)
    {
      super (ctx, LBR_BoletoSD_ID, trxName);
      /** if (LBR_BoletoSD_ID == 0)
        {
			setLBR_Boleto_ID (0);
			setLBR_StaticDataType (null);
        } */
    }

    /** Standard Constructor */
    public X_LBR_BoletoSD (Properties ctx, int LBR_BoletoSD_ID, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_BoletoSD_ID, trxName, virtualColumns);
      /** if (LBR_BoletoSD_ID == 0)
        {
			setLBR_Boleto_ID (0);
			setLBR_StaticDataType (null);
        } */
    }

    /** Standard Constructor */
    public X_LBR_BoletoSD (Properties ctx, String LBR_BoletoSD_UU, String trxName)
    {
      super (ctx, LBR_BoletoSD_UU, trxName);
      /** if (LBR_BoletoSD_UU == null)
        {
			setLBR_Boleto_ID (0);
			setLBR_StaticDataType (null);
        } */
    }

    /** Standard Constructor */
    public X_LBR_BoletoSD (Properties ctx, String LBR_BoletoSD_UU, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_BoletoSD_UU, trxName, virtualColumns);
      /** if (LBR_BoletoSD_UU == null)
        {
			setLBR_Boleto_ID (0);
			setLBR_StaticDataType (null);
        } */
    }

    /** Load Constructor */
    public X_LBR_BoletoSD (Properties ctx, ResultSet rs, String trxName)
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
      StringBuilder sb = new StringBuilder ("X_LBR_BoletoSD[")
        .append(get_ID()).append(",Name=").append(getName()).append("]");
      return sb.toString();
    }

	/** Set Address 1.
		@param Address1 Address line 1 for this location
	*/
	public void setAddress1 (String Address1)
	{
		set_Value (COLUMNNAME_Address1, Address1);
	}

	/** Get Address 1.
		@return Address line 1 for this location
	  */
	public String getAddress1()
	{
		return (String)get_Value(COLUMNNAME_Address1);
	}

	/** Set Address 2.
		@param Address2 Address line 2 for this location
	*/
	public void setAddress2 (String Address2)
	{
		set_Value (COLUMNNAME_Address2, Address2);
	}

	/** Get Address 2.
		@return Address line 2 for this location
	  */
	public String getAddress2()
	{
		return (String)get_Value(COLUMNNAME_Address2);
	}

	/** Set Address 3.
		@param Address3 Address Line 3 for the location
	*/
	public void setAddress3 (String Address3)
	{
		set_Value (COLUMNNAME_Address3, Address3);
	}

	/** Get Address 3.
		@return Address Line 3 for the location
	  */
	public String getAddress3()
	{
		return (String)get_Value(COLUMNNAME_Address3);
	}

	/** Set Address 4.
		@param Address4 Address Line 4 for the location
	*/
	public void setAddress4 (String Address4)
	{
		set_Value (COLUMNNAME_Address4, Address4);
	}

	/** Get Address 4.
		@return Address Line 4 for the location
	  */
	public String getAddress4()
	{
		return (String)get_Value(COLUMNNAME_Address4);
	}

	/** Set City.
		@param City Identifies a City
	*/
	public void setCity (String City)
	{
		set_Value (COLUMNNAME_City, City);
	}

	/** Get City.
		@return Identifies a City
	  */
	public String getCity()
	{
		return (String)get_Value(COLUMNNAME_City);
	}

	/** Set Boleto Static Data.
		@param LBR_BoletoSD_ID Boleto Static Data Identifier
	*/
	public void setLBR_BoletoSD_ID (int LBR_BoletoSD_ID)
	{
		if (LBR_BoletoSD_ID < 1)
			set_ValueNoCheck (COLUMNNAME_LBR_BoletoSD_ID, null);
		else
			set_ValueNoCheck (COLUMNNAME_LBR_BoletoSD_ID, Integer.valueOf(LBR_BoletoSD_ID));
	}

	/** Get Boleto Static Data.
		@return Boleto Static Data Identifier
	  */
	public int getLBR_BoletoSD_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_BoletoSD_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Boleto Static Data.
		@param LBR_BoletoSD_UU Boleto Static Data Identifier
	*/
	public void setLBR_BoletoSD_UU (String LBR_BoletoSD_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_BoletoSD_UU, LBR_BoletoSD_UU);
	}

	/** Get Boleto Static Data.
		@return Boleto Static Data Identifier
	  */
	public String getLBR_BoletoSD_UU()
	{
		return (String)get_Value(COLUMNNAME_LBR_BoletoSD_UU);
	}

	public I_LBR_Boleto getLBR_Boleto() throws RuntimeException
	{
		return (I_LBR_Boleto)MTable.get(getCtx(), I_LBR_Boleto.Table_ID)
			.getPO(getLBR_Boleto_ID(), get_TrxName());
	}

	/** Set Brazilian Bank Collection (Boleto).
		@param LBR_Boleto_ID Brazilian Bank Collection (Boleto) Identifier
	*/
	public void setLBR_Boleto_ID (int LBR_Boleto_ID)
	{
		if (LBR_Boleto_ID < 1)
			set_ValueNoCheck (COLUMNNAME_LBR_Boleto_ID, null);
		else
			set_ValueNoCheck (COLUMNNAME_LBR_Boleto_ID, Integer.valueOf(LBR_Boleto_ID));
	}

	/** Get Brazilian Bank Collection (Boleto).
		@return Brazilian Bank Collection (Boleto) Identifier
	  */
	public int getLBR_Boleto_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_Boleto_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Company Number.
		@param LBR_CNABInscEmpNo Company Number
	*/
	public void setLBR_CNABInscEmpNo (String LBR_CNABInscEmpNo)
	{
		set_Value (COLUMNNAME_LBR_CNABInscEmpNo, LBR_CNABInscEmpNo);
	}

	/** Get Company Number.
		@return Company Number	  */
	public String getLBR_CNABInscEmpNo()
	{
		return (String)get_Value(COLUMNNAME_LBR_CNABInscEmpNo);
	}

	/** 0 - Isento / Nao Informado = 0 */
	public static final String LBR_CNABINSCEMPTYPE_0_IsentoNaoInformado = "0";
	/** 1 - CPF = 1 */
	public static final String LBR_CNABINSCEMPTYPE_1_CPF = "1";
	/** 2 - CGC / CNPJ = 2 */
	public static final String LBR_CNABINSCEMPTYPE_2_CGCCNPJ = "2";
	/** 3 - PIS / PASEP = 3 */
	public static final String LBR_CNABINSCEMPTYPE_3_PISPASEP = "3";
	/** 9 - Outros = 9 */
	public static final String LBR_CNABINSCEMPTYPE_9_Outros = "9";
	/** Set Company Number Type.
		@param LBR_CNABInscEmpType Company Number Type
	*/
	public void setLBR_CNABInscEmpType (String LBR_CNABInscEmpType)
	{

		set_Value (COLUMNNAME_LBR_CNABInscEmpType, LBR_CNABInscEmpType);
	}

	/** Get Company Number Type.
		@return Company Number Type	  */
	public String getLBR_CNABInscEmpType()
	{
		return (String)get_Value(COLUMNNAME_LBR_CNABInscEmpType);
	}

	/** Sacador / Avalista = AVA */
	public static final String LBR_STATICDATATYPE_SacadorAvalista = "AVA";
	/** Pagador (Sacado) = PAG */
	public static final String LBR_STATICDATATYPE_PagadorSacado = "PAG";
	/** Set Static Data Type.
		@param LBR_StaticDataType Static Data Type
	*/
	public void setLBR_StaticDataType (String LBR_StaticDataType)
	{

		set_Value (COLUMNNAME_LBR_StaticDataType, LBR_StaticDataType);
	}

	/** Get Static Data Type.
		@return Static Data Type	  */
	public String getLBR_StaticDataType()
	{
		return (String)get_Value(COLUMNNAME_LBR_StaticDataType);
	}

	/** Set Name.
		@param Name Alphanumeric identifier of the entity
	*/
	public void setName (String Name)
	{
		set_Value (COLUMNNAME_Name, Name);
	}

	/** Get Name.
		@return Alphanumeric identifier of the entity
	  */
	public String getName()
	{
		return (String)get_Value(COLUMNNAME_Name);
	}

	/** Set ZIP.
		@param Postal Postal code
	*/
	public void setPostal (String Postal)
	{
		set_Value (COLUMNNAME_Postal, Postal);
	}

	/** Get ZIP.
		@return Postal code
	  */
	public String getPostal()
	{
		return (String)get_Value(COLUMNNAME_Postal);
	}

	/** Set Region.
		@param RegionName Name of the Region
	*/
	public void setRegionName (String RegionName)
	{
		set_Value (COLUMNNAME_RegionName, RegionName);
	}

	/** Get Region.
		@return Name of the Region
	  */
	public String getRegionName()
	{
		return (String)get_Value(COLUMNNAME_RegionName);
	}
}