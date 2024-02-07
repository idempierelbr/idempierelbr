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

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.Properties;
import org.compiere.model.*;
import org.compiere.util.Env;

/** Generated Model for LBR_IBPTax
 *  @author iDempiere (generated) 
 *  @version Release 2.1 - $Id$ */
public class X_LBR_IBPTax extends PO implements I_LBR_IBPTax, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20150209L;

    /** Standard Constructor */
    public X_LBR_IBPTax (Properties ctx, int LBR_IBPTax_ID, String trxName)
    {
      super (ctx, LBR_IBPTax_ID, trxName);
      /** if (LBR_IBPTax_ID == 0)
        {
        } */
    }

    /** Load Constructor */
    public X_LBR_IBPTax (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_IBPTax[")
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

	/** Set Validation code.
		@param Code 
		Validation Code
	  */
	public void setCode (String Code)
	{
		set_Value (COLUMNNAME_Code, Code);
	}

	/** Get Validation code.
		@return Validation Code
	  */
	public String getCode () 
	{
		return (String)get_Value(COLUMNNAME_Code);
	}

	/** Set Description.
		@param Description 
		Optional short description of the record
	  */
	public void setDescription (String Description)
	{
		set_Value (COLUMNNAME_Description, Description);
	}

	/** Get Description.
		@return Optional short description of the record
	  */
	public String getDescription () 
	{
		return (String)get_Value(COLUMNNAME_Description);
	}

	/** Set End Date.
		@param EndDate 
		Last effective date (inclusive)
	  */
	public void setEndDate (Timestamp EndDate)
	{
		set_Value (COLUMNNAME_EndDate, EndDate);
	}

	/** Get End Date.
		@return Last effective date (inclusive)
	  */
	public Timestamp getEndDate () 
	{
		return (Timestamp)get_Value(COLUMNNAME_EndDate);
	}

	/** Set Federal Tax (Domestic Products).
		@param LBR_DomesticFederalTax Federal Tax (Domestic Products)	  */
	public void setLBR_DomesticFederalTax (BigDecimal LBR_DomesticFederalTax)
	{
		set_Value (COLUMNNAME_LBR_DomesticFederalTax, LBR_DomesticFederalTax);
	}

	/** Get Federal Tax (Domestic Products).
		@return Federal Tax (Domestic Products)	  */
	public BigDecimal getLBR_DomesticFederalTax () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_DomesticFederalTax);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Exception.
		@param LBR_Exception Exception	  */
	public void setLBR_Exception (String LBR_Exception)
	{
		set_Value (COLUMNNAME_LBR_Exception, LBR_Exception);
	}

	/** Get Exception.
		@return Exception	  */
	public String getLBR_Exception () 
	{
		return (String)get_Value(COLUMNNAME_LBR_Exception);
	}

	/** Set IBPTax Key.
		@param LBR_IBPTaxKey IBPTax Key	  */
	public void setLBR_IBPTaxKey (String LBR_IBPTaxKey)
	{
		set_Value (COLUMNNAME_LBR_IBPTaxKey, LBR_IBPTaxKey);
	}

	/** Get IBPTax Key.
		@return IBPTax Key	  */
	public String getLBR_IBPTaxKey () 
	{
		return (String)get_Value(COLUMNNAME_LBR_IBPTaxKey);
	}

	/** Set IBPTax.
		@param LBR_IBPTax_ID IBPTax	  */
	public void setLBR_IBPTax_ID (int LBR_IBPTax_ID)
	{
		if (LBR_IBPTax_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_IBPTax_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_IBPTax_ID, Integer.valueOf(LBR_IBPTax_ID));
	}

	/** Get IBPTax.
		@return IBPTax	  */
	public int getLBR_IBPTax_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_IBPTax_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set IBPTax.
		@param LBR_IBPTax_UU IBPTax	  */
	public void setLBR_IBPTax_UU (String LBR_IBPTax_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_IBPTax_UU, LBR_IBPTax_UU);
	}

	/** Get IBPTax.
		@return IBPTax	  */
	public String getLBR_IBPTax_UU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_IBPTax_UU);
	}

	/** Set Federal Tax (Imported Products).
		@param LBR_ImportedFederalTax Federal Tax (Imported Products)	  */
	public void setLBR_ImportedFederalTax (BigDecimal LBR_ImportedFederalTax)
	{
		set_Value (COLUMNNAME_LBR_ImportedFederalTax, LBR_ImportedFederalTax);
	}

	/** Get Federal Tax (Imported Products).
		@return Federal Tax (Imported Products)	  */
	public BigDecimal getLBR_ImportedFederalTax () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_ImportedFederalTax);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Municipal Tax.
		@param LBR_MunicipalTax Municipal Tax	  */
	public void setLBR_MunicipalTax (BigDecimal LBR_MunicipalTax)
	{
		set_Value (COLUMNNAME_LBR_MunicipalTax, LBR_MunicipalTax);
	}

	/** Get Municipal Tax.
		@return Municipal Tax	  */
	public BigDecimal getLBR_MunicipalTax () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_MunicipalTax);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Source.
		@param LBR_Source Source	  */
	public void setLBR_Source (String LBR_Source)
	{
		set_Value (COLUMNNAME_LBR_Source, LBR_Source);
	}

	/** Get Source.
		@return Source	  */
	public String getLBR_Source () 
	{
		return (String)get_Value(COLUMNNAME_LBR_Source);
	}

	/** Set State Tax.
		@param LBR_StateTax State Tax	  */
	public void setLBR_StateTax (BigDecimal LBR_StateTax)
	{
		set_Value (COLUMNNAME_LBR_StateTax, LBR_StateTax);
	}

	/** Get State Tax.
		@return State Tax	  */
	public BigDecimal getLBR_StateTax () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_StateTax);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Start Date.
		@param StartDate 
		First effective day (inclusive)
	  */
	public void setStartDate (Timestamp StartDate)
	{
		set_Value (COLUMNNAME_StartDate, StartDate);
	}

	/** Get Start Date.
		@return First effective day (inclusive)
	  */
	public Timestamp getStartDate () 
	{
		return (Timestamp)get_Value(COLUMNNAME_StartDate);
	}

	/** Set Type.
		@param Type 
		Type of Validation (SQL, Java Script, Java Language)
	  */
	public void setType (String Type)
	{
		set_Value (COLUMNNAME_Type, Type);
	}

	/** Get Type.
		@return Type of Validation (SQL, Java Script, Java Language)
	  */
	public String getType () 
	{
		return (String)get_Value(COLUMNNAME_Type);
	}

	/** Set Version No.
		@param VersionNo 
		Version Number
	  */
	public void setVersionNo (String VersionNo)
	{
		set_ValueNoCheck (COLUMNNAME_VersionNo, VersionNo);
	}

	/** Get Version No.
		@return Version Number
	  */
	public String getVersionNo () 
	{
		return (String)get_Value(COLUMNNAME_VersionNo);
	}
}