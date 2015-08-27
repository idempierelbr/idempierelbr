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

/** Generated Model for LBR_BoletoMovement
 *  @author iDempiere (generated) 
 *  @version Release 2.1 - $Id$ */
public class X_LBR_BoletoMovement extends PO implements I_LBR_BoletoMovement, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20150823L;

    /** Standard Constructor */
    public X_LBR_BoletoMovement (Properties ctx, int LBR_BoletoMovement_ID, String trxName)
    {
      super (ctx, LBR_BoletoMovement_ID, trxName);
      /** if (LBR_BoletoMovement_ID == 0)
        {
			setLBR_Boleto_ID (0);
			setLBR_CNAB240MovementType (null);
			setLBR_Cob_Movimento_ID (0);
        } */
    }

    /** Load Constructor */
    public X_LBR_BoletoMovement (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_BoletoMovement[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set Available Amount.
		@param AvailableAmt 
		Amount available for allocation for this document
	  */
	public void setAvailableAmt (BigDecimal AvailableAmt)
	{
		set_Value (COLUMNNAME_AvailableAmt, AvailableAmt);
	}

	/** Get Available Amount.
		@return Amount available for allocation for this document
	  */
	public BigDecimal getAvailableAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_AvailableAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
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

	/** Set Discount Amount.
		@param DiscountAmt 
		Calculated amount of discount
	  */
	public void setDiscountAmt (BigDecimal DiscountAmt)
	{
		set_Value (COLUMNNAME_DiscountAmt, DiscountAmt);
	}

	/** Get Discount Amount.
		@return Calculated amount of discount
	  */
	public BigDecimal getDiscountAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_DiscountAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Due Date.
		@param DueDate 
		Date when the payment is due
	  */
	public void setDueDate (Timestamp DueDate)
	{
		set_Value (COLUMNNAME_DueDate, DueDate);
	}

	/** Get Due Date.
		@return Date when the payment is due
	  */
	public Timestamp getDueDate () 
	{
		return (Timestamp)get_Value(COLUMNNAME_DueDate);
	}

	/** Set Fee Amount.
		@param FeeAmt 
		Fee amount in invoice currency
	  */
	public void setFeeAmt (BigDecimal FeeAmt)
	{
		set_Value (COLUMNNAME_FeeAmt, FeeAmt);
	}

	/** Get Fee Amount.
		@return Fee amount in invoice currency
	  */
	public BigDecimal getFeeAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_FeeAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Grand Total.
		@param GrandTotal 
		Total amount of document
	  */
	public void setGrandTotal (BigDecimal GrandTotal)
	{
		set_Value (COLUMNNAME_GrandTotal, GrandTotal);
	}

	/** Get Grand Total.
		@return Total amount of document
	  */
	public BigDecimal getGrandTotal () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_GrandTotal);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Interest Amount.
		@param InterestAmt 
		Interest Amount
	  */
	public void setInterestAmt (BigDecimal InterestAmt)
	{
		set_Value (COLUMNNAME_InterestAmt, InterestAmt);
	}

	/** Get Interest Amount.
		@return Interest Amount
	  */
	public BigDecimal getInterestAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_InterestAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
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

	/** Set Boleto Movement.
		@param LBR_BoletoMovement_ID Boleto Movement	  */
	public void setLBR_BoletoMovement_ID (int LBR_BoletoMovement_ID)
	{
		if (LBR_BoletoMovement_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_BoletoMovement_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_BoletoMovement_ID, Integer.valueOf(LBR_BoletoMovement_ID));
	}

	/** Get Boleto Movement.
		@return Boleto Movement	  */
	public int getLBR_BoletoMovement_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_BoletoMovement_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Boleto Movement.
		@param LBR_BoletoMovement_UU Boleto Movement	  */
	public void setLBR_BoletoMovement_UU (String LBR_BoletoMovement_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_BoletoMovement_UU, LBR_BoletoMovement_UU);
	}

	/** Get Boleto Movement.
		@return Boleto Movement	  */
	public String getLBR_BoletoMovement_UU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_BoletoMovement_UU);
	}

	/** Simples = 1 */
	public static final String LBR_CARTEIRATYPE_Simples = "1";
	/** Vinculada = 2 */
	public static final String LBR_CARTEIRATYPE_Vinculada = "2";
	/** Caucionada = 3 */
	public static final String LBR_CARTEIRATYPE_Caucionada = "3";
	/** Descontada = 4 */
	public static final String LBR_CARTEIRATYPE_Descontada = "4";
	/** Vendor = 5 */
	public static final String LBR_CARTEIRATYPE_Vendor = "5";
	/** Set Bank Account Carteira Type.
		@param LBR_CarteiraType Bank Account Carteira Type	  */
	public void setLBR_CarteiraType (String LBR_CarteiraType)
	{

		set_Value (COLUMNNAME_LBR_CarteiraType, LBR_CarteiraType);
	}

	/** Get Bank Account Carteira Type.
		@return Bank Account Carteira Type	  */
	public String getLBR_CarteiraType () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CarteiraType);
	}

	/** 01 - Reservado para Uso Futuro = 01 */
	public static final String LBR_CNAB240CURRENCY_01_ReservadoParaUsoFuturo = "01";
	/** 02 - Dolar Americano Comercial (Venda) = 02 */
	public static final String LBR_CNAB240CURRENCY_02_DolarAmericanoComercialVenda = "02";
	/** 03 - Dolar Americano Turismo (Venda) = 03 */
	public static final String LBR_CNAB240CURRENCY_03_DolarAmericanoTurismoVenda = "03";
	/** 04 - ITRD = 04 */
	public static final String LBR_CNAB240CURRENCY_04_ITRD = "04";
	/** 05 - IDTR = 05 */
	public static final String LBR_CNAB240CURRENCY_05_IDTR = "05";
	/** 06 - UFIR Diaria = 06 */
	public static final String LBR_CNAB240CURRENCY_06_UFIRDiaria = "06";
	/** 07 - UFIR Mensal = 07 */
	public static final String LBR_CNAB240CURRENCY_07_UFIRMensal = "07";
	/** 08 - FAJ-TR = 08 */
	public static final String LBR_CNAB240CURRENCY_08_FAJ_TR = "08";
	/** 09 - Real = 09 */
	public static final String LBR_CNAB240CURRENCY_09_Real = "09";
	/** 10 - TR = 10 */
	public static final String LBR_CNAB240CURRENCY_10_TR = "10";
	/** 11 - IGPM = 11 */
	public static final String LBR_CNAB240CURRENCY_11_IGPM = "11";
	/** 12 - CDI = 12 */
	public static final String LBR_CNAB240CURRENCY_12_CDI = "12";
	/** 13 - Percentual do CDI = 13 */
	public static final String LBR_CNAB240CURRENCY_13_PercentualDoCDI = "13";
	/** 14 - Euro = 14 */
	public static final String LBR_CNAB240CURRENCY_14_Euro = "14";
	/** Set Currency.
		@param LBR_CNAB240Currency Currency	  */
	public void setLBR_CNAB240Currency (String LBR_CNAB240Currency)
	{

		set_Value (COLUMNNAME_LBR_CNAB240Currency, LBR_CNAB240Currency);
	}

	/** Get Currency.
		@return Currency	  */
	public String getLBR_CNAB240Currency () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CNAB240Currency);
	}

	/** 1 - Remessa (Cliente -> Banco) = 1 */
	public static final String LBR_CNAB240MOVEMENTTYPE_1_RemessaCliente_GtBanco = "1";
	/** 2 - Retorno (Banco -> Cliente) = 2 */
	public static final String LBR_CNAB240MOVEMENTTYPE_2_RetornoBanco_GtCliente = "2";
	/** Set Movement Type.
		@param LBR_CNAB240MovementType Movement Type	  */
	public void setLBR_CNAB240MovementType (String LBR_CNAB240MovementType)
	{

		set_ValueNoCheck (COLUMNNAME_LBR_CNAB240MovementType, LBR_CNAB240MovementType);
	}

	/** Get Movement Type.
		@return Movement Type	  */
	public String getLBR_CNAB240MovementType () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CNAB240MovementType);
	}

	/** Set CNAB 240 Sequence No..
		@param LBR_CNAB240SeqNo CNAB 240 Sequence No.	  */
	public void setLBR_CNAB240SeqNo (int LBR_CNAB240SeqNo)
	{
		set_Value (COLUMNNAME_LBR_CNAB240SeqNo, Integer.valueOf(LBR_CNAB240SeqNo));
	}

	/** Get CNAB 240 Sequence No..
		@return CNAB 240 Sequence No.	  */
	public int getLBR_CNAB240SeqNo () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_CNAB240SeqNo);
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

	public I_LBR_Cob_Movimento getLBR_Cob_Movimento() throws RuntimeException
    {
		return (I_LBR_Cob_Movimento)MTable.get(getCtx(), I_LBR_Cob_Movimento.Table_Name)
			.getPO(getLBR_Cob_Movimento_ID(), get_TrxName());	}

	/** Set Collection Movement.
		@param LBR_Cob_Movimento_ID Collection Movement	  */
	public void setLBR_Cob_Movimento_ID (int LBR_Cob_Movimento_ID)
	{
		if (LBR_Cob_Movimento_ID < 1) 
			set_Value (COLUMNNAME_LBR_Cob_Movimento_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_Cob_Movimento_ID, Integer.valueOf(LBR_Cob_Movimento_ID));
	}

	/** Get Collection Movement.
		@return Collection Movement	  */
	public int getLBR_Cob_Movimento_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_Cob_Movimento_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public I_LBR_Cob_Ocorrencia getLBR_Cob_Ocorrencia1() throws RuntimeException
    {
		return (I_LBR_Cob_Ocorrencia)MTable.get(getCtx(), I_LBR_Cob_Ocorrencia.Table_Name)
			.getPO(getLBR_Cob_Ocorrencia1_ID(), get_TrxName());	}

	/** Set Collection Occurrence 1.
		@param LBR_Cob_Ocorrencia1_ID Collection Occurrence 1	  */
	public void setLBR_Cob_Ocorrencia1_ID (int LBR_Cob_Ocorrencia1_ID)
	{
		if (LBR_Cob_Ocorrencia1_ID < 1) 
			set_Value (COLUMNNAME_LBR_Cob_Ocorrencia1_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_Cob_Ocorrencia1_ID, Integer.valueOf(LBR_Cob_Ocorrencia1_ID));
	}

	/** Get Collection Occurrence 1.
		@return Collection Occurrence 1	  */
	public int getLBR_Cob_Ocorrencia1_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_Cob_Ocorrencia1_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public I_LBR_Cob_Ocorrencia getLBR_Cob_Ocorrencia2() throws RuntimeException
    {
		return (I_LBR_Cob_Ocorrencia)MTable.get(getCtx(), I_LBR_Cob_Ocorrencia.Table_Name)
			.getPO(getLBR_Cob_Ocorrencia2_ID(), get_TrxName());	}

	/** Set Collection Occurrence 2.
		@param LBR_Cob_Ocorrencia2_ID Collection Occurrence 2	  */
	public void setLBR_Cob_Ocorrencia2_ID (int LBR_Cob_Ocorrencia2_ID)
	{
		if (LBR_Cob_Ocorrencia2_ID < 1) 
			set_Value (COLUMNNAME_LBR_Cob_Ocorrencia2_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_Cob_Ocorrencia2_ID, Integer.valueOf(LBR_Cob_Ocorrencia2_ID));
	}

	/** Get Collection Occurrence 2.
		@return Collection Occurrence 2	  */
	public int getLBR_Cob_Ocorrencia2_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_Cob_Ocorrencia2_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public I_LBR_Cob_Ocorrencia getLBR_Cob_Ocorrencia3() throws RuntimeException
    {
		return (I_LBR_Cob_Ocorrencia)MTable.get(getCtx(), I_LBR_Cob_Ocorrencia.Table_Name)
			.getPO(getLBR_Cob_Ocorrencia3_ID(), get_TrxName());	}

	/** Set Collection Occurrence 3.
		@param LBR_Cob_Ocorrencia3_ID Collection Occurrence 3	  */
	public void setLBR_Cob_Ocorrencia3_ID (int LBR_Cob_Ocorrencia3_ID)
	{
		if (LBR_Cob_Ocorrencia3_ID < 1) 
			set_Value (COLUMNNAME_LBR_Cob_Ocorrencia3_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_Cob_Ocorrencia3_ID, Integer.valueOf(LBR_Cob_Ocorrencia3_ID));
	}

	/** Get Collection Occurrence 3.
		@return Collection Occurrence 3	  */
	public int getLBR_Cob_Ocorrencia3_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_Cob_Ocorrencia3_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public I_LBR_Cob_Ocorrencia getLBR_Cob_Ocorrencia4() throws RuntimeException
    {
		return (I_LBR_Cob_Ocorrencia)MTable.get(getCtx(), I_LBR_Cob_Ocorrencia.Table_Name)
			.getPO(getLBR_Cob_Ocorrencia4_ID(), get_TrxName());	}

	/** Set Collection Occurrence 4.
		@param LBR_Cob_Ocorrencia4_ID Collection Occurrence 4	  */
	public void setLBR_Cob_Ocorrencia4_ID (int LBR_Cob_Ocorrencia4_ID)
	{
		if (LBR_Cob_Ocorrencia4_ID < 1) 
			set_Value (COLUMNNAME_LBR_Cob_Ocorrencia4_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_Cob_Ocorrencia4_ID, Integer.valueOf(LBR_Cob_Ocorrencia4_ID));
	}

	/** Get Collection Occurrence 4.
		@return Collection Occurrence 4	  */
	public int getLBR_Cob_Ocorrencia4_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_Cob_Ocorrencia4_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public I_LBR_Cob_Ocorrencia getLBR_Cob_Ocorrencia5() throws RuntimeException
    {
		return (I_LBR_Cob_Ocorrencia)MTable.get(getCtx(), I_LBR_Cob_Ocorrencia.Table_Name)
			.getPO(getLBR_Cob_Ocorrencia5_ID(), get_TrxName());	}

	/** Set Collection Occurrence 5.
		@param LBR_Cob_Ocorrencia5_ID Collection Occurrence 5	  */
	public void setLBR_Cob_Ocorrencia5_ID (int LBR_Cob_Ocorrencia5_ID)
	{
		if (LBR_Cob_Ocorrencia5_ID < 1) 
			set_Value (COLUMNNAME_LBR_Cob_Ocorrencia5_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_Cob_Ocorrencia5_ID, Integer.valueOf(LBR_Cob_Ocorrencia5_ID));
	}

	/** Get Collection Occurrence 5.
		@return Collection Occurrence 5	  */
	public int getLBR_Cob_Ocorrencia5_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_Cob_Ocorrencia5_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Collection Occurrence Date.
		@param LBR_Cob_OcorrenciaDate Collection Occurrence Date	  */
	public void setLBR_Cob_OcorrenciaDate (Timestamp LBR_Cob_OcorrenciaDate)
	{
		set_Value (COLUMNNAME_LBR_Cob_OcorrenciaDate, LBR_Cob_OcorrenciaDate);
	}

	/** Get Collection Occurrence Date.
		@return Collection Occurrence Date	  */
	public Timestamp getLBR_Cob_OcorrenciaDate () 
	{
		return (Timestamp)get_Value(COLUMNNAME_LBR_Cob_OcorrenciaDate);
	}

	/** Set Collecting Bank Agency No..
		@param LBR_CollectBankAgencyNo Collecting Bank Agency No.	  */
	public void setLBR_CollectBankAgencyNo (String LBR_CollectBankAgencyNo)
	{
		set_Value (COLUMNNAME_LBR_CollectBankAgencyNo, LBR_CollectBankAgencyNo);
	}

	/** Get Collecting Bank Agency No..
		@return Collecting Bank Agency No.	  */
	public String getLBR_CollectBankAgencyNo () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CollectBankAgencyNo);
	}

	/** Set Collecting Bank No..
		@param LBR_CollectBankNo Collecting Bank No.	  */
	public void setLBR_CollectBankNo (int LBR_CollectBankNo)
	{
		set_Value (COLUMNNAME_LBR_CollectBankNo, Integer.valueOf(LBR_CollectBankNo));
	}

	/** Get Collecting Bank No..
		@return Collecting Bank No.	  */
	public int getLBR_CollectBankNo () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_CollectBankNo);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** 01 - CH Cheque = 01 */
	public static final String LBR_COLLECTIONTYPE_01_CHCheque = "01";
	/** 02 - DM Duplicata Mercantil = 02 */
	public static final String LBR_COLLECTIONTYPE_02_DMDuplicataMercantil = "02";
	/** 03 - DMI Duplicata Mercantil p/ Indicacao = 03 */
	public static final String LBR_COLLECTIONTYPE_03_DMIDuplicataMercantilPIndicacao = "03";
	/** 04 - DS Duplicata de Servico = 04 */
	public static final String LBR_COLLECTIONTYPE_04_DSDuplicataDeServico = "04";
	/** 05 - DSI Duplicata de Servico p/ Indicacao = 05 */
	public static final String LBR_COLLECTIONTYPE_05_DSIDuplicataDeServicoPIndicacao = "05";
	/** 06 - DR Duplicata Rural = 06 */
	public static final String LBR_COLLECTIONTYPE_06_DRDuplicataRural = "06";
	/** 07 - LC Letra de Cambio = 07 */
	public static final String LBR_COLLECTIONTYPE_07_LCLetraDeCambio = "07";
	/** 08 - NCC Nota de Credito Comercial = 08 */
	public static final String LBR_COLLECTIONTYPE_08_NCCNotaDeCreditoComercial = "08";
	/** 09 - NCE Nota de Credito a Exportacao = 09 */
	public static final String LBR_COLLECTIONTYPE_09_NCENotaDeCreditoAExportacao = "09";
	/** 10 - NCI Nota de Credito Industrial = 10 */
	public static final String LBR_COLLECTIONTYPE_10_NCINotaDeCreditoIndustrial = "10";
	/** 11 - NCR Nota de Credito Rural = 11 */
	public static final String LBR_COLLECTIONTYPE_11_NCRNotaDeCreditoRural = "11";
	/** 12 - NP Nota Promissoria = 12 */
	public static final String LBR_COLLECTIONTYPE_12_NPNotaPromissoria = "12";
	/** 13 - NPR Nota Promissoria Rural = 13 */
	public static final String LBR_COLLECTIONTYPE_13_NPRNotaPromissoriaRural = "13";
	/** 14 - TM Triplicata Mercantil = 14 */
	public static final String LBR_COLLECTIONTYPE_14_TMTriplicataMercantil = "14";
	/** 15 - TS Triplicata de Servico = 15 */
	public static final String LBR_COLLECTIONTYPE_15_TSTriplicataDeServico = "15";
	/** 16 - NS Nota de Seguro = 16 */
	public static final String LBR_COLLECTIONTYPE_16_NSNotaDeSeguro = "16";
	/** 17 - RC Recibo = 17 */
	public static final String LBR_COLLECTIONTYPE_17_RCRecibo = "17";
	/** 18 - FAT Fatura = 18 */
	public static final String LBR_COLLECTIONTYPE_18_FATFatura = "18";
	/** 19 - ND Nota de Debito = 19 */
	public static final String LBR_COLLECTIONTYPE_19_NDNotaDeDebito = "19";
	/** 20 - AP Apolice de Seguro = 20 */
	public static final String LBR_COLLECTIONTYPE_20_APApoliceDeSeguro = "20";
	/** 21 - ME Mensalidade Escolar = 21 */
	public static final String LBR_COLLECTIONTYPE_21_MEMensalidadeEscolar = "21";
	/** 22 - PC Parcela de Consorcio = 22 */
	public static final String LBR_COLLECTIONTYPE_22_PCParcelaDeConsorcio = "22";
	/** 23 - NF Nota Fiscal = 23 */
	public static final String LBR_COLLECTIONTYPE_23_NFNotaFiscal = "23";
	/** 24 - DD Documento de Divida = 24 */
	public static final String LBR_COLLECTIONTYPE_24_DDDocumentoDeDivida = "24";
	/** 25 - Cedula de Produto Rural = 25 */
	public static final String LBR_COLLECTIONTYPE_25_CedulaDeProdutoRural = "25";
	/** 26 - Warrant = 26 */
	public static final String LBR_COLLECTIONTYPE_26_Warrant = "26";
	/** 27 - Divida Ativa de Estado = 27 */
	public static final String LBR_COLLECTIONTYPE_27_DividaAtivaDeEstado = "27";
	/** 28 - Divida Ativa de Municipio = 28 */
	public static final String LBR_COLLECTIONTYPE_28_DividaAtivaDeMunicipio = "28";
	/** 29 - Divida Ativa da Uniao = 29 */
	public static final String LBR_COLLECTIONTYPE_29_DividaAtivaDaUniao = "29";
	/** 30 - Encargos Condominiais = 30 */
	public static final String LBR_COLLECTIONTYPE_30_EncargosCondominiais = "30";
	/** 31 - CC Cartao de Credito = 31 */
	public static final String LBR_COLLECTIONTYPE_31_CCCartaoDeCredito = "31";
	/** 99 - Outros = 99 */
	public static final String LBR_COLLECTIONTYPE_99_Outros = "99";
	/** Set Collection Type.
		@param LBR_CollectionType Collection Type	  */
	public void setLBR_CollectionType (String LBR_CollectionType)
	{

		set_Value (COLUMNNAME_LBR_CollectionType, LBR_CollectionType);
	}

	/** Get Collection Type.
		@return Collection Type	  */
	public String getLBR_CollectionType () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CollectionType);
	}

	/** Set Convênio No..
		@param LBR_ConvenioNo Convênio No.	  */
	public void setLBR_ConvenioNo (String LBR_ConvenioNo)
	{
		set_Value (COLUMNNAME_LBR_ConvenioNo, LBR_ConvenioNo);
	}

	/** Get Convênio No..
		@return Convênio No.	  */
	public String getLBR_ConvenioNo () 
	{
		return (String)get_Value(COLUMNNAME_LBR_ConvenioNo);
	}

	/** Set Correspondente Bank Number.
		@param LBR_CorrespBankNo Correspondente Bank Number	  */
	public void setLBR_CorrespBankNo (int LBR_CorrespBankNo)
	{
		set_Value (COLUMNNAME_LBR_CorrespBankNo, Integer.valueOf(LBR_CorrespBankNo));
	}

	/** Get Correspondente Bank Number.
		@return Correspondente Bank Number	  */
	public int getLBR_CorrespBankNo () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_CorrespBankNo);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Credit Date.
		@param LBR_CreditDate Credit Date	  */
	public void setLBR_CreditDate (Timestamp LBR_CreditDate)
	{
		set_Value (COLUMNNAME_LBR_CreditDate, LBR_CreditDate);
	}

	/** Get Credit Date.
		@return Credit Date	  */
	public Timestamp getLBR_CreditDate () 
	{
		return (Timestamp)get_Value(COLUMNNAME_LBR_CreditDate);
	}

	/** Set Document No.
		@param LBR_DocumentNo 
		Document sequence number of the document
	  */
	public void setLBR_DocumentNo (String LBR_DocumentNo)
	{
		set_Value (COLUMNNAME_LBR_DocumentNo, LBR_DocumentNo);
	}

	/** Get Document No.
		@return Document sequence number of the document
	  */
	public String getLBR_DocumentNo () 
	{
		return (String)get_Value(COLUMNNAME_LBR_DocumentNo);
	}

	/** Set File Generating Date.
		@param LBR_FileGeneratingDate File Generating Date	  */
	public void setLBR_FileGeneratingDate (Timestamp LBR_FileGeneratingDate)
	{
		set_Value (COLUMNNAME_LBR_FileGeneratingDate, LBR_FileGeneratingDate);
	}

	/** Get File Generating Date.
		@return File Generating Date	  */
	public Timestamp getLBR_FileGeneratingDate () 
	{
		return (Timestamp)get_Value(COLUMNNAME_LBR_FileGeneratingDate);
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

	/** Set IOF Amount.
		@param LBR_IOFAmt 
		Defines the IOF Amount
	  */
	public void setLBR_IOFAmt (BigDecimal LBR_IOFAmt)
	{
		set_Value (COLUMNNAME_LBR_IOFAmt, LBR_IOFAmt);
	}

	/** Get IOF Amount.
		@return Defines the IOF Amount
	  */
	public BigDecimal getLBR_IOFAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_IOFAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
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

	/** Set Loan Contract No..
		@param LBR_LoanContractNo Loan Contract No.	  */
	public void setLBR_LoanContractNo (String LBR_LoanContractNo)
	{
		set_Value (COLUMNNAME_LBR_LoanContractNo, LBR_LoanContractNo);
	}

	/** Get Loan Contract No..
		@return Loan Contract No.	  */
	public String getLBR_LoanContractNo () 
	{
		return (String)get_Value(COLUMNNAME_LBR_LoanContractNo);
	}

	/** Set Number in the Bank.
		@param LBR_NumberInBank Number in the Bank	  */
	public void setLBR_NumberInBank (String LBR_NumberInBank)
	{
		set_Value (COLUMNNAME_LBR_NumberInBank, LBR_NumberInBank);
	}

	/** Get Number in the Bank.
		@return Number in the Bank	  */
	public String getLBR_NumberInBank () 
	{
		return (String)get_Value(COLUMNNAME_LBR_NumberInBank);
	}

	/** Set Number in the Correspondent Bank.
		@param LBR_NumberInCorrespBank Number in the Correspondent Bank	  */
	public void setLBR_NumberInCorrespBank (String LBR_NumberInCorrespBank)
	{
		set_Value (COLUMNNAME_LBR_NumberInCorrespBank, LBR_NumberInCorrespBank);
	}

	/** Get Number in the Correspondent Bank.
		@return Number in the Correspondent Bank	  */
	public String getLBR_NumberInCorrespBank () 
	{
		return (String)get_Value(COLUMNNAME_LBR_NumberInCorrespBank);
	}

	/** Set Number in the Org.
		@param LBR_NumberInOrg Number in the Org	  */
	public void setLBR_NumberInOrg (String LBR_NumberInOrg)
	{
		set_Value (COLUMNNAME_LBR_NumberInOrg, LBR_NumberInOrg);
	}

	/** Get Number in the Org.
		@return Number in the Org	  */
	public String getLBR_NumberInOrg () 
	{
		return (String)get_Value(COLUMNNAME_LBR_NumberInOrg);
	}

	/** Set Other Expenses Amount.
		@param LBR_OtherExpensesAmt 
		Amount for other expenses
	  */
	public void setLBR_OtherExpensesAmt (BigDecimal LBR_OtherExpensesAmt)
	{
		set_Value (COLUMNNAME_LBR_OtherExpensesAmt, LBR_OtherExpensesAmt);
	}

	/** Get Other Expenses Amount.
		@return Amount for other expenses
	  */
	public BigDecimal getLBR_OtherExpensesAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_OtherExpensesAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Other Incomes Amount.
		@param LBR_OtherIncomesAmt 
		Amount for other incomes
	  */
	public void setLBR_OtherIncomesAmt (BigDecimal LBR_OtherIncomesAmt)
	{
		set_Value (COLUMNNAME_LBR_OtherIncomesAmt, LBR_OtherIncomesAmt);
	}

	/** Get Other Incomes Amount.
		@return Amount for other incomes
	  */
	public BigDecimal getLBR_OtherIncomesAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_OtherIncomesAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Payment amount.
		@param PayAmt 
		Amount being paid
	  */
	public void setPayAmt (BigDecimal PayAmt)
	{
		set_Value (COLUMNNAME_PayAmt, PayAmt);
	}

	/** Get Payment amount.
		@return Amount being paid
	  */
	public BigDecimal getPayAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_PayAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Sequence.
		@param SeqNo 
		Method of ordering records; lowest number comes first
	  */
	public void setSeqNo (int SeqNo)
	{
		set_Value (COLUMNNAME_SeqNo, Integer.valueOf(SeqNo));
	}

	/** Get Sequence.
		@return Method of ordering records; lowest number comes first
	  */
	public int getSeqNo () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_SeqNo);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Write-off Amount.
		@param WriteOffAmt 
		Amount to write-off
	  */
	public void setWriteOffAmt (BigDecimal WriteOffAmt)
	{
		set_Value (COLUMNNAME_WriteOffAmt, WriteOffAmt);
	}

	/** Get Write-off Amount.
		@return Amount to write-off
	  */
	public BigDecimal getWriteOffAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_WriteOffAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}
}