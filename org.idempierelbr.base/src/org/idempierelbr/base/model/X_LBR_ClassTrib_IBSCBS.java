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

/** Generated Model for LBR_ClassTrib_IBSCBS
 *  @author iDempiere (generated)
 *  @version Release 13 - $Id$ */
@org.adempiere.base.Model(table="LBR_ClassTrib_IBSCBS")
public class X_LBR_ClassTrib_IBSCBS extends PO implements I_LBR_ClassTrib_IBSCBS, I_Persistent
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20261123L;

    /** Standard Constructor */
    public X_LBR_ClassTrib_IBSCBS (Properties ctx, int LBR_ClassTrib_IBSCBS_ID, String trxName)
    {
      super (ctx, LBR_ClassTrib_IBSCBS_ID, trxName);
      /** if (LBR_ClassTrib_IBSCBS_ID == 0)
        {
			setLBR_CST_IBSCBS_ID (0);
			setLBR_IsBuyerCBSCredit (false);
// N
			setLBR_IsBuyerIBSCredit (false);
// N
			setLBR_IsBuyerPresCredit (false);
// N
			setLBR_IsSupplierPresCredit (false);
// N
			setLBR_IsZeroRate (false);
// N
			setName (null);
			setValue (null);
        } */
    }

    /** Standard Constructor */
    public X_LBR_ClassTrib_IBSCBS (Properties ctx, int LBR_ClassTrib_IBSCBS_ID, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_ClassTrib_IBSCBS_ID, trxName, virtualColumns);
      /** if (LBR_ClassTrib_IBSCBS_ID == 0)
        {
			setLBR_CST_IBSCBS_ID (0);
			setLBR_IsBuyerCBSCredit (false);
// N
			setLBR_IsBuyerIBSCredit (false);
// N
			setLBR_IsBuyerPresCredit (false);
// N
			setLBR_IsSupplierPresCredit (false);
// N
			setLBR_IsZeroRate (false);
// N
			setName (null);
			setValue (null);
        } */
    }

    /** Standard Constructor */
    public X_LBR_ClassTrib_IBSCBS (Properties ctx, String LBR_ClassTrib_IBSCBS_UU, String trxName)
    {
      super (ctx, LBR_ClassTrib_IBSCBS_UU, trxName);
      /** if (LBR_ClassTrib_IBSCBS_UU == null)
        {
			setLBR_CST_IBSCBS_ID (0);
			setLBR_IsBuyerCBSCredit (false);
// N
			setLBR_IsBuyerIBSCredit (false);
// N
			setLBR_IsBuyerPresCredit (false);
// N
			setLBR_IsSupplierPresCredit (false);
// N
			setLBR_IsZeroRate (false);
// N
			setName (null);
			setValue (null);
        } */
    }

    /** Standard Constructor */
    public X_LBR_ClassTrib_IBSCBS (Properties ctx, String LBR_ClassTrib_IBSCBS_UU, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_ClassTrib_IBSCBS_UU, trxName, virtualColumns);
      /** if (LBR_ClassTrib_IBSCBS_UU == null)
        {
			setLBR_CST_IBSCBS_ID (0);
			setLBR_IsBuyerCBSCredit (false);
// N
			setLBR_IsBuyerIBSCredit (false);
// N
			setLBR_IsBuyerPresCredit (false);
// N
			setLBR_IsSupplierPresCredit (false);
// N
			setLBR_IsZeroRate (false);
// N
			setName (null);
			setValue (null);
        } */
    }

    /** Load Constructor */
    public X_LBR_ClassTrib_IBSCBS (Properties ctx, ResultSet rs, String trxName)
    {
      super (ctx, rs, trxName);
    }

    /** AccessLevel
      * @return 6 - System - Client
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
      StringBuilder sb = new StringBuilder ("X_LBR_ClassTrib_IBSCBS[")
        .append(get_ID()).append(",Name=").append(getName()).append("]");
      return sb.toString();
    }

	/** Set Date From.
		@param DateFrom Starting date for a range
	*/
	public void setDateFrom (Timestamp DateFrom)
	{
		set_Value (COLUMNNAME_DateFrom, DateFrom);
	}

	/** Get Date From.
		@return Starting date for a range
	  */
	public Timestamp getDateFrom()
	{
		return (Timestamp)get_Value(COLUMNNAME_DateFrom);
	}

	/** Set Date To.
		@param DateTo End date of a date range
	*/
	public void setDateTo (Timestamp DateTo)
	{
		set_Value (COLUMNNAME_DateTo, DateTo);
	}

	/** Get Date To.
		@return End date of a date range
	  */
	public Timestamp getDateTo()
	{
		return (Timestamp)get_Value(COLUMNNAME_DateTo);
	}

	/** Set Description.
		@param Description Optional short description of the record
	*/
	public void setDescription (String Description)
	{
		set_Value (COLUMNNAME_Description, Description);
	}

	/** Get Description.
		@return Optional short description of the record
	  */
	public String getDescription()
	{
		return (String)get_Value(COLUMNNAME_Description);
	}

	@Deprecated(since="13") // use better methods with cache
	public I_LBR_CST_IBSCBS getLBR_CST_IBSCBS() throws RuntimeException
	{
		return (I_LBR_CST_IBSCBS)MTable.get(getCtx(), I_LBR_CST_IBSCBS.Table_ID)
			.getPO(getLBR_CST_IBSCBS_ID(), get_TrxName());
	}

	/** Set CST IBS / CBS.
		@param LBR_CST_IBSCBS_ID CST IBS / CBS
	*/
	public void setLBR_CST_IBSCBS_ID (int LBR_CST_IBSCBS_ID)
	{
		if (LBR_CST_IBSCBS_ID < 1)
			set_ValueNoCheck (COLUMNNAME_LBR_CST_IBSCBS_ID, null);
		else
			set_ValueNoCheck (COLUMNNAME_LBR_CST_IBSCBS_ID, Integer.valueOf(LBR_CST_IBSCBS_ID));
	}

	/** Get CST IBS / CBS.
		@return CST IBS / CBS	  */
	public int getLBR_CST_IBSCBS_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_CST_IBSCBS_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set ClassTrib IBS / CBS.
		@param LBR_ClassTrib_IBSCBS_ID ClassTrib IBS / CBS
	*/
	public void setLBR_ClassTrib_IBSCBS_ID (int LBR_ClassTrib_IBSCBS_ID)
	{
		if (LBR_ClassTrib_IBSCBS_ID < 1)
			set_ValueNoCheck (COLUMNNAME_LBR_ClassTrib_IBSCBS_ID, null);
		else
			set_ValueNoCheck (COLUMNNAME_LBR_ClassTrib_IBSCBS_ID, Integer.valueOf(LBR_ClassTrib_IBSCBS_ID));
	}

	/** Get ClassTrib IBS / CBS.
		@return ClassTrib IBS / CBS	  */
	public int getLBR_ClassTrib_IBSCBS_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_ClassTrib_IBSCBS_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set ClassTrib IBS / CBS.
		@param LBR_ClassTrib_IBSCBS_UU ClassTrib IBS / CBS
	*/
	public void setLBR_ClassTrib_IBSCBS_UU (String LBR_ClassTrib_IBSCBS_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_ClassTrib_IBSCBS_UU, LBR_ClassTrib_IBSCBS_UU);
	}

	/** Get ClassTrib IBS / CBS.
		@return ClassTrib IBS / CBS	  */
	public String getLBR_ClassTrib_IBSCBS_UU()
	{
		return (String)get_Value(COLUMNNAME_LBR_ClassTrib_IBSCBS_UU);
	}

	/** LBR_IBSCBSIndNFCe AD_Reference_ID=319 */
	public static final int LBR_IBSCBSINDNFCE_AD_Reference_ID=319;
	/** No = N */
	public static final String LBR_IBSCBSINDNFCE_No = "N";
	/** Yes = Y */
	public static final String LBR_IBSCBSINDNFCE_Yes = "Y";
	/** Set IBS/CBS NFCe Indicator.
		@param LBR_IBSCBSIndNFCe IBS/CBS NFCe Indicator
	*/
	public void setLBR_IBSCBSIndNFCe (String LBR_IBSCBSIndNFCe)
	{

		set_Value (COLUMNNAME_LBR_IBSCBSIndNFCe, LBR_IBSCBSIndNFCe);
	}

	/** Get IBS/CBS NFCe Indicator.
		@return IBS/CBS NFCe Indicator	  */
	public String getLBR_IBSCBSIndNFCe()
	{
		return (String)get_Value(COLUMNNAME_LBR_IBSCBSIndNFCe);
	}

	/** LBR_IBSCBSIndNFe AD_Reference_ID=319 */
	public static final int LBR_IBSCBSINDNFE_AD_Reference_ID=319;
	/** No = N */
	public static final String LBR_IBSCBSINDNFE_No = "N";
	/** Yes = Y */
	public static final String LBR_IBSCBSINDNFE_Yes = "Y";
	/** Set IBS/CBS NFe Indicator.
		@param LBR_IBSCBSIndNFe IBS/CBS NFe Indicator
	*/
	public void setLBR_IBSCBSIndNFe (String LBR_IBSCBSIndNFe)
	{

		set_Value (COLUMNNAME_LBR_IBSCBSIndNFe, LBR_IBSCBSIndNFe);
	}

	/** Get IBS/CBS NFe Indicator.
		@return IBS/CBS NFe Indicator	  */
	public String getLBR_IBSCBSIndNFe()
	{
		return (String)get_Value(COLUMNNAME_LBR_IBSCBSIndNFe);
	}

	/** LBR_IBSCBSNomenclature AD_Reference_ID=800130 */
	public static final int LBR_IBSCBSNOMENCLATURE_AD_Reference_ID=800130;
	/** NBS ou NCM = A */
	public static final String LBR_IBSCBSNOMENCLATURE_NBSOuNCM = "A";
	/** NCM = C */
	public static final String LBR_IBSCBSNOMENCLATURE_NCM = "C";
	/** Não possui = N */
	public static final String LBR_IBSCBSNOMENCLATURE_NãoPossui = "N";
	/** NBS = S */
	public static final String LBR_IBSCBSNOMENCLATURE_NBS = "S";
	/** Set Nomenclatura Exigida.
		@param LBR_IBSCBSNomenclature Nomenclatura exigida pela classificação tributária: NCM, NBS, qualquer das duas ou nenhuma.
	*/
	public void setLBR_IBSCBSNomenclature (String LBR_IBSCBSNomenclature)
	{

		set_Value (COLUMNNAME_LBR_IBSCBSNomenclature, LBR_IBSCBSNomenclature);
	}

	/** Get Nomenclatura Exigida.
		@return Nomenclatura exigida pela classificação tributária: NCM, NBS, qualquer das duas ou nenhuma.
	  */
	public String getLBR_IBSCBSNomenclature()
	{
		return (String)get_Value(COLUMNNAME_LBR_IBSCBSNomenclature);
	}

	/** LBR_IBSCBSRateType AD_Reference_ID=800129 */
	public static final int LBR_IBSCBSRATETYPE_AD_Reference_ID=800129;
	/** Fixa = F */
	public static final String LBR_IBSCBSRATETYPE_Fixa = "F";
	/** Uniforme nacional (referência) = N */
	public static final String LBR_IBSCBSRATETYPE_UniformeNacionalReferência = "N";
	/** Padrão = P */
	public static final String LBR_IBSCBSRATETYPE_Padrão = "P";
	/** Uniforme setorial = S */
	public static final String LBR_IBSCBSRATETYPE_UniformeSetorial = "S";
	/** Sem alíquota = X */
	public static final String LBR_IBSCBSRATETYPE_SemAlíquota = "X";
	/** Set Tipo de Alíquota do IBS/CBS.
		@param LBR_IBSCBSRateType Tipo de alíquota da classificação tributária: padrão, fixa, uniforme nacional, uniforme setorial ou sem alíquota.
	*/
	public void setLBR_IBSCBSRateType (String LBR_IBSCBSRateType)
	{

		set_Value (COLUMNNAME_LBR_IBSCBSRateType, LBR_IBSCBSRateType);
	}

	/** Get Tipo de Alíquota do IBS/CBS.
		@return Tipo de alíquota da classificação tributária: padrão, fixa, uniforme nacional, uniforme setorial ou sem alíquota.
	  */
	public String getLBR_IBSCBSRateType()
	{
		return (String)get_Value(COLUMNNAME_LBR_IBSCBSRateType);
	}

	/** Set Tratamento Tributário.
		@param LBR_IBSCBSTreatment Tratamento tributário do IBS/CBS associado à classificação tributária, conforme a Calculadora de Tributos da Receita Federal.
	*/
	public void setLBR_IBSCBSTreatment (String LBR_IBSCBSTreatment)
	{
		set_Value (COLUMNNAME_LBR_IBSCBSTreatment, LBR_IBSCBSTreatment);
	}

	/** Get Tratamento Tributário.
		@return Tratamento tributário do IBS/CBS associado à classificação tributária, conforme a Calculadora de Tributos da Receita Federal.
	  */
	public String getLBR_IBSCBSTreatment()
	{
		return (String)get_Value(COLUMNNAME_LBR_IBSCBSTreatment);
	}

	/** LBR_IndIBSCBSRedBC AD_Reference_ID=319 */
	public static final int LBR_INDIBSCBSREDBC_AD_Reference_ID=319;
	/** No = N */
	public static final String LBR_INDIBSCBSREDBC_No = "N";
	/** Yes = Y */
	public static final String LBR_INDIBSCBSREDBC_Yes = "Y";
	/** Set IBS/CBS Red BC Indicator.
		@param LBR_IndIBSCBSRedBC IBS/CBS Red BC Indicator
	*/
	public void setLBR_IndIBSCBSRedBC (String LBR_IndIBSCBSRedBC)
	{

		set_Value (COLUMNNAME_LBR_IndIBSCBSRedBC, LBR_IndIBSCBSRedBC);
	}

	/** Get IBS/CBS Red BC Indicator.
		@return IBS/CBS Red BC Indicator	  */
	public String getLBR_IndIBSCBSRedBC()
	{
		return (String)get_Value(COLUMNNAME_LBR_IndIBSCBSRedBC);
	}

	/** LBR_IndgEstornoCred AD_Reference_ID=800060 */
	public static final int LBR_INDGESTORNOCRED_AD_Reference_ID=800060;
	/** 0 - Not Allowed = 0 */
	public static final String LBR_INDGESTORNOCRED_0_NotAllowed = "0";
	/** 1 - Required = 1 */
	public static final String LBR_INDGESTORNOCRED_1_Required = "1";
	/** Set Indicador de Grupo Estorno de Crédito.
		@param LBR_IndgEstornoCred Indica se o grupo gEstornoCred é exigido ou vedado nesta classificação tributária.
	*/
	public void setLBR_IndgEstornoCred (String LBR_IndgEstornoCred)
	{

		set_Value (COLUMNNAME_LBR_IndgEstornoCred, LBR_IndgEstornoCred);
	}

	/** Get Indicador de Grupo Estorno de Crédito.
		@return Indica se o grupo gEstornoCred é exigido ou vedado nesta classificação tributária.
	  */
	public String getLBR_IndgEstornoCred()
	{
		return (String)get_Value(COLUMNNAME_LBR_IndgEstornoCred);
	}

	/** LBR_IndgIBSCBSCredPres AD_Reference_ID=800060 */
	public static final int LBR_INDGIBSCBSCREDPRES_AD_Reference_ID=800060;
	/** 0 - Not Allowed = 0 */
	public static final String LBR_INDGIBSCBSCREDPRES_0_NotAllowed = "0";
	/** 1 - Required = 1 */
	public static final String LBR_INDGIBSCBSCREDPRES_1_Required = "1";
	/** Set IBS/CBS CredPres Group Indicator.
		@param LBR_IndgIBSCBSCredPres IBS/CBS CredPres Group Indicator
	*/
	public void setLBR_IndgIBSCBSCredPres (String LBR_IndgIBSCBSCredPres)
	{

		set_Value (COLUMNNAME_LBR_IndgIBSCBSCredPres, LBR_IndgIBSCBSCredPres);
	}

	/** Get IBS/CBS CredPres Group Indicator.
		@return IBS/CBS CredPres Group Indicator	  */
	public String getLBR_IndgIBSCBSCredPres()
	{
		return (String)get_Value(COLUMNNAME_LBR_IndgIBSCBSCredPres);
	}

	/** LBR_IndgIBSCBSMono AD_Reference_ID=800060 */
	public static final int LBR_INDGIBSCBSMONO_AD_Reference_ID=800060;
	/** 0 - Not Allowed = 0 */
	public static final String LBR_INDGIBSCBSMONO_0_NotAllowed = "0";
	/** 1 - Required = 1 */
	public static final String LBR_INDGIBSCBSMONO_1_Required = "1";
	/** Set IBS/CBS Mono Group Indicator.
		@param LBR_IndgIBSCBSMono IBS/CBS Mono Group Indicator
	*/
	public void setLBR_IndgIBSCBSMono (String LBR_IndgIBSCBSMono)
	{

		set_Value (COLUMNNAME_LBR_IndgIBSCBSMono, LBR_IndgIBSCBSMono);
	}

	/** Get IBS/CBS Mono Group Indicator.
		@return IBS/CBS Mono Group Indicator	  */
	public String getLBR_IndgIBSCBSMono()
	{
		return (String)get_Value(COLUMNNAME_LBR_IndgIBSCBSMono);
	}

	/** LBR_IndgIBSCBSMonoDif AD_Reference_ID=800060 */
	public static final int LBR_INDGIBSCBSMONODIF_AD_Reference_ID=800060;
	/** 0 - Not Allowed = 0 */
	public static final String LBR_INDGIBSCBSMONODIF_0_NotAllowed = "0";
	/** 1 - Required = 1 */
	public static final String LBR_INDGIBSCBSMONODIF_1_Required = "1";
	/** Set IBS/CBS MonoDif Group Indicator.
		@param LBR_IndgIBSCBSMonoDif IBS/CBS MonoDif Group Indicator
	*/
	public void setLBR_IndgIBSCBSMonoDif (String LBR_IndgIBSCBSMonoDif)
	{

		set_Value (COLUMNNAME_LBR_IndgIBSCBSMonoDif, LBR_IndgIBSCBSMonoDif);
	}

	/** Get IBS/CBS MonoDif Group Indicator.
		@return IBS/CBS MonoDif Group Indicator	  */
	public String getLBR_IndgIBSCBSMonoDif()
	{
		return (String)get_Value(COLUMNNAME_LBR_IndgIBSCBSMonoDif);
	}

	/** LBR_IndgIBSCBSMonoRet AD_Reference_ID=800060 */
	public static final int LBR_INDGIBSCBSMONORET_AD_Reference_ID=800060;
	/** 0 - Not Allowed = 0 */
	public static final String LBR_INDGIBSCBSMONORET_0_NotAllowed = "0";
	/** 1 - Required = 1 */
	public static final String LBR_INDGIBSCBSMONORET_1_Required = "1";
	/** Set IBS/CBS MonoRet Group Indicator.
		@param LBR_IndgIBSCBSMonoRet IBS/CBS MonoRet Group Indicator
	*/
	public void setLBR_IndgIBSCBSMonoRet (String LBR_IndgIBSCBSMonoRet)
	{

		set_Value (COLUMNNAME_LBR_IndgIBSCBSMonoRet, LBR_IndgIBSCBSMonoRet);
	}

	/** Get IBS/CBS MonoRet Group Indicator.
		@return IBS/CBS MonoRet Group Indicator	  */
	public String getLBR_IndgIBSCBSMonoRet()
	{
		return (String)get_Value(COLUMNNAME_LBR_IndgIBSCBSMonoRet);
	}

	/** LBR_IndgIBSCBSMonoReten AD_Reference_ID=800060 */
	public static final int LBR_INDGIBSCBSMONORETEN_AD_Reference_ID=800060;
	/** 0 - Not Allowed = 0 */
	public static final String LBR_INDGIBSCBSMONORETEN_0_NotAllowed = "0";
	/** 1 - Required = 1 */
	public static final String LBR_INDGIBSCBSMONORETEN_1_Required = "1";
	/** Set IBS/CBS MonoReten Group Indicator.
		@param LBR_IndgIBSCBSMonoReten IBS/CBS MonoReten Group Indicator
	*/
	public void setLBR_IndgIBSCBSMonoReten (String LBR_IndgIBSCBSMonoReten)
	{

		set_Value (COLUMNNAME_LBR_IndgIBSCBSMonoReten, LBR_IndgIBSCBSMonoReten);
	}

	/** Get IBS/CBS MonoReten Group Indicator.
		@return IBS/CBS MonoReten Group Indicator	  */
	public String getLBR_IndgIBSCBSMonoReten()
	{
		return (String)get_Value(COLUMNNAME_LBR_IndgIBSCBSMonoReten);
	}

	/** LBR_IndgIBSCBSTribRegular AD_Reference_ID=800060 */
	public static final int LBR_INDGIBSCBSTRIBREGULAR_AD_Reference_ID=800060;
	/** 0 - Not Allowed = 0 */
	public static final String LBR_INDGIBSCBSTRIBREGULAR_0_NotAllowed = "0";
	/** 1 - Required = 1 */
	public static final String LBR_INDGIBSCBSTRIBREGULAR_1_Required = "1";
	/** Set IBS/CBS TribRegular Group Indicator.
		@param LBR_IndgIBSCBSTribRegular IBS/CBS TribRegular Group Indicator
	*/
	public void setLBR_IndgIBSCBSTribRegular (String LBR_IndgIBSCBSTribRegular)
	{

		set_Value (COLUMNNAME_LBR_IndgIBSCBSTribRegular, LBR_IndgIBSCBSTribRegular);
	}

	/** Get IBS/CBS TribRegular Group Indicator.
		@return IBS/CBS TribRegular Group Indicator	  */
	public String getLBR_IndgIBSCBSTribRegular()
	{
		return (String)get_Value(COLUMNNAME_LBR_IndgIBSCBSTribRegular);
	}

	/** Set Crédito de CBS do Adquirente.
		@param LBR_IsBuyerCBSCredit Indica que o adquirente pode apropriar crédito da CBS nesta classificação tributária.
	*/
	public void setLBR_IsBuyerCBSCredit (boolean LBR_IsBuyerCBSCredit)
	{
		set_Value (COLUMNNAME_LBR_IsBuyerCBSCredit, Boolean.valueOf(LBR_IsBuyerCBSCredit));
	}

	/** Get Crédito de CBS do Adquirente.
		@return Indica que o adquirente pode apropriar crédito da CBS nesta classificação tributária.
	  */
	public boolean isLBR_IsBuyerCBSCredit()
	{
		Object oo = get_Value(COLUMNNAME_LBR_IsBuyerCBSCredit);
		if (oo != null)
		{
			 if (oo instanceof Boolean)
				 return ((Boolean)oo).booleanValue();
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Crédito de IBS do Adquirente.
		@param LBR_IsBuyerIBSCredit Indica que o adquirente pode apropriar crédito do IBS nesta classificação tributária.
	*/
	public void setLBR_IsBuyerIBSCredit (boolean LBR_IsBuyerIBSCredit)
	{
		set_Value (COLUMNNAME_LBR_IsBuyerIBSCredit, Boolean.valueOf(LBR_IsBuyerIBSCredit));
	}

	/** Get Crédito de IBS do Adquirente.
		@return Indica que o adquirente pode apropriar crédito do IBS nesta classificação tributária.
	  */
	public boolean isLBR_IsBuyerIBSCredit()
	{
		Object oo = get_Value(COLUMNNAME_LBR_IsBuyerIBSCredit);
		if (oo != null)
		{
			 if (oo instanceof Boolean)
				 return ((Boolean)oo).booleanValue();
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Crédito Presumido do Adquirente.
		@param LBR_IsBuyerPresCredit Indica que a classificação tributária dá crédito presumido ao adquirente.
	*/
	public void setLBR_IsBuyerPresCredit (boolean LBR_IsBuyerPresCredit)
	{
		set_Value (COLUMNNAME_LBR_IsBuyerPresCredit, Boolean.valueOf(LBR_IsBuyerPresCredit));
	}

	/** Get Crédito Presumido do Adquirente.
		@return Indica que a classificação tributária dá crédito presumido ao adquirente.
	  */
	public boolean isLBR_IsBuyerPresCredit()
	{
		Object oo = get_Value(COLUMNNAME_LBR_IsBuyerPresCredit);
		if (oo != null)
		{
			 if (oo instanceof Boolean)
				 return ((Boolean)oo).booleanValue();
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Crédito Presumido do Fornecedor.
		@param LBR_IsSupplierPresCredit Indica que a classificação tributária dá crédito presumido ao fornecedor.
	*/
	public void setLBR_IsSupplierPresCredit (boolean LBR_IsSupplierPresCredit)
	{
		set_Value (COLUMNNAME_LBR_IsSupplierPresCredit, Boolean.valueOf(LBR_IsSupplierPresCredit));
	}

	/** Get Crédito Presumido do Fornecedor.
		@return Indica que a classificação tributária dá crédito presumido ao fornecedor.
	  */
	public boolean isLBR_IsSupplierPresCredit()
	{
		Object oo = get_Value(COLUMNNAME_LBR_IsSupplierPresCredit);
		if (oo != null)
		{
			 if (oo instanceof Boolean)
				 return ((Boolean)oo).booleanValue();
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Alíquota Zero.
		@param LBR_IsZeroRate Indica que a alíquota do IBS/CBS aplicada nesta classificação é zero (suspensão, exclusão de base, documento específico e outros).
	*/
	public void setLBR_IsZeroRate (boolean LBR_IsZeroRate)
	{
		set_Value (COLUMNNAME_LBR_IsZeroRate, Boolean.valueOf(LBR_IsZeroRate));
	}

	/** Get Alíquota Zero.
		@return Indica que a alíquota do IBS/CBS aplicada nesta classificação é zero (suspensão, exclusão de base, documento específico e outros).
	  */
	public boolean isLBR_IsZeroRate()
	{
		Object oo = get_Value(COLUMNNAME_LBR_IsZeroRate);
		if (oo != null)
		{
			 if (oo instanceof Boolean)
				 return ((Boolean)oo).booleanValue();
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Red. CBS (%).
		@param LBR_PRedCBS Red. CBS (%)
	*/
	public void setLBR_PRedCBS (BigDecimal LBR_PRedCBS)
	{
		set_Value (COLUMNNAME_LBR_PRedCBS, LBR_PRedCBS);
	}

	/** Get Red. CBS (%).
		@return Red. CBS (%)	  */
	public BigDecimal getLBR_PRedCBS()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_PRedCBS);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Red. IBS (%).
		@param LBR_PRedIBS Red. IBS (%)
	*/
	public void setLBR_PRedIBS (BigDecimal LBR_PRedIBS)
	{
		set_Value (COLUMNNAME_LBR_PRedIBS, LBR_PRedIBS);
	}

	/** Get Red. IBS (%).
		@return Red. IBS (%)	  */
	public BigDecimal getLBR_PRedIBS()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_PRedIBS);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** LBR_PriorOpCredit AD_Reference_ID=800131 */
	public static final int LBR_PRIOROPCREDIT_AD_Reference_ID=800131;
	/** Anulação = A */
	public static final String LBR_PRIOROPCREDIT_Anulação = "A";
	/** Manutenção = M */
	public static final String LBR_PRIOROPCREDIT_Manutenção = "M";
	/** Set Crédito da Operação Antecedente.
		@param LBR_PriorOpCredit Tratamento do crédito da operação antecedente: manutenção ou anulação.
	*/
	public void setLBR_PriorOpCredit (String LBR_PriorOpCredit)
	{

		set_Value (COLUMNNAME_LBR_PriorOpCredit, LBR_PriorOpCredit);
	}

	/** Get Crédito da Operação Antecedente.
		@return Tratamento do crédito da operação antecedente: manutenção ou anulação.
	  */
	public String getLBR_PriorOpCredit()
	{
		return (String)get_Value(COLUMNNAME_LBR_PriorOpCredit);
	}

	/** Set Tax Base.
		@param LBR_TaxBase Indicates the Tax Base
	*/
	public void setLBR_TaxBase (BigDecimal LBR_TaxBase)
	{
		set_Value (COLUMNNAME_LBR_TaxBase, LBR_TaxBase);
	}

	/** Get Tax Base.
		@return Indicates the Tax Base
	  */
	public BigDecimal getLBR_TaxBase()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_TaxBase);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Tax Deferral Rate (%).
		@param LBR_TaxDeferralRate Identifies the Tax Deferral Rate (%)
	*/
	public void setLBR_TaxDeferralRate (BigDecimal LBR_TaxDeferralRate)
	{
		set_Value (COLUMNNAME_LBR_TaxDeferralRate, LBR_TaxDeferralRate);
	}

	/** Get Tax Deferral Rate (%).
		@return Identifies the Tax Deferral Rate (%)
	  */
	public BigDecimal getLBR_TaxDeferralRate()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_TaxDeferralRate);
		if (bd == null)
			 return Env.ZERO;
		return bd;
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

	/** Set Updated Date.
		@param UpdatedDate Updated Date
	*/
	public void setUpdatedDate (Timestamp UpdatedDate)
	{
		set_Value (COLUMNNAME_UpdatedDate, UpdatedDate);
	}

	/** Get Updated Date.
		@return Updated Date	  */
	public Timestamp getUpdatedDate()
	{
		return (Timestamp)get_Value(COLUMNNAME_UpdatedDate);
	}

	/** Set Search Key.
		@param Value Search key for the record in the format required - must be unique
	*/
	public void setValue (String Value)
	{
		set_Value (COLUMNNAME_Value, Value);
	}

	/** Get Search Key.
		@return Search key for the record in the format required - must be unique
	  */
	public String getValue()
	{
		return (String)get_Value(COLUMNNAME_Value);
	}
}