package com.todobom.idempierelbr.banking.sicoob.process;

import java.sql.Timestamp;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.PO;
import org.compiere.process.ProcessCall;
import org.idempierelbr.base.model.MLBRBankAccountCarteira;
import org.idempierelbr.base.model.MLBRBankAccountConvenio;
import org.idempierelbr.base.model.MLBRBoleto;
import org.idempierelbr.base.model.MLBRBoletoMovement;
import org.idempierelbr.base.service.IBankCollection;
import org.idempierelbr.base.util.OpenItemsUtil;
import org.idempierelbr.base.util.TextUtil;
import org.idempierelbr.openitems.processcnab240.CNAB240Generate;
import org.idempierelbr.openitems.processcnab240.CNAB240Return;

import com.todobom.idempierelbr.banking.sicoob.annotated.SicoobCNABRecords;
import com.todobom.idempierelbr.banking.sicoob.annotated.SicoobCNABSegmentP;
import com.todobom.idempierelbr.banking.sicoob.annotated.SicoobCNABSegmentR;

public class SicoobBankCollection implements IBankCollection {

	
	private String CalcularDigitoVerificador(String agencia, String cedente, String nossoNumero) {
		String indice = "319731973197319731973";
		String Num;
		String Res;		
		Integer base;
		Integer digito;
		
		Res = "0";

		   Num =  
				   TextUtil.pad(OpenItemsUtil.getPartialText( agencia , false ),'0',4,true)+
				   TextUtil.pad(OpenItemsUtil.getPartialText( cedente , false ),'0',10,true)+
				   TextUtil.pad(OpenItemsUtil.getPartialText( nossoNumero , false ),'0',7,true);

		   base = 0;
		   for (int j = 0; j < Num.length(); j++) {
			   base = base + ( Integer.parseInt(Num.substring(j, j+1)) * Integer.parseInt(indice.substring(j,j+1)) );
		} 
		   
		   digito = 11-((  base )-( (int)(base/11) * 11));
		   //(Se o Resto for igual a 0 ou 1 ent�o o DV � igual a 0)
		   if (digito > 9) 
		      digito = 0;
		   Res = digito.toString();
		return Res;
	}	
	

	@Override
	public String getCampoLivre(MLBRBoleto boleto) {

		String agencia = TextUtil.pad(OpenItemsUtil.getPartialText( ( (PO) boleto.getC_BankAccount()).get_ValueAsString("LBR_BankAgencyNo") , false ),'0',4,true);
		
		String numeroCarteira = TextUtil.pad(OpenItemsUtil.getPartialText( boleto.getLBR_BankAccount_Carteira().getLBR_CarteiraNo(),false ),'0',1,true);
		
		String modalidade =  TextUtil.pad(OpenItemsUtil.getPartialText(boleto.getLBR_BankAccount_Carteira().getLBR_CarteiraNo(),false),'0',2,true);
		
		String convenio = TextUtil.pad(OpenItemsUtil.getPartialText(boleto.getLBR_BankAccount_Convenio().getLBR_ConvenioNo() , false ),'0',7,true);
		
		String docNo = TextUtil.pad(boleto.getLBR_NumberInBank(),'0',7,true);	
		
		String dvVerificador = CalcularDigitoVerificador(agencia , convenio, docNo);
		
		String campoLivre;
		campoLivre = numeroCarteira + agencia + modalidade+ convenio+docNo+dvVerificador+"001" ;
		return campoLivre;
	}

	@Override
	public void postProcessBoleto(MLBRBoleto boleto) {
		String agencia = TextUtil.pad(OpenItemsUtil.getPartialText( ( (PO) boleto.getC_BankAccount()).get_ValueAsString("LBR_BankAgencyNo") , false ),'0',4,true);
		
		String convenio = TextUtil.pad(OpenItemsUtil.getPartialText(boleto.getLBR_BankAccount_Convenio().getLBR_ConvenioNo() , false ),'0',7,true);
		
		String docNo = TextUtil.pad(boleto.getLBR_NumberInBank(),'0',7,true);	
		
		String dvVerificador = CalcularDigitoVerificador(agencia , convenio, docNo);
		
		//String fmtAgencia = ( (PO) boleto.getC_BankAccount()).get_ValueAsString("LBR_BankAgencyNo");
		//String fmtConta = boleto.getC_BankAccount().getAccountNo();
		
		boleto.setLBR_Fmt_AgencyClient( agencia + " / " + convenio );
		
		boleto.setLBR_Fmt_Billfold( boleto.getLBR_BankAccount_Carteira().getLBR_CarteiraNo());
		
		boleto.setLBR_Fmt_NumberInBank(Integer.parseInt(docNo)+"-"+dvVerificador);
		
	}

	@Override
	public void postProcessGenerated(Object generated, Object origin) {

		String generatedClassName = generated.getClass().getSimpleName();
		String originClassName = origin.getClass().getSimpleName();
		
		// personaliza header do arquivo de cobrança
		if (  generatedClassName.equals("SicoobCNABHeaderArquivo") 
				&& originClassName.equals("MLBRBankAccountConvenio")) {
			MLBRBankAccountConvenio convenio = ((MLBRBankAccountConvenio) origin );
			MLBRBankAccountCarteira[] carteiras = convenio.getCarteiras();
			if (carteiras.length != 1) {
				throw new AdempiereException("Sicoob exige exatamente 1 carteira por convênio de cobrança");
			}		
		}
		else if (  generatedClassName.equals("SicoobCNABSegmentP") 
				&& originClassName.equals("MLBRBoletoMovement")) 
		{	
			MLBRBoletoMovement mov = (MLBRBoletoMovement) origin ;
			MLBRBoleto boleto = (MLBRBoleto) mov.getLBR_Boleto();

			String convenio = mov.getLBR_Boleto().getLBR_BankAccount_Convenio().getLBR_ConvenioNo();
			
			String modalidade =  TextUtil.pad(OpenItemsUtil.getPartialText(boleto.getLBR_BankAccount_Carteira().getLBR_CarteiraNo(),false),'0',2,true);			
			
			SicoobCNABSegmentP segP = (SicoobCNABSegmentP) generated;
			segP.setConvenio(convenio);
			
			segP.setModalidadeCarteira(modalidade);

		}
		else if (  generatedClassName.equals("SicoobCNABSegmentR") 
				&& originClassName.equals("MLBRBoletoMovement")) 
		{	
			MLBRBoletoMovement mov = (MLBRBoletoMovement) origin ;
			MLBRBoleto boleto = (MLBRBoleto) mov.getLBR_Boleto();

			SicoobCNABSegmentR segR = (SicoobCNABSegmentR) generated;
			segR.setDataEmissao(new java.util.Date(boleto.getDateDoc().getTime()));
			
			Timestamp LBR_InterestDate = null;
			
			LBR_InterestDate = mov.getLBR_InterestDate();
			
			if (LBR_InterestDate!=null)
				segR.setDataJurosMora(new java.util.Date(LBR_InterestDate.getTime()));
		}
		
		
	}
	
	
	@Override
	public void postProcessReturn(Object returned, MLBRBoletoMovement mov,
			MLBRBoleto boleto) {
		// TODO Auto-generated method stub

	}

	@Override
	public ProcessCall getProcessReturn() {
		return new CNAB240Return( new SicoobCNABRecords() , this );
	}

	@Override
	public ProcessCall getGenerateTransmission() {
		return new CNAB240Generate( new SicoobCNABRecords() , this );
	}

}
