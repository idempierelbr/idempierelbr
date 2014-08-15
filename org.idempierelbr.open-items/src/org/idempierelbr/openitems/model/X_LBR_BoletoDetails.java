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
package org.idempierelbr.openitems.model;

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.Properties;
import org.compiere.model.*;
import org.compiere.util.Env;

/** Generated Model for LBR_BoletoDetails
 *  @author iDempiere (generated) 
 *  @version Release 2.0 - $Id$ */
public class X_LBR_BoletoDetails extends PO implements I_LBR_BoletoDetails, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20140813L;

    /** Standard Constructor */
    public X_LBR_BoletoDetails (Properties ctx, int LBR_BoletoDetails_ID, String trxName)
    {
      super (ctx, LBR_BoletoDetails_ID, trxName);
      /** if (LBR_BoletoDetails_ID == 0)
        {
			setLBR_Boleto_ID (0);
        } */
    }

    /** Load Constructor */
    public X_LBR_BoletoDetails (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_BoletoDetails[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set Boleto Details.
		@param LBR_BoletoDetails_ID 
		Brazilian Bank Collection (Boleto) Details
	  */
	public void setLBR_BoletoDetails_ID (int LBR_BoletoDetails_ID)
	{
		if (LBR_BoletoDetails_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_BoletoDetails_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_BoletoDetails_ID, Integer.valueOf(LBR_BoletoDetails_ID));
	}

	/** Get Boleto Details.
		@return Brazilian Bank Collection (Boleto) Details
	  */
	public int getLBR_BoletoDetails_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_BoletoDetails_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Boleto Details.
		@param LBR_BoletoDetails_UU 
		Brazilian Bank Collection (Boleto) Details
	  */
	public void setLBR_BoletoDetails_UU (String LBR_BoletoDetails_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_BoletoDetails_UU, LBR_BoletoDetails_UU);
	}

	/** Get Boleto Details.
		@return Brazilian Bank Collection (Boleto) Details
	  */
	public String getLBR_BoletoDetails_UU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_BoletoDetails_UU);
	}

	public I_LBR_Boleto getLBR_Boleto() throws RuntimeException
    {
		return (I_LBR_Boleto)MTable.get(getCtx(), I_LBR_Boleto.Table_Name)
			.getPO(getLBR_Boleto_ID(), get_TrxName());	}

	/** Set Brazilian Bank Collection (Boleto).
		@param LBR_Boleto_ID 
		Brazilian Bank Collection (Boleto) Identifier
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
	public int getLBR_Boleto_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_Boleto_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Discount 1 Amount/%.
		@param LBR_CNABDiscount1AP 
		Discount 1 Amount / Percentage used for CNAB 240
	  */
	public void setLBR_CNABDiscount1AP (BigDecimal LBR_CNABDiscount1AP)
	{
		set_Value (COLUMNNAME_LBR_CNABDiscount1AP, LBR_CNABDiscount1AP);
	}

	/** Get Discount 1 Amount/%.
		@return Discount 1 Amount / Percentage used for CNAB 240
	  */
	public BigDecimal getLBR_CNABDiscount1AP () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_CNABDiscount1AP);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** 1 - Valor Fixo ate a Data Informada = 1 */
	public static final String LBR_CNABDISCOUNT1CODE_1_ValorFixoAteADataInformada = "1";
	/** 2 - Percentual ate a Data Informada = 2 */
	public static final String LBR_CNABDISCOUNT1CODE_2_PercentualAteADataInformada = "2";
	/** 3 - Valor por Antecipacao Dia Corrido = 3 */
	public static final String LBR_CNABDISCOUNT1CODE_3_ValorPorAntecipacaoDiaCorrido = "3";
	/** 4 - Valor por Antecipacao Dia Util = 4 */
	public static final String LBR_CNABDISCOUNT1CODE_4_ValorPorAntecipacaoDiaUtil = "4";
	/** 5 - Percentual sobre o Valor Nominal Dia Corrido = 5 */
	public static final String LBR_CNABDISCOUNT1CODE_5_PercentualSobreOValorNominalDiaCorrido = "5";
	/** 6 - Percentual sobre o Valor Nominal Dia Util = 6 */
	public static final String LBR_CNABDISCOUNT1CODE_6_PercentualSobreOValorNominalDiaUtil = "6";
	/** 7 - Cancelamento de Desconto = 7 */
	public static final String LBR_CNABDISCOUNT1CODE_7_CancelamentoDeDesconto = "7";
	/** Set Discount 1 Code.
		@param LBR_CNABDiscount1Code 
		Discount 1 Code used for CNAB 240
	  */
	public void setLBR_CNABDiscount1Code (String LBR_CNABDiscount1Code)
	{

		set_Value (COLUMNNAME_LBR_CNABDiscount1Code, LBR_CNABDiscount1Code);
	}

	/** Get Discount 1 Code.
		@return Discount 1 Code used for CNAB 240
	  */
	public String getLBR_CNABDiscount1Code () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CNABDiscount1Code);
	}

	/** Set Discount 1 Date.
		@param LBR_CNABDiscount1Date 
		Discount 1 Date used for CNAB 240
	  */
	public void setLBR_CNABDiscount1Date (Timestamp LBR_CNABDiscount1Date)
	{
		set_Value (COLUMNNAME_LBR_CNABDiscount1Date, LBR_CNABDiscount1Date);
	}

	/** Get Discount 1 Date.
		@return Discount 1 Date used for CNAB 240
	  */
	public Timestamp getLBR_CNABDiscount1Date () 
	{
		return (Timestamp)get_Value(COLUMNNAME_LBR_CNABDiscount1Date);
	}

	/** Set Discount 2 Amount/%.
		@param LBR_CNABDiscount2AP 
		Discount 2 Amount / Percentage used for CNAB 240
	  */
	public void setLBR_CNABDiscount2AP (BigDecimal LBR_CNABDiscount2AP)
	{
		set_Value (COLUMNNAME_LBR_CNABDiscount2AP, LBR_CNABDiscount2AP);
	}

	/** Get Discount 2 Amount/%.
		@return Discount 2 Amount / Percentage used for CNAB 240
	  */
	public BigDecimal getLBR_CNABDiscount2AP () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_CNABDiscount2AP);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** 1 - Valor Fixo ate a Data Informada = 1 */
	public static final String LBR_CNABDISCOUNT2CODE_1_ValorFixoAteADataInformada = "1";
	/** 2 - Percentual ate a Data Informada = 2 */
	public static final String LBR_CNABDISCOUNT2CODE_2_PercentualAteADataInformada = "2";
	/** 3 - Valor por Antecipacao Dia Corrido = 3 */
	public static final String LBR_CNABDISCOUNT2CODE_3_ValorPorAntecipacaoDiaCorrido = "3";
	/** 4 - Valor por Antecipacao Dia Util = 4 */
	public static final String LBR_CNABDISCOUNT2CODE_4_ValorPorAntecipacaoDiaUtil = "4";
	/** 5 - Percentual sobre o Valor Nominal Dia Corrido = 5 */
	public static final String LBR_CNABDISCOUNT2CODE_5_PercentualSobreOValorNominalDiaCorrido = "5";
	/** 6 - Percentual sobre o Valor Nominal Dia Util = 6 */
	public static final String LBR_CNABDISCOUNT2CODE_6_PercentualSobreOValorNominalDiaUtil = "6";
	/** 7 - Cancelamento de Desconto = 7 */
	public static final String LBR_CNABDISCOUNT2CODE_7_CancelamentoDeDesconto = "7";
	/** Set Discount 2 Code.
		@param LBR_CNABDiscount2Code 
		Discount 2 Code used for CNAB 240
	  */
	public void setLBR_CNABDiscount2Code (String LBR_CNABDiscount2Code)
	{

		set_Value (COLUMNNAME_LBR_CNABDiscount2Code, LBR_CNABDiscount2Code);
	}

	/** Get Discount 2 Code.
		@return Discount 2 Code used for CNAB 240
	  */
	public String getLBR_CNABDiscount2Code () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CNABDiscount2Code);
	}

	/** Set Discount 2 Date.
		@param LBR_CNABDiscount2Date 
		Discount 2 Date used for CNAB 240
	  */
	public void setLBR_CNABDiscount2Date (Timestamp LBR_CNABDiscount2Date)
	{
		set_Value (COLUMNNAME_LBR_CNABDiscount2Date, LBR_CNABDiscount2Date);
	}

	/** Get Discount 2 Date.
		@return Discount 2 Date used for CNAB 240
	  */
	public Timestamp getLBR_CNABDiscount2Date () 
	{
		return (Timestamp)get_Value(COLUMNNAME_LBR_CNABDiscount2Date);
	}

	/** Set Discount 3 Amount/%.
		@param LBR_CNABDiscount3AP 
		Discount 3 Amount / Percentage used for CNAB 240
	  */
	public void setLBR_CNABDiscount3AP (BigDecimal LBR_CNABDiscount3AP)
	{
		set_Value (COLUMNNAME_LBR_CNABDiscount3AP, LBR_CNABDiscount3AP);
	}

	/** Get Discount 3 Amount/%.
		@return Discount 3 Amount / Percentage used for CNAB 240
	  */
	public BigDecimal getLBR_CNABDiscount3AP () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_CNABDiscount3AP);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** 1 - Valor Fixo ate a Data Informada = 1 */
	public static final String LBR_CNABDISCOUNT3CODE_1_ValorFixoAteADataInformada = "1";
	/** 2 - Percentual ate a Data Informada = 2 */
	public static final String LBR_CNABDISCOUNT3CODE_2_PercentualAteADataInformada = "2";
	/** 3 - Valor por Antecipacao Dia Corrido = 3 */
	public static final String LBR_CNABDISCOUNT3CODE_3_ValorPorAntecipacaoDiaCorrido = "3";
	/** 4 - Valor por Antecipacao Dia Util = 4 */
	public static final String LBR_CNABDISCOUNT3CODE_4_ValorPorAntecipacaoDiaUtil = "4";
	/** 5 - Percentual sobre o Valor Nominal Dia Corrido = 5 */
	public static final String LBR_CNABDISCOUNT3CODE_5_PercentualSobreOValorNominalDiaCorrido = "5";
	/** 6 - Percentual sobre o Valor Nominal Dia Util = 6 */
	public static final String LBR_CNABDISCOUNT3CODE_6_PercentualSobreOValorNominalDiaUtil = "6";
	/** 7 - Cancelamento de Desconto = 7 */
	public static final String LBR_CNABDISCOUNT3CODE_7_CancelamentoDeDesconto = "7";
	/** Set Discount 3 Code.
		@param LBR_CNABDiscount3Code 
		Discount 3 Code used for CNAB 240
	  */
	public void setLBR_CNABDiscount3Code (String LBR_CNABDiscount3Code)
	{

		set_Value (COLUMNNAME_LBR_CNABDiscount3Code, LBR_CNABDiscount3Code);
	}

	/** Get Discount 3 Code.
		@return Discount 3 Code used for CNAB 240
	  */
	public String getLBR_CNABDiscount3Code () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CNABDiscount3Code);
	}

	/** Set Discount 3 Date.
		@param LBR_CNABDiscount3Date 
		Discount 3 Date used for CNAB 240
	  */
	public void setLBR_CNABDiscount3Date (Timestamp LBR_CNABDiscount3Date)
	{
		set_Value (COLUMNNAME_LBR_CNABDiscount3Date, LBR_CNABDiscount3Date);
	}

	/** Get Discount 3 Date.
		@return Discount 3 Date used for CNAB 240
	  */
	public Timestamp getLBR_CNABDiscount3Date () 
	{
		return (Timestamp)get_Value(COLUMNNAME_LBR_CNABDiscount3Date);
	}

	/** 1 - Baixar / Devolver = 1 */
	public static final String LBR_COLLECTIONRETURNCODE_1_BaixarDevolver = "1";
	/** 2 - Nao Baixar / Nao Devolver = 2 */
	public static final String LBR_COLLECTIONRETURNCODE_2_NaoBaixarNaoDevolver = "2";
	/** Set Collection Return Code.
		@param LBR_CollectionReturnCode Collection Return Code	  */
	public void setLBR_CollectionReturnCode (String LBR_CollectionReturnCode)
	{

		set_Value (COLUMNNAME_LBR_CollectionReturnCode, LBR_CollectionReturnCode);
	}

	/** Get Collection Return Code.
		@return Collection Return Code	  */
	public String getLBR_CollectionReturnCode () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CollectionReturnCode);
	}

	/** Set Collection Return Days.
		@param LBR_CollectionReturnDays Collection Return Days	  */
	public void setLBR_CollectionReturnDays (int LBR_CollectionReturnDays)
	{
		set_Value (COLUMNNAME_LBR_CollectionReturnDays, Integer.valueOf(LBR_CollectionReturnDays));
	}

	/** Get Collection Return Days.
		@return Collection Return Days	  */
	public int getLBR_CollectionReturnDays () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_CollectionReturnDays);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Interest Amount/Percentage.
		@param LBR_InterestAP Interest Amount/Percentage	  */
	public void setLBR_InterestAP (BigDecimal LBR_InterestAP)
	{
		set_Value (COLUMNNAME_LBR_InterestAP, LBR_InterestAP);
	}

	/** Get Interest Amount/Percentage.
		@return Interest Amount/Percentage	  */
	public BigDecimal getLBR_InterestAP () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_InterestAP);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** 1 - Valor por Dia = 1 */
	public static final String LBR_INTERESTCODE_1_ValorPorDia = "1";
	/** 2 - Taxa Mensal = 2 */
	public static final String LBR_INTERESTCODE_2_TaxaMensal = "2";
	/** 3 - Isento = 3 */
	public static final String LBR_INTERESTCODE_3_Isento = "3";
	/** Set Late Payment Interest Code.
		@param LBR_InterestCode Late Payment Interest Code	  */
	public void setLBR_InterestCode (String LBR_InterestCode)
	{

		set_Value (COLUMNNAME_LBR_InterestCode, LBR_InterestCode);
	}

	/** Get Late Payment Interest Code.
		@return Late Payment Interest Code	  */
	public String getLBR_InterestCode () 
	{
		return (String)get_Value(COLUMNNAME_LBR_InterestCode);
	}

	/** Set Interest Date.
		@param LBR_InterestDate Interest Date	  */
	public void setLBR_InterestDate (Timestamp LBR_InterestDate)
	{
		set_Value (COLUMNNAME_LBR_InterestDate, LBR_InterestDate);
	}

	/** Get Interest Date.
		@return Interest Date	  */
	public Timestamp getLBR_InterestDate () 
	{
		return (Timestamp)get_Value(COLUMNNAME_LBR_InterestDate);
	}

	/** Set Late Payment Penaulty Amount/Percentage.
		@param LBR_LatePaymentPenaltyAP Late Payment Penaulty Amount/Percentage	  */
	public void setLBR_LatePaymentPenaltyAP (BigDecimal LBR_LatePaymentPenaltyAP)
	{
		set_Value (COLUMNNAME_LBR_LatePaymentPenaltyAP, LBR_LatePaymentPenaltyAP);
	}

	/** Get Late Payment Penaulty Amount/Percentage.
		@return Late Payment Penaulty Amount/Percentage	  */
	public BigDecimal getLBR_LatePaymentPenaltyAP () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_LatePaymentPenaltyAP);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** 1 - Amount = 1 */
	public static final String LBR_LATEPAYMENTPENALTYCODE_1_Amount = "1";
	/** 2 - Percentage = 2 */
	public static final String LBR_LATEPAYMENTPENALTYCODE_2_Percentage = "2";
	/** Set Late Payment Penaulty Code.
		@param LBR_LatePaymentPenaltyCode Late Payment Penaulty Code	  */
	public void setLBR_LatePaymentPenaltyCode (String LBR_LatePaymentPenaltyCode)
	{

		set_Value (COLUMNNAME_LBR_LatePaymentPenaltyCode, LBR_LatePaymentPenaltyCode);
	}

	/** Get Late Payment Penaulty Code.
		@return Late Payment Penaulty Code	  */
	public String getLBR_LatePaymentPenaltyCode () 
	{
		return (String)get_Value(COLUMNNAME_LBR_LatePaymentPenaltyCode);
	}

	/** Set Late Payment Penaulty Date.
		@param LBR_LatePaymentPenaltyDate Late Payment Penaulty Date	  */
	public void setLBR_LatePaymentPenaltyDate (Timestamp LBR_LatePaymentPenaltyDate)
	{
		set_Value (COLUMNNAME_LBR_LatePaymentPenaltyDate, LBR_LatePaymentPenaltyDate);
	}

	/** Get Late Payment Penaulty Date.
		@return Late Payment Penaulty Date	  */
	public Timestamp getLBR_LatePaymentPenaltyDate () 
	{
		return (Timestamp)get_Value(COLUMNNAME_LBR_LatePaymentPenaltyDate);
	}

	/** Set Message 5.
		@param LBR_Message5 Message 5	  */
	public void setLBR_Message5 (String LBR_Message5)
	{
		set_Value (COLUMNNAME_LBR_Message5, LBR_Message5);
	}

	/** Get Message 5.
		@return Message 5	  */
	public String getLBR_Message5 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_Message5);
	}

	/** Set Message 6.
		@param LBR_Message6 Message 6	  */
	public void setLBR_Message6 (String LBR_Message6)
	{
		set_Value (COLUMNNAME_LBR_Message6, LBR_Message6);
	}

	/** Get Message 6.
		@return Message 6	  */
	public String getLBR_Message6 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_Message6);
	}

	/** Set Message 7.
		@param LBR_Message7 Message 7	  */
	public void setLBR_Message7 (String LBR_Message7)
	{
		set_Value (COLUMNNAME_LBR_Message7, LBR_Message7);
	}

	/** Get Message 7.
		@return Message 7	  */
	public String getLBR_Message7 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_Message7);
	}

	/** Set Message 8.
		@param LBR_Message8 Message 8	  */
	public void setLBR_Message8 (String LBR_Message8)
	{
		set_Value (COLUMNNAME_LBR_Message8, LBR_Message8);
	}

	/** Get Message 8.
		@return Message 8	  */
	public String getLBR_Message8 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_Message8);
	}

	/** Set Message 9.
		@param LBR_Message9 Message 9	  */
	public void setLBR_Message9 (String LBR_Message9)
	{
		set_Value (COLUMNNAME_LBR_Message9, LBR_Message9);
	}

	/** Get Message 9.
		@return Message 9	  */
	public String getLBR_Message9 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_Message9);
	}

	/** 1 - Protestar Dias Corridos = 1 */
	public static final String LBR_PROTESTCODE_1_ProtestarDiasCorridos = "1";
	/** 2 - Protestar Dias Uteis = 2 */
	public static final String LBR_PROTESTCODE_2_ProtestarDiasUteis = "2";
	/** 3 - Nao Protestar = 3 */
	public static final String LBR_PROTESTCODE_3_NaoProtestar = "3";
	/** 4 - Protestar Fim Falimentar - Dias Uteis = 4 */
	public static final String LBR_PROTESTCODE_4_ProtestarFimFalimentar_DiasUteis = "4";
	/** 5 - Protestar Fim Falimentar - Dias Corridos = 5 */
	public static final String LBR_PROTESTCODE_5_ProtestarFimFalimentar_DiasCorridos = "5";
	/** 8 - Negativacao sem Protesto = 8 */
	public static final String LBR_PROTESTCODE_8_NegativacaoSemProtesto = "8";
	/** 9 - Cancelamento Protesto Automatico = 9 */
	public static final String LBR_PROTESTCODE_9_CancelamentoProtestoAutomatico = "9";
	/** Set Protest Code.
		@param LBR_ProtestCode 
		Protest Code
	  */
	public void setLBR_ProtestCode (String LBR_ProtestCode)
	{

		set_Value (COLUMNNAME_LBR_ProtestCode, LBR_ProtestCode);
	}

	/** Get Protest Code.
		@return Protest Code
	  */
	public String getLBR_ProtestCode () 
	{
		return (String)get_Value(COLUMNNAME_LBR_ProtestCode);
	}

	/** Set Protest Days.
		@param LBR_ProtestDays 
		Protest Days
	  */
	public void setLBR_ProtestDays (int LBR_ProtestDays)
	{
		set_Value (COLUMNNAME_LBR_ProtestDays, Integer.valueOf(LBR_ProtestDays));
	}

	/** Get Protest Days.
		@return Protest Days
	  */
	public int getLBR_ProtestDays () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_ProtestDays);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}
}