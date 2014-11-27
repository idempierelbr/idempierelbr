package com.todobom.idempierelbr.banking.banrisul.process;

import org.compiere.model.PO;
import org.compiere.process.ProcessCall;
import org.idempierelbr.core.util.TextUtil;
import org.idempierelbr.openitems.model.MLBRBoleto;
import org.idempierelbr.openitems.model.MLBRBoletoMovement;
import org.idempierelbr.openitems.process.IBankCollection;
import org.idempierelbr.openitems.processcnab240.CNAB240Generate;
import org.idempierelbr.openitems.processcnab240.CNAB240Return;
import org.idempierelbr.openitems.util.OpenItemsUtil;

import com.todobom.idempierelbr.banking.banrisul.annotated.BanrisulCNABRecords;

public class BanrisulBankCollection implements IBankCollection {

	
	public static String dacMod10and11( String input ) {
		int soma = OpenItemsUtil.dacWeightedSum(input, 2, 1 , false , true );

		int firstdac = 10-(soma%10);
		if (firstdac==10) {
			firstdac = 0;
		}

		soma = OpenItemsUtil.dacWeightedSum(input + Integer.toString(firstdac) ,  2, 7);
		int rest = (soma%11);
		
		// incrementa o primeiro digito e repete tudo se o resto for 1 
		if (rest == 1) {
			firstdac++;
			if (firstdac>9) {
				firstdac=0;
			}
			soma = OpenItemsUtil.dacWeightedSum(input + Integer.toString(firstdac) ,  2, 7);
			rest = (soma%11);
		}
		
		int secndac=0;
		if (rest > 0) {
			secndac = 11-rest;
		}

		return Integer.toString(firstdac)+Integer.toString(secndac);
	}

	
	@Override
	public String getCampoLivre(MLBRBoleto boleto) {
		String agencia = TextUtil.pad(OpenItemsUtil.getPartialText( ( (PO) boleto.getC_BankAccount()).get_ValueAsString("LBR_BankAgencyNo") , false ),'0',4,true);
		String convenio = TextUtil.pad( boleto.getLBR_BankAccount_Convenio().getLBR_ConvenioNo().trim().replaceAll("[^0-9]*", "") , '0' , 9 , true );
		String docNo = boleto.getLBR_NumberInBank().substring(0, 8);

    	/*
    	 * Banco Banrisul
    	 * Formato do campo livre ( 20 a 44 ) no código de barras
    	 * 
    	 * 20-20   produto - "2" - emitido pelo cliente
    	 * 21-21   constante "1"
    	 * 22-32   agencia e cedente sem numeros de controle
    	 * 33-40   nosso numero - sem DV
    	 * 41-42   Constante "40"
    	 * 43-44   DV duplo sobre as posicoes 20 a 42 
    	 * 
    	 * TODO: suportar reimpressao de boleto emitido pelo banco (posicao 20="1")
    	 * 
    	 */

 		String campolivre = "21" + agencia + convenio + docNo + "40" ;
 		campolivre = campolivre+dacMod10and11(campolivre);
 		
 		return campolivre;
	}

	@Override
	public void postProcessBoleto(MLBRBoleto boleto) {
		String agencia = TextUtil.pad(OpenItemsUtil.getPartialText( ( (PO) boleto.getC_BankAccount()).get_ValueAsString("LBR_BankAgencyNo") , false ),'0',4,true);
		String convenio = boleto.getLBR_BankAccount_Convenio().getLBR_ConvenioNo();
		
		String numberInBank = TextUtil.pad( boleto.getLBR_NumberInBank(), '0', 8, true);
		String dac = dacMod10and11( numberInBank );
		String fmtNumberInBank = numberInBank + "-" + dac;
		numberInBank = numberInBank + dac;
		
		boleto.setLBR_NumberInBank(numberInBank);
		boleto.setLBR_Fmt_NumberInBank(fmtNumberInBank);
		
		boleto.setLBR_Fmt_AgencyClient( agencia + "/" + convenio );
		boleto.setLBR_Fmt_Billfold( boleto.getLBR_BankAccount_Carteira().getLBR_CarteiraNo() );
		
	}

	@Override
	public ProcessCall getProcessReturn() {
		return new CNAB240Return( new BanrisulCNABRecords() , this );
	}

	@Override
	public ProcessCall getGenerateTransmission() {
		return new CNAB240Generate( new BanrisulCNABRecords() , this );
	}


	@Override
	public void postProcessGenerated(Object generated, Object origin) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void postProcessReturn(Object returned, MLBRBoletoMovement mov,
			MLBRBoleto boleto) {
		// TODO Auto-generated method stub
		
	}
	
	
	// usar para fazer a homologação - necessário enviar 100 códigos calculados
	public static void main(String [ ] args) {
		// teste para os DAC

		for ( int i = 10000000 ; i < 10000100 ; i++ ) {
			System.out.printf("%s-%s\n", Integer.toString(i) , dacMod10and11(Integer.toString(i)));
		}
	}

}
