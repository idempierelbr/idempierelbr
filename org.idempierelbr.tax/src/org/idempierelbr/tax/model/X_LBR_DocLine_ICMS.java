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
package org.idempierelbr.tax.model;

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.util.Properties;
import org.compiere.model.*;
import org.compiere.util.Env;

/** Generated Model for LBR_DocLine_ICMS
 *  @author iDempiere (generated) 
 *  @version Release 5.1 - $Id$ */
public class X_LBR_DocLine_ICMS extends PO implements I_LBR_DocLine_ICMS, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20180629L;

    /** Standard Constructor */
    public X_LBR_DocLine_ICMS (Properties ctx, int LBR_DocLine_ICMS_ID, String trxName)
    {
      super (ctx, LBR_DocLine_ICMS_ID, trxName);
      /** if (LBR_DocLine_ICMS_ID == 0)
        {
			setIsTaxIncluded (false);
// N
			setLBR_ICMSST_IsTaxIncluded (false);
// N
        } */
    }

    /** Load Constructor */
    public X_LBR_DocLine_ICMS (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_DocLine_ICMS[")
        .append(get_ID()).append("]");
      return sb.toString();
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

	public I_LBR_CEST getLBR_CEST() throws RuntimeException
    {
		return (I_LBR_CEST)MTable.get(getCtx(), I_LBR_CEST.Table_Name)
			.getPO(getLBR_CEST_ID(), get_TrxName());	}

	/** Set CEST.
		@param LBR_CEST_ID CEST	  */
	public void setLBR_CEST_ID (int LBR_CEST_ID)
	{
		if (LBR_CEST_ID < 1) 
			set_Value (COLUMNNAME_LBR_CEST_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_CEST_ID, Integer.valueOf(LBR_CEST_ID));
	}

	/** Get CEST.
		@return CEST	  */
	public int getLBR_CEST_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_CEST_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set DIFAL Share Rate (%).
		@param LBR_DIFAL_RateICMSInterPart DIFAL Share Rate (%)	  */
	public void setLBR_DIFAL_RateICMSInterPart (BigDecimal LBR_DIFAL_RateICMSInterPart)
	{
		set_Value (COLUMNNAME_LBR_DIFAL_RateICMSInterPart, LBR_DIFAL_RateICMSInterPart);
	}

	/** Get DIFAL Share Rate (%).
		@return DIFAL Share Rate (%)	  */
	public BigDecimal getLBR_DIFAL_RateICMSInterPart () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_DIFAL_RateICMSInterPart);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set DIFAL Tax Amt of "Fundo de Combate a Pobreza".
		@param LBR_DIFAL_TaxAmtFCPUFDest DIFAL Tax Amt of "Fundo de Combate a Pobreza"	  */
	public void setLBR_DIFAL_TaxAmtFCPUFDest (BigDecimal LBR_DIFAL_TaxAmtFCPUFDest)
	{
		set_Value (COLUMNNAME_LBR_DIFAL_TaxAmtFCPUFDest, LBR_DIFAL_TaxAmtFCPUFDest);
	}

	/** Get DIFAL Tax Amt of "Fundo de Combate a Pobreza".
		@return DIFAL Tax Amt of "Fundo de Combate a Pobreza"	  */
	public BigDecimal getLBR_DIFAL_TaxAmtFCPUFDest () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_DIFAL_TaxAmtFCPUFDest);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set DIFAL Tax Amt in Receiver UF.
		@param LBR_DIFAL_TaxAmtICMSUFDest DIFAL Tax Amt in Receiver UF	  */
	public void setLBR_DIFAL_TaxAmtICMSUFDest (BigDecimal LBR_DIFAL_TaxAmtICMSUFDest)
	{
		set_Value (COLUMNNAME_LBR_DIFAL_TaxAmtICMSUFDest, LBR_DIFAL_TaxAmtICMSUFDest);
	}

	/** Get DIFAL Tax Amt in Receiver UF.
		@return DIFAL Tax Amt in Receiver UF	  */
	public BigDecimal getLBR_DIFAL_TaxAmtICMSUFDest () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_DIFAL_TaxAmtICMSUFDest);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set DIFAL Tax Amt in Sender UF.
		@param LBR_DIFAL_TaxAmtICMSUFRemet DIFAL Tax Amt in Sender UF	  */
	public void setLBR_DIFAL_TaxAmtICMSUFRemet (BigDecimal LBR_DIFAL_TaxAmtICMSUFRemet)
	{
		set_Value (COLUMNNAME_LBR_DIFAL_TaxAmtICMSUFRemet, LBR_DIFAL_TaxAmtICMSUFRemet);
	}

	/** Get DIFAL Tax Amt in Sender UF.
		@return DIFAL Tax Amt in Sender UF	  */
	public BigDecimal getLBR_DIFAL_TaxAmtICMSUFRemet () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_DIFAL_TaxAmtICMSUFRemet);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set DIFAL Tax Base Amt of "Fundo de Combate a Pobreza".
		@param LBR_DIFAL_TaxBaseFCPUFDest DIFAL Tax Base Amt of "Fundo de Combate a Pobreza"	  */
	public void setLBR_DIFAL_TaxBaseFCPUFDest (BigDecimal LBR_DIFAL_TaxBaseFCPUFDest)
	{
		set_Value (COLUMNNAME_LBR_DIFAL_TaxBaseFCPUFDest, LBR_DIFAL_TaxBaseFCPUFDest);
	}

	/** Get DIFAL Tax Base Amt of "Fundo de Combate a Pobreza".
		@return DIFAL Tax Base Amt of "Fundo de Combate a Pobreza"	  */
	public BigDecimal getLBR_DIFAL_TaxBaseFCPUFDest () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_DIFAL_TaxBaseFCPUFDest);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set DIFAL Tax Rate of "Fundo de Combate a Pobreza".
		@param LBR_DIFAL_TaxRateFCPUFDest DIFAL Tax Rate of "Fundo de Combate a Pobreza"	  */
	public void setLBR_DIFAL_TaxRateFCPUFDest (BigDecimal LBR_DIFAL_TaxRateFCPUFDest)
	{
		set_Value (COLUMNNAME_LBR_DIFAL_TaxRateFCPUFDest, LBR_DIFAL_TaxRateFCPUFDest);
	}

	/** Get DIFAL Tax Rate of "Fundo de Combate a Pobreza".
		@return DIFAL Tax Rate of "Fundo de Combate a Pobreza"	  */
	public BigDecimal getLBR_DIFAL_TaxRateFCPUFDest () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_DIFAL_TaxRateFCPUFDest);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set DIFAL Internal Tax Rate in Receiver UF.
		@param LBR_DIFAL_TaxRateICMSUFDest DIFAL Internal Tax Rate in Receiver UF	  */
	public void setLBR_DIFAL_TaxRateICMSUFDest (BigDecimal LBR_DIFAL_TaxRateICMSUFDest)
	{
		set_Value (COLUMNNAME_LBR_DIFAL_TaxRateICMSUFDest, LBR_DIFAL_TaxRateICMSUFDest);
	}

	/** Get DIFAL Internal Tax Rate in Receiver UF.
		@return DIFAL Internal Tax Rate in Receiver UF	  */
	public BigDecimal getLBR_DIFAL_TaxRateICMSUFDest () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_DIFAL_TaxRateICMSUFDest);
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

	/** Set Doc Line ICMS.
		@param LBR_DocLine_ICMS_ID 
		Doc Line ICMS
	  */
	public void setLBR_DocLine_ICMS_ID (int LBR_DocLine_ICMS_ID)
	{
		if (LBR_DocLine_ICMS_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_DocLine_ICMS_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_DocLine_ICMS_ID, Integer.valueOf(LBR_DocLine_ICMS_ID));
	}

	/** Get Doc Line ICMS.
		@return Doc Line ICMS
	  */
	public int getLBR_DocLine_ICMS_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_DocLine_ICMS_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Doc Line ICMS.
		@param LBR_DocLine_ICMS_UU 
		Doc Line ICMS
	  */
	public void setLBR_DocLine_ICMS_UU (String LBR_DocLine_ICMS_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_DocLine_ICMS_UU, LBR_DocLine_ICMS_UU);
	}

	/** Get Doc Line ICMS.
		@return Doc Line ICMS
	  */
	public String getLBR_DocLine_ICMS_UU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_DocLine_ICMS_UU);
	}

	/** 00 - Tributada integralmente = 00 */
	public static final String LBR_ICMS_OWNTAXSTATUS_00_TributadaIntegralmente = "00";
	/** 10 - Tributada e com cobranca do ICMS por Sub. Tributaria = 10_1 */
	public static final String LBR_ICMS_OWNTAXSTATUS_10_TributadaEComCobrancaDoICMSPorSubTributaria = "10_1";
	/** 20 - Com reducao de base de calculo = 20 */
	public static final String LBR_ICMS_OWNTAXSTATUS_20_ComReducaoDeBaseDeCalculo = "20";
	/** 30 - Isenta ou nao-trib. e com cobr. do ICMS por Sub. Tribut = 30 */
	public static final String LBR_ICMS_OWNTAXSTATUS_30_IsentaOuNao_TribEComCobrDoICMSPorSubTribut = "30";
	/** 40 - Isenta = 40 */
	public static final String LBR_ICMS_OWNTAXSTATUS_40_Isenta = "40";
	/** 41 - Nao-tributada = 41_1 */
	public static final String LBR_ICMS_OWNTAXSTATUS_41_Nao_Tributada = "41_1";
	/** 50 - Suspensao = 50 */
	public static final String LBR_ICMS_OWNTAXSTATUS_50_Suspensao = "50";
	/** 51 - Diferimento  = 51 */
	public static final String LBR_ICMS_OWNTAXSTATUS_51_Diferimento = "51";
	/** 60 - ICMS cobrado anteriormente por substituicao tributaria = 60 */
	public static final String LBR_ICMS_OWNTAXSTATUS_60_ICMSCobradoAnteriormentePorSubstituicaoTributaria = "60";
	/** 70 - Com red. de base de calc. e cobr. do ICMS por Sub. Trib = 70 */
	public static final String LBR_ICMS_OWNTAXSTATUS_70_ComRedDeBaseDeCalcECobrDoICMSPorSubTrib = "70";
	/** 90 - Outras = 90_2 */
	public static final String LBR_ICMS_OWNTAXSTATUS_90_Outras = "90_2";
	/** 10 - Tributada e com cobranca do ICMS por Sub. Tributaria (com partilha) = 10_2 */
	public static final String LBR_ICMS_OWNTAXSTATUS_10_TributadaEComCobrancaDoICMSPorSubTributariaComPartilha = "10_2";
	/** 41 - Nao-tributada (retencao antecipada) = 41_2 */
	public static final String LBR_ICMS_OWNTAXSTATUS_41_Nao_TributadaRetencaoAntecipada = "41_2";
	/** 90 - Outras (com partilha) = 90_1 */
	public static final String LBR_ICMS_OWNTAXSTATUS_90_OutrasComPartilha = "90_1";
	/** Set Declarant ICMS Tax Status.
		@param LBR_ICMS_OwnTaxStatus 
		ICMS tax status from the point of view of the declarant
	  */
	public void setLBR_ICMS_OwnTaxStatus (String LBR_ICMS_OwnTaxStatus)
	{

		set_Value (COLUMNNAME_LBR_ICMS_OwnTaxStatus, LBR_ICMS_OwnTaxStatus);
	}

	/** Get Declarant ICMS Tax Status.
		@return ICMS tax status from the point of view of the declarant
	  */
	public String getLBR_ICMS_OwnTaxStatus () 
	{
		return (String)get_Value(COLUMNNAME_LBR_ICMS_OwnTaxStatus);
	}

	/** Set ICMS Tax Operation Amount.
		@param LBR_ICMS_TaxAmtOp 
		Identifies the ICMS Tax Operation Amount
	  */
	public void setLBR_ICMS_TaxAmtOp (BigDecimal LBR_ICMS_TaxAmtOp)
	{
		set_Value (COLUMNNAME_LBR_ICMS_TaxAmtOp, LBR_ICMS_TaxAmtOp);
	}

	/** Get ICMS Tax Operation Amount.
		@return Identifies the ICMS Tax Operation Amount
	  */
	public BigDecimal getLBR_ICMS_TaxAmtOp () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_ICMS_TaxAmtOp);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Margem Valor Agregado (%) = 0 */
	public static final String LBR_ICMS_TAXBASETYPE_MargemValorAgregado = "0";
	/** Pauta (Valor) = 1 */
	public static final String LBR_ICMS_TAXBASETYPE_PautaValor = "1";
	/** Preco Tabelado Max. (Valor) = 2 */
	public static final String LBR_ICMS_TAXBASETYPE_PrecoTabeladoMaxValor = "2";
	/** Valor da Operacao = 3 */
	public static final String LBR_ICMS_TAXBASETYPE_ValorDaOperacao = "3";
	/** Set ICMS Tax Base Type.
		@param LBR_ICMS_TaxBaseType 
		Identifies a ICMS Tax Base Type
	  */
	public void setLBR_ICMS_TaxBaseType (String LBR_ICMS_TaxBaseType)
	{

		set_Value (COLUMNNAME_LBR_ICMS_TaxBaseType, LBR_ICMS_TaxBaseType);
	}

	/** Get ICMS Tax Base Type.
		@return Identifies a ICMS Tax Base Type
	  */
	public String getLBR_ICMS_TaxBaseType () 
	{
		return (String)get_Value(COLUMNNAME_LBR_ICMS_TaxBaseType);
	}

	/** Cab = 1 */
	public static final String LBR_ICMS_TAXRELIEFTYPE_Cab = "1";
	/** Agriculture Use = 3 */
	public static final String LBR_ICMS_TAXRELIEFTYPE_AgricultureUse = "3";
	/** Rental = 4 */
	public static final String LBR_ICMS_TAXRELIEFTYPE_Rental = "4";
	/** Consular = 5 */
	public static final String LBR_ICMS_TAXRELIEFTYPE_Consular = "5";
	/** SUVs and Motorcycles = 6 */
	public static final String LBR_ICMS_TAXRELIEFTYPE_SUVsAndMotorcycles = "6";
	/** SUFRAMA = 7 */
	public static final String LBR_ICMS_TAXRELIEFTYPE_SUFRAMA = "7";
	/** Sale to public institutions = 8 */
	public static final String LBR_ICMS_TAXRELIEFTYPE_SaleToPublicInstitutions = "8";
	/** Other = 9 */
	public static final String LBR_ICMS_TAXRELIEFTYPE_Other = "9";
	/** Financing agency = 12 */
	public static final String LBR_ICMS_TAXRELIEFTYPE_FinancingAgency = "12";
	/** Set ICMS Tax Relief Type.
		@param LBR_ICMS_TaxReliefType 
		Identifies the ICMS Tax Relief Type
	  */
	public void setLBR_ICMS_TaxReliefType (String LBR_ICMS_TaxReliefType)
	{

		set_Value (COLUMNNAME_LBR_ICMS_TaxReliefType, LBR_ICMS_TaxReliefType);
	}

	/** Get ICMS Tax Relief Type.
		@return Identifies the ICMS Tax Relief Type
	  */
	public String getLBR_ICMS_TaxReliefType () 
	{
		return (String)get_Value(COLUMNNAME_LBR_ICMS_TaxReliefType);
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
		@param LBR_ICMS_TaxStatusSN 
		Identifies a ICMS Tax Status in a simple taxation
	  */
	public void setLBR_ICMS_TaxStatusSN (String LBR_ICMS_TaxStatusSN)
	{

		set_Value (COLUMNNAME_LBR_ICMS_TaxStatusSN, LBR_ICMS_TaxStatusSN);
	}

	/** Get ICMS Tax Status (Simple).
		@return Identifies a ICMS Tax Status in a simple taxation
	  */
	public String getLBR_ICMS_TaxStatusSN () 
	{
		return (String)get_Value(COLUMNNAME_LBR_ICMS_TaxStatusSN);
	}

	/** 00 - Tributada integralmente = 00 */
	public static final String LBR_ICMS_TAXSTATUSTN_00_TributadaIntegralmente = "00";
	/** 10 - Tributada e com cobranca do ICMS por Sub. Tributaria = 10_1 */
	public static final String LBR_ICMS_TAXSTATUSTN_10_TributadaEComCobrancaDoICMSPorSubTributaria = "10_1";
	/** 20 - Com reducao de base de calculo = 20 */
	public static final String LBR_ICMS_TAXSTATUSTN_20_ComReducaoDeBaseDeCalculo = "20";
	/** 30 - Isenta ou nao-trib. e com cobr. do ICMS por Sub. Tribut = 30 */
	public static final String LBR_ICMS_TAXSTATUSTN_30_IsentaOuNao_TribEComCobrDoICMSPorSubTribut = "30";
	/** 40 - Isenta = 40 */
	public static final String LBR_ICMS_TAXSTATUSTN_40_Isenta = "40";
	/** 41 - Nao-tributada = 41_1 */
	public static final String LBR_ICMS_TAXSTATUSTN_41_Nao_Tributada = "41_1";
	/** 50 - Suspensao = 50 */
	public static final String LBR_ICMS_TAXSTATUSTN_50_Suspensao = "50";
	/** 51 - Diferimento  = 51 */
	public static final String LBR_ICMS_TAXSTATUSTN_51_Diferimento = "51";
	/** 60 - ICMS cobrado anteriormente por substituicao tributaria = 60 */
	public static final String LBR_ICMS_TAXSTATUSTN_60_ICMSCobradoAnteriormentePorSubstituicaoTributaria = "60";
	/** 70 - Com red. de base de calc. e cobr. do ICMS por Sub. Trib = 70 */
	public static final String LBR_ICMS_TAXSTATUSTN_70_ComRedDeBaseDeCalcECobrDoICMSPorSubTrib = "70";
	/** 90 - Outras = 90_2 */
	public static final String LBR_ICMS_TAXSTATUSTN_90_Outras = "90_2";
	/** 10 - Tributada e com cobranca do ICMS por Sub. Tributaria (com partilha) = 10_2 */
	public static final String LBR_ICMS_TAXSTATUSTN_10_TributadaEComCobrancaDoICMSPorSubTributariaComPartilha = "10_2";
	/** 41 - Nao-tributada (retencao antecipada) = 41_2 */
	public static final String LBR_ICMS_TAXSTATUSTN_41_Nao_TributadaRetencaoAntecipada = "41_2";
	/** 90 - Outras (com partilha) = 90_1 */
	public static final String LBR_ICMS_TAXSTATUSTN_90_OutrasComPartilha = "90_1";
	/** Set ICMS Tax Status (Standard Taxation).
		@param LBR_ICMS_TaxStatusTN 
		Identifies a ICMS Tax Status in a standard taxation
	  */
	public void setLBR_ICMS_TaxStatusTN (String LBR_ICMS_TaxStatusTN)
	{

		set_Value (COLUMNNAME_LBR_ICMS_TaxStatusTN, LBR_ICMS_TaxStatusTN);
	}

	/** Get ICMS Tax Status (Standard Taxation).
		@return Identifies a ICMS Tax Status in a standard taxation
	  */
	public String getLBR_ICMS_TaxStatusTN () 
	{
		return (String)get_Value(COLUMNNAME_LBR_ICMS_TaxStatusTN);
	}

	/** Default Taxation = TN */
	public static final String LBR_ICMSREGIME_DefaultTaxation = "TN";
	/** Simple Taxation = SN */
	public static final String LBR_ICMSREGIME_SimpleTaxation = "SN";
	/** Set ICMS Regime.
		@param LBR_ICMSRegime 
		Identifies a ICMS Regime for taxes
	  */
	public void setLBR_ICMSRegime (String LBR_ICMSRegime)
	{

		set_Value (COLUMNNAME_LBR_ICMSRegime, LBR_ICMSRegime);
	}

	/** Get ICMS Regime.
		@return Identifies a ICMS Regime for taxes
	  */
	public String getLBR_ICMSRegime () 
	{
		return (String)get_Value(COLUMNNAME_LBR_ICMSRegime);
	}

	/** Set Price includes Tax.
		@param LBR_ICMSST_IsTaxIncluded 
		Tax is included in the price 
	  */
	public void setLBR_ICMSST_IsTaxIncluded (boolean LBR_ICMSST_IsTaxIncluded)
	{
		set_Value (COLUMNNAME_LBR_ICMSST_IsTaxIncluded, Boolean.valueOf(LBR_ICMSST_IsTaxIncluded));
	}

	/** Get Price includes Tax.
		@return Tax is included in the price 
	  */
	public boolean isLBR_ICMSST_IsTaxIncluded () 
	{
		Object oo = get_Value(COLUMNNAME_LBR_ICMSST_IsTaxIncluded);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set ICMS-ST Added Amount Margin (%).
		@param LBR_ICMSST_TaxAdded 
		Identifies the ICMS-ST Added Amount Margin in percentage
	  */
	public void setLBR_ICMSST_TaxAdded (BigDecimal LBR_ICMSST_TaxAdded)
	{
		set_Value (COLUMNNAME_LBR_ICMSST_TaxAdded, LBR_ICMSST_TaxAdded);
	}

	/** Get ICMS-ST Added Amount Margin (%).
		@return Identifies the ICMS-ST Added Amount Margin in percentage
	  */
	public BigDecimal getLBR_ICMSST_TaxAdded () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_ICMSST_TaxAdded);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set ICMS-ST Tax Amount.
		@param LBR_ICMSST_TaxAmt 
		Defines the ICMS-ST Tax Amount
	  */
	public void setLBR_ICMSST_TaxAmt (BigDecimal LBR_ICMSST_TaxAmt)
	{
		set_Value (COLUMNNAME_LBR_ICMSST_TaxAmt, LBR_ICMSST_TaxAmt);
	}

	/** Get ICMS-ST Tax Amount.
		@return Defines the ICMS-ST Tax Amount
	  */
	public BigDecimal getLBR_ICMSST_TaxAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_ICMSST_TaxAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set ICMS-ST Amount in Receiver UF.
		@param LBR_ICMSST_TaxAmtUFDes 
		Identifies the ICMS-ST Amount in Receiver UF
	  */
	public void setLBR_ICMSST_TaxAmtUFDes (BigDecimal LBR_ICMSST_TaxAmtUFDes)
	{
		set_Value (COLUMNNAME_LBR_ICMSST_TaxAmtUFDes, LBR_ICMSST_TaxAmtUFDes);
	}

	/** Get ICMS-ST Amount in Receiver UF.
		@return Identifies the ICMS-ST Amount in Receiver UF
	  */
	public BigDecimal getLBR_ICMSST_TaxAmtUFDes () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_ICMSST_TaxAmtUFDes);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set ICMS-ST Amount withheld in Sender UF.
		@param LBR_ICMSST_TaxAmtUFSen 
		Identifies the ICMS-ST Amount withheld in Sender UF
	  */
	public void setLBR_ICMSST_TaxAmtUFSen (BigDecimal LBR_ICMSST_TaxAmtUFSen)
	{
		set_Value (COLUMNNAME_LBR_ICMSST_TaxAmtUFSen, LBR_ICMSST_TaxAmtUFSen);
	}

	/** Get ICMS-ST Amount withheld in Sender UF.
		@return Identifies the ICMS-ST Amount withheld in Sender UF
	  */
	public BigDecimal getLBR_ICMSST_TaxAmtUFSen () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_ICMSST_TaxAmtUFSen);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set ICMS-ST Withheld Amount.
		@param LBR_ICMSST_TaxAmtWhd 
		Identifies the ICMS-ST Withheld Amount
	  */
	public void setLBR_ICMSST_TaxAmtWhd (BigDecimal LBR_ICMSST_TaxAmtWhd)
	{
		set_Value (COLUMNNAME_LBR_ICMSST_TaxAmtWhd, LBR_ICMSST_TaxAmtWhd);
	}

	/** Get ICMS-ST Withheld Amount.
		@return Identifies the ICMS-ST Withheld Amount
	  */
	public BigDecimal getLBR_ICMSST_TaxAmtWhd () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_ICMSST_TaxAmtWhd);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set ICMS-ST Base Amount in Receiver UF.
		@param LBR_ICMSST_TaxBAmtUFDes 
		Identifies the ICMS-ST Base Amount in Receiver UF
	  */
	public void setLBR_ICMSST_TaxBAmtUFDes (BigDecimal LBR_ICMSST_TaxBAmtUFDes)
	{
		set_Value (COLUMNNAME_LBR_ICMSST_TaxBAmtUFDes, LBR_ICMSST_TaxBAmtUFDes);
	}

	/** Get ICMS-ST Base Amount in Receiver UF.
		@return Identifies the ICMS-ST Base Amount in Receiver UF
	  */
	public BigDecimal getLBR_ICMSST_TaxBAmtUFDes () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_ICMSST_TaxBAmtUFDes);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set ICMS-ST Base Amount withheld in Sender UF.
		@param LBR_ICMSST_TaxBAmtUFSen 
		Identifies the ICMS-ST Base Amount withheld in Sender UF
	  */
	public void setLBR_ICMSST_TaxBAmtUFSen (BigDecimal LBR_ICMSST_TaxBAmtUFSen)
	{
		set_Value (COLUMNNAME_LBR_ICMSST_TaxBAmtUFSen, LBR_ICMSST_TaxBAmtUFSen);
	}

	/** Get ICMS-ST Base Amount withheld in Sender UF.
		@return Identifies the ICMS-ST Base Amount withheld in Sender UF
	  */
	public BigDecimal getLBR_ICMSST_TaxBAmtUFSen () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_ICMSST_TaxBAmtUFSen);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set ICMS-ST Withheld Base Amount.
		@param LBR_ICMSST_TaxBAmtWhd 
		Identifies the ICMS-ST Withheld Base Amount
	  */
	public void setLBR_ICMSST_TaxBAmtWhd (BigDecimal LBR_ICMSST_TaxBAmtWhd)
	{
		set_Value (COLUMNNAME_LBR_ICMSST_TaxBAmtWhd, LBR_ICMSST_TaxBAmtWhd);
	}

	/** Get ICMS-ST Withheld Base Amount.
		@return Identifies the ICMS-ST Withheld Base Amount
	  */
	public BigDecimal getLBR_ICMSST_TaxBAmtWhd () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_ICMSST_TaxBAmtWhd);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set ICMS-ST Tax Base.
		@param LBR_ICMSST_TaxBase 
		Indicates the ICMS-ST Tax Base
	  */
	public void setLBR_ICMSST_TaxBase (BigDecimal LBR_ICMSST_TaxBase)
	{
		set_Value (COLUMNNAME_LBR_ICMSST_TaxBase, LBR_ICMSST_TaxBase);
	}

	/** Get ICMS-ST Tax Base.
		@return Indicates the ICMS-ST Tax Base
	  */
	public BigDecimal getLBR_ICMSST_TaxBase () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_ICMSST_TaxBase);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set ICMS-ST Tax Base Amount.
		@param LBR_ICMSST_TaxBaseAmt 
		Defines the ICMS-ST Tax Base Amount
	  */
	public void setLBR_ICMSST_TaxBaseAmt (BigDecimal LBR_ICMSST_TaxBaseAmt)
	{
		set_Value (COLUMNNAME_LBR_ICMSST_TaxBaseAmt, LBR_ICMSST_TaxBaseAmt);
	}

	/** Get ICMS-ST Tax Base Amount.
		@return Defines the ICMS-ST Tax Base Amount
	  */
	public BigDecimal getLBR_ICMSST_TaxBaseAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_ICMSST_TaxBaseAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Preco Tabelado ou Maximo Sugerido = 0 */
	public static final String LBR_ICMSST_TAXBASETYPE_PrecoTabeladoOuMaximoSugerido = "0";
	/** Lista Negativa (Valor) = 1 */
	public static final String LBR_ICMSST_TAXBASETYPE_ListaNegativaValor = "1";
	/** Lista Positiva (Valor) = 2 */
	public static final String LBR_ICMSST_TAXBASETYPE_ListaPositivaValor = "2";
	/** Lista Neutra (Valor) = 3 */
	public static final String LBR_ICMSST_TAXBASETYPE_ListaNeutraValor = "3";
	/** Margem Valor Agregado (%) = 4 */
	public static final String LBR_ICMSST_TAXBASETYPE_MargemValorAgregado = "4";
	/** Pauta (Valor) = 5 */
	public static final String LBR_ICMSST_TAXBASETYPE_PautaValor = "5";
	/** Set ICMS-ST Tax Base Type.
		@param LBR_ICMSST_TaxBaseType 
		Identifies a ICMS-ST Tax Base Type
	  */
	public void setLBR_ICMSST_TaxBaseType (String LBR_ICMSST_TaxBaseType)
	{

		set_Value (COLUMNNAME_LBR_ICMSST_TaxBaseType, LBR_ICMSST_TaxBaseType);
	}

	/** Get ICMS-ST Tax Base Type.
		@return Identifies a ICMS-ST Tax Base Type
	  */
	public String getLBR_ICMSST_TaxBaseType () 
	{
		return (String)get_Value(COLUMNNAME_LBR_ICMSST_TaxBaseType);
	}

	/** Set ICMS-ST Tax Rate.
		@param LBR_ICMSST_TaxRate 
		Indicates the ICMS-ST Tax Rate
	  */
	public void setLBR_ICMSST_TaxRate (BigDecimal LBR_ICMSST_TaxRate)
	{
		set_Value (COLUMNNAME_LBR_ICMSST_TaxRate, LBR_ICMSST_TaxRate);
	}

	/** Get ICMS-ST Tax Rate.
		@return Indicates the ICMS-ST Tax Rate
	  */
	public BigDecimal getLBR_ICMSST_TaxRate () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_ICMSST_TaxRate);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	public org.compiere.model.I_C_Region getLBR_ICMSST_TaxUFDue() throws RuntimeException
    {
		return (org.compiere.model.I_C_Region)MTable.get(getCtx(), org.compiere.model.I_C_Region.Table_Name)
			.getPO(getLBR_ICMSST_TaxUFDue_ID(), get_TrxName());	}

	/** Set ICMS-ST UF Due.
		@param LBR_ICMSST_TaxUFDue_ID 
		Identifies the ICMS-ST UF Due
	  */
	public void setLBR_ICMSST_TaxUFDue_ID (int LBR_ICMSST_TaxUFDue_ID)
	{
		if (LBR_ICMSST_TaxUFDue_ID < 1) 
			set_Value (COLUMNNAME_LBR_ICMSST_TaxUFDue_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_ICMSST_TaxUFDue_ID, Integer.valueOf(LBR_ICMSST_TaxUFDue_ID));
	}

	/** Get ICMS-ST UF Due.
		@return Identifies the ICMS-ST UF Due
	  */
	public int getLBR_ICMSST_TaxUFDue_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_ICMSST_TaxUFDue_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** 0 - Domestic = 0 */
	public static final String LBR_PRODUCTSOURCE_0_Domestic = "0";
	/** 1 - Imported = 1 */
	public static final String LBR_PRODUCTSOURCE_1_Imported = "1";
	/** 2 - Imported - Acquired from a domestic distributor = 2 */
	public static final String LBR_PRODUCTSOURCE_2_Imported_AcquiredFromADomesticDistributor = "2";
	/** 3 - Domestic with more than 40 percent Imported = 3 */
	public static final String LBR_PRODUCTSOURCE_3_DomesticWithMoreThan40PercentImported = "3";
	/** 4 - Domestic according to adjustments = 4 */
	public static final String LBR_PRODUCTSOURCE_4_DomesticAccordingToAdjustments = "4";
	/** 5 - Domestic until 40 percent Imported = 5 */
	public static final String LBR_PRODUCTSOURCE_5_DomesticUntil40PercentImported = "5";
	/** 6 - Foreign - Direct import no domestic similar = 6 */
	public static final String LBR_PRODUCTSOURCE_6_Foreign_DirectImportNoDomesticSimilar = "6";
	/** 7 - Foreign - Acquired from domestic distributor no similar = 7 */
	public static final String LBR_PRODUCTSOURCE_7_Foreign_AcquiredFromDomesticDistributorNoSimilar = "7";
	/** 8 - Domestic with more than 70 percent Imported = 8 */
	public static final String LBR_PRODUCTSOURCE_8_DomesticWithMoreThan70PercentImported = "8";
	/** Set Product Source.
		@param LBR_ProductSource 
		Identifies a Product Source
	  */
	public void setLBR_ProductSource (String LBR_ProductSource)
	{

		set_Value (COLUMNNAME_LBR_ProductSource, LBR_ProductSource);
	}

	/** Get Product Source.
		@return Identifies a Product Source
	  */
	public String getLBR_ProductSource () 
	{
		return (String)get_Value(COLUMNNAME_LBR_ProductSource);
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

	/** Set Tax Amount Credit.
		@param LBR_TaxAmtCredit 
		Identifies the Tax Amount Credit
	  */
	public void setLBR_TaxAmtCredit (BigDecimal LBR_TaxAmtCredit)
	{
		set_Value (COLUMNNAME_LBR_TaxAmtCredit, LBR_TaxAmtCredit);
	}

	/** Get Tax Amount Credit.
		@return Identifies the Tax Amount Credit
	  */
	public BigDecimal getLBR_TaxAmtCredit () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_TaxAmtCredit);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Tax Base.
		@param LBR_TaxBase 
		Indicates the Tax Base
	  */
	public void setLBR_TaxBase (BigDecimal LBR_TaxBase)
	{
		set_Value (COLUMNNAME_LBR_TaxBase, LBR_TaxBase);
	}

	/** Get Tax Base.
		@return Indicates the Tax Base
	  */
	public BigDecimal getLBR_TaxBase () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_TaxBase);
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

	/** Set Tax Base Own Operation (%).
		@param LBR_TaxBaseOwnOperation 
		Identifies the Tax Base Own Operation in percentage
	  */
	public void setLBR_TaxBaseOwnOperation (BigDecimal LBR_TaxBaseOwnOperation)
	{
		set_Value (COLUMNNAME_LBR_TaxBaseOwnOperation, LBR_TaxBaseOwnOperation);
	}

	/** Get Tax Base Own Operation (%).
		@return Identifies the Tax Base Own Operation in percentage
	  */
	public BigDecimal getLBR_TaxBaseOwnOperation () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_TaxBaseOwnOperation);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Tax Deferral Amount.
		@param LBR_TaxDeferralAmt 
		Identifies the Tax Deferral Amount
	  */
	public void setLBR_TaxDeferralAmt (BigDecimal LBR_TaxDeferralAmt)
	{
		set_Value (COLUMNNAME_LBR_TaxDeferralAmt, LBR_TaxDeferralAmt);
	}

	/** Get Tax Deferral Amount.
		@return Identifies the Tax Deferral Amount
	  */
	public BigDecimal getLBR_TaxDeferralAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_TaxDeferralAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Tax Deferral Rate (%).
		@param LBR_TaxDeferralRate 
		Identifies the Tax Deferral Rate (%)
	  */
	public void setLBR_TaxDeferralRate (BigDecimal LBR_TaxDeferralRate)
	{
		set_Value (COLUMNNAME_LBR_TaxDeferralRate, LBR_TaxDeferralRate);
	}

	/** Get Tax Deferral Rate (%).
		@return Identifies the Tax Deferral Rate (%)
	  */
	public BigDecimal getLBR_TaxDeferralRate () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_TaxDeferralRate);
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

	/** Set Tax Rate Credit (%).
		@param LBR_TaxRateCredit 
		Identifies the Tax Rate Credit in percentage
	  */
	public void setLBR_TaxRateCredit (BigDecimal LBR_TaxRateCredit)
	{
		set_Value (COLUMNNAME_LBR_TaxRateCredit, LBR_TaxRateCredit);
	}

	/** Get Tax Rate Credit (%).
		@return Identifies the Tax Rate Credit in percentage
	  */
	public BigDecimal getLBR_TaxRateCredit () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_TaxRateCredit);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Tax Relief Amount.
		@param LBR_TaxReliefAmt 
		Identifies the Tax Relief Amount
	  */
	public void setLBR_TaxReliefAmt (BigDecimal LBR_TaxReliefAmt)
	{
		set_Value (COLUMNNAME_LBR_TaxReliefAmt, LBR_TaxReliefAmt);
	}

	/** Get Tax Relief Amount.
		@return Identifies the Tax Relief Amount
	  */
	public BigDecimal getLBR_TaxReliefAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_TaxReliefAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}
}