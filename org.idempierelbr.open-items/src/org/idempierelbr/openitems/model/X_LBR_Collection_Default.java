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
import java.util.Properties;
import org.compiere.model.*;
import org.compiere.util.Env;

/** Generated Model for LBR_Collection_Default
 *  @author iDempiere (generated) 
 *  @version Release 2.0 - $Id$ */
public class X_LBR_Collection_Default extends PO implements I_LBR_Collection_Default, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20140814L;

    /** Standard Constructor */
    public X_LBR_Collection_Default (Properties ctx, int LBR_Collection_Default_ID, String trxName)
    {
      super (ctx, LBR_Collection_Default_ID, trxName);
      /** if (LBR_Collection_Default_ID == 0)
        {
			setName (null);
        } */
    }

    /** Load Constructor */
    public X_LBR_Collection_Default (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_Collection_Default[")
        .append(get_ID()).append("]");
      return sb.toString();
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

	/** A - Accepted = A */
	public static final String LBR_ACCEPTED_A_Accepted = "A";
	/** N - Not Accepted = N */
	public static final String LBR_ACCEPTED_N_NotAccepted = "N";
	/** Set Accepted.
		@param LBR_Accepted Accepted	  */
	public void setLBR_Accepted (String LBR_Accepted)
	{

		set_Value (COLUMNNAME_LBR_Accepted, LBR_Accepted);
	}

	/** Get Accepted.
		@return Accepted	  */
	public String getLBR_Accepted () 
	{
		return (String)get_Value(COLUMNNAME_LBR_Accepted);
	}

	/** 1 - Tradicional = 1 */
	public static final String LBR_CNAB240DOCTYPE_1_Tradicional = "1";
	/** 2 - Escritural = 2 */
	public static final String LBR_CNAB240DOCTYPE_2_Escritural = "2";
	/** Set Febraban Document Type.
		@param LBR_CNAB240DocType Febraban Document Type	  */
	public void setLBR_CNAB240DocType (String LBR_CNAB240DocType)
	{

		set_Value (COLUMNNAME_LBR_CNAB240DocType, LBR_CNAB240DocType);
	}

	/** Get Febraban Document Type.
		@return Febraban Document Type	  */
	public String getLBR_CNAB240DocType () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CNAB240DocType);
	}

	/** Set Bank Collection Defaults.
		@param LBR_Collection_Default_ID Bank Collection Defaults	  */
	public void setLBR_Collection_Default_ID (int LBR_Collection_Default_ID)
	{
		if (LBR_Collection_Default_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_Collection_Default_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_Collection_Default_ID, Integer.valueOf(LBR_Collection_Default_ID));
	}

	/** Get Bank Collection Defaults.
		@return Bank Collection Defaults	  */
	public int getLBR_Collection_Default_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_Collection_Default_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Bank Collection Defaults.
		@param LBR_Collection_Default_UU Bank Collection Defaults	  */
	public void setLBR_Collection_Default_UU (String LBR_Collection_Default_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_Collection_Default_UU, LBR_Collection_Default_UU);
	}

	/** Get Bank Collection Defaults.
		@return Bank Collection Defaults	  */
	public String getLBR_Collection_Default_UU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_Collection_Default_UU);
	}

	/** 1 - Com Cadastramento (Cobranca Registrada) = 1 */
	public static final String LBR_COLLECTIONREGTYPE_1_ComCadastramentoCobrancaRegistrada = "1";
	/** 2 - Sem Cadastramento (Cobranca sem Registro) = 2 */
	public static final String LBR_COLLECTIONREGTYPE_2_SemCadastramentoCobrancaSemRegistro = "2";
	/** 3 - Com Cadastramento / Recusa Debito Automatico = 3 */
	public static final String LBR_COLLECTIONREGTYPE_3_ComCadastramentoRecusaDebitoAutomatico = "3";
	/** Set Registration Type.
		@param LBR_CollectionRegType 
		Collection Registration Type
	  */
	public void setLBR_CollectionRegType (String LBR_CollectionRegType)
	{

		set_Value (COLUMNNAME_LBR_CollectionRegType, LBR_CollectionRegType);
	}

	/** Get Registration Type.
		@return Collection Registration Type
	  */
	public String getLBR_CollectionRegType () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CollectionRegType);
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

	/** 1 - Emite com Endereco do Arquivo Remessa = 1 */
	public static final String LBR_DIRECTDEBITNOTICE_1_EmiteComEnderecoDoArquivoRemessa = "1";
	/** 2 - Nao Emite Aviso ao Sacado = 2 */
	public static final String LBR_DIRECTDEBITNOTICE_2_NaoEmiteAvisoAoSacado = "2";
	/** 3 - Emite com Endereco do Cadastro no Banco = 3 */
	public static final String LBR_DIRECTDEBITNOTICE_3_EmiteComEnderecoDoCadastroNoBanco = "3";
	/** Set Direct Debit Notice.
		@param LBR_DirectDebitNotice Direct Debit Notice	  */
	public void setLBR_DirectDebitNotice (String LBR_DirectDebitNotice)
	{

		set_Value (COLUMNNAME_LBR_DirectDebitNotice, LBR_DirectDebitNotice);
	}

	/** Get Direct Debit Notice.
		@return Direct Debit Notice	  */
	public String getLBR_DirectDebitNotice () 
	{
		return (String)get_Value(COLUMNNAME_LBR_DirectDebitNotice);
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

	/** Set Interest Days.
		@param LBR_InterestDays Interest Days	  */
	public void setLBR_InterestDays (int LBR_InterestDays)
	{
		set_Value (COLUMNNAME_LBR_InterestDays, Integer.valueOf(LBR_InterestDays));
	}

	/** Get Interest Days.
		@return Interest Days	  */
	public int getLBR_InterestDays () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_InterestDays);
		if (ii == null)
			 return 0;
		return ii.intValue();
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

	/** Set Late Payment Penaulty Days.
		@param LBR_LatePaymentPenaltyDays Late Payment Penaulty Days	  */
	public void setLBR_LatePaymentPenaltyDays (int LBR_LatePaymentPenaltyDays)
	{
		set_Value (COLUMNNAME_LBR_LatePaymentPenaltyDays, Integer.valueOf(LBR_LatePaymentPenaltyDays));
	}

	/** Get Late Payment Penaulty Days.
		@return Late Payment Penaulty Days	  */
	public int getLBR_LatePaymentPenaltyDays () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_LatePaymentPenaltyDays);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Message 1.
		@param LBR_Message1 Message 1	  */
	public void setLBR_Message1 (String LBR_Message1)
	{
		set_Value (COLUMNNAME_LBR_Message1, LBR_Message1);
	}

	/** Get Message 1.
		@return Message 1	  */
	public String getLBR_Message1 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_Message1);
	}

	/** Set Message 2.
		@param LBR_Message2 Message 2	  */
	public void setLBR_Message2 (String LBR_Message2)
	{
		set_Value (COLUMNNAME_LBR_Message2, LBR_Message2);
	}

	/** Get Message 2.
		@return Message 2	  */
	public String getLBR_Message2 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_Message2);
	}

	/** 1 - Nao Autoriza Pagamento Parcial = 1 */
	public static final String LBR_PARTIALPAYMENT_1_NaoAutorizaPagamentoParcial = "1";
	/** 2 - Autoriza Pagamentos Parciais = 2 */
	public static final String LBR_PARTIALPAYMENT_2_AutorizaPagamentosParciais = "2";
	/** Set Authorize Partial Payment.
		@param LBR_PartialPayment Authorize Partial Payment	  */
	public void setLBR_PartialPayment (String LBR_PartialPayment)
	{

		set_Value (COLUMNNAME_LBR_PartialPayment, LBR_PartialPayment);
	}

	/** Get Authorize Partial Payment.
		@return Authorize Partial Payment	  */
	public String getLBR_PartialPayment () 
	{
		return (String)get_Value(COLUMNNAME_LBR_PartialPayment);
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

	/** Set Name.
		@param Name 
		Alphanumeric identifier of the entity
	  */
	public void setName (String Name)
	{
		set_Value (COLUMNNAME_Name, Name);
	}

	/** Get Name.
		@return Alphanumeric identifier of the entity
	  */
	public String getName () 
	{
		return (String)get_Value(COLUMNNAME_Name);
	}
}