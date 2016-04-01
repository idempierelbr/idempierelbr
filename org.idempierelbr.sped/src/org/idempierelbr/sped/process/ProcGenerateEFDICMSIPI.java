package org.idempierelbr.sped.process;

import java.io.File;
import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.Properties;
import java.util.logging.Level;

import org.adempiere.model.POWrapper;
import org.compiere.model.MAttachment;
import org.compiere.model.MBPartner;
import org.compiere.model.MElementValue;
import org.compiere.model.MOrg;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MPeriod;
import org.compiere.model.MProduct;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.idempierelbr.core.util.AdempiereLBR;
import org.idempierelbr.core.util.TextUtil;
import org.idempierelbr.sped.icmsipi.bean.BLOCO0;
import org.idempierelbr.sped.icmsipi.bean.BLOCO1;
import org.idempierelbr.sped.icmsipi.bean.BLOCO9;
import org.idempierelbr.sped.icmsipi.bean.BLOCOC;
import org.idempierelbr.sped.icmsipi.bean.BLOCOD;
import org.idempierelbr.sped.icmsipi.bean.BLOCOE;
import org.idempierelbr.sped.icmsipi.bean.BLOCOG;
import org.idempierelbr.sped.icmsipi.bean.BLOCOH;
import org.idempierelbr.sped.icmsipi.bean.R0190;
import org.idempierelbr.sped.icmsipi.bean.R0200;
import org.idempierelbr.sped.icmsipi.bean.R0400;
import org.idempierelbr.sped.icmsipi.bean.R0460;
import org.idempierelbr.sped.icmsipi.bean.R0500;
import org.idempierelbr.sped.icmsipi.bean.RC100;
import org.idempierelbr.sped.icmsipi.bean.RC170;
import org.idempierelbr.sped.icmsipi.bean.RC190;
import org.idempierelbr.sped.icmsipi.bean.RC500;
import org.idempierelbr.sped.icmsipi.bean.RD100;
import org.idempierelbr.sped.icmsipi.bean.RD500;
import org.idempierelbr.sped.icmsipi.bean.RE200;
import org.idempierelbr.sped.icmsipi.util.CounterSped;
import org.idempierelbr.sped.icmsipi.util.EFDUtil;
import org.idempierelbr.sped.model.MLBRFactFiscal;
import org.idempierelbr.sped.model.MLBRTaxAssessment;
import org.idempierelbr.sped.model.X_LBR_SPED;
import org.idempierelbr.sped.model.X_LBR_TaxAssessmentLine;
import org.idempierelbr.tax.wrapper.I_W_AD_OrgInfo;


/**
 * Processo para geração do SPED EFD
 * 
 * 
 * @author Pablo Boff Pigozzo
 * @version 01/08/2012, 08:20 
 * 
 * Old: 
 * @author Mario Grigioni
 * @version $Id: ProcGenerateEFD, 07/02/2011, 09:43, mgrigioni
 */
public class ProcGenerateEFDICMSIPI extends SvrProcess
{
	/** 
	 * Arquivo   
	 */
	private String p_FilePath = null;
	
	/** 
	 * Período   
	 */
	private int p_C_Period_ID = 0;
	
	/** 
	 * Organização 
	 */
	private int p_AD_Org_ID = 0;
	
	/** 
	 * SPED 
	 */
	private int p_LBR_SPED_ID = 0;
	
	
	/**
	 * Prepare - e.g., get Parameters.
	 * 
	 */
	protected void prepare ()
	{
		ProcessInfoParameter[] para = getParameter();
		for (int i = 0; i < para.length; i++)
		{
			String name = para[i].getParameterName();
			if (para[i].getParameter() == null)
				;			
			else
				log.log(Level.SEVERE, "prepare - Unknown Parameter: " + name);
		}	//	for
	}	//	prepare

	
	
	/**
	 * Do It
	 */
	protected String doIt () throws Exception
	{
		/*
		 * Tempo inicial
		 */
		long start = System.currentTimeMillis();
		
		p_LBR_SPED_ID = getRecord_ID();
		
		/*
		 * Objeto do Sped
		 */
		X_LBR_SPED SPED = new X_LBR_SPED(getCtx(),p_LBR_SPED_ID, get_TrxName());
		
		p_C_Period_ID = SPED.getC_Period_ID();
		p_AD_Org_ID = SPED.getAD_Org_ID();		
		
		/*
		 * Validar Organização e Periodo
		 */
		if (p_C_Period_ID == 0)
			throw new IllegalArgumentException("@C_Period_ID@ @Mandatory@");
		
		if (p_AD_Org_ID == 0)
			throw new IllegalArgumentException("@AD_Org_ID@ @Mandatory@");

		/*
		 * Carregar Período e datas
		 */
		MPeriod period = new MPeriod(getCtx(), p_C_Period_ID, get_TrxName());
		Timestamp dateFrom = period.getStartDate();
		Timestamp dateTo   = period.getEndDate();
		
		/*
		 * Caminho do Arquivo
		 */
		String fileName = "";

		/*
		 * WTF? 
		 *
		DB.executeUpdate("DROP TABLE LBR_FactFiscal", null);
		DB.executeUpdate("CREATE TABLE LBR_FactFiscal AS SELECT * FROM LBR_FactFiscalBase", null);
		
		/*
		 * Rodar Processo
		 */
		StringBuilder result = generateEFD(dateFrom,dateTo);
		
		/*
		 * Nome do arquivo
		 * 
		 * EDF_CNPJ_DATA.txt
		 */

		Properties ctx = getCtx();
		String trxName = get_TrxName();
		MOrg org = new MOrg( ctx, p_AD_Org_ID, trxName );
		MBPartner bpLinked2Org = new MBPartner( ctx , org.getLinkedC_BPartner_ID(trxName) , trxName );

		fileName = "EFD_" + TextUtil.toNumeric(bpLinked2Org.get_ValueAsString("LBR_CNPJ")) + "_" + TextUtil.timeToString(dateFrom, "MMyyyy") + ".txt";
		
		/*
		 * Gerar Arquivo no disco
		 */
		
		File file = new File(TextUtil.generateFile(result.toString(), fileName));
		
		try
		{
			//	Anexa o XML na NF
			MAttachment attachNFe = SPED.createAttachment();
			attachNFe.addEntry(file);
			attachNFe.save(null);
		} 
		catch (Exception e)
		{
			log.log (Level.SEVERE, "Error saving SPED", e);
		}

		/*
		 * Tempo Final
		 */
		long end = System.currentTimeMillis();		
		String tempoDecorrido = AdempiereLBR.executionTime(start, end);
		
		/*
		 * Retorno
		 */
		return "Arquivo(s) Gerado(s) com Sucesso: " + fileName + 
		       " <br>** Tempo decorrido: <font color=\"008800\">" + tempoDecorrido + "</font>";
	}	//	doIt
	
	
	
	
	
	/**
	 * @param ctx
	 * @return
	 * @throws Exception
	 */
	private StringBuilder generateEFD(Timestamp dateFrom, Timestamp dateTo) throws Exception
	{
		
//		try
//		{
			
			// Zerar Contadores (estaticos)
			CounterSped.clear();

			
			// Fatos Fiscais
			MLBRFactFiscal[] factFiscals = MLBRFactFiscal.get(getCtx(), dateFrom, dateTo, p_AD_Org_ID, null, null); 

//			// Vendas com cartão de crédito
//			MLBRSalesCardTotal[] cards = MLBRSalesCardTotal.get(getCtx(), p_C_Period_ID, null);
			
			// criar blocos
			BLOCO0 bloco0 = new BLOCO0();
			BLOCOC blocoC = new BLOCOC();
			BLOCOD blocoD = new BLOCOD();
			BLOCOE blocoE = new BLOCOE();
			BLOCOG blocoG = new BLOCOG();
			BLOCOH blocoH = new BLOCOH();
			BLOCO1 bloco1 = new BLOCO1();
			BLOCO9 bloco9 = new BLOCO9();
			
			
			// 0000 - dados da empresa
			bloco0.setR0000(EFDUtil.createR0000(getCtx(), dateFrom, dateTo, p_AD_Org_ID, null));
			
			// 0005 - dados adicionais da org
			bloco0.setR0005(EFDUtil.createR0005(getCtx(), p_AD_Org_ID, null));
					 		
			// 0100 - contator
			bloco0.setR0100(EFDUtil.createR0100(getCtx(), p_AD_Org_ID, null));
			
			// ultima nota fiscal do loop de fatos fiscais (somente auxiliar)
			int last_LBR_NotaFiscal_ID = 0;
			int last_C_Invoice_ID = 0;
			
			// Headers
			RC100 rc100 = null;
			RC500 rc500 = null;
			RD100 rd100 = null;
			RD500 rd500 = null;
			
//			for(MLBRSalesCardTotal card : cards)
//			{
//				bloco1.addR1600(EFDUtil.createR1600(card));
//			}
			
			/**
			 * Loop de Fatos Fiscais. 
			 * 
			 * 	Obs.: Os fatos fiscais repetem de acordo com o numero de linhas da NF. 
			 * 		Ex.: Uma NF com 6 linhas, terá 6 fatos fiscais.
			 * 
			 * 	Devido a observação acima, deve-se tomar cuidado para tratar os registros agrupados, 
			 * 	como dados do corpo da NF 
			 */
			for(MLBRFactFiscal factFiscal : factFiscals)
			{
	
				//
				String REG = EFDUtil.getBlocoNFModel(EFDUtil.getCOD_MOD(factFiscal)); 
				
				if (factFiscal.getDocumentNo()==null)
					REG="C999"; //para não criar os blocos, apagar depois!
				
				/*
				 * Gerar somente dos blocos C(produtos) e D(servicos).
				 */
				if(!(REG.startsWith("C") || REG.startsWith("D")))
					continue;

				/*
				 * Gerar apenas se for COD_SIT válido
				 */
				if(EFDUtil.getCOD_SIT(factFiscal)==null)
					continue;
				
				/*
				 * R0150 - Parceiros de Negócios
				 */
				bloco0.addr0150(EFDUtil.createR0150(factFiscal));
				
				/*
				 * Detecta necessidade de gerar nova entrada (linha referente a outro documento)
				 */
				int thisNF_ID = factFiscal.getLBR_NotaFiscal_ID();
				if( ( thisNF_ID > 0 && last_LBR_NotaFiscal_ID != thisNF_ID ) 
						|| ( thisNF_ID == 0 && last_C_Invoice_ID != factFiscal.getC_Invoice_ID() ) ) 
				{
					
					// 
					rc100 = null;
					rd100 = null;

					/*
					 * C100 - NFs
					 */
					if(REG.startsWith("C100"))
					{
						// C100 - NF
						rc100 = EFDUtil.createRC100(factFiscal);
						if (rc100.getNUM_DOC() != null)
						{
							blocoC.addrC100(rc100);

							// C120 - DI
							if( factFiscal.getLBR_DI_No() != null )
								rc100.setrC120(EFDUtil.createRC120(factFiscal));
							
							/*
							 *  0460 - Obs do Lançamento Fiscal
							 *  
							 *  Se não for industria e for entrada, gerar a Obs do Lançamento Fiscal 
							 *  de acordo com a descrição no método addrC170
							 */
							if(rc100.getIND_ATIV().equals("1") && rc100.getIND_OPER().equals("0"))
							{						
								//
								R0460 r0460 = EFDUtil.createR0460(rc100, bloco0.getR0460().size());
								bloco0.addr0460(r0460);
							
								// C195 - Associar a Obs do Lançamento Fiscal à NF
								rc100.addrC195(EFDUtil.createRC195(r0460));
							}
						}
					}
					
					/*
					 * D100 - Conhecimentos de Transportes
					 */
					else if(REG.startsWith("D100"))
					{
						// D100
						rd100 = EFDUtil.createRD100(factFiscal);
						blocoD.addrD100(rd100);
					}
					
					/*
					 * D500 - Nota Fiscal de Telefonia
					 */
					else if(REG.startsWith("D500"))
					{
						// D500
						rd500 = EFDUtil.createRD500(factFiscal);
						blocoD.addrD500(rd500);
					}
					
					/*
					 * C500 - Nota Fiscal de Energia
					 */
					else if(REG.startsWith("C500"))
					{
						// C500
						rc500 = EFDUtil.createRC500(factFiscal);
						blocoC.addrC500(rc500);
					}
							
				}
				
				/*
				 * Unidades
				 */
				if(REG.startsWith("C100"))
				bloco0.addr0190(EFDUtil.createR0190(factFiscal));
				
				/*
				 * Produtos
				 */;
				 if(REG.startsWith("C100") || REG.startsWith("D100"))
					bloco0.addr0200(EFDUtil.createR0200(factFiscal));
				
				/*
				 * Add C170 ao C100
				 */
				if(REG.startsWith("C100"))
				{

					/*
					 * Create C170
					 */
					RC170 rc170 = EFDUtil.createRC170(factFiscal, blocoC.getrC100().
							get(blocoC.getrC100().indexOf(rc100)).getrC170().size() + 1);

					/*
					 * Add 0400 for documents not issued by us
					 */
					if ( !factFiscal.isLBR_IsDocIssuedByOrg() )
					{
						R0400 r0400 = EFDUtil.createR0400(factFiscal);
						bloco0.addr0400( r0400 );
						rc170.setCOD_NAT(r0400.getCOD_NAT());
					}

					/*
					 * Add to C100
					 */
					blocoC.getrC100().get(blocoC.getrC100().indexOf(rc100)).
						addrC170( rc170 );

				}

				/*
				 * Add C590 ao C500
				 */
				if(REG.startsWith("C500"))
					blocoC.getrC500().get(blocoC.getrC500().indexOf(rc500))
						.addrC590(EFDUtil.createRC590(factFiscal, blocoC.getrC500().
								get(blocoC.getrC500().indexOf(rc500)).getrC590().size() + 1));

				/*
				 * Add D110 ao D100
				 */
				if(REG.startsWith("D100") && factFiscal.getLBR_NFeModel().equals("07"))
					blocoD.getrD100().get(blocoD.getrD100().indexOf(rd100))
						.addrD110(EFDUtil.createRD110(factFiscal, blocoD.getrD100().
								get(blocoD.getrD100().indexOf(rd100)).getrD110().size() + 1));
				
				/*
				 * Add D590 ao D500
				 */
				if(REG.startsWith("D500"))
					blocoD.getrD500().get(blocoD.getrD500().indexOf(rd500))
						.addrD590(EFDUtil.createRD590(factFiscal, blocoD.getrD500().
								get(blocoD.getrD500().indexOf(rd500)).getrD590().size() + 1));
				
				/*
				 * Add D190 ao D100
				 */
				if(REG.startsWith("D100"))
					blocoD.getrD100().get(blocoD.getrD100().indexOf(rd100))
						.addrD190(EFDUtil.createRD190(factFiscal, blocoD.getrD100().
								get(blocoD.getrD100().indexOf(rd100)).getrD110().size() + 1));
				
				
				/*
				 * Preencher com o ID da NF do fato fiscal
				 * para no próximo loop verificar se o próximo 
				 * fato pertence a esta mesma nota
				 */
				last_LBR_NotaFiscal_ID = factFiscal.getLBR_NotaFiscal_ID();
				last_C_Invoice_ID = factFiscal.getC_Invoice_ID();
				
			} // loop fatos fiscais
			
			
			/**
			 * VERIFICAR EXCEÇÕES
			 */
			blocoC.checkException();
			blocoD.checkException();
			
			
			
			/**
			 * APURAÇÃO DE ICMS, IPI e ST - BLOCO E
			 */
			
			/**
			 * ICMS
			 */
			MLBRTaxAssessment m_taxAssessment = MLBRTaxAssessment.get(getCtx(), p_AD_Org_ID, "ICMSPROD", p_C_Period_ID, null);
			if(m_taxAssessment != null && m_taxAssessment.get_ID() > 0)
			{				
				// E100 - ICMS
				blocoE.setrE100(EFDUtil.createRE100(dateFrom, dateTo));
				
				// E110 - gerar baseado nos blocos C e D
				blocoE.getrE100().setrE110(EFDUtil.createRE110(m_taxAssessment));
				blocoE.getrE100().setrE116(EFDUtil.createRE116(m_taxAssessment));
				
	 			// Adicionar detalhes dos ajustes do E110
				if(blocoE.getrE100().getrE110() != null)
				{
					
					// linhas de ajustes da apuração
					for (X_LBR_TaxAssessmentLine line : m_taxAssessment.getLines())
						blocoE.getrE100().addrE111(EFDUtil.createRE111(bloco0.getR0000().getUF(), true, line));
				}
				
			}
			
			
			/**
			 * ICMS ST 
			 */
			for (RC100 aux_rc100 : blocoC.getrC100())
			{

				// somente gerar registros se a NF tiver ST
				if(aux_rc100.getVL_ICMS_ST() != null  && aux_rc100.getVL_ICMS_ST().signum() == 1)
				{
					
					// RE200 - criar registro da UF no período
					RE200 re200 = EFDUtil.createRE200(aux_rc100.getUF(), dateFrom, dateTo);
					
					
					//
					if(blocoE.getrE200().contains(re200))
						re200.subtractCounter();
					else 
						blocoE.getrE200().add(re200);
					
					
					// criar o registro necessário da apuração, se já não existir
					if(blocoE.getrE200().get(blocoE.getrE200().indexOf(re200)).getrE210() == null)
						blocoE.getrE200().get(blocoE.getrE200().indexOf(re200)).setrE210(EFDUtil.createRE210());
	
					
					// Vlr Débito, Vlr Devolução de ST
					BigDecimal VL_DEVOL_ST = Env.ZERO; 
					BigDecimal VL_RETENCAO_ST = Env.ZERO;
					
					
					// linhas para extrair os valores de ST, tanto de devolução quanto débito
					for(RC190 aux_rc190 : aux_rc100.getrC190())
					{
						 // se for devolução de venda
						if (EFDUtil.isCFOPDevolST(aux_rc190.getCFOP()) && aux_rc190.getVL_ICMS_ST().signum() == 1)
							VL_DEVOL_ST = VL_DEVOL_ST.add(aux_rc190.getVL_ICMS_ST());
						
						// venda e tem débito, somar ao totalizador da UF
						else if(aux_rc100.getIND_OPER().equals("1") && aux_rc190.getVL_ICMS_ST().signum() == 1)
							VL_RETENCAO_ST = VL_RETENCAO_ST.add(aux_rc190.getVL_ICMS_ST());
					
						
					} // for RC190s
					
					
					// somar valores apurados no totalizador da NF
					blocoE.getrE200().get(blocoE.getrE200().indexOf(re200)).addValuesE210(VL_DEVOL_ST, VL_RETENCAO_ST);
					
					
					// criar registro 250 e adicionar ao RE210, um por NF para discriminar o lançamento que gera o débido/ajuste
					if(VL_RETENCAO_ST.signum() == 1)
					{
						// adicionar o RE250 ao RE210
						blocoE.getrE200().get(blocoE.getrE200().indexOf(re200)).getrE210().addrE250(
								EFDUtil.createRE250(bloco0.getR0000().getUF().equals(aux_rc100.getUF()), 
										aux_rc100.getDT_DOC(), VL_RETENCAO_ST, dateTo, aux_rc100.getNUM_DOC()));
						
					} // end if retencao > 0
					
				} // end if st > 0
			
			} // for rc100s
			
			// validar valores da substitução tributária referentes as devoluções
			blocoE.subtractReversalRE250();

			
				
			
			/** 
			 * IPI
			 */
			m_taxAssessment = MLBRTaxAssessment.get(getCtx(), p_AD_Org_ID, "IPI", p_C_Period_ID, null);
			if(m_taxAssessment != null && m_taxAssessment.get_ID() > 0)
			{				
				
				System.out.println("Apurou IPI");
				
				// E500
				blocoE.setrE500(EFDUtil.createRE500(dateFrom, dateTo));
				
				// E510 - Resumo baseado no RC170				
				for (RC100 regRC100 : blocoC.getrC100())
				{
					for ( RC190 rc190 : regRC100.getrC190())
					{
						// só gerar de registros que tenham IPI
						if(rc190.getVL_IPI().signum() == 1)
							blocoE.getrE500().addrE510(EFDUtil.createRE510(rc190));
					}
				}
				
				blocoE.getrE500().setrE520(EFDUtil.createRE520(m_taxAssessment, blocoE.getrE500().getrE510()));
			}
			

			/**
			 * INVENTÁRIO - BLOCO H
			 * 
			 * Obs.: Só gerar o Bloco H no mês de fevereiro, sendo que os 
			 * valores devem ser referentes ao mês de dezembro
			 */
			GregorianCalendar calendar = new GregorianCalendar();
			calendar.setTime(dateFrom);
			System.out.println("Mês: " + calendar.get(Calendar.MONTH));
			
			if(calendar.get(Calendar.MONTH) == 1) // (indice do calendar: 0(mês 1), 1(mês 2), 2(mês 3)...)
			{
				
				/*
				 * Definir a data do ultimo dia do ano anterior ao que está sendo gerado o SPED
				 */
				calendar.set(Calendar.MONTH, 11); // (indice do calendar: 11(mês 12))
				calendar.set(Calendar.DAY_OF_MONTH, 31);
				calendar.add(Calendar.YEAR, -1); 
				
				/*
				 * Registro RH005 com a data e o valor total do inventário. 
				 * Obs.: Valor total é atualizado ao adicionar um novo registro RH010
				 * Data: 31/12/ANO_ANTERIOR_AO_QUE_ESTA_SENDO_GERADO_O_EFD
				 */
				blocoH.setrH005(EFDUtil.createRH005(new Timestamp(calendar.getTimeInMillis())));
				
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				
				try
				{
					// carregar informações do inventário
					pstmt = DB.prepareStatement (EFDUtil.getSQLInv(), null);
					// params
					pstmt.setInt(1, p_C_Period_ID);
					pstmt.setInt(2, Env.getAD_Client_ID(getCtx()));
					pstmt.setInt(3, p_AD_Org_ID);
					pstmt.setTimestamp(4, new Timestamp(calendar.getTimeInMillis())); // Data: 31/12/ANO_ANTERIOR_AO_QUE_ESTA_SENDO_GERADO_O_EFD
					
					// rs
					rs  = pstmt.executeQuery ();
				
					/*
					 *  para cada registro do inventário, gera-se um RH010 e totaliza com o RH005
					 */
					while (rs.next())
					{
						// carregar produto
						MProduct m_product = new MProduct(getCtx(), rs.getInt("M_Product_ID"), null);
	
						// criar R0190
						R0190 r0190 = EFDUtil.createR0190(m_product);
						bloco0.addr0190(r0190);
						
						// criar R0200
						R0200 r0200 = EFDUtil.createR0200(m_product);
						bloco0.addr0200(r0200);
				
						// conta contábil
						String COD_CTA = "";
						int C_ElementValue_ID = EFDUtil.getProductAsseAcct(m_product.getM_Product_ID(), null);
						if(C_ElementValue_ID > 0)
						{
							R0500 r0500 = EFDUtil.createR0500(new MElementValue(getCtx(), C_ElementValue_ID, null), dateTo);
							bloco0.addr0500(r0500);
							COD_CTA = r0500.getCOD_CTA();
						}
						
						// indicador de quem está com o estoque
						// por enquanto apenas suporta estoque próprio
						// String IND_PROP = rs.getString("lbr_WarehouseType").equals("3RD") ? "2" :
						//		rs.getString("lbr_WarehouseType").equals("3WN") ? "1" : "0"; 					
						 
						String IND_PROP = "0";
								
						// criar registro RH010 e adicionar ao RH005
						blocoH.getrH005().addrH010(EFDUtil.createRH010(
								r0200.getCOD_ITEM(), 
								r0190.getUNID(), 
								rs.getBigDecimal("QtyOnHand"),
								rs.getBigDecimal("CurrentCostPrice"), 
								rs.getBigDecimal("CurrentCostPrice").multiply(rs.getBigDecimal("QtyOnHand")), 
								IND_PROP, 
								COD_CTA));
						
					}
				} // fim Bloco H
				catch (SQLException e)
				{
					log.log(Level.SEVERE, EFDUtil.getSQLInv(), e);
					return null;
				}
				finally{
				       DB.close(rs, pstmt);
				}
			}

			
			
			/*
			 * Inicialização dos Blocos 
			 */
			bloco0.setR0001(EFDUtil.createR0001(bloco0.getR0150().size() > 0)); // init bloco 0
			blocoC.setrC001(EFDUtil.createRC001(blocoC.getrC100().size() > 0)); // init bloco C
			blocoD.setrD001(EFDUtil.createRD001(blocoD.getrD100().size() > 0 || blocoD.getrD500().size() > 0)); // init bloco D
			blocoH.setrH001(EFDUtil.createRH001(blocoH.getrH005() != null 		// init bloco H
					&& blocoH.getrH005().getrH010().size() > 0));
			blocoE.setrE001(EFDUtil.createRE001(false));						    // init bloco E
			blocoG.setrG001(EFDUtil.createRG001(false));						// init bloco G
			bloco1.setR1001(EFDUtil.createR1001(true));						// init bloco 1
			bloco1.setR1010(EFDUtil.createR1010());
			bloco9.setR9001(EFDUtil.createR9001(true));							// init bloco 9 (sempre true)

			/*
			 * Registros Totalizadores dos Blocos
			 */
			bloco0.setR0990(EFDUtil.createR0990()); // fim do 0
			blocoC.setrC990(EFDUtil.createRC990()); // fim do C
			blocoD.setrD990(EFDUtil.createRD990()); // fim do D
			blocoE.setrE990(EFDUtil.createRE990()); // fim do E
			blocoG.setrG990(EFDUtil.createRG990()); // fim do G
			blocoH.setrH990(EFDUtil.createRH990()); // fim do H
			bloco1.setR1990(EFDUtil.createR1990()); // fim do 1
			bloco9.setR9990(EFDUtil.createR9990()); // fim do 9
			
			
			// REGISTROS DE FIM DE ARQUIVO - BLOCO 9
			bloco9.setR9900(EFDUtil.createR9900());
			
			
			// totalizador final do arquivo, criado depois que todos os outros registros já foram feitos
			bloco9.setR9999(EFDUtil.createR9999()); // fim do arquivo
			
			
			// atualizar totalizador dos R9990
			bloco9.getR9990().setQTD_LIN_9(String.valueOf(CounterSped.getBlockCounter(bloco9.getR9990().getReg())));
			
			
			// Montar resultado			 
			StringBuilder result = new StringBuilder();
			result.append(bloco0.toString());
			result.append(blocoC.toString());
			result.append(blocoD.toString());
			result.append(blocoE.toString());
			result.append(blocoG.toString());
			result.append(blocoH.toString());
			result.append(bloco1.toString());
			result.append(bloco9.toString());
			
			
			// 
			return result;
			
//		}
//		catch (Exception e) 
//		{
			
			// mapear ultimo erro para facilitar o reconhecimento
//			String className = e.getStackTrace()[0].getClassName();
//			String methodName = e.getStackTrace()[0].getMethodName();
//			int lineNumber = e.getStackTrace()[0].getLineNumber();
//			String errorMsg = e.getLocalizedMessage();
//			String error = "[" + className + "." + methodName + " Linha:" + lineNumber + " Erro: " + errorMsg + " ]";
//			
//			// mapear penultimo erro para facilitar o reconhecimento
//			className = e.getStackTrace()[1].getClassName();
//			methodName = e.getStackTrace()[1].getMethodName();
//			lineNumber = e.getStackTrace()[1].getLineNumber();
//			
//			// 
//			error = className + "." + methodName + " Linha:" + lineNumber + " Erro: " + errorMsg + " <BR> " + error;
//			
//			e.printStackTrace();
//			
//			// lançar exception para retornar ao usuário
//			throw new Exception("Falha ao gerar o EFD! " + error);
//		}
		
		// return bloco0;
	}
	
	
	
	
	public static void main(String args[])
	{
		GregorianCalendar calendar = new GregorianCalendar();
		calendar.setTime(new Timestamp(System.currentTimeMillis()));
		calendar.set(Calendar.DAY_OF_MONTH, 31);
		calendar.set(Calendar.MONTH, 11);
		calendar.add(Calendar.YEAR, -1);
		
		System.out.println(new Timestamp(calendar.getTimeInMillis()));
		
		
	}
	
}	//	ProcGenerateEF