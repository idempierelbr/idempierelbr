package com.todobom.idempierelbr.banking.bradesco.process;

import org.compiere.model.PO;
import org.compiere.process.ProcessCall;
import org.idempierelbr.core.util.TextUtil;
import org.idempierelbr.openitems.model.MLBRBoleto;
import org.idempierelbr.openitems.model.MLBRBoletoMovement;
import org.idempierelbr.openitems.process.IBankCollection;
import org.idempierelbr.openitems.processcnab240.CNAB240Generate;
import org.idempierelbr.openitems.processcnab240.CNAB240Return;
import org.idempierelbr.openitems.util.OpenItemsUtil;

import com.todobom.idempierelbr.banking.bradesco.annotated.BradescoCNABRecords;
import com.todobom.idempierelbr.banking.bradesco.annotated.BradescoCNABSegmentP;


public class BradescoBankCollection implements IBankCollection {

	@Override
	public String getCampoLivre(MLBRBoleto boleto) {
		String agencia = TextUtil.pad(OpenItemsUtil.getPartialText( ( (PO) boleto.getC_BankAccount()).get_ValueAsString("LBR_BankAgencyNo") , false ),'0',4,true);
		String conta = TextUtil.pad(OpenItemsUtil.getPartialText( ( (PO) boleto.getC_BankAccount()).get_ValueAsString("AccountNo"), false) , '0' , 7 , true );
		String docNo = boleto.getLBR_NumberInBank().substring(0, 11);
		
		String carteira = TextUtil.pad(OpenItemsUtil.getPartialText( boleto.getLBR_BankAccount_Carteira().getLBR_CarteiraNo()  ,false )  , '0' , 2 , true );

    	/*
    	 * Banco Bradesco
    	 * Formato do campo livre ( 20 a 44 ) no código de barras
    	 * 
    	 * 20-23   agencia cedente - sem DV
    	 * 24-25   carteira
    	 * 26-36   nosso numero - sem DV
    	 * 37-43   conta do cedente - sem DV
    	 * 44-44   zero
    	 * 
    	 */

 		String campolivre = agencia + carteira + docNo + conta + "0" ;
 		
 		return campolivre;
	}

	@Override
	public ProcessCall getProcessReturn() {
		return new CNAB240Return( new BradescoCNABRecords() , this );
	}

	@Override
	public ProcessCall getGenerateTransmission() {
		return new CNAB240Generate( new BradescoCNABRecords() , this );
	}


	@Override
	public void postProcessGenerated(Object generated, Object origin) {
		String generatedClassName = generated.getClass().getSimpleName();
		String originClassName = origin.getClass().getSimpleName();
		
		// personaliza segmento P
		if (  generatedClassName.equals("BradescoCNABSegmentP") 
				&& originClassName.equals("MLBRBoletoMovement")) {
			MLBRBoletoMovement mov = ((MLBRBoletoMovement) origin );

			// define número da carteira
			((BradescoCNABSegmentP) generated).setNumeroCarteira( Integer.parseInt( mov.getLBR_Boleto().getLBR_BankAccount_Carteira().getLBR_CarteiraNo() ) );
		}
	}

	@Override
	public void postProcessReturn(Object returned, MLBRBoletoMovement mov,
			MLBRBoleto boleto) {
		// TODO Auto-generated method stub
		
	}
	
	
	@Override
	public void postProcessBoleto(MLBRBoleto boleto) {
		String agencia = TextUtil.pad(OpenItemsUtil.getPartialText( ( (PO) boleto.getC_BankAccount()).get_ValueAsString("LBR_BankAgencyNo") , false ),'0',4,true);
		String conta = TextUtil.pad( ( (PO) boleto.getC_BankAccount()).get_ValueAsString("AccountNo") ,'0',9,true);
		String carteira = TextUtil.pad(OpenItemsUtil.getPartialText( boleto.getLBR_BankAccount_Carteira().getLBR_CarteiraNo()  ,false )  , '0' , 2 , true );
		String docNo = TextUtil.pad( boleto.getLBR_NumberInBank(), '0', 11, true);

		// calcula DV
		String dac = getBradescoDAC( carteira + docNo );
		String fmtNumberInBank = carteira + "/" + docNo + "-" + dac;
		boleto.setLBR_Fmt_NumberInBank(fmtNumberInBank);
		
		// armazena DV
		docNo = docNo + dac;
		boleto.setLBR_NumberInBank(docNo);
		
		boleto.setLBR_Fmt_AgencyClient( agencia + "/" + conta );
		boleto.setLBR_Fmt_Billfold( boleto.getLBR_BankAccount_Carteira().getLBR_CarteiraNo() );
	}


	private String getBradescoDAC(String campo) {

		int dac = (11-(OpenItemsUtil.dacWeightedSum(campo,2,7)%11));

		if ( dac == 11 ) {
			dac = 0;
		} else if ( dac == 10 ) {
			return "P";
		}
		
        return ((Integer)dac).toString();
    }

}
