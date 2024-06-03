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

/** Generated Model for LBR_FiscalDoc
 *  @author iDempiere (generated)
 *  @version Release 11 - $Id$ */
@org.adempiere.base.Model(table="LBR_FiscalDoc")
public class X_LBR_FiscalDoc extends PO implements I_LBR_FiscalDoc, I_Persistent
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20240603L;

    /** Standard Constructor */
    public X_LBR_FiscalDoc (Properties ctx, int LBR_FiscalDoc_ID, String trxName)
    {
      super (ctx, LBR_FiscalDoc_ID, trxName);
      /** if (LBR_FiscalDoc_ID == 0)
        {
			setC_Invoice_ID (0);
			setLBR_FiscalDoc_ID (0);
			setLBR_NFNo (null);
			setLBR_NFeModel (null);
        } */
    }

    /** Standard Constructor */
    public X_LBR_FiscalDoc (Properties ctx, int LBR_FiscalDoc_ID, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_FiscalDoc_ID, trxName, virtualColumns);
      /** if (LBR_FiscalDoc_ID == 0)
        {
			setC_Invoice_ID (0);
			setLBR_FiscalDoc_ID (0);
			setLBR_NFNo (null);
			setLBR_NFeModel (null);
        } */
    }

    /** Standard Constructor */
    public X_LBR_FiscalDoc (Properties ctx, String LBR_FiscalDoc_UU, String trxName)
    {
      super (ctx, LBR_FiscalDoc_UU, trxName);
      /** if (LBR_FiscalDoc_UU == null)
        {
			setC_Invoice_ID (0);
			setLBR_FiscalDoc_ID (0);
			setLBR_NFNo (null);
			setLBR_NFeModel (null);
        } */
    }

    /** Standard Constructor */
    public X_LBR_FiscalDoc (Properties ctx, String LBR_FiscalDoc_UU, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_FiscalDoc_UU, trxName, virtualColumns);
      /** if (LBR_FiscalDoc_UU == null)
        {
			setC_Invoice_ID (0);
			setLBR_FiscalDoc_ID (0);
			setLBR_NFNo (null);
			setLBR_NFeModel (null);
        } */
    }

    /** Load Constructor */
    public X_LBR_FiscalDoc (Properties ctx, ResultSet rs, String trxName)
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
      StringBuilder sb = new StringBuilder ("X_LBR_FiscalDoc[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	public org.compiere.model.I_C_Invoice getC_Invoice() throws RuntimeException
	{
		return (org.compiere.model.I_C_Invoice)MTable.get(getCtx(), org.compiere.model.I_C_Invoice.Table_ID)
			.getPO(getC_Invoice_ID(), get_TrxName());
	}

	/** Set Invoice.
		@param C_Invoice_ID Invoice Identifier
	*/
	public void setC_Invoice_ID (int C_Invoice_ID)
	{
		if (C_Invoice_ID < 1)
			set_ValueNoCheck (COLUMNNAME_C_Invoice_ID, null);
		else
			set_ValueNoCheck (COLUMNNAME_C_Invoice_ID, Integer.valueOf(C_Invoice_ID));
	}

	/** Get Invoice.
		@return Invoice Identifier
	  */
	public int getC_Invoice_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_Invoice_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Chave CT-e.
		@param LBR_ChvCTe Chave CT-e
	*/
	public void setLBR_ChvCTe (String LBR_ChvCTe)
	{
		set_Value (COLUMNNAME_LBR_ChvCTe, LBR_ChvCTe);
	}

	/** Get Chave CT-e.
		@return Chave CT-e	  */
	public String getLBR_ChvCTe()
	{
		return (String)get_Value(COLUMNNAME_LBR_ChvCTe);
	}

	/** Set Chave CT-e referenciada.
		@param LBR_ChvCTeRef Chave CT-e referenciada
	*/
	public void setLBR_ChvCTeRef (String LBR_ChvCTeRef)
	{
		set_Value (COLUMNNAME_LBR_ChvCTeRef, LBR_ChvCTeRef);
	}

	/** Get Chave CT-e referenciada.
		@return Chave CT-e referenciada	  */
	public String getLBR_ChvCTeRef()
	{
		return (String)get_Value(COLUMNNAME_LBR_ChvCTeRef);
	}

	/** LBR_CodCons AD_Reference_ID=800020 */
	public static final int LBR_CODCONS_AD_Reference_ID=800020;
	/** 01 - Comercial = 01 */
	public static final String LBR_CODCONS_01_Comercial = "01";
	/** 02 - Consumo Próprio = 02 */
	public static final String LBR_CODCONS_02_ConsumoPróprio = "02";
	/** 03 - Iluminação Pública = 03 */
	public static final String LBR_CODCONS_03_IluminaçãoPública = "03";
	/** 04 - Industrial = 04 */
	public static final String LBR_CODCONS_04_Industrial = "04";
	/** 05 - Poder Público = 05 */
	public static final String LBR_CODCONS_05_PoderPúblico = "05";
	/** 06 - Residencial = 06 */
	public static final String LBR_CODCONS_06_Residencial = "06";
	/** 07 - Rural = 07 */
	public static final String LBR_CODCONS_07_Rural = "07";
	/** Set Classe de Consumo.
		@param LBR_CodCons Classe de Consumo
	*/
	public void setLBR_CodCons (String LBR_CodCons)
	{

		set_Value (COLUMNNAME_LBR_CodCons, LBR_CodCons);
	}

	/** Get Classe de Consumo.
		@return Classe de Consumo	  */
	public String getLBR_CodCons()
	{
		return (String)get_Value(COLUMNNAME_LBR_CodCons);
	}

	/** LBR_CodGrupoTensao AD_Reference_ID=800022 */
	public static final int LBR_CODGRUPOTENSAO_AD_Reference_ID=800022;
	/** A1 - Alta Tensão (230kV ou mais) = 01 */
	public static final String LBR_CODGRUPOTENSAO_A1_AltaTensão230kVOuMais = "01";
	/** A2 - Alta Tensão (88 a 138kV) = 02 */
	public static final String LBR_CODGRUPOTENSAO_A2_AltaTensão88A138kV = "02";
	/** A3 - Alta Tensão (69kV) = 03 */
	public static final String LBR_CODGRUPOTENSAO_A3_AltaTensão69kV = "03";
	/** A3a - Alta Tensão (30kV a 44kV) = 04 */
	public static final String LBR_CODGRUPOTENSAO_A3a_AltaTensão30kVA44kV = "04";
	/** A4 - Alta Tensão (2,3kV a 25kV) = 05 */
	public static final String LBR_CODGRUPOTENSAO_A4_AltaTensão23kVA25kV = "05";
	/** AS - Alta tensão subterrâneo = 06 */
	public static final String LBR_CODGRUPOTENSAO_AS_AltaTensãoSubterrâneo = "06";
	/** B1 - Residencial = 07 */
	public static final String LBR_CODGRUPOTENSAO_B1_Residencial = "07";
	/** B1 - Residencial baixa renda = 08 */
	public static final String LBR_CODGRUPOTENSAO_B1_ResidencialBaixaRenda = "08";
	/** B2 - Rural = 09 */
	public static final String LBR_CODGRUPOTENSAO_B2_Rural = "09";
	/** B2 - Cooperativa de eletrificação rural = 10 */
	public static final String LBR_CODGRUPOTENSAO_B2_CooperativaDeEletrificaçãoRural = "10";
	/** B2 - Serviço público de irrigação = 11 */
	public static final String LBR_CODGRUPOTENSAO_B2_ServiçoPúblicoDeIrrigação = "11";
	/** B3 - Demais classes = 12 */
	public static final String LBR_CODGRUPOTENSAO_B3_DemaisClasses = "12";
	/** B4a - Iluminação pública - Rede de distribuição = 13 */
	public static final String LBR_CODGRUPOTENSAO_B4a_IluminaçãoPública_RedeDeDistribuição = "13";
	/** B4b - Iluminação pública - bulbo de lâmpada = 14 */
	public static final String LBR_CODGRUPOTENSAO_B4b_IluminaçãoPública_BulboDeLâmpada = "14";
	/** Set Grupo de Tensão.
		@param LBR_CodGrupoTensao Grupo de Tensão
	*/
	public void setLBR_CodGrupoTensao (String LBR_CodGrupoTensao)
	{

		set_Value (COLUMNNAME_LBR_CodGrupoTensao, LBR_CodGrupoTensao);
	}

	/** Get Grupo de Tensão.
		@return Grupo de Tensão	  */
	public String getLBR_CodGrupoTensao()
	{
		return (String)get_Value(COLUMNNAME_LBR_CodGrupoTensao);
	}

	/** Set Fiscal Details.
		@param LBR_FiscalDoc_ID Fiscal Details
	*/
	public void setLBR_FiscalDoc_ID (int LBR_FiscalDoc_ID)
	{
		if (LBR_FiscalDoc_ID < 1)
			set_ValueNoCheck (COLUMNNAME_LBR_FiscalDoc_ID, null);
		else
			set_ValueNoCheck (COLUMNNAME_LBR_FiscalDoc_ID, Integer.valueOf(LBR_FiscalDoc_ID));
	}

	/** Get Fiscal Details.
		@return Fiscal Details	  */
	public int getLBR_FiscalDoc_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_FiscalDoc_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_FiscalDoc_UU.
		@param LBR_FiscalDoc_UU LBR_FiscalDoc_UU
	*/
	public void setLBR_FiscalDoc_UU (String LBR_FiscalDoc_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_FiscalDoc_UU, LBR_FiscalDoc_UU);
	}

	/** Get LBR_FiscalDoc_UU.
		@return LBR_FiscalDoc_UU	  */
	public String getLBR_FiscalDoc_UU()
	{
		return (String)get_Value(COLUMNNAME_LBR_FiscalDoc_UU);
	}

	/** LBR_IndFrt AD_Reference_ID=800024 */
	public static final int LBR_INDFRT_AD_Reference_ID=800024;
	/** 0 - por conta do emitente = 0 */
	public static final String LBR_INDFRT_0_PorContaDoEmitente = "0";
	/** 1 - por conta do destinatário/remetente = 1 */
	public static final String LBR_INDFRT_1_PorContaDoDestinatárioRemetente = "1";
	/** 2 - por conta de terceiros = 2 */
	public static final String LBR_INDFRT_2_PorContaDeTerceiros = "2";
	/** 9 - sem cobrança de frete = 9 */
	public static final String LBR_INDFRT_9_SemCobrançaDeFrete = "9";
	/** Set Tipo de Frete.
		@param LBR_IndFrt Tipo de Frete
	*/
	public void setLBR_IndFrt (String LBR_IndFrt)
	{

		set_Value (COLUMNNAME_LBR_IndFrt, LBR_IndFrt);
	}

	/** Get Tipo de Frete.
		@return Tipo de Frete	  */
	public String getLBR_IndFrt()
	{
		return (String)get_Value(COLUMNNAME_LBR_IndFrt);
	}

	/** Set Fiscal Document Number.
		@param LBR_NFNo Fiscal Document Number
	*/
	public void setLBR_NFNo (String LBR_NFNo)
	{
		set_Value (COLUMNNAME_LBR_NFNo, LBR_NFNo);
	}

	/** Get Fiscal Document Number.
		@return Fiscal Document Number	  */
	public String getLBR_NFNo()
	{
		return (String)get_Value(COLUMNNAME_LBR_NFNo);
	}

	/** LBR_NFeModel AD_Reference_ID=800019 */
	public static final int LBR_NFEMODEL_AD_Reference_ID=800019;
	/** 01 - Fiscal document models 1 and 1A = 01 */
	public static final String LBR_NFEMODEL_01_FiscalDocumentModels1And1A = "01";
	/** 04 - Farmers&#039; fiscal document = 04 */
	public static final String LBR_NFEMODEL_04_FarmersFiscalDocument = "04";
	/** 06 - Electricity fiscal document = 06 */
	public static final String LBR_NFEMODEL_06_ElectricityFiscalDocument = "06";
	/** 07 - Transportation fiscal document = 07 */
	public static final String LBR_NFEMODEL_07_TransportationFiscalDocument = "07";
	/** 08 - Bill of Road Transport = 08 */
	public static final String LBR_NFEMODEL_08_BillOfRoadTransport = "08";
	/** 09 - Bill of Waterway transport = 09 */
	public static final String LBR_NFEMODEL_09_BillOfWaterwayTransport = "09";
	/** 10 - Bill of aerial transport = 10 */
	public static final String LBR_NFEMODEL_10_BillOfAerialTransport = "10";
	/** 11- Bill of railway transport = 11 */
	public static final String LBR_NFEMODEL_11_BillOfRailwayTransport = "11";
	/** 1B - Single fiscal document = 1B */
	public static final String LBR_NFEMODEL_1B_SingleFiscalDocument = "1B";
	/** 21 - Comunications fiscal document = 21 */
	public static final String LBR_NFEMODEL_21_ComunicationsFiscalDocument = "21";
	/** 22 - Telecomunications fiscal document = 22 */
	public static final String LBR_NFEMODEL_22_TelecomunicationsFiscalDocument = "22";
	/** 26 - Bill of transports through multiple means = 26 */
	public static final String LBR_NFEMODEL_26_BillOfTransportsThroughMultipleMeans = "26";
	/** 27 - Railway transportation fiscal document = 27 */
	public static final String LBR_NFEMODEL_27_RailwayTransportationFiscalDocument = "27";
	/** 28 - Piped Gas fiscal document = 28 */
	public static final String LBR_NFEMODEL_28_PipedGasFiscalDocument = "28";
	/** 29 - Piped water fiscal document = 29 */
	public static final String LBR_NFEMODEL_29_PipedWaterFiscalDocument = "29";
	/** 57 - Electronic bill of transport = 57 */
	public static final String LBR_NFEMODEL_57_ElectronicBillOfTransport = "57";
	/** 8B - Single Bill of Road Transport = 8B */
	public static final String LBR_NFEMODEL_8B_SingleBillOfRoadTransport = "8B";
	/** Set NF Model.
		@param LBR_NFeModel NF Model
	*/
	public void setLBR_NFeModel (String LBR_NFeModel)
	{

		set_Value (COLUMNNAME_LBR_NFeModel, LBR_NFeModel);
	}

	/** Get NF Model.
		@return NF Model	  */
	public String getLBR_NFeModel()
	{
		return (String)get_Value(COLUMNNAME_LBR_NFeModel);
	}

	/** Set NF Serie.
		@param LBR_NFeSerie NF Serie
	*/
	public void setLBR_NFeSerie (String LBR_NFeSerie)
	{
		set_Value (COLUMNNAME_LBR_NFeSerie, LBR_NFeSerie);
	}

	/** Get NF Serie.
		@return NF Serie	  */
	public String getLBR_NFeSerie()
	{
		return (String)get_Value(COLUMNNAME_LBR_NFeSerie);
	}

	/** Set Sub série.
		@param LBR_NFeSubSerie Sub série
	*/
	public void setLBR_NFeSubSerie (String LBR_NFeSubSerie)
	{
		set_Value (COLUMNNAME_LBR_NFeSubSerie, LBR_NFeSubSerie);
	}

	/** Get Sub série.
		@return Sub série	  */
	public String getLBR_NFeSubSerie()
	{
		return (String)get_Value(COLUMNNAME_LBR_NFeSubSerie);
	}

	/** LBR_TpAssinante AD_Reference_ID=800025 */
	public static final int LBR_TPASSINANTE_AD_Reference_ID=800025;
	/** 1 - Comercial/Industrial = 1 */
	public static final String LBR_TPASSINANTE_1_ComercialIndustrial = "1";
	/** 2 - Poder Público = 2 */
	public static final String LBR_TPASSINANTE_2_PoderPúblico = "2";
	/** 3 - Residencial/Pessoa Física = 3 */
	public static final String LBR_TPASSINANTE_3_ResidencialPessoaFísica = "3";
	/** 4 - Público = 4 */
	public static final String LBR_TPASSINANTE_4_Público = "4";
	/** 5 - Semi-Público = 5 */
	public static final String LBR_TPASSINANTE_5_Semi_Público = "5";
	/** 6 - Outros = 6 */
	public static final String LBR_TPASSINANTE_6_Outros = "6";
	/** Set Tipo de Assinante.
		@param LBR_TpAssinante Tipo de Assinante
	*/
	public void setLBR_TpAssinante (String LBR_TpAssinante)
	{

		set_Value (COLUMNNAME_LBR_TpAssinante, LBR_TpAssinante);
	}

	/** Get Tipo de Assinante.
		@return Tipo de Assinante	  */
	public String getLBR_TpAssinante()
	{
		return (String)get_Value(COLUMNNAME_LBR_TpAssinante);
	}

	/** LBR_TpCTe AD_Reference_ID=800023 */
	public static final int LBR_TPCTE_AD_Reference_ID=800023;
	/** 0 - CT-e Normal = 0 */
	public static final String LBR_TPCTE_0_CT_ENormal = "0";
	/** 1 - CT-e de complemento de valores = 1 */
	public static final String LBR_TPCTE_1_CT_EDeComplementoDeValores = "1";
	/** 2 - CT-e de anulação = 2 */
	public static final String LBR_TPCTE_2_CT_EDeAnulação = "2";
	/** 3 - CT-e substituto = 3 */
	public static final String LBR_TPCTE_3_CT_ESubstituto = "3";
	/** Set Tipo de Conhecimento Eletrônico.
		@param LBR_TpCTe Tipo de Conhecimento Eletrônico
	*/
	public void setLBR_TpCTe (String LBR_TpCTe)
	{

		set_Value (COLUMNNAME_LBR_TpCTe, LBR_TpCTe);
	}

	/** Get Tipo de Conhecimento Eletrônico.
		@return Tipo de Conhecimento Eletrônico	  */
	public String getLBR_TpCTe()
	{
		return (String)get_Value(COLUMNNAME_LBR_TpCTe);
	}

	/** LBR_TpLigacao AD_Reference_ID=800021 */
	public static final int LBR_TPLIGACAO_AD_Reference_ID=800021;
	/** 1 - Monofásico = 1 */
	public static final String LBR_TPLIGACAO_1_Monofásico = "1";
	/** 2 - Bifásico = 2 */
	public static final String LBR_TPLIGACAO_2_Bifásico = "2";
	/** 3 - Trifásico = 3 */
	public static final String LBR_TPLIGACAO_3_Trifásico = "3";
	/** Set Tipo de Ligação.
		@param LBR_TpLigacao Tipo de Ligação
	*/
	public void setLBR_TpLigacao (String LBR_TpLigacao)
	{

		set_Value (COLUMNNAME_LBR_TpLigacao, LBR_TpLigacao);
	}

	/** Get Tipo de Ligação.
		@return Tipo de Ligação	  */
	public String getLBR_TpLigacao()
	{
		return (String)get_Value(COLUMNNAME_LBR_TpLigacao);
	}

	/** Set Valor de Terceiros.
		@param LBR_VlTerc Valor de Terceiros
	*/
	public void setLBR_VlTerc (BigDecimal LBR_VlTerc)
	{
		set_Value (COLUMNNAME_LBR_VlTerc, LBR_VlTerc);
	}

	/** Get Valor de Terceiros.
		@return Valor de Terceiros	  */
	public BigDecimal getLBR_VlTerc()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_VlTerc);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}
}