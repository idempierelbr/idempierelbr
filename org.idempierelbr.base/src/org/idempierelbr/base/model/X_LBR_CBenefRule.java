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
import java.sql.Timestamp;
import java.util.Properties;
import org.compiere.model.*;
import org.compiere.util.KeyNamePair;

/** Generated Model for LBR_CBenefRule
 *  @author iDempiere (generated)
 *  @version Release 13 - $Id$ */
@org.adempiere.base.Model(table="LBR_CBenefRule")
public class X_LBR_CBenefRule extends PO implements I_LBR_CBenefRule, I_Persistent
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20261114L;

    /** Standard Constructor */
    public X_LBR_CBenefRule (Properties ctx, int LBR_CBenefRule_ID, String trxName)
    {
      super (ctx, LBR_CBenefRule_ID, trxName);
      /** if (LBR_CBenefRule_ID == 0)
        {
			setC_Region_ID (0);
			setLBR_CBenefRule_ID (0);
			setLBR_ICMSRegime (null);
// TN
			setLBR_IsOmitCBenef (false);
// N
			setValidFrom (new Timestamp( System.currentTimeMillis() ));
        } */
    }

    /** Standard Constructor */
    public X_LBR_CBenefRule (Properties ctx, int LBR_CBenefRule_ID, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_CBenefRule_ID, trxName, virtualColumns);
      /** if (LBR_CBenefRule_ID == 0)
        {
			setC_Region_ID (0);
			setLBR_CBenefRule_ID (0);
			setLBR_ICMSRegime (null);
// TN
			setLBR_IsOmitCBenef (false);
// N
			setValidFrom (new Timestamp( System.currentTimeMillis() ));
        } */
    }

    /** Standard Constructor */
    public X_LBR_CBenefRule (Properties ctx, String LBR_CBenefRule_UU, String trxName)
    {
      super (ctx, LBR_CBenefRule_UU, trxName);
      /** if (LBR_CBenefRule_UU == null)
        {
			setC_Region_ID (0);
			setLBR_CBenefRule_ID (0);
			setLBR_ICMSRegime (null);
// TN
			setLBR_IsOmitCBenef (false);
// N
			setValidFrom (new Timestamp( System.currentTimeMillis() ));
        } */
    }

    /** Standard Constructor */
    public X_LBR_CBenefRule (Properties ctx, String LBR_CBenefRule_UU, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_CBenefRule_UU, trxName, virtualColumns);
      /** if (LBR_CBenefRule_UU == null)
        {
			setC_Region_ID (0);
			setLBR_CBenefRule_ID (0);
			setLBR_ICMSRegime (null);
// TN
			setLBR_IsOmitCBenef (false);
// N
			setValidFrom (new Timestamp( System.currentTimeMillis() ));
        } */
    }

    /** Load Constructor */
    public X_LBR_CBenefRule (Properties ctx, ResultSet rs, String trxName)
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
      StringBuilder sb = new StringBuilder ("X_LBR_CBenefRule[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	@Deprecated(since="13") // use better methods with cache
	public org.compiere.model.I_C_Region getC_Region() throws RuntimeException
	{
		return (org.compiere.model.I_C_Region)MTable.get(getCtx(), org.compiere.model.I_C_Region.Table_ID)
			.getPO(getC_Region_ID(), get_TrxName());
	}

	/** Set Region.
		@param C_Region_ID Identifies a geographical Region
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
	public int getC_Region_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_Region_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

    /** Get Record ID/ColumnName
        @return ID/ColumnName pair
      */
    public KeyNamePair getKeyNamePair()
    {
        return new KeyNamePair(get_ID(), String.valueOf(getC_Region_ID()));
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

	/** Set Código de Benefício Fiscal.
		@param LBR_CBenef Código de Benefício Fiscal
	*/
	public void setLBR_CBenef (String LBR_CBenef)
	{
		set_Value (COLUMNNAME_LBR_CBenef, LBR_CBenef);
	}

	/** Get Código de Benefício Fiscal.
		@return Código de Benefício Fiscal	  */
	public String getLBR_CBenef()
	{
		return (String)get_Value(COLUMNNAME_LBR_CBenef);
	}

	/** Set Código de Benefício Fiscal por UF.
		@param LBR_CBenefRule_ID Código de Benefício Fiscal (cBenef) por UF do emitente e CST/CSOSN do ICMS, opcionalmente por produto ou NCM.
	*/
	public void setLBR_CBenefRule_ID (int LBR_CBenefRule_ID)
	{
		if (LBR_CBenefRule_ID < 1)
			set_ValueNoCheck (COLUMNNAME_LBR_CBenefRule_ID, null);
		else
			set_ValueNoCheck (COLUMNNAME_LBR_CBenefRule_ID, Integer.valueOf(LBR_CBenefRule_ID));
	}

	/** Get Código de Benefício Fiscal por UF.
		@return Código de Benefício Fiscal (cBenef) por UF do emitente e CST/CSOSN do ICMS, opcionalmente por produto ou NCM.
	  */
	public int getLBR_CBenefRule_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_CBenefRule_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_CBenefRule_UU.
		@param LBR_CBenefRule_UU LBR_CBenefRule_UU
	*/
	public void setLBR_CBenefRule_UU (String LBR_CBenefRule_UU)
	{
		set_Value (COLUMNNAME_LBR_CBenefRule_UU, LBR_CBenefRule_UU);
	}

	/** Get LBR_CBenefRule_UU.
		@return LBR_CBenefRule_UU	  */
	public String getLBR_CBenefRule_UU()
	{
		return (String)get_Value(COLUMNNAME_LBR_CBenefRule_UU);
	}

	/** Simple Taxation = SN */
	public static final String LBR_ICMSREGIME_SimpleTaxation = "SN";
	/** Default Taxation = TN */
	public static final String LBR_ICMSREGIME_DefaultTaxation = "TN";
	/** Set ICMS Regime.
		@param LBR_ICMSRegime Identifies a ICMS Regime for taxes
	*/
	public void setLBR_ICMSRegime (String LBR_ICMSRegime)
	{

		set_Value (COLUMNNAME_LBR_ICMSRegime, LBR_ICMSRegime);
	}

	/** Get ICMS Regime.
		@return Identifies a ICMS Regime for taxes
	  */
	public String getLBR_ICMSRegime()
	{
		return (String)get_Value(COLUMNNAME_LBR_ICMSRegime);
	}

	/** 101 - Tributada com permissao de credito = 101 */
	public static final String LBR_ICMS_TAXSTATUSSN_101_TributadaComPermissaoDeCredito = "101";
	/** 102 - Tributada sem permissao de credito = 102 */
	public static final String LBR_ICMS_TAXSTATUSSN_102_TributadaSemPermissaoDeCredito = "102";
	/** 103 - Isencao do ICMS para faixa de receita bruta = 103 */
	public static final String LBR_ICMS_TAXSTATUSSN_103_IsencaoDoICMSParaFaixaDeReceitaBruta = "103";
	/** 201 - Tributada com permissao de credito = 201 */
	public static final String LBR_ICMS_TAXSTATUSSN_201_TributadaComPermissaoDeCredito = "201";
	/** 202 - Tributada sem permissao de credito = 202 */
	public static final String LBR_ICMS_TAXSTATUSSN_202_TributadaSemPermissaoDeCredito = "202";
	/** 203 - Isencao do ICMS para faixa de receita bruta = 203 */
	public static final String LBR_ICMS_TAXSTATUSSN_203_IsencaoDoICMSParaFaixaDeReceitaBruta = "203";
	/** 300 - Imune = 300 */
	public static final String LBR_ICMS_TAXSTATUSSN_300_Imune = "300";
	/** 400 - Nao Tributada = 400 */
	public static final String LBR_ICMS_TAXSTATUSSN_400_NaoTributada = "400";
	/** 500 - ICMS cobrado anteriormente = 500 */
	public static final String LBR_ICMS_TAXSTATUSSN_500_ICMSCobradoAnteriormente = "500";
	/** 900 - Outros = 900 */
	public static final String LBR_ICMS_TAXSTATUSSN_900_Outros = "900";
	/** Set ICMS Tax Status (Simple).
		@param LBR_ICMS_TaxStatusSN Identifies a ICMS Tax Status in a simple taxation
	*/
	public void setLBR_ICMS_TaxStatusSN (String LBR_ICMS_TaxStatusSN)
	{

		set_Value (COLUMNNAME_LBR_ICMS_TaxStatusSN, LBR_ICMS_TaxStatusSN);
	}

	/** Get ICMS Tax Status (Simple).
		@return Identifies a ICMS Tax Status in a simple taxation
	  */
	public String getLBR_ICMS_TaxStatusSN()
	{
		return (String)get_Value(COLUMNNAME_LBR_ICMS_TaxStatusSN);
	}

	/** 00 - Tributada integralmente = 00 */
	public static final String LBR_ICMS_TAXSTATUSTN_00_TributadaIntegralmente = "00";
	/** 10 - Tributada e com cobranca do ICMS por Sub. Tributaria = 10_1 */
	public static final String LBR_ICMS_TAXSTATUSTN_10_TributadaEComCobrancaDoICMSPorSubTributaria = "10_1";
	/** 10 - Tributada e com cobranca do ICMS por Sub. Tributaria (com partilha) = 10_2 */
	public static final String LBR_ICMS_TAXSTATUSTN_10_TributadaEComCobrancaDoICMSPorSubTributariaComPartilha = "10_2";
	/** 20 - Com reducao de base de calculo = 20 */
	public static final String LBR_ICMS_TAXSTATUSTN_20_ComReducaoDeBaseDeCalculo = "20";
	/** 30 - Isenta ou nao-trib. e com cobr. do ICMS por Sub. Tribut = 30 */
	public static final String LBR_ICMS_TAXSTATUSTN_30_IsentaOuNao_TribEComCobrDoICMSPorSubTribut = "30";
	/** 40 - Isenta = 40 */
	public static final String LBR_ICMS_TAXSTATUSTN_40_Isenta = "40";
	/** 41 - Nao-tributada = 41_1 */
	public static final String LBR_ICMS_TAXSTATUSTN_41_Nao_Tributada = "41_1";
	/** 41 - Nao-tributada (retencao antecipada) = 41_2 */
	public static final String LBR_ICMS_TAXSTATUSTN_41_Nao_TributadaRetencaoAntecipada = "41_2";
	/** 50 - Suspensao = 50 */
	public static final String LBR_ICMS_TAXSTATUSTN_50_Suspensao = "50";
	/** 51 - Diferimento  = 51 */
	public static final String LBR_ICMS_TAXSTATUSTN_51_Diferimento = "51";
	/** 60 - ICMS cobrado anteriormente por substituicao tributaria = 60 */
	public static final String LBR_ICMS_TAXSTATUSTN_60_ICMSCobradoAnteriormentePorSubstituicaoTributaria = "60";
	/** 70 - Com red. de base de calc. e cobr. do ICMS por Sub. Trib = 70 */
	public static final String LBR_ICMS_TAXSTATUSTN_70_ComRedDeBaseDeCalcECobrDoICMSPorSubTrib = "70";
	/** 90 - Outras (com partilha) = 90_1 */
	public static final String LBR_ICMS_TAXSTATUSTN_90_OutrasComPartilha = "90_1";
	/** 90 - Outras = 90_2 */
	public static final String LBR_ICMS_TAXSTATUSTN_90_Outras = "90_2";
	/** Set ICMS Tax Status (Standard Taxation).
		@param LBR_ICMS_TaxStatusTN Identifies a ICMS Tax Status in a standard taxation
	*/
	public void setLBR_ICMS_TaxStatusTN (String LBR_ICMS_TaxStatusTN)
	{

		set_Value (COLUMNNAME_LBR_ICMS_TaxStatusTN, LBR_ICMS_TaxStatusTN);
	}

	/** Get ICMS Tax Status (Standard Taxation).
		@return Identifies a ICMS Tax Status in a standard taxation
	  */
	public String getLBR_ICMS_TaxStatusTN()
	{
		return (String)get_Value(COLUMNNAME_LBR_ICMS_TaxStatusTN);
	}

	/** Set Não Informar cBenef.
		@param LBR_IsOmitCBenef Indica que, nesta UF, o item sai sem cBenef, mesmo que o produto ou o CST tenha um código.
	*/
	public void setLBR_IsOmitCBenef (boolean LBR_IsOmitCBenef)
	{
		set_Value (COLUMNNAME_LBR_IsOmitCBenef, Boolean.valueOf(LBR_IsOmitCBenef));
	}

	/** Get Não Informar cBenef.
		@return Indica que, nesta UF, o item sai sem cBenef, mesmo que o produto ou o CST tenha um código.
	  */
	public boolean isLBR_IsOmitCBenef()
	{
		Object oo = get_Value(COLUMNNAME_LBR_IsOmitCBenef);
		if (oo != null)
		{
			 if (oo instanceof Boolean)
				 return ((Boolean)oo).booleanValue();
			return "Y".equals(oo);
		}
		return false;
	}

	@Deprecated(since="13") // use better methods with cache
	public I_LBR_NCM getLBR_NCM() throws RuntimeException
	{
		return (I_LBR_NCM)MTable.get(getCtx(), I_LBR_NCM.Table_ID)
			.getPO(getLBR_NCM_ID(), get_TrxName());
	}

	/** Set NCM.
		@param LBR_NCM_ID NCM stands for Nomenclatura Comum do MERCOSUL
	*/
	public void setLBR_NCM_ID (int LBR_NCM_ID)
	{
		if (LBR_NCM_ID < 1)
			set_Value (COLUMNNAME_LBR_NCM_ID, null);
		else
			set_Value (COLUMNNAME_LBR_NCM_ID, Integer.valueOf(LBR_NCM_ID));
	}

	/** Get NCM.
		@return NCM stands for Nomenclatura Comum do MERCOSUL
	  */
	public int getLBR_NCM_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_NCM_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	@Deprecated(since="13") // use better methods with cache
	public org.compiere.model.I_M_Product getM_Product() throws RuntimeException
	{
		return (org.compiere.model.I_M_Product)MTable.get(getCtx(), org.compiere.model.I_M_Product.Table_ID)
			.getPO(getM_Product_ID(), get_TrxName());
	}

	/** Set Product.
		@param M_Product_ID Product, Service, Item
	*/
	public void setM_Product_ID (int M_Product_ID)
	{
		if (M_Product_ID < 1)
			set_Value (COLUMNNAME_M_Product_ID, null);
		else
			set_Value (COLUMNNAME_M_Product_ID, Integer.valueOf(M_Product_ID));
	}

	/** Get Product.
		@return Product, Service, Item
	  */
	public int getM_Product_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_M_Product_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Valid from.
		@param ValidFrom Valid from including this date (first day)
	*/
	public void setValidFrom (Timestamp ValidFrom)
	{
		set_Value (COLUMNNAME_ValidFrom, ValidFrom);
	}

	/** Get Valid from.
		@return Valid from including this date (first day)
	  */
	public Timestamp getValidFrom()
	{
		return (Timestamp)get_Value(COLUMNNAME_ValidFrom);
	}

	/** Set Valid to.
		@param ValidTo Valid to including this date (last day)
	*/
	public void setValidTo (Timestamp ValidTo)
	{
		set_Value (COLUMNNAME_ValidTo, ValidTo);
	}

	/** Get Valid to.
		@return Valid to including this date (last day)
	  */
	public Timestamp getValidTo()
	{
		return (Timestamp)get_Value(COLUMNNAME_ValidTo);
	}
}