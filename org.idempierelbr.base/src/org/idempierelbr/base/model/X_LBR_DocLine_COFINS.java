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

/** Generated Model for LBR_DocLine_COFINS
 *  @author iDempiere (generated)
 *  @version Release 11 - $Id$ */
@org.adempiere.base.Model(table="LBR_DocLine_COFINS")
public class X_LBR_DocLine_COFINS extends PO implements I_LBR_DocLine_COFINS, I_Persistent
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20240603L;

    /** Standard Constructor */
    public X_LBR_DocLine_COFINS (Properties ctx, int LBR_DocLine_COFINS_ID, String trxName)
    {
      super (ctx, LBR_DocLine_COFINS_ID, trxName);
      /** if (LBR_DocLine_COFINS_ID == 0)
        {
			setIsTaxIncluded (false);
// N
        } */
    }

    /** Standard Constructor */
    public X_LBR_DocLine_COFINS (Properties ctx, int LBR_DocLine_COFINS_ID, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_DocLine_COFINS_ID, trxName, virtualColumns);
      /** if (LBR_DocLine_COFINS_ID == 0)
        {
			setIsTaxIncluded (false);
// N
        } */
    }

    /** Standard Constructor */
    public X_LBR_DocLine_COFINS (Properties ctx, String LBR_DocLine_COFINS_UU, String trxName)
    {
      super (ctx, LBR_DocLine_COFINS_UU, trxName);
      /** if (LBR_DocLine_COFINS_UU == null)
        {
			setIsTaxIncluded (false);
// N
        } */
    }

    /** Standard Constructor */
    public X_LBR_DocLine_COFINS (Properties ctx, String LBR_DocLine_COFINS_UU, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_DocLine_COFINS_UU, trxName, virtualColumns);
      /** if (LBR_DocLine_COFINS_UU == null)
        {
			setIsTaxIncluded (false);
// N
        } */
    }

    /** Load Constructor */
    public X_LBR_DocLine_COFINS (Properties ctx, ResultSet rs, String trxName)
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
      StringBuilder sb = new StringBuilder ("X_LBR_DocLine_COFINS[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Amount = AMT */
	public static final String CALCULATIONTYPE_Amount = "AMT";
	/** Percentage = PER */
	public static final String CALCULATIONTYPE_Percentage = "PER";
	/** Set Calculation.
		@param CalculationType Calculation
	*/
	public void setCalculationType (String CalculationType)
	{

		set_Value (COLUMNNAME_CalculationType, CalculationType);
	}

	/** Get Calculation.
		@return Calculation	  */
	public String getCalculationType()
	{
		return (String)get_Value(COLUMNNAME_CalculationType);
	}

	/** Set Price includes Tax.
		@param IsTaxIncluded Tax is included in the price 
	*/
	public void setIsTaxIncluded (boolean IsTaxIncluded)
	{
		set_Value (COLUMNNAME_IsTaxIncluded, Boolean.valueOf(IsTaxIncluded));
	}

	/** Get Price includes Tax.
		@return Tax is included in the price 
	  */
	public boolean isTaxIncluded()
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

	/** Amount = AMT */
	public static final String LBR_COFST_CALCTYPE_Amount = "AMT";
	/** Percentage = PER */
	public static final String LBR_COFST_CALCTYPE_Percentage = "PER";
	/** Set Calculation.
		@param LBR_COFST_CalcType Calculation
	*/
	public void setLBR_COFST_CalcType (String LBR_COFST_CalcType)
	{

		set_Value (COLUMNNAME_LBR_COFST_CalcType, LBR_COFST_CalcType);
	}

	/** Get Calculation.
		@return Calculation	  */
	public String getLBR_COFST_CalcType()
	{
		return (String)get_Value(COLUMNNAME_LBR_COFST_CalcType);
	}

	/** Set COFINS-ST Tax Amount.
		@param LBR_COFST_TaxAmt Defines the COFINS-ST Tax Amount
	*/
	public void setLBR_COFST_TaxAmt (BigDecimal LBR_COFST_TaxAmt)
	{
		set_Value (COLUMNNAME_LBR_COFST_TaxAmt, LBR_COFST_TaxAmt);
	}

	/** Get COFINS-ST Tax Amount.
		@return Defines the COFINS-ST Tax Amount
	  */
	public BigDecimal getLBR_COFST_TaxAmt()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_COFST_TaxAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set COFINS-ST Tax Base Amount.
		@param LBR_COFST_TaxBaseAmt Defines the COFINS-ST Tax Base Amount
	*/
	public void setLBR_COFST_TaxBaseAmt (BigDecimal LBR_COFST_TaxBaseAmt)
	{
		set_Value (COLUMNNAME_LBR_COFST_TaxBaseAmt, LBR_COFST_TaxBaseAmt);
	}

	/** Get COFINS-ST Tax Base Amount.
		@return Defines the COFINS-ST Tax Base Amount
	  */
	public BigDecimal getLBR_COFST_TaxBaseAmt()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_COFST_TaxBaseAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set COFINS-ST Tax Rate.
		@param LBR_COFST_TaxRate Indicates the COFINS-ST Tax Rate
	*/
	public void setLBR_COFST_TaxRate (BigDecimal LBR_COFST_TaxRate)
	{
		set_Value (COLUMNNAME_LBR_COFST_TaxRate, LBR_COFST_TaxRate);
	}

	/** Get COFINS-ST Tax Rate.
		@return Indicates the COFINS-ST Tax Rate
	  */
	public BigDecimal getLBR_COFST_TaxRate()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_COFST_TaxRate);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set COFINS-ST Tax Rate in Amount.
		@param LBR_COFST_TaxRateInAmt Indicates the COFINS-ST Tax Rate in Amount
	*/
	public void setLBR_COFST_TaxRateInAmt (BigDecimal LBR_COFST_TaxRateInAmt)
	{
		set_Value (COLUMNNAME_LBR_COFST_TaxRateInAmt, LBR_COFST_TaxRateInAmt);
	}

	/** Get COFINS-ST Tax Rate in Amount.
		@return Indicates the COFINS-ST Tax Rate in Amount
	  */
	public BigDecimal getLBR_COFST_TaxRateInAmt()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_COFST_TaxRateInAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set COFINS-ST Total Quantity.
		@param LBR_COFST_TotalQty COFINS-ST Total Quantity
	*/
	public void setLBR_COFST_TotalQty (BigDecimal LBR_COFST_TotalQty)
	{
		set_Value (COLUMNNAME_LBR_COFST_TotalQty, LBR_COFST_TotalQty);
	}

	/** Get COFINS-ST Total Quantity.
		@return COFINS-ST Total Quantity
	  */
	public BigDecimal getLBR_COFST_TotalQty()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_COFST_TotalQty);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** 01 - Operacao tributavel (cumulativo/nao cumulativo) = 01 */
	public static final String LBR_COF_OWNTAXSTATUS_01_OperacaoTributavelCumulativoNaoCumulativo = "01";
	/** 02 - Operacao tributavel (aliquota diferenciada) = 02 */
	public static final String LBR_COF_OWNTAXSTATUS_02_OperacaoTributavelAliquotaDiferenciada = "02";
	/** 03 - Operacao tributavel = 03 */
	public static final String LBR_COF_OWNTAXSTATUS_03_OperacaoTributavel = "03";
	/** 04 - Operacao tributavel (aliquota zero) = 04 */
	public static final String LBR_COF_OWNTAXSTATUS_04_OperacaoTributavelAliquotaZero = "04";
	/** 05 - Operacao tributavel (ST) = 05 */
	public static final String LBR_COF_OWNTAXSTATUS_05_OperacaoTributavelST = "05";
	/** 06 - Operacao tributavel (aliquota zero) = 06 */
	public static final String LBR_COF_OWNTAXSTATUS_06_OperacaoTributavelAliquotaZero = "06";
	/** 07 - Operacao isenta da contribuicao = 07 */
	public static final String LBR_COF_OWNTAXSTATUS_07_OperacaoIsentaDaContribuicao = "07";
	/** 08 - Operacao sem incidencia da contribuicao = 08 */
	public static final String LBR_COF_OWNTAXSTATUS_08_OperacaoSemIncidenciaDaContribuicao = "08";
	/** 09 - Operacao com suspensao da contribuicao = 09 */
	public static final String LBR_COF_OWNTAXSTATUS_09_OperacaoComSuspensaoDaContribuicao = "09";
	/** 49 - Outras operacoes de saida = 49 */
	public static final String LBR_COF_OWNTAXSTATUS_49_OutrasOperacoesDeSaida = "49";
	/** 50 - Operacao com direito a credito = 50 */
	public static final String LBR_COF_OWNTAXSTATUS_50_OperacaoComDireitoACredito = "50";
	/** 51 - Operacao com direito a credito = 51 */
	public static final String LBR_COF_OWNTAXSTATUS_51_OperacaoComDireitoACredito = "51";
	/** 52 - Operacao com direito a credito = 52 */
	public static final String LBR_COF_OWNTAXSTATUS_52_OperacaoComDireitoACredito = "52";
	/** 53 - Operacao com direito a credito = 53 */
	public static final String LBR_COF_OWNTAXSTATUS_53_OperacaoComDireitoACredito = "53";
	/** 54 - Operacao com direito a credito = 54 */
	public static final String LBR_COF_OWNTAXSTATUS_54_OperacaoComDireitoACredito = "54";
	/** 55 - Operacao com direito a credito = 55 */
	public static final String LBR_COF_OWNTAXSTATUS_55_OperacaoComDireitoACredito = "55";
	/** 56 - Operacao com direito a credito = 56 */
	public static final String LBR_COF_OWNTAXSTATUS_56_OperacaoComDireitoACredito = "56";
	/** 60 - Credito presumido = 60 */
	public static final String LBR_COF_OWNTAXSTATUS_60_CreditoPresumido = "60";
	/** 61 - Credito presumido = 61 */
	public static final String LBR_COF_OWNTAXSTATUS_61_CreditoPresumido = "61";
	/** 62 - Credito presumido = 62 */
	public static final String LBR_COF_OWNTAXSTATUS_62_CreditoPresumido = "62";
	/** 63 - Credito presumido = 63 */
	public static final String LBR_COF_OWNTAXSTATUS_63_CreditoPresumido = "63";
	/** 64 - Credito presumido = 64 */
	public static final String LBR_COF_OWNTAXSTATUS_64_CreditoPresumido = "64";
	/** 65 - Credito presumido = 65 */
	public static final String LBR_COF_OWNTAXSTATUS_65_CreditoPresumido = "65";
	/** 66 - Credito presumido = 66 */
	public static final String LBR_COF_OWNTAXSTATUS_66_CreditoPresumido = "66";
	/** 67 - Credito presumido = 67 */
	public static final String LBR_COF_OWNTAXSTATUS_67_CreditoPresumido = "67";
	/** 70 - Operacao de aquisicao sem direito a credito = 70 */
	public static final String LBR_COF_OWNTAXSTATUS_70_OperacaoDeAquisicaoSemDireitoACredito = "70";
	/** 71 - Operacao de aquisicao com isencao = 71 */
	public static final String LBR_COF_OWNTAXSTATUS_71_OperacaoDeAquisicaoComIsencao = "71";
	/** 72 - Operacao de aquisicao com suspensao = 72 */
	public static final String LBR_COF_OWNTAXSTATUS_72_OperacaoDeAquisicaoComSuspensao = "72";
	/** 73 - Operacao de aquisicao a aliquota zero = 73 */
	public static final String LBR_COF_OWNTAXSTATUS_73_OperacaoDeAquisicaoAAliquotaZero = "73";
	/** 74 - Operacao de aquisicao sem incidencia da contribuicao = 74 */
	public static final String LBR_COF_OWNTAXSTATUS_74_OperacaoDeAquisicaoSemIncidenciaDaContribuicao = "74";
	/** 75 - Operacao de aquisicao por substituicao tributaria = 75 */
	public static final String LBR_COF_OWNTAXSTATUS_75_OperacaoDeAquisicaoPorSubstituicaoTributaria = "75";
	/** 98 - Outras operacoes de entrada = 98 */
	public static final String LBR_COF_OWNTAXSTATUS_98_OutrasOperacoesDeEntrada = "98";
	/** 99 - Outras operacoes = 99 */
	public static final String LBR_COF_OWNTAXSTATUS_99_OutrasOperacoes = "99";
	/** Set Declarant COFINS Tax Status.
		@param LBR_COF_OwnTaxStatus COFINS tax status from the point of view of the declarant
	*/
	public void setLBR_COF_OwnTaxStatus (String LBR_COF_OwnTaxStatus)
	{

		set_Value (COLUMNNAME_LBR_COF_OwnTaxStatus, LBR_COF_OwnTaxStatus);
	}

	/** Get Declarant COFINS Tax Status.
		@return COFINS tax status from the point of view of the declarant
	  */
	public String getLBR_COF_OwnTaxStatus()
	{
		return (String)get_Value(COLUMNNAME_LBR_COF_OwnTaxStatus);
	}

	/** 01 - Operacao tributavel (cumulativo/nao cumulativo) = 01 */
	public static final String LBR_COF_TAXSTATUS_01_OperacaoTributavelCumulativoNaoCumulativo = "01";
	/** 02 - Operacao tributavel (aliquota diferenciada) = 02 */
	public static final String LBR_COF_TAXSTATUS_02_OperacaoTributavelAliquotaDiferenciada = "02";
	/** 03 - Operacao tributavel = 03 */
	public static final String LBR_COF_TAXSTATUS_03_OperacaoTributavel = "03";
	/** 04 - Operacao tributavel (aliquota zero) = 04 */
	public static final String LBR_COF_TAXSTATUS_04_OperacaoTributavelAliquotaZero = "04";
	/** 05 - Operacao tributavel (ST) = 05 */
	public static final String LBR_COF_TAXSTATUS_05_OperacaoTributavelST = "05";
	/** 06 - Operacao tributavel (aliquota zero) = 06 */
	public static final String LBR_COF_TAXSTATUS_06_OperacaoTributavelAliquotaZero = "06";
	/** 07 - Operacao isenta da contribuicao = 07 */
	public static final String LBR_COF_TAXSTATUS_07_OperacaoIsentaDaContribuicao = "07";
	/** 08 - Operacao sem incidencia da contribuicao = 08 */
	public static final String LBR_COF_TAXSTATUS_08_OperacaoSemIncidenciaDaContribuicao = "08";
	/** 09 - Operacao com suspensao da contribuicao = 09 */
	public static final String LBR_COF_TAXSTATUS_09_OperacaoComSuspensaoDaContribuicao = "09";
	/** 49 - Outras operacoes de saida = 49 */
	public static final String LBR_COF_TAXSTATUS_49_OutrasOperacoesDeSaida = "49";
	/** 50 - Operacao com direito a credito = 50 */
	public static final String LBR_COF_TAXSTATUS_50_OperacaoComDireitoACredito = "50";
	/** 51 - Operacao com direito a credito = 51 */
	public static final String LBR_COF_TAXSTATUS_51_OperacaoComDireitoACredito = "51";
	/** 52 - Operacao com direito a credito = 52 */
	public static final String LBR_COF_TAXSTATUS_52_OperacaoComDireitoACredito = "52";
	/** 53 - Operacao com direito a credito = 53 */
	public static final String LBR_COF_TAXSTATUS_53_OperacaoComDireitoACredito = "53";
	/** 54 - Operacao com direito a credito = 54 */
	public static final String LBR_COF_TAXSTATUS_54_OperacaoComDireitoACredito = "54";
	/** 55 - Operacao com direito a credito = 55 */
	public static final String LBR_COF_TAXSTATUS_55_OperacaoComDireitoACredito = "55";
	/** 56 - Operacao com direito a credito = 56 */
	public static final String LBR_COF_TAXSTATUS_56_OperacaoComDireitoACredito = "56";
	/** 60 - Credito presumido = 60 */
	public static final String LBR_COF_TAXSTATUS_60_CreditoPresumido = "60";
	/** 61 - Credito presumido = 61 */
	public static final String LBR_COF_TAXSTATUS_61_CreditoPresumido = "61";
	/** 62 - Credito presumido = 62 */
	public static final String LBR_COF_TAXSTATUS_62_CreditoPresumido = "62";
	/** 63 - Credito presumido = 63 */
	public static final String LBR_COF_TAXSTATUS_63_CreditoPresumido = "63";
	/** 64 - Credito presumido = 64 */
	public static final String LBR_COF_TAXSTATUS_64_CreditoPresumido = "64";
	/** 65 - Credito presumido = 65 */
	public static final String LBR_COF_TAXSTATUS_65_CreditoPresumido = "65";
	/** 66 - Credito presumido = 66 */
	public static final String LBR_COF_TAXSTATUS_66_CreditoPresumido = "66";
	/** 67 - Credito presumido = 67 */
	public static final String LBR_COF_TAXSTATUS_67_CreditoPresumido = "67";
	/** 70 - Operacao de aquisicao sem direito a credito = 70 */
	public static final String LBR_COF_TAXSTATUS_70_OperacaoDeAquisicaoSemDireitoACredito = "70";
	/** 71 - Operacao de aquisicao com isencao = 71 */
	public static final String LBR_COF_TAXSTATUS_71_OperacaoDeAquisicaoComIsencao = "71";
	/** 72 - Operacao de aquisicao com suspensao = 72 */
	public static final String LBR_COF_TAXSTATUS_72_OperacaoDeAquisicaoComSuspensao = "72";
	/** 73 - Operacao de aquisicao a aliquota zero = 73 */
	public static final String LBR_COF_TAXSTATUS_73_OperacaoDeAquisicaoAAliquotaZero = "73";
	/** 74 - Operacao de aquisicao sem incidencia da contribuicao = 74 */
	public static final String LBR_COF_TAXSTATUS_74_OperacaoDeAquisicaoSemIncidenciaDaContribuicao = "74";
	/** 75 - Operacao de aquisicao por substituicao tributaria = 75 */
	public static final String LBR_COF_TAXSTATUS_75_OperacaoDeAquisicaoPorSubstituicaoTributaria = "75";
	/** 98 - Outras operacoes de entrada = 98 */
	public static final String LBR_COF_TAXSTATUS_98_OutrasOperacoesDeEntrada = "98";
	/** 99 - Outras operacoes = 99 */
	public static final String LBR_COF_TAXSTATUS_99_OutrasOperacoes = "99";
	/** Set COFINS Tax Status.
		@param LBR_COF_TaxStatus Identifies a COFINS Tax Status
	*/
	public void setLBR_COF_TaxStatus (String LBR_COF_TaxStatus)
	{

		set_Value (COLUMNNAME_LBR_COF_TaxStatus, LBR_COF_TaxStatus);
	}

	/** Get COFINS Tax Status.
		@return Identifies a COFINS Tax Status
	  */
	public String getLBR_COF_TaxStatus()
	{
		return (String)get_Value(COLUMNNAME_LBR_COF_TaxStatus);
	}

	/** Set Doc Line COFINS.
		@param LBR_DocLine_COFINS_ID Doc Line COFINS
	*/
	public void setLBR_DocLine_COFINS_ID (int LBR_DocLine_COFINS_ID)
	{
		if (LBR_DocLine_COFINS_ID < 1)
			set_ValueNoCheck (COLUMNNAME_LBR_DocLine_COFINS_ID, null);
		else
			set_ValueNoCheck (COLUMNNAME_LBR_DocLine_COFINS_ID, Integer.valueOf(LBR_DocLine_COFINS_ID));
	}

	/** Get Doc Line COFINS.
		@return Doc Line COFINS
	  */
	public int getLBR_DocLine_COFINS_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_DocLine_COFINS_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Doc Line COFINS.
		@param LBR_DocLine_COFINS_UU Doc Line COFINS
	*/
	public void setLBR_DocLine_COFINS_UU (String LBR_DocLine_COFINS_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_DocLine_COFINS_UU, LBR_DocLine_COFINS_UU);
	}

	/** Get Doc Line COFINS.
		@return Doc Line COFINS
	  */
	public String getLBR_DocLine_COFINS_UU()
	{
		return (String)get_Value(COLUMNNAME_LBR_DocLine_COFINS_UU);
	}

	public I_LBR_DocLine_Details getLBR_DocLine_Details() throws RuntimeException
	{
		return (I_LBR_DocLine_Details)MTable.get(getCtx(), I_LBR_DocLine_Details.Table_ID)
			.getPO(getLBR_DocLine_Details_ID(), get_TrxName());
	}

	/** Set Doc Line Details.
		@param LBR_DocLine_Details_ID Doc Line Details
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
	public int getLBR_DocLine_Details_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_DocLine_Details_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Tax Amount.
		@param LBR_TaxAmt Defines the Tax Amount
	*/
	public void setLBR_TaxAmt (BigDecimal LBR_TaxAmt)
	{
		set_Value (COLUMNNAME_LBR_TaxAmt, LBR_TaxAmt);
	}

	/** Get Tax Amount.
		@return Defines the Tax Amount
	  */
	public BigDecimal getLBR_TaxAmt()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_TaxAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Tax Base Amount.
		@param LBR_TaxBaseAmt Defines the Tax Base Amount
	*/
	public void setLBR_TaxBaseAmt (BigDecimal LBR_TaxBaseAmt)
	{
		set_Value (COLUMNNAME_LBR_TaxBaseAmt, LBR_TaxBaseAmt);
	}

	/** Get Tax Base Amount.
		@return Defines the Tax Base Amount
	  */
	public BigDecimal getLBR_TaxBaseAmt()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_TaxBaseAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Tax Rate.
		@param LBR_TaxRate Indicates the Tax Rate
	*/
	public void setLBR_TaxRate (BigDecimal LBR_TaxRate)
	{
		set_Value (COLUMNNAME_LBR_TaxRate, LBR_TaxRate);
	}

	/** Get Tax Rate.
		@return Indicates the Tax Rate
	  */
	public BigDecimal getLBR_TaxRate()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_TaxRate);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Tax Rate in Amount.
		@param LBR_TaxRateInAmt Indicates the Tax Rate in Amount
	*/
	public void setLBR_TaxRateInAmt (BigDecimal LBR_TaxRateInAmt)
	{
		set_Value (COLUMNNAME_LBR_TaxRateInAmt, LBR_TaxRateInAmt);
	}

	/** Get Tax Rate in Amount.
		@return Indicates the Tax Rate in Amount
	  */
	public BigDecimal getLBR_TaxRateInAmt()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_TaxRateInAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Total Quantity.
		@param TotalQty Total Quantity
	*/
	public void setTotalQty (BigDecimal TotalQty)
	{
		set_Value (COLUMNNAME_TotalQty, TotalQty);
	}

	/** Get Total Quantity.
		@return Total Quantity
	  */
	public BigDecimal getTotalQty()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_TotalQty);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}
}