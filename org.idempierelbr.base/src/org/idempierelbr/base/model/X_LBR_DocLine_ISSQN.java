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
import java.util.Properties;
import org.compiere.model.*;
import org.compiere.util.Env;

/** Generated Model for LBR_DocLine_ISSQN
 *  @author iDempiere (generated) 
 *  @version Release 3.1 - $Id$ */
public class X_LBR_DocLine_ISSQN extends PO implements I_LBR_DocLine_ISSQN, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20170110L;

    /** Standard Constructor */
    public X_LBR_DocLine_ISSQN (Properties ctx, int LBR_DocLine_ISSQN_ID, String trxName)
    {
      super (ctx, LBR_DocLine_ISSQN_ID, trxName);
      /** if (LBR_DocLine_ISSQN_ID == 0)
        {
			setIsTaxIncluded (false);
// N
        } */
    }

    /** Load Constructor */
    public X_LBR_DocLine_ISSQN (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_DocLine_ISSQN[")
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

	/** Set Country.
		@param C_Country_ID 
		Country 
	  */
	public void setC_Country_ID (int C_Country_ID)
	{
		if (C_Country_ID < 1) 
			set_Value (COLUMNNAME_C_Country_ID, null);
		else 
			set_Value (COLUMNNAME_C_Country_ID, Integer.valueOf(C_Country_ID));
	}

	/** Get Country.
		@return Country 
	  */
	public int getC_Country_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_Country_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
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

	/** Set Price includes Tax.
		@param IsTaxIncluded 
		Tax is included in the price 
	  */
	public void setIsTaxIncluded (boolean IsTaxIncluded)
	{
		set_Value (COLUMNNAME_IsTaxIncluded, Boolean.valueOf(IsTaxIncluded));
	}

	/** Get Price includes Tax.
		@return Tax is included in the price 
	  */
	public boolean isTaxIncluded () 
	{
		Object oo = get_Value(COLUMNNAME_IsTaxIncluded);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Código NBS.
		@param LBR_CodigoNBS Código NBS	  */
	public void setLBR_CodigoNBS (String LBR_CodigoNBS)
	{
		set_Value (COLUMNNAME_LBR_CodigoNBS, LBR_CodigoNBS);
	}

	/** Get Código NBS.
		@return Código NBS	  */
	public String getLBR_CodigoNBS () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CodigoNBS);
	}

	/** Set Conditioned Discount Amount.
		@param LBR_CondDiscountAmt Conditioned Discount Amount	  */
	public void setLBR_CondDiscountAmt (BigDecimal LBR_CondDiscountAmt)
	{
		set_Value (COLUMNNAME_LBR_CondDiscountAmt, LBR_CondDiscountAmt);
	}

	/** Get Conditioned Discount Amount.
		@return Conditioned Discount Amount	  */
	public BigDecimal getLBR_CondDiscountAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_CondDiscountAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	public I_LBR_DocLine_Details getLBR_DocLine_Details() throws RuntimeException
    {
		return (I_LBR_DocLine_Details)MTable.get(getCtx(), I_LBR_DocLine_Details.Table_Name)
			.getPO(getLBR_DocLine_Details_ID(), get_TrxName());	}

	/** Set Doc Line Details.
		@param LBR_DocLine_Details_ID 
		Doc Line Details
	  */
	public void setLBR_DocLine_Details_ID (int LBR_DocLine_Details_ID)
	{
		if (LBR_DocLine_Details_ID < 1) 
			set_Value (COLUMNNAME_LBR_DocLine_Details_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_DocLine_Details_ID, Integer.valueOf(LBR_DocLine_Details_ID));
	}

	/** Get Doc Line Details.
		@return Doc Line Details
	  */
	public int getLBR_DocLine_Details_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_DocLine_Details_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Doc Line ISSQN.
		@param LBR_DocLine_ISSQN_ID 
		Doc Line ISSQN
	  */
	public void setLBR_DocLine_ISSQN_ID (int LBR_DocLine_ISSQN_ID)
	{
		if (LBR_DocLine_ISSQN_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_DocLine_ISSQN_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_DocLine_ISSQN_ID, Integer.valueOf(LBR_DocLine_ISSQN_ID));
	}

	/** Get Doc Line ISSQN.
		@return Doc Line ISSQN
	  */
	public int getLBR_DocLine_ISSQN_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_DocLine_ISSQN_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Doc Line ISSQN.
		@param LBR_DocLine_ISSQN_UU 
		Doc Line ISSQN
	  */
	public void setLBR_DocLine_ISSQN_UU (String LBR_DocLine_ISSQN_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_DocLine_ISSQN_UU, LBR_DocLine_ISSQN_UU);
	}

	/** Get Doc Line ISSQN.
		@return Doc Line ISSQN
	  */
	public String getLBR_DocLine_ISSQN_UU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_DocLine_ISSQN_UU);
	}

	/** Set Has WithHold.
		@param LBR_HasWithHold 
		Indicates if the Tax has WithHold
	  */
	public void setLBR_HasWithHold (boolean LBR_HasWithHold)
	{
		set_Value (COLUMNNAME_LBR_HasWithHold, Boolean.valueOf(LBR_HasWithHold));
	}

	/** Get Has WithHold.
		@return Indicates if the Tax has WithHold
	  */
	public boolean isLBR_HasWithHold () 
	{
		Object oo = get_Value(COLUMNNAME_LBR_HasWithHold);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Exigivel = 1 */
	public static final String LBR_ISS_CHARGEABILITY_Exigivel = "1";
	/** Nao incidencia = 2 */
	public static final String LBR_ISS_CHARGEABILITY_NaoIncidencia = "2";
	/** Isencao = 3 */
	public static final String LBR_ISS_CHARGEABILITY_Isencao = "3";
	/** Exportacao = 4 */
	public static final String LBR_ISS_CHARGEABILITY_Exportacao = "4";
	/** Imunidade = 5 */
	public static final String LBR_ISS_CHARGEABILITY_Imunidade = "5";
	/** Exigibilidade suspensa por decisao judicial = 6 */
	public static final String LBR_ISS_CHARGEABILITY_ExigibilidadeSuspensaPorDecisaoJudicial = "6";
	/** Exigibilidade suspensa por processo administrativo = 7 */
	public static final String LBR_ISS_CHARGEABILITY_ExigibilidadeSuspensaPorProcessoAdministrativo = "7";
	/** Set ISS Chargeability Indicator.
		@param LBR_ISS_Chargeability ISS Chargeability Indicator	  */
	public void setLBR_ISS_Chargeability (String LBR_ISS_Chargeability)
	{

		set_Value (COLUMNNAME_LBR_ISS_Chargeability, LBR_ISS_Chargeability);
	}

	/** Get ISS Chargeability Indicator.
		@return ISS Chargeability Indicator	  */
	public String getLBR_ISS_Chargeability () 
	{
		return (String)get_Value(COLUMNNAME_LBR_ISS_Chargeability);
	}

	/** Set ISS Withholding Amount.
		@param LBR_ISS_WithholdingAmt ISS Withholding Amount	  */
	public void setLBR_ISS_WithholdingAmt (BigDecimal LBR_ISS_WithholdingAmt)
	{
		set_Value (COLUMNNAME_LBR_ISS_WithholdingAmt, LBR_ISS_WithholdingAmt);
	}

	/** Get ISS Withholding Amount.
		@return ISS Withholding Amount	  */
	public BigDecimal getLBR_ISS_WithholdingAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_ISS_WithholdingAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	public org.compiere.model.I_C_City getLBR_IncidenceCity() throws RuntimeException
    {
		return (org.compiere.model.I_C_City)MTable.get(getCtx(), org.compiere.model.I_C_City.Table_Name)
			.getPO(getLBR_IncidenceCity_ID(), get_TrxName());	}

	/** Set Incidence City.
		@param LBR_IncidenceCity_ID 
		Incidence City
	  */
	public void setLBR_IncidenceCity_ID (int LBR_IncidenceCity_ID)
	{
		if (LBR_IncidenceCity_ID < 1) 
			set_Value (COLUMNNAME_LBR_IncidenceCity_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_IncidenceCity_ID, Integer.valueOf(LBR_IncidenceCity_ID));
	}

	/** Get Incidence City.
		@return Incidence City
	  */
	public int getLBR_IncidenceCity_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_IncidenceCity_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.compiere.model.I_C_Region getLBR_IncidenceRegion() throws RuntimeException
    {
		return (org.compiere.model.I_C_Region)MTable.get(getCtx(), org.compiere.model.I_C_Region.Table_Name)
			.getPO(getLBR_IncidenceRegion_ID(), get_TrxName());	}

	/** Set Incidence Region.
		@param LBR_IncidenceRegion_ID 
		Identifies a geographical Region
	  */
	public void setLBR_IncidenceRegion_ID (int LBR_IncidenceRegion_ID)
	{
		if (LBR_IncidenceRegion_ID < 1) 
			set_Value (COLUMNNAME_LBR_IncidenceRegion_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_IncidenceRegion_ID, Integer.valueOf(LBR_IncidenceRegion_ID));
	}

	/** Get Incidence Region.
		@return Identifies a geographical Region
	  */
	public int getLBR_IncidenceRegion_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_IncidenceRegion_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Other Withholdings Amount.
		@param LBR_OtherWithholdingsAmt Other Withholdings Amount	  */
	public void setLBR_OtherWithholdingsAmt (BigDecimal LBR_OtherWithholdingsAmt)
	{
		set_Value (COLUMNNAME_LBR_OtherWithholdingsAmt, LBR_OtherWithholdingsAmt);
	}

	/** Get Other Withholdings Amount.
		@return Other Withholdings Amount	  */
	public BigDecimal getLBR_OtherWithholdingsAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_OtherWithholdingsAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** LBR_ResponsavelRetencao AD_Reference_ID=800032 */
	public static final int LBR_RESPONSAVELRETENCAO_AD_Reference_ID=800032;
	/** Tomador = 1 */
	public static final String LBR_RESPONSAVELRETENCAO_Tomador = "1";
	/** Intermediário = 2 */
	public static final String LBR_RESPONSAVELRETENCAO_Intermediário = "2";
	/** Set Responsável pela Retenção.
		@param LBR_ResponsavelRetencao Responsável pela Retenção	  */
	public void setLBR_ResponsavelRetencao (String LBR_ResponsavelRetencao)
	{

		set_Value (COLUMNNAME_LBR_ResponsavelRetencao, LBR_ResponsavelRetencao);
	}

	/** Get Responsável pela Retenção.
		@return Responsável pela Retenção	  */
	public String getLBR_ResponsavelRetencao () 
	{
		return (String)get_Value(COLUMNNAME_LBR_ResponsavelRetencao);
	}

	/** Set Service Code.
		@param LBR_ServiceCode Service Code	  */
	public void setLBR_ServiceCode (String LBR_ServiceCode)
	{
		set_Value (COLUMNNAME_LBR_ServiceCode, LBR_ServiceCode);
	}

	/** Get Service Code.
		@return Service Code	  */
	public String getLBR_ServiceCode () 
	{
		return (String)get_Value(COLUMNNAME_LBR_ServiceCode);
	}

	/** Set Código de Tributação do Município.
		@param LBR_ServiceCodeOfCity Código de Tributação do Município	  */
	public void setLBR_ServiceCodeOfCity (String LBR_ServiceCodeOfCity)
	{
		set_Value (COLUMNNAME_LBR_ServiceCodeOfCity, LBR_ServiceCodeOfCity);
	}

	/** Get Código de Tributação do Município.
		@return Código de Tributação do Município	  */
	public String getLBR_ServiceCodeOfCity () 
	{
		return (String)get_Value(COLUMNNAME_LBR_ServiceCodeOfCity);
	}

	/** Set Service Type.
		@param LBR_ServiceType Service Type	  */
	public void setLBR_ServiceType (String LBR_ServiceType)
	{
		set_Value (COLUMNNAME_LBR_ServiceType, LBR_ServiceType);
	}

	/** Get Service Type.
		@return Service Type	  */
	public String getLBR_ServiceType () 
	{
		return (String)get_Value(COLUMNNAME_LBR_ServiceType);
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

	/** Set Tax Base Deduction Amount.
		@param LBR_TaxBaseDeductionAmt 
		Defines the Tax Base Deduction Amount
	  */
	public void setLBR_TaxBaseDeductionAmt (BigDecimal LBR_TaxBaseDeductionAmt)
	{
		set_Value (COLUMNNAME_LBR_TaxBaseDeductionAmt, LBR_TaxBaseDeductionAmt);
	}

	/** Get Tax Base Deduction Amount.
		@return Defines the Tax Base Deduction Amount
	  */
	public BigDecimal getLBR_TaxBaseDeductionAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_TaxBaseDeductionAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Yes = 1 */
	public static final String LBR_TAXINCENTIVE_Yes = "1";
	/** No = 2 */
	public static final String LBR_TAXINCENTIVE_No = "2";
	/** Set Tax Incentive Indicator.
		@param LBR_TaxIncentive Tax Incentive Indicator	  */
	public void setLBR_TaxIncentive (String LBR_TaxIncentive)
	{

		set_Value (COLUMNNAME_LBR_TaxIncentive, LBR_TaxIncentive);
	}

	/** Get Tax Incentive Indicator.
		@return Tax Incentive Indicator	  */
	public String getLBR_TaxIncentive () 
	{
		return (String)get_Value(COLUMNNAME_LBR_TaxIncentive);
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

	/** Set Unconditioned Discount Amount.
		@param LBR_UncondDiscountAmt Unconditioned Discount Amount	  */
	public void setLBR_UncondDiscountAmt (BigDecimal LBR_UncondDiscountAmt)
	{
		set_Value (COLUMNNAME_LBR_UncondDiscountAmt, LBR_UncondDiscountAmt);
	}

	/** Get Unconditioned Discount Amount.
		@return Unconditioned Discount Amount	  */
	public BigDecimal getLBR_UncondDiscountAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_UncondDiscountAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Process Name.
		@param ProcessName 
		Name of the Process
	  */
	public void setProcessName (String ProcessName)
	{
		set_Value (COLUMNNAME_ProcessName, ProcessName);
	}

	/** Get Process Name.
		@return Name of the Process
	  */
	public String getProcessName () 
	{
		return (String)get_Value(COLUMNNAME_ProcessName);
	}
}