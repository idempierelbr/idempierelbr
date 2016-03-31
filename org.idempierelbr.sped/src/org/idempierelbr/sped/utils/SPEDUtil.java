/******************************************************************************
 * Copyright (C) 2013 Kenos Assessoria e Consultoria de Sistemas Ltda         *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 *****************************************************************************/
package org.idempierelbr.sped.utils;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.Set;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.MBPartner;
import org.compiere.model.MBPartnerLocation;
import org.compiere.model.MCity;
import org.compiere.model.MLocation;
import org.compiere.model.MOrg;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MUser;
import org.compiere.util.Env;
import org.idempierelbr.core.util.AdempiereLBR;
import org.idempierelbr.core.util.BPartnerUtil;
import org.idempierelbr.core.util.TextUtil;
import org.idempierelbr.sped.annotation.XMLFieldProperties;
import org.idempierelbr.sped.contrib.bean.R0000;
import org.idempierelbr.sped.contrib.bean.R0110;
import org.idempierelbr.sped.contrib.bean.R0140;
import org.idempierelbr.sped.contrib.bean.RA010;
import org.idempierelbr.sped.contrib.bean.RA100;
import org.idempierelbr.sped.contrib.bean.RA170;
import org.idempierelbr.sped.contrib.bean.RC010;
import org.idempierelbr.sped.contrib.bean.RD010;
import org.idempierelbr.sped.contrib.bean.RM100;
import org.idempierelbr.sped.contrib.bean.RM200;
import org.idempierelbr.sped.contrib.bean.RM205;
import org.idempierelbr.sped.contrib.bean.RM210;
import org.idempierelbr.sped.contrib.bean.RM211;
import org.idempierelbr.sped.contrib.bean.RM400;
import org.idempierelbr.sped.contrib.bean.RM410;
import org.idempierelbr.sped.contrib.bean.RM500;
import org.idempierelbr.sped.contrib.bean.RM600;
import org.idempierelbr.sped.contrib.bean.RM605;
import org.idempierelbr.sped.contrib.bean.RM610;
import org.idempierelbr.sped.contrib.bean.RM611;
import org.idempierelbr.sped.contrib.bean.RM800;
import org.idempierelbr.sped.contrib.bean.RM810;
import org.idempierelbr.sped.icmsipi.bean.I_FiscalDocItem;
import org.idempierelbr.sped.icmsipi.bean.I_R0000;
import org.idempierelbr.sped.icmsipi.bean.I_R0100;
import org.idempierelbr.sped.icmsipi.bean.I_R0150;
import org.idempierelbr.sped.icmsipi.bean.I_R0190;
import org.idempierelbr.sped.icmsipi.bean.I_R0200;
import org.idempierelbr.sped.icmsipi.bean.I_R9900;
import org.idempierelbr.sped.icmsipi.bean.I_R9999;
import org.idempierelbr.sped.icmsipi.bean.I_RC100;
import org.idempierelbr.sped.icmsipi.bean.I_RC490;
import org.idempierelbr.sped.icmsipi.bean.I_RC491;
import org.idempierelbr.sped.icmsipi.bean.I_RC495;
import org.idempierelbr.sped.icmsipi.bean.I_RC500;
import org.idempierelbr.sped.icmsipi.bean.I_RD100;
import org.idempierelbr.sped.icmsipi.bean.I_RD500;
import org.idempierelbr.sped.icmsipi.util.RegSped;
import org.idempierelbr.sped.model.MLBRFactFiscal;
import org.idempierelbr.sped.model.MLBRTaxAssessment;
import org.idempierelbr.sped.model.X_LBR_TaxAssessmentLine;


/**
 * 		Utilitários do SPED
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: SPEDUtil.java, v1.0 2013/02/02 14:47:07 PM, ralexsander Exp $
 */
public class SPEDUtil
{
	/** String PIPE			*/
	public static final String PIPE 				= "|";
	
	/**	String EOL 			*/
	public static final String EOL  				= TextUtil.EOL_WIN32;
	
	/**	SPED ECD			*/
	public static final int TYPE_ECD 				= 0;
	
	/**	SPED EFD			*/
	public static final int TYPE_EFD 				= 1;
	
	/** SPED Contribuições	*/
	public static final int TYPE_CONTRIB 			= 2;
	
	/** Versão da ECD		*/
	public static final String ECD_VERSION 			= "";
	
	/**	Versão da EFD		*/
	public static final String EFD_VERSION 			= "";
	
	/**	Versão da EFD Contribuições */
	public static final String CONTRIB_VERSION 		= "003";
	
	public static final String IND_OPER_CONTRATADO 	= "0";
	public static final String IND_OPER_PRESTADO 	= "1";
	
	public static final String IND_EMIT_PROPRIA 	= "0";
	public static final String IND_EMIT_TERCEIROS 	= "1";

	public static final String COD_SIT_REGULAR 		= "00";
	public static final String COD_SIT_CANCELADO 	= "02";
	
	public static final String IND_PAGTO_VISTA	 	= "0";
	public static final String IND_PAGTO_PRAZO	 	= "1";
	public static final String IND_PAGTO_SEM	 	= "9";
	
	/**
	 * 	Indicador de movimento
	 * 		<li>0 - Bloco com dados informados;
	 */
	public static final String IND_MOV_COM_DADOS 	= "0";
	
	/**
	 * 	Indicador de movimento
	 * 		<li>1 - Bloco sem dados informados
	 */
	public static final String IND_MOV_SEM_DADOS 	= "1";
	
	/** Frete: Emitente						*/
	public static final String IND_FRT_EMIT		 	= "0";
	
	/**	Frete: Destinatário ou Remetente	*/
	public static final String IND_FRT_DEST_REMT 	= "1";
	
	/**	Frete: Terceiros					*/
	public static final String IND_FRT_TERC		 	= "2";
	
	/**	Frete: Sem Cobrança					*/
	public static final String IND_FRT_SEM		 	= "9";
	
	/** Indicador de período de apuração do IPI Mensal 		*/
	public static final String IND_APUR_MENSAL	 	= "0";
	
	/** Indicador de período de apuração do IPI Decendial	*/
	public static final String IND_APUR_DECENDIAL 	= "1";
	
	/** 1 – Escrituração de operações com incidência exclusivamente no regime não-cumulativo */
	public static final String COD_INC_TRIB_NAO_CUM = "1";
	
	/** 2 – Escrituração de operações com incidência exclusivamente no regime cumulativo */
	public static final String COD_INC_TRIB_CUM = "2";
	
	/** 3 – Escrituração de operações com incidência nos regimes não-cumulativo e cumulativo */
	public static final String COD_INC_TRIB_AMBOS = "3";
	
	/** 1 – Método de Apropriação Direta */
	public static final String IND_APRO_CRED_DIRETA 			= "1";
	
	/** 2 – Método de Rateio Proporcional (Receita Bruta) */
	public static final String IND_APRO_CRED_PROPORCIONAL 		= "2";

	/** 1 – Apuração da Contribuição Exclusivamente a Alíquota Básica */
	public static final String COD_TIPO_CONT_ALIQ_BASICA 		= "1";
	
	/** 2 – Apuração da Contribuição a Alíquotas Específicas (Diferenciadas e/ou 
	 * 			por Unidade de Medida de Produto)  */
	public static final String COD_TIPO_CONT_ALIQ_ESPECIFICA 	= "2";
	
	/** 1 – Regime de Caixa – Escrituração consolidada (Registro F500) */
	public static final String IND_REG_CUM_CAIXA 				= "1";
	
	/** 2 – Regime de Competência - Escrituração consolidada (Registro F550) */
	public static final String IND_REG_CUM_COMPT 				= "2";
	
	/** 9 – Regime de Competência - Escrituração detalhada, com base nos registros dos Blocos “A”, “C”, “D” e “F” */
	public static final String IND_REG_CUM_COMPT_DET 			= "9";
	
	/** Nota Fiscal - 01 */
	public static final String COD_MOD_NF 									= "01";

	/** Nota Fiscal Avulsa - 1B */
	public static final String COD_MOD_NF_AVULSA 							= "1B";

	/** Nota Fiscal de Venda a Consumidor - 02 */
	public static final String COD_MOD_NF_DE_VENDA_A_CONSUMIDOR 			= "02";

	/** Cupom Fiscal emitido por ECF - 2D */
	public static final String COD_MOD_CUPOM_FISCAL_EMITIDO_POR_ECF 		= "2D";
	
	/** Cupom Fiscal Eletrônico – CF-e-SAT - 59 */
        public static final String COD_MOD_CUPOM_FISCAL_ELETRONICO_SAT                             = "59";
        
        /** Cupom Fiscal Eletrônico CF-e-ECF - 60 */
        public static final String COD_MOD_CUPOM_FISCAL_ELETRONICO_CF_E_ECF                 = "60";

	/** Bilhete de Passagem emitido por ECF - 2E */
	public static final String COD_MOD_BILHETE_DE_PASSAGEM_EMITIDO_POR_ECF 	= "2E";

	/** Nota Fiscal de Produtor - 04 */
	public static final String COD_MOD_NF_DE_PRODUTOR 						= "04";

	/** Nota Fiscal/Conta de Energia Elétrica - 06 */
	public static final String COD_MOD_NF_CONTA_DE_ENERGIA_ELETRICA 		= "06";

	/** Nota Fiscal de Serviço de Transporte - 07 */
	public static final String COD_MOD_NF_DE_SERV_DE_TRANSP 				= "07";

	/** Conhecimento de Transporte Rodoviário de Cargas - 08 */
	public static final String COD_MOD_CT_RODOVIARIO_DE_CARGAS 				= "08";

	/** Conhecimento de Transporte de Cargas Avulso - 8B */
	public static final String COD_MOD_CT_DE_CARGAS_AVULSO 					= "8B";

	/** Conhecimento de Transporte Aquaviário de Cargas - 09 */
	public static final String COD_MOD_CT_AQUAVIARIO_DE_CARGAS 				= "09";

	/** Conhecimento Aéreo - 10 */
	public static final String COD_MOD_CONHECIMENTO_AEREO 					= "10";

	/** Conhecimento de Transporte Ferroviário de Cargas - 11 */
	public static final String COD_MOD_CT_FERROVIARIO_DE_CARGAS 			= "11";

	/** Bilhete de Passagem Rodoviário - 13 */
	public static final String COD_MOD_BILHETE_DE_PASSAGEM_RODOVIARIO 		= "13";

	/** Bilhete de Passagem Aquaviário - 14 */
	public static final String COD_MOD_BILHETE_DE_PASSAGEM_AQUAVIARIO 		= "14";

	/** Bilhete de Passagem e Nota de Bagagem - 15 */
	public static final String COD_MOD_BILHETE_DE_PASSAGEM_E_NOTA_DE_BAGAGEM  = "15";

	/** Despacho de Transporte - 17 */
	public static final String COD_MOD_DESPACHO_DE_TRANSP 					= "17";

	/** Bilhete de Passagem Ferroviário - 16 */
	public static final String COD_MOD_BILHETE_DE_PASSAGEM_FERROVIARIO 		= "16";

	/** Resumo de Movimento Diário - 18 */
	public static final String COD_MOD_RESUMO_DE_MOVIMENTO_DIARIO 			= "18";

	/** Ordem de Coleta de Cargas - 20 */
	public static final String COD_MOD_ORDEM_DE_COLETA_DE_CARGAS 			= "20";

	/** Nota Fiscal de Serviço de Comunicação - 21 */
	public static final String COD_MOD_NF_DE_SERV_DE_COMUNICACAO 			= "21";

	/** Nota Fiscal de Serviço de Telecomunicação - 22 */
	public static final String COD_MOD_NF_DE_SERV_DE_TELECOMUNICACAO 		= "22";

	/** GNRE - 23 */
	public static final String COD_MOD_GNRE 								= "23";

	/** Autorização de Carregamento e Transporte - 24 */
	public static final String COD_MOD_AUT_DE_CARREGAMENTO_E_TRANSP 		= "24";

	/** Manifesto de Carga - 25 */
	public static final String COD_MOD_MANIFESTO_DE_CARGA 					= "25";

	/** Conhecimento de Transporte Multimodal de Cargas - 26 */
	public static final String COD_MOD_CT_MULTIMODAL_DE_CARGAS 				= "26";

	/** Nota Fiscal de Transporte Ferroviário de Cargas - 27 */
	public static final String COD_MOD_NF_DE_TRANSP_FERROVIARIO_DE_CARGAS 	= "27";

	/** Nota Fiscal/Conta de Fornecimento de Gás Canalizado - 28 */
	public static final String COD_MOD_NF_CONTA_DE_FORN_DE_GAS_CANALIZADO 	= "28";

	/** Nota Fiscal/Conta de Fornecimento de Água Canalizada - 29 */
	public static final String COD_MOD_NF_CONTA_DE_FORN_DE_AGUA_CANALIZADA 	= "29";

	/** Bilhete/Recibo do Passageiro - 30 */
	public static final String COD_MOD_BILHETE_RECIBO_DO_PASSAGEIRO 		= "30";

	/** Nota Fiscal Eletrônica - 55 */
	public static final String COD_MOD_NF_ELETRONICA 						= "55";

	/** Conhecimento de Transporte Eletrônico – CT-e - 57 */
	public static final String COD_MOD_CT_ELETRONICO 						= "57";
	
	/**	Recibo Provisório de Serviço */
	public static final String COD_MOD_RPS = "RS";	//	FIXME: Criar script para adicionar RPS, sendo a chave RS (2 Dígitos)

	/**	Outras Receitas				*/
	public static final String NAT_REC_OUTRAS_DESP = "999";
	
	/**
	 * 	Array com todos os Registros 0150 e seus filhos
	 */
	private static Set<I_R0150> _R0150;
	
	/**
	 * 	Array com todos os Registros 0190 e seus filhos
	 */
	private static Set<I_R0190> _R0190;
	
	/**
	 * 	Array com todos os Registros 0200 e seus filhos
	 */
	private static Set<I_R0200> _R0200;
	
	/**
	 * 	Array com todos os Registros A010 e seus filhos
	 */
	private static Set<RA010> _RA010;
	
	/**
	 * 	Array com todos os Registros A100 e seus filhos
	 */
	private static Set<RA100> _RA100;
	
	/**
	 * 	Array com todos os Registros C010 e seus filhos
	 */
	private static Set<RC010> _RC010;
	
	/**
	 * 	Array com todos os Registros C100 e seus filhos
	 */
	private static Set<I_RC100> _RC100;
	
	/**
         *      Array com todos os Registros C490
         */
        private static Set<I_RC490> _RC490;
        
        /**
         *      Array com todos os Registros C491
         */
        private static Set<I_RC491> _RC491;
        
        /**
         *      Array com todos os Registros C495
         */
        private static Set<I_RC495> _RC495;
	
	/**
	 * 	Array com todos os Registros C500 e seus filhos
	 */
	private static Set<I_RC500> _RC500;
	
	/**
	 * 	Array com todos os Registros D010 e seus filhos
	 */
	private static Set<RD010> _RD010;
	
	/**
	 * 	Array com todos os Registros D100 e seus filhos
	 */
	private static Set<I_RD100> _RD100;
	
	/**
	 * 	Array com todos os Registros D500 e seus filhos
	 */
	private static Set<I_RD500> _RD500;
	
	/**
	 * 	Array com todos os Registros M600 e seus filhos
	 */
	private static RM100 _RM100;
	
	/**
	 * 	Array com todos os Registros M600 e seus filhos
	 */
	private static RM200 _RM200;
	
	/**
	 * 	Array com todos os Registros M400 e seus filhos
	 */
	private static Set<RM400> _RM400;
	
	/**
	 * 	Array com todos os Registros M600 e seus filhos
	 */
	private static RM500 _RM500;
	
	/**
	 * 	Array com todos os Registros M600 e seus filhos
	 */
	private static RM600 _RM600;
	
	/**
	 * 	Array com todos os Registros M800 e seus filhos
	 */
	private static Set<RM800> _RM800;
	
	static Map<String, BigDecimal> map= new TreeSumMap<String, BigDecimal> ();
	static Map<BigDecimal, BigDecimal> mapValorItem= new TreeSumMap<BigDecimal, BigDecimal> ();
	static Map<BigDecimal, BigDecimal> mapBCTax= new TreeSumMap<BigDecimal, BigDecimal> ();
	static Map<BigDecimal, BigDecimal> mapValorTax= new TreeSumMap<BigDecimal, BigDecimal> ();
	
	static List<I_FiscalDocItem> items = new ArrayList<I_FiscalDocItem>();
	
	/**
	 * 	Processa todos os Fatos Fiscais
	 * 
	 * @param ctx Context
	 * @param facts	Fatos Fiscais
	 * @param trxName Nome da Transação
	 * @throws Exception 
	 */
	public static void processFacts (Properties ctx, MLBRFactFiscal[] facts, int type, String trxName) throws Exception
	{
		//	FIXME: Assim até a Fact Fiscal ter identificação do tipo de
		//		registro, Cabeçalho, Linha, Org, etc.
		List<Integer> unqNF = new ArrayList<Integer>();
		
		//	Initialize
		_R0150 = new SPEDSet<I_R0150>();
		_R0190 = new SPEDSet<I_R0190>();
		_R0200 = new SPEDSet<I_R0200>();
		_RA010 = new SPEDSet<RA010>();
		_RA100 = new SPEDSet<RA100>();
		_RC010 = new SPEDSet<RC010>();
		_RC100 = new SPEDSet<I_RC100>();
		_RC490 = new SPEDSet<I_RC490>();
		_RC491 = new SPEDSet<I_RC491>();
		_RC495 = new SPEDSet<I_RC495>();
		_RC500 = new SPEDSet<I_RC500>();
		_RD010 = new SPEDSet<RD010>();
		_RD100 = new SPEDSet<I_RD100>();
		_RD500 = new SPEDSet<I_RD500>();
		_RM200 = new RM200();
		_RM400 = new SPEDSet<RM400>();
		_RM800 = new SPEDSet<RM800>();
		_RM600 = new RM600();
		//
                long start = System.currentTimeMillis(); 
		for (MLBRFactFiscal fact : facts)
		{		    
			//	TEMPORARIO NFLINE
                        if (unqNF.contains(fact.getLBR_NotaFiscal_ID()))
                            continue;
                        else
                            unqNF.add(fact.getLBR_NotaFiscal_ID());

			String COD_MOD = fact.getLBR_NFeModel();
			
			/**	Disparar Erro	*/
			if (COD_MOD == null)
				COD_MOD = "ZZ";
			
			
			/*a partir da primeira lbr_notafiscal_id ele cria um array com todas as linhas da NF e passa para a criaçao dos registros A170 e C170*/
			List<MLBRFactFiscal> nflist = new ArrayList<MLBRFactFiscal>();
			boolean lastnf = false;
			nflinesloop:
			for ( MLBRFactFiscal nf : facts)
			{
			    if (nf.getLBR_NotaFiscal_ID()==fact.getLBR_NotaFiscal_ID())
			    {
			        nflist.add(nf);
			        lastnf=true;
			    }
			    else if (lastnf) 
			    {
			        break nflinesloop;
			    }
			}
			MLBRFactFiscal[] nflines = new MLBRFactFiscal[nflist.size()];
			nflines = nflist.toArray(nflines);
			
			_R0150.add (fact.fillR0150 (ctx, (I_R0150) getReg ("R0150", type), trxName));
			_R0190.add (fact.fillR0190 (ctx, (I_R0190) getReg ("R0190", type), trxName));
			_R0200.add (fact.fillR0200 (ctx, (I_R0200) getReg ("R0200", type), trxName));
			
			
			//	Contratação de Serviço (Somente Contribuições)
			if (TextUtil.match (COD_MOD, COD_MOD_RPS) && type == TYPE_CONTRIB)
			{
				//	A010
				_RA010.add (fact.getRA010 ());
				
				//	A100, A170
				_RA100.add (fact.getRA100 (ctx,nflines, trxName));
			}
			
			//	C100
			else if (TextUtil.match (COD_MOD, COD_MOD_NF, COD_MOD_NF_AVULSA, 
					COD_MOD_NF_DE_PRODUTOR, COD_MOD_NF_ELETRONICA))
			{
				//	C010
				_RC010.add (fact.getRC010 ());
				
				//	C100, C120, C130, C140, C141, C170, C172, C190, C195
				_RC100.add (fact.getRC100 (ctx,nflines, (I_RC100) getReg ("RC100", type), trxName));
				
				if (fact.isLBR_IsDocIssuedByOrg() && !fact.isCancelled())
				{
					I_FiscalDocItem item = (I_FiscalDocItem) new RA170();
					item.setCST_COFINS(fact.getLBR_COFINS_TaxStatus());
					item.setCST_PIS(fact.getLBR_PIS_TaxStatus());
					item.setVL_ITEM(fact.getLineNetAmt());
					item.setALIQ_COFINS(fact.getLBR_COFINS_TaxRate());
					item.setALIQ_PIS(fact.getLBR_PIS_TaxRate());
					
					
					if (fact.getLBR_NFE_OperationType().equals("1"))
					{
						item.setVL_COFINS(fact.getLBR_COFINS_TaxAmt());
						item.setVL_PIS(fact.getLBR_PIS_TaxAmt());
						item.setVL_BC_COFINS(fact.getLBR_COFINS_TaxBaseAmt());
						item.setVL_BC_PIS(fact.getLBR_PIS_TaxBaseAmt());
					}
					else
					{
						item.setVL_COFINS(Env.ZERO);
						item.setVL_PIS(Env.ZERO);
						item.setVL_BC_COFINS(Env.ZERO);
						item.setVL_BC_PIS(Env.ZERO);
					}
					
					items.add(item);
				}
				
			}
			
			//	C400
			else if (TextUtil.match (COD_MOD, COD_MOD_CUPOM_FISCAL_EMITIDO_POR_ECF, 
					COD_MOD_NF_DE_VENDA_A_CONSUMIDOR))
			{
				//	TODO
			}
			
			//   C490, C491 , C495
			//   CODMOD 59 - 60
                        else if (TextUtil.match (COD_MOD,COD_MOD_CUPOM_FISCAL_ELETRONICO_SAT,
                                        COD_MOD_CUPOM_FISCAL_ELETRONICO_CF_E_ECF))
                        {
                                _RC490.add(fact.getRC490 (ctx,nflines, (I_RC490) getReg ("RC490", type), trxName));
                                _RC491.add(fact.getRC491 (ctx,nflines, (I_RC491) getReg ("RC491", type), trxName));
                                _RC495.add(fact.getRC495 (ctx,nflines, (I_RC495) getReg ("RC495", type), trxName));
                        }
			
			//	C500
			else if (TextUtil.match (COD_MOD, COD_MOD_NF_CONTA_DE_ENERGIA_ELETRICA, 
					COD_MOD_NF_CONTA_DE_FORN_DE_AGUA_CANALIZADA, COD_MOD_NF_CONTA_DE_FORN_DE_GAS_CANALIZADO))
			{
				_RC500.add (fact.getRC500 (ctx,nflines, (I_RC500) getReg ("RC500", type), trxName));
			}
			
			//	D100
			else if (TextUtil.match (COD_MOD, COD_MOD_NF_DE_SERV_DE_TRANSP, 
					COD_MOD_CT_RODOVIARIO_DE_CARGAS, COD_MOD_CT_DE_CARGAS_AVULSO, 
					COD_MOD_CT_AQUAVIARIO_DE_CARGAS, COD_MOD_CONHECIMENTO_AEREO, 
					COD_MOD_CT_FERROVIARIO_DE_CARGAS, COD_MOD_CT_MULTIMODAL_DE_CARGAS, 
					COD_MOD_NF_DE_TRANSP_FERROVIARIO_DE_CARGAS, COD_MOD_CT_ELETRONICO))
			{
				_RD010.add (fact.getRD010 ());
				_RD100.add (fact.getRD100 (ctx,nflines, (I_RD100) getReg ("RD100", type), trxName));

			}
			
			//	D500
			else if (TextUtil.match (COD_MOD, COD_MOD_NF_DE_SERV_DE_COMUNICACAO, 
					COD_MOD_NF_DE_SERV_DE_TELECOMUNICACAO) && (TextUtil.match (fact.getLBR_COFINS_TaxStatus(), "50", "51", "52", "53", "54", "55", "56"))	)
			{
				_RD010.add (fact.getRD010 ());
				_RD500.add (fact.getRD500 (ctx,nflines, (I_RD500) getReg ("RD500", type), trxName));
			}
			
		}	//	for
		long end = System.currentTimeMillis();          
	        String tempoDecorrido = AdempiereLBR.executionTime(start, end);
		System.out.println("Tempo do laço For : "+tempoDecorrido);
	}	//	processFacts
	
	/**
	 * 		Contador de Registros
	 * 
	 * 	@param instance
	 * 	@return
	 */
	public static int count (Object instance)
	{
		return count (instance, null);
	}	//	get
	
	/**
	 * 		Contador de Registros
	 * 
	 * 	@param instance
	 * 	@return
	 */
	public static int count (Object instance, Map<String, Integer> mapCount)
	{
		Class<?> clazz = instance.getClass();
		int count = 0;
		
		try
		{
			Field[] fields = clazz.getDeclaredFields();
						
			for (Field field : fields) 
			{
				if (!field.isAnnotationPresent (XMLFieldProperties.class))
					continue;

				XMLFieldProperties annotation = field.getAnnotation (XMLFieldProperties.class);
				
				if(!annotation.isSPEDField())
					continue;

				String fieldName = field.getName().substring(0, 1).toUpperCase() + field.getName().substring(1);;
				
				Class<?> noparams[] = {};
				Object[] noargs = null;
				
				Method method = clazz.getDeclaredMethod ("get" + fieldName, noparams);
				Object content = method.invoke (instance, noargs);
				
				//	Do Nothing
				if (content == null)
					;
				
				//	List
				else if (content instanceof List)
				{
					for (Object item : (List<?>) content)
					{
						if (item instanceof RegSped)
							count += ((RegSped) item).getCount (mapCount);
					}
				}
				
				//	Set
				else if (content instanceof Set)
				{
					for (Object item : (Set<?>) content)
					{
						if (item instanceof RegSped)
							count += ((RegSped) item).getCount (mapCount);
					}
				}
				
				//	Registro SPED
				else if (content instanceof RegSped)
				{
					count += ((RegSped) content).getCount (mapCount);
				}
				
				//	Bloco SPED
				else if (content instanceof BlocoSPED)
				{
					((BlocoSPED) content).getCount (mapCount);
				}
			}
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		//
		if (instance instanceof RegSped)
		{
			count ++;
			//
			if (mapCount != null)
			{
				String reg = ((RegSped) instance).getReg ();
				//
				Integer regCount = mapCount.remove (reg);
				mapCount.put (reg, regCount == null ? 1 : regCount + 1);
			}
		}
		//
		return count;
	}	//	count
	
	/**
	 * 		Retorna a instância dos registros comuns ou similares entre os SPEDs.
	 * 
	 * 	@param regName Nome do Registro
	 * 	@param type Tipo ECD, EFD ou Contribuições
	 * 	@return Registro para ambos SPEDs
	 */
	public static Object getReg (String regName, int type)
	{
		Class<?> clazz = null;
		
		try
		{
			if (type == TYPE_EFD)
				clazz = Class.forName("org.adempierelbr.sped.efd.bean." + regName);
			
			else if (type == TYPE_CONTRIB)
				clazz = Class.forName("org.idempierelbr.sped.contrib.bean." + regName);
			
			else if (type == TYPE_ECD)
				clazz = Class.forName("org.adempierelbr.sped.ecd." + regName);

			else
				throw new ClassNotFoundException (">>>>" + regName);
			//
			return clazz.newInstance();
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return null;
	}	//	getReg
	
	/**
	 * 		Abertura do Arquivo
	 * 
	 *	@param reg Interface do Registro 0100
	 * 	@param ctx Contexto
	 * 	@param dateFrom Data de Abertura
	 * 	@param dateTo Data de Encerramento
	 * 	@param codFin Finalidade do Arquivo / Tipo
	 * 	@param oi Informações da Organização
	 * 	@param trxName Nome da Transação do BD
	 * 	@return
	 * 	@throws Exception
	 */
	public static R0000 fillR0000 (R0000 reg, Properties ctx, Timestamp dateFrom, Timestamp dateTo, 
			String codFin, MOrgInfo oi, String indSitEsp, 
			String numRecAnterior, String trxName) throws Exception
	{
		reg.setTIPO_ESCRIT(codFin);
		reg.setIND_SIT_ESP(indSitEsp);
		reg.setNUM_REC_ANTERIOR(numRecAnterior);
		reg.setCOD_VER(CONTRIB_VERSION);
		//
		return (R0000) fillR0000 ((I_R0000) reg, ctx, dateFrom, dateTo, oi, trxName);
	}	//	fillR0000
	
	/**
	 * 		Abertura do Arquivo
	 * 
	 *	@param reg Interface do Registro 0100
	 * 	@param ctx Contexto
	 * 	@param dateFrom Data de Abertura
	 * 	@param dateTo Data de Encerramento
	 * 	@param codFin Finalidade do Arquivo
	 * 	@param oi Informações da Organização
	 * 	@param trxName Nome da Transação do BD
	 * 	@return
	 * 	@throws Exception
	 */
	public static I_R0000 fillR0000 (I_R0000 reg, Properties ctx, Timestamp dateFrom, Timestamp dateTo, 
			MOrgInfo oi, String trxName) throws Exception
	{
		
		MOrg org = new MOrg(ctx, oi.getAD_Org_ID(), trxName);
		MBPartner bpLinked2Org = new MBPartner( ctx , org.getLinkedC_BPartner_ID(trxName) , trxName );
		
		reg.setDT_INI(dateFrom);
		reg.setDT_FIN(dateTo);
		reg.setNOME( bpLinked2Org.getName() );
		reg.setCNPJ( TextUtil.toNumeric(bpLinked2Org.get_ValueAsString("LBR_CNPJ")) );
		reg.setUF( oi.getC_Location().getC_Region().getName());		
		//
		MCity city = new MCity(ctx, oi.getC_Location().getC_City_ID(), trxName);
		reg.setCOD_MUN(city.get_ValueAsString("lbr_CityCode"));	//	FIXME: User Wrapper
		reg.setSUFRAMA( TextUtil.toNumeric(bpLinked2Org.get_ValueAsString("LBR_Suframa")) );

		/**
		 * 	0 - Industria ou Equiparado a Industrial
		 *  1 - Outros
		 */
		//	FIXME: User Wrapper
		reg.setIND_ATIV(oi.get_ValueAsString("lbr_IndAtividade").equals("0") ? "0" : "1");

		return reg;
	}	//	fillR0000
	
	/**
	 * 		Dados do Contabilista
	 * 
	 * 	@param reg Interface do Registro 0100
	 * 	@param ctx Contexto
	 * 	@param oi Informações da Organização
	 * 	@param trxName Nome da Transação do BD
	 * 	@throws Exception
	 */
	public static I_R0100 fillR0100 (I_R0100 reg, Properties ctx, MOrgInfo oi, String trxName) throws Exception
	{
		//	Dados do Contador - FIXME: Ajustar o Wrapper
		MBPartner bpContador = new MBPartner(ctx, oi.get_ValueAsInt("LBR_BP_Accountant_ID"), trxName);
		MBPartnerLocation bpcontLoc = bpContador.getPrimaryC_BPartner_Location();
		MLocation contLoc = new MLocation(ctx, bpcontLoc.getC_Location_ID(), trxName);
	
		// 	Não prosseguir sem os dados essenciais
		if (bpContador == null || bpcontLoc == null || contLoc == null) 
			throw new AdempiereException ("Dados do Contabilista não informado.");

		reg.setNOME(bpContador.getName());
		reg.setCPF(bpContador.get_ValueAsString("lbr_CPF"));	//	FIXME: Ajusta o Wrapper
		reg.setCRC(bpContador.get_ValueAsString("lbr_CRC"));
		reg.setCNPJ(bpContador.get_ValueAsString("lbr_CNPJ"));
		reg.setCEP(contLoc.getPostal());
		reg.setEND(contLoc.getAddress1());
		reg.setNUM(contLoc.getAddress2());
		reg.setCOMPL(contLoc.getAddress4());
		reg.setBAIRRO(contLoc.getAddress3());
		reg.setFONE(bpcontLoc.getPhone());
		reg.setFAX(bpcontLoc.getFax());
		
		//	E-Mail
		if (bpContador.getPrimaryAD_User_ID() > 0) 
			reg.setEMAIL(MUser.get(ctx, bpContador.getPrimaryAD_User_ID()).getEMail());

		//	Código do Município do IBGE
		reg.setCOD_MUN(BPartnerUtil.getCityCode(contLoc));
		
		//	Retorno o mesmo objeto
		return reg;
	}	//	fillR0100
	
	/**
	 * 		Este registro tem por objetivo definir o regime de incidência a que se 
	 * 	submete a pessoa jurídica (não-cumulativo, cumulativo ou ambos os regimes) 
	 * 	no período da escrituração. No caso de sujeição ao regime não-cumulativo, 
	 * 	será informado também o método de apropriação do crédito incidente sobre operações 
	 * 	comuns a mais de um tipo de receita adotado pela pessoa jurídica para o ano-calendário.
	 * 
	 * @param COD_INC_TRIB Código indicador da incidência tributária no período<br>
	 * 			<li>1 – Escrituração de operações com incidência exclusivamente no 
	 * 									regime não-cumulativo;
	 *			<li>2 – Escrituração de operações com incidência exclusivamente no 
	 *									regime cumulativo;
	 *			<li>3 – Escrituração de operações com incidência nos regimes 
	 *									não-cumulativo e cumulativo.
	 * @param IND_APRO_CRED Código indicador de método de apropriação de créditos comuns
	 * 			<li>1 – Método de Apropriação Direta;
	 *			<li>2 – Método de Rateio Proporcional (Receita Bruta)
	 * @param COD_TIPO_CONT Código indicador do Tipo de Contribuição Apurada no Período
	 * 			<li>1 – Apuração da Contribuição Exclusivamente a Alíquota Básica
	 * 			<li>2 – Apuração da Contribuição a Alíquotas Específicas (Diferenciadas e/ou por 
	 * 									Unidade de Medida de Produto)
	 * @param IND_REG_CUM Código indicador do critério de escrituração e apuração adotado
	 * 			<li>1 – Regime de Caixa – Escrituração consolidada (Registro F500);
	 * 			<li>2 – Regime de Competência - Escrituração consolidada (Registro F550);
	 * 			<li>9 – Regime de Competência - Escrituração detalhada, com base nos registros 
	 * 									dos Blocos “A”, “C”, “D” e “F”
	 * @return Registro 0110
	 * @throws Exception
	 */
	public static R0110 getR0110 (String COD_INC_TRIB, String IND_APRO_CRED, String COD_TIPO_CONT, String IND_REG_CUM) throws Exception
	{
		R0110 r0110 = new R0110 ();
		r0110.setCOD_INC_TRIB(COD_INC_TRIB);
		r0110.setIND_APRO_CRED(IND_APRO_CRED);
		r0110.setCOD_TIPO_CONT(COD_TIPO_CONT);
		r0110.setIND_REG_CUM(IND_REG_CUM);
		//
		return r0110;
	}	//	getR0110
	
	/**
	 * 		Este registro tem por objetivo relacionar e informar os estabelecimentos da pessoa jurídica, 
	 * 	no Brasil ou no exterior, que auferiram receitas no período da escrituração, realizaram operações 
	 * 	com direito a créditos ou que sofreram retenções na fonte, no período da escrituração.
	 * 
	 * 	@param ctx Context
	 * 	@param oi Organização
	 * 	@param trxName Transaction Name
	 * 	@return Registro 0140
	 */
	public static Set<R0140> getR0140 (Properties ctx, MOrgInfo[] ois, String trxName)
	{
		Set<R0140> r0140L = new HashSet<R0140>();
		//
		for (MOrgInfo oi : ois)
		{
			MLocation location = new MLocation (ctx, oi.getC_Location_ID(), trxName);
			
			MOrg org = new MOrg(ctx, oi.getAD_Org_ID(), trxName);
			MBPartner bpLinked2Org = new MBPartner( ctx , org.getLinkedC_BPartner_ID(trxName) , trxName );
	
			//
			R0140 r0140 = new R0140();
			r0140.setCNPJ( TextUtil.toNumeric(bpLinked2Org.get_ValueAsString("LBR_CNPJ")) );
			r0140.setCOD_EST(String.valueOf (oi.getAD_Org_ID()));
			r0140.setCOD_MUN(BPartnerUtil.getCityCode (location));
			r0140.setIE( TextUtil.toNumeric(bpLinked2Org.get_ValueAsString("LBR_IE")) );
			r0140.setIM( TextUtil.toNumeric(bpLinked2Org.get_ValueAsString("LBR_CCM")) );
			r0140.setNOME( bpLinked2Org.getName() );
			r0140.setSUFRAMA( TextUtil.toNumeric(bpLinked2Org.get_ValueAsString("LBR_Suframa")) );
			r0140.setUF(oi.getC_Location().getRegionName());
			//
			r0140L.add(r0140);
		}
		return r0140L;
	}	//	getR0140

	/**
	 * 		Parceiros
	 * 	@return Registros 0150
	 */
	public static Set<I_R0150> getR0150 ()
	{
		return _R0150;
	}	//	getR0150
	
	/**
	 * 		UDMs
	 * 	@return Registros 0190
	 */
	public static Set<I_R0190> getR0190 ()
	{
		return _R0190;
	}	//	getR0190
	
	/**
	 * 		Produtos
	 * 	@return Registros 0200
	 */
	public static Set<I_R0200> getR0200 ()
	{
		return _R0200;
	}	//	getR0200

	/**
	 * 		A010
	 * 	@return Registros A010
	 */
	public static Set<RA010> getRA010 ()
	{
		return _RA010;
	}	//	getRA010
	
	/**
	 * 		A100
	 * 	@return Registros A100
	 */
	public static Set<RA100> getRA100 ()
	{
		return _RA100;
	}	//	getRA100
	
	/**
	 * 		C010
	 * 	@return Registros C010
	 */
	public static Set<RC010> getRC010 ()
	{
		return _RC010;
	}	//	getRC010
	
	/**
	 * 		C100
	 * 	@return Registros C100
	 */
	public static Set<I_RC100> getRC100 ()
	{
		return _RC100;
	}	//	getRC100
	
	/**
         *              C490
         *      @return Registros C490
         */
        public static Set<I_RC490> getRC490 ()
        {
                return _RC490;
        }       //      getRC490
        
        /**
         *              C491
         *      @return Registros C491
         */
        public static Set<I_RC491> getRC491 ()
        {
                return _RC491;
        }       //      getRC491
        
        /**
         *              C495
         *      @return Registros C495
         */
        public static Set<I_RC495> getRC495 ()
        {
                return _RC495;
        }       //      getRC495
	
	/**
	 * 		C500
	 * 	@return Registros C500
	 */
	public static Set<I_RC500> getRC500 ()
	{
		return _RC500;
	}	//	getRC500
	
	/**
	 * 		D010
	 * 	@return Registros D010
	 */
	public static Set<RD010> getRD010 ()
	{
		return _RD010;
	}	//	getRD010
	
	/**
	 * 		D100
	 * 	@return Registros D100
	 */
	public static Set<I_RD100> getRD100 ()
	{
		return _RD100;
	}	//	getRD100
	
	/**
	 * 		D500
	 * 	@return Registros D500
	 */
	public static Set<I_RD500> getRD500 ()
	{
		return _RD500;
	}	//	getRC500
	
	/**
	 * 		M100
	 */
	public static RM100 getRM100 (Integer period, Integer p_AD_Org_ID)
	{
		RM100 rM100 = new RM100();

		MLBRTaxAssessment m_taxAssessment = MLBRTaxAssessment.get(Env.getCtx(), p_AD_Org_ID, "PISPROD", period, null);
		if(m_taxAssessment != null && m_taxAssessment.get_ID() > 0)
		{	
			rM100.setCOD_CRED(m_taxAssessment.getLBR_Cod_OR());
			rM100.setIND_CRED_ORI("0");
			rM100.setVL_BC_PIS(m_taxAssessment.getTotalAmt());
			rM100.setALIQ_PIS(new BigDecimal(0.65));
			rM100.setQUANT_BC_PIS(Env.ZERO);
			rM100.setALIQ_PIS_QUANT(null);
			rM100.setVL_CRED(m_taxAssessment.getTotalCr());
			rM100.setVL_AJUS_ACRES(m_taxAssessment.getAmtByType(X_LBR_TaxAssessmentLine.TYPE_OtherCredits).abs());
			rM100.setVL_AJUS_REDUC(m_taxAssessment.getAmtByType(X_LBR_TaxAssessmentLine.TYPE_OtherDebits).abs());
			rM100.setVL_CRED_DIF(Env.ZERO);
			rM100.setVL_CRED_DISP(rM100.getVL_CRED().add(rM100.getVL_AJUS_ACRES()).subtract(rM100.getVL_AJUS_REDUC()).subtract(rM100.getVL_CRED_DIF()));
			rM100.setIND_DESC_CRED("0");
			rM100.setVL_CRED_DESC(rM100.getVL_CRED_DISP());
			rM100.setSLD_CRED(Env.ZERO);
		}

		//
		return rM100;
	}	//	getRM100
	
	/**
	 * 		M200
	 * 	FIXME Deixar M200, M400, M600 e M800 num único método
	 * 	@return Registros M200
	 */
	public static RM200 getRM200 ()
	{
		RM200 rM200 = new RM200();

		BigDecimal vL_TOT_CONT_CUM_PER = new BigDecimal(0);
			
			rM200.setVL_TOT_CONT_NC_PER(Env.ZERO);//2 COD_CONT = 01, 02, 03, 04, 32 e 71
			rM200.setVL_TOT_CRED_DESC(Env.ZERO); //3
			rM200.setVL_TOT_CRED_DESC_ANT(Env.ZERO);//4
			rM200.setVL_TOT_CONT_NC_DEV(Env.ZERO);//5 (02 – 03 - 04) 
			rM200.setVL_RET_NC(Env.ZERO);//6
			rM200.setVL_OUT_DED_NC(Env.ZERO);//7
			rM200.setVL_CONT_NC_REC(Env.ZERO);//8 (05 – 06 - 07) 
			rM200.setVL_RET_CUM(Env.ZERO);//10
			rM200.setVL_OUT_DED_CUM(Env.ZERO);//11
			
			for (RM210 rM210: getRM210())
			{
				vL_TOT_CONT_CUM_PER=vL_TOT_CONT_CUM_PER.add(rM210.getVL_CONT_APUR());
			}
			
			rM200.setVL_TOT_CONT_CUM_PER(vL_TOT_CONT_CUM_PER);//9 COD_CONT = 31, 32, 51, 52, 53, 54 e 72
			rM200.setVL_CONT_CUM_REC(vL_TOT_CONT_CUM_PER);//12
			rM200.setVL_TOT_CONT_REC(vL_TOT_CONT_CUM_PER);//13
			
			for (RM210 rM210: getRM210())
				rM200.addRM210(rM210);
		
		return rM200;
	}	//	getR6M00
	
	/**
         *              M205
         *      @return Registro M205
         */
        public static RM205 getRM205(MLBRTaxAssessment m_taxassessment) 
        {
                RM205 rM205 = new RM205();
                
                if (!m_taxassessment.get_ValueAsBoolean("LBR_IsCumulativeRegime"))
                {
                        //      Campo 08 no Registro M200 referente a Valor Não Cumulativo
                        rM205.setNUM_CAMPO("08");
                        rM205.setCOD_REC(m_taxassessment.getLBR_Cod_Rec());
                        rM205.setVL_DEBITO(m_taxassessment.getLBR_VL_OR());
                }
                else
                {
                        //      Campo 12 no Registro M200 referente a Valor Cumulativo
                        rM205.setNUM_CAMPO("12");
                        rM205.setCOD_REC(m_taxassessment.getLBR_Cod_Rec());
                        rM205.setVL_DEBITO(m_taxassessment.getLBR_VL_OR());
                }
                
                return rM205;           
        }       //      getRM205
        
        /**
         *              M605
         *      @return Registro M605
         */
        public static RM605 getRM605(MLBRTaxAssessment m_taxassessment)
        {
                //              Adicionar M605
                //      Contribuição não Cumulativa
                RM605 rM605 = new RM605();
                
                if (!m_taxassessment.get_ValueAsBoolean("LBR_IsCumulativeRegime"))
                {
                        //      Campo 08 no Registro M600 referente a Valor Não Cumulativo
                        rM605.setNUM_CAMPO("08");
                        rM605.setCOD_REC(m_taxassessment.getLBR_Cod_Rec());
                        rM605.setVL_DEBITO(m_taxassessment.getLBR_VL_OR());                     
                }
                else
                {
                        //      Campo 12 no Registro M600 referente a Valor Cumulativo
                        rM605.setNUM_CAMPO("12");
                        rM605.setCOD_REC(m_taxassessment.getLBR_Cod_Rec());
                        rM605.setVL_DEBITO(m_taxassessment.getLBR_VL_OR());
                }
                
                return rM605;           
        }       //      getRM605
	
	public static Set<RM210> getRM210 ()
	{
			processRM210();
			
			Set<RM210> _RM210 = new SPEDSet<RM210> ();
			
			for (BigDecimal key : mapValorItem.keySet())
			{	
				
				RM210 rM210 = new RM210 ();
				rM210.setCOD_CONT("51");
				rM210.setVL_REC_BRT(mapValorItem.get(key));
				rM210.setVL_BC_CONT(mapBCTax.get(key));
				rM210.setALIQ_PIS(key);
				rM210.setQUANT_BC_PIS(Env.ZERO);
				rM210.setALIQ_PIS_QUANT(null);
				rM210.setVL_CONT_APUR(mapValorTax.get(key));
				rM210.setVL_AJUS_ACRES(Env.ZERO);
				rM210.setVL_AJUS_REDUC(Env.ZERO);
				rM210.setVL_CONT_DIFER(Env.ZERO);
				rM210.setVL_CONT_DIFER_ANT(Env.ZERO);
				rM210.setVL_CONT_PER(Env.ZERO.add(mapValorTax.get(key)));
				rM210.setRM211(getRM211(rM210));
				
				_RM210.add(rM210);
				
			}
			
			return _RM210;

	}	//	getRM210
	
	/**
	 * 		M210
	 * 	@return Registros M210
	 */
	public static void processRM210 ()
	{
		mapValorItem.clear();
		mapBCTax.clear();
		mapValorTax.clear();
		
		for (I_FiscalDocItem item : items)
			if (TextUtil.match (item.getCST_PIS(), "01", "51", "02", "52", "31", "32"))	
				processRM210 (item);
	}	//	processRM210
	
	/**
	 * 		M400
	 * 	@return Registros M400
	 */
	public static void processRM210 (I_FiscalDocItem item)
	{
		if (item == null)
			return;
		//
		BigDecimal aliqPIS		= item.getALIQ_PIS();
		BigDecimal valorPIS		= item.getVL_PIS();
		BigDecimal valorBCPIS	= item.getVL_BC_PIS();
		BigDecimal valorItem	= item.getVL_ITEM();

		if (aliqPIS.compareTo(Env.ZERO)==1)
		{
			mapValorItem.put(aliqPIS, valorItem);
			mapValorTax.put(aliqPIS, valorPIS);
			mapBCTax.put(aliqPIS, valorBCPIS);
		}
	}	//	processRM210
	
	/**
	 * 		M211
	 * 	@return Registro M211
	 */
	public static RM211 getRM211 (RM210 rM210)
	{
		RM211 rM211 = new RM211();
		
		rM211.setIND_TIP_COOP("99");
		rM211.setVL_BC_CONT_ANT_EXC_COOP(rM210.getVL_BC_CONT());
		rM211.setVL_EXC_COOP_GER(Env.ZERO);
		rM211.setVL_EXC_ESP_COOP(Env.ZERO);
		rM211.setVL_BC_CONT(rM210.getVL_BC_CONT());
		
		return rM211;
	}	//	getR6M00
	
	/**
	 * 		M400
	 * 	@return Registros M400
	 */
	public static void processRM400 (List<I_FiscalDocItem> items, Map<String, BigDecimal> map)
	{
		map.clear();
		for (I_FiscalDocItem item : items)		
			if (TextUtil.match (item.getCST_PIS(), "04", "05", "06", "07", "08", "09"))	
				processRM400 (item, map);
	}	//	processRM400
	
	/**
	 * 		M400
	 * 	@return Registros M400
	 */
	public static void processRM400 (I_FiscalDocItem item, Map<String, BigDecimal> map)
	{
		if (item == null || map == null)
			return;
		//
		if (TextUtil.match (item.getCST_PIS(), "04", "05", "06", "07", "08", "09"))	//	FIXME
			map.put (item.getCST_PIS(), item.getVL_ITEM());
	}	//	processRM400
	
	/**
	 * 		M400
	 * 	@return Registros M400
	 */
	public static Set<RM400> getRM400 ()
	{	
		processRM400(items, map);
		
		Set<RM400> _RM400 = new SPEDSet<RM400> ();
		
		for (String key : map.keySet())
		{
			RM400 rM400 = new RM400 ();
			rM400.setCST_PIS (key);
			rM400.setVL_TOT_REC (map.get (key));
			//
			RM410 rM410 = new RM410 ();
			rM410.setNAT_REC (NAT_REC_OUTRAS_DESP);
			rM410.setVL_REC (map.get (key));
			//
			rM400.addRM410 (rM410);
			
			_RM400.add (rM400);
		}
		
		return _RM400;
	}	//	getRM400

	/**
	 * 		M500
	 */
	public static RM500 getRM500 (Integer period, Integer p_AD_Org_ID)
	{
		RM500 rM500 = new RM500();
		
		MLBRTaxAssessment m_taxAssessment = MLBRTaxAssessment.get(Env.getCtx(), p_AD_Org_ID, "PISPROD", period, null);
		if(m_taxAssessment != null && m_taxAssessment.get_ID() > 0)
		{	
			rM500.setCOD_CRED(m_taxAssessment.getLBR_Cod_OR());
			rM500.setIND_CRED_ORI("0");
			rM500.setVL_BC_COFINS(m_taxAssessment.getTotalAmt());
			rM500.setALIQ_COFINS(new BigDecimal(3));
			rM500.setQUANT_BC_COFINS(Env.ZERO);
			rM500.setALIQ_COFINS_QUANT(null);
			rM500.setVL_CRED(m_taxAssessment.getTotalCr());
			rM500.setVL_AJUS_ACRES(m_taxAssessment.getAmtByType(X_LBR_TaxAssessmentLine.TYPE_OtherCredits).abs());
			rM500.setVL_AJUS_REDUC(m_taxAssessment.getAmtByType(X_LBR_TaxAssessmentLine.TYPE_OtherDebits).abs());
			rM500.setVL_CRED_DIFER(Env.ZERO);
			rM500.setVL_CRED_DISP(rM500.getVL_CRED().add(rM500.getVL_AJUS_ACRES()).subtract(rM500.getVL_AJUS_REDUC()).subtract(rM500.getVL_CRED_DIFER()));
			rM500.setIND_DESC_CRED("0");
			rM500.setVL_CRED_DESC(rM500.getVL_CRED_DISP());
			rM500.setSLD_CRED(Env.ZERO);
		}
		
		//
		return rM500;
	}	//	getRM100
	
	/**
	 * 		M600
	 * 	FIXME Deixar M200, M400, M600 e M800 num único método
	 * 	@return Registros M200
	 */
	public static RM600 getRM600 ()
	{
		RM600 rM600 = new RM600();

			BigDecimal vL_TOT_CONT_CUM_PER = new BigDecimal(0);
			
			rM600.setVL_TOT_CONT_NC_PER(Env.ZERO);//2 COD_CONT = 01, 02, 03, 04, 32 e 71
			rM600.setVL_TOT_CRED_DESC(Env.ZERO); //3
			rM600.setVL_TOT_CRED_DESC_ANT(Env.ZERO);//4
			rM600.setVL_TOT_CONT_NC_DEV(Env.ZERO);//5 (02 – 03 - 04) 
			rM600.setVL_RET_NC(Env.ZERO);//6
			rM600.setVL_OUT_DED_NC(Env.ZERO);//7
			rM600.setVL_CONT_NC_REC(Env.ZERO);//8 (05 – 06 - 07) 
			rM600.setVL_RET_CUM(Env.ZERO);//10
			rM600.setVL_OUT_DED_CUM(Env.ZERO);//11
			
			for (RM610 rM610: getRM610())
			{
				vL_TOT_CONT_CUM_PER=vL_TOT_CONT_CUM_PER.add(rM610.getVL_CONT_APUR());
			}
			
			rM600.setVL_TOT_CONT_CUM_PER(vL_TOT_CONT_CUM_PER);//9 COD_CONT = 31, 32, 51, 52, 53, 54 e 72
			rM600.setVL_CONT_CUM_REC(vL_TOT_CONT_CUM_PER);//12
			rM600.setVL_TOT_CONT_REC(vL_TOT_CONT_CUM_PER);//13
			
			for (RM610 rM610: getRM610())
				rM600.addRM610(rM610);
		//
		return rM600;
	}	//	getR6M00
	
	/**
	 * 		M210
	 * 	@return Registros M210
	 */
	public static void processRM610 ()
	{
		mapValorItem.clear();
		mapBCTax.clear();
		mapValorTax.clear();
		
		for (I_FiscalDocItem item : items)
			if (TextUtil.match (item.getCST_COFINS(), "01", "51", "02", "52", "31", "32"))	
				processRM610 (item);
	}	//	processRM400
	
	/**
	 * 		M400
	 * 	@return Registros M400
	 */
	public static void processRM610 (I_FiscalDocItem item)
	{
		if (item == null)
			return;
		//
		BigDecimal aliqCofins		= item.getALIQ_COFINS();
		BigDecimal valorCofins		= item.getVL_COFINS();
		BigDecimal valorBCCofins	= item.getVL_BC_COFINS();
		BigDecimal valorItem		= item.getVL_ITEM();

		if (aliqCofins.compareTo(Env.ZERO)==1)
		{
			mapValorItem.put(aliqCofins, valorItem);
			mapValorTax.put(aliqCofins, valorCofins);
			mapBCTax.put(aliqCofins, valorBCCofins);
		}
	}	//	processRM210
	
	public static Set<RM610> getRM610 ()
	{
			processRM610();
			
			Set<RM610> _RM610 = new SPEDSet<RM610> ();

			for (BigDecimal key : mapValorItem.keySet())
			{	
				RM610 rM610 = new RM610 ();
				rM610.setCOD_CONT("51");
				rM610.setVL_REC_BRT(mapValorItem.get(key));
				rM610.setVL_BC_CONT(mapBCTax.get(key));
				rM610.setALIQ_COFINS(key);
				rM610.setQUANT_BC_COFINS(Env.ZERO);
				rM610.setALIQ_COFINS_QUANT(null);
				rM610.setVL_CONT_APUR(mapValorTax.get(key));
				rM610.setVL_AJUS_ACRES(Env.ZERO);
				rM610.setVL_AJUS_REDUC(Env.ZERO);
				rM610.setVL_CONT_DIFER(Env.ZERO);
				rM610.setVL_CONT_DIFER_ANT(Env.ZERO);
				rM610.setVL_CONT_PER(Env.ZERO.add(mapValorTax.get(key)));
				rM610.addRM611(getRM611(rM610));
				
				_RM610.add(rM610);
			}
			
			return _RM610;

	}	//	getRM610
	
	/**
	 * 		M611
	 * 	@return Registro M611
	 */
	public static RM611 getRM611 (RM610 rM610)
	{
		RM611 rM611 = new RM611();
		rM611.setIND_TIP_COOP("99");
		rM611.setVL_BC_CONT_ANT_EXC_COOP(rM610.getVL_BC_CONT());
		rM611.setVL_EXC_COOP_GER(Env.ZERO);
		rM611.setVL_EXC_ESP_COOP(Env.ZERO);
		rM611.setVL_BC_CONT(rM610.getVL_BC_CONT());
		
		return rM611;
	}	//	getR6M00
	
	/**
	 * 		M800
	 * 	@return Registros M800
	 */
	public static void processRM800 (List<I_FiscalDocItem> items, Map<String, BigDecimal> map)
	{
		map.clear();
		for (I_FiscalDocItem item : items)
			if (TextUtil.match (item.getCST_COFINS(), "04","05", "06", "07", "08", "09"))	
				processRM800 (item, map);
	}
	
	/**
	 * 		M800
	 * 	@return Registros M800
	 */
	public static void processRM800 (I_FiscalDocItem item, Map<String, BigDecimal> map)
	{
		if (item == null || map == null)
			return;
		//		
		if (TextUtil.match (item.getCST_COFINS(), "04", "05", "06", "07", "08", "09"))
			map.put (item.getCST_COFINS(), item.getVL_ITEM());
	}	//	processRM800
	
	/**
	 * 		M800
	 * 	FIXME Deixar M400 e M800 num único método
	 * 	@return Registros M800
	 */
	public static Set<RM800> getRM800 ()
	{	
		processRM800(items, map);
		
		for (String key : map.keySet())
		{
			RM800 rM800 = new RM800 ();
			rM800.setCST_COFINS (key);
			rM800.setVL_TOT_REC (map.get (key));
			//
			RM810 rM810 = new RM810 ();
			rM810.setNAT_REC (NAT_REC_OUTRAS_DESP);
			rM810.setVL_REC (map.get (key));
			//
			rM800.addRM810 (rM810);
			
			_RM800.add (rM800);
		}
		
		return _RM800;
	}	//	getRM800
	
	/**
	 * 		Retorna o contador dos registros
	 * 
	 * 	@param type SPED ECD, EFD ou Contribuições
	 * 	@param map Mapa com os contadores
	 * 	@return 
	 */
	public static List<I_R9900> getR9900 (int type, Map<String, Integer> map)
	{
		List<I_R9900> listR9900 = new ArrayList<I_R9900> ();
		//
		for (Object key : map.keySet())
		{
			I_R9900 r9900 = (I_R9900) getReg ("R9900", type);
			//
			r9900.setREG_BLC ((String) key);
			r9900.setQTD_REG_BLC (new BigDecimal (map.get(key)));
			//
			listR9900.add (r9900);
		}
		
		//	9900|9001
		I_R9900 r9900_9001 = (I_R9900) getReg ("R9900", type);
		r9900_9001.setREG_BLC ("9001");
		r9900_9001.setQTD_REG_BLC (Env.ONE);
		
		//	9900|9900
		I_R9900 r9900_9900 = (I_R9900) getReg ("R9900", type);
		r9900_9900.setREG_BLC ("9900");
		r9900_9900.setQTD_REG_BLC (new BigDecimal (listR9900.size() + 4));	// Total + 9900|9001 + 9900|9900 + 9900|9990 + 9900|9999
		
		//	9900|9990
		I_R9900 r9900_9990 = (I_R9900) getReg ("R9900", type);
		r9900_9990.setREG_BLC ("9990");
		r9900_9990.setQTD_REG_BLC (Env.ONE);
		
		//	9900|9999
		I_R9900 r9900_9999 = (I_R9900) getReg ("R9900", type);
		r9900_9999.setREG_BLC ("9999");
		r9900_9999.setQTD_REG_BLC (Env.ONE);
		
		//	Adiciona na lista
		listR9900.add (r9900_9001);
		listR9900.add (r9900_9900);
		listR9900.add (r9900_9990);
		listR9900.add (r9900_9999);
		//
		return listR9900;
	}	//	getR9900
	
	/**
	 * 		Retorna o contador dos registros
	 * 
	 * 	@param type SPED ECD, EFD ou Contribuições
	 * 	@param map Mapa com os contadores
	 * 	@return 
	 */
	public static I_R9999 getR9999 (int type, Map<String, Integer> map)
	{
		I_R9999 r9999 = (I_R9999) getReg ("R9999", type);
		Integer total = map.size() + 7;	// Total + 9001 + 9900|9001 + 9900|9900 + 9900|9990 + 9900|9999 + 9990 + 9999
		//
		for (String key : map.keySet())
			total = total + map.get (key);
		//
		r9999.setQTD_LIN(new BigDecimal(total));
		//
		items.clear();
		
		return r9999;
	}	//	getR9999
}	//	SPEDUtil
