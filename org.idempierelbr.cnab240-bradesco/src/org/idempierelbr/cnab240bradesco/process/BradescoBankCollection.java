package org.idempierelbr.cnab240bradesco.process;

import org.compiere.model.MBankAccount;
import org.compiere.model.PO;
import org.compiere.process.ProcessCall;
import org.idempierelbr.cnab240bradesco.annotated.BradescoCNABRecords;
import org.idempierelbr.core.util.TextUtil;
import org.idempierelbr.openitems.model.MLBRBankAccountConvenio;
import org.idempierelbr.openitems.model.MLBRBoleto;
import org.idempierelbr.openitems.model.MLBRBoletoMovement;
import org.idempierelbr.openitems.process.IBankCollection;
import org.idempierelbr.openitems.processcnab240.CNAB240Return;
import org.idempierelbr.openitems.util.OpenItemsUtil;


public class BradescoBankCollection implements IBankCollection {

	@Override
	public String getCampoLivre(MLBRBoleto boleto) {
		String agencia = TextUtil.pad(OpenItemsUtil.getPartialText( ( (PO) boleto.getC_BankAccount()).get_ValueAsString("LBR_BankAgencyNo") , false ),'0',4,true);
		//String convenio = TextUtil.pad(OpenItemsUtil.getPartialText( boleto.getLBR_BankAccount_Convenio().getLBR_ConvenioNo() ,false )  , '0' , 7 , true );
		MBankAccount bc = new MBankAccount(boleto.getCtx(), boleto.getC_BankAccount_ID(), boleto.get_TrxName());
		
		String cc = TextUtil.pad(OpenItemsUtil.getPartialText( bc.getAccountNo() ,false )  , '0' , 7 , true );
		String docNo = boleto.getLBR_NumberInBank().substring(0, 11);
		
		String carteira = TextUtil.pad(OpenItemsUtil.getPartialText( boleto.getLBR_BankAccount_Carteira().getLBR_CarteiraNo()  ,false )  , '0' , 2 , true );

    	/*
    	 * Banco Bradesco
    	 * Formato do campo livre ( 20 a 44 ) no cÃ³digo de barras
    	 * 
    	 * 20-23   agencia cedente - sem DV
    	 * 24-25   carteira
    	 * 26-36   nosso numero - sem DV
    	 * 37-43   conta do cedente - sem DV
    	 * 44-44   zero
    	 * 
    	 */

 		String campolivre = agencia + carteira + docNo + cc + "0" ;
 		
 		return campolivre;
	}

	@Override
	public ProcessCall getProcessReturn() {
		return new CNAB240Return( new BradescoCNABRecords() , this );
	}

	@Override
	public ProcessCall getGenerateTransmission() {
		return new BradescoGenerate();
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
	
	@Override
	public void postProcessBoleto(MLBRBoleto boleto) {
		String agencia = TextUtil.pad(OpenItemsUtil.getPartialText( ( (PO) boleto.getC_BankAccount()).get_ValueAsString("LBR_BankAgencyNo") , false ),'0',4,true);
		String convenio = boleto.getLBR_BankAccount_Convenio().getLBR_ConvenioNo();
		String carteira = TextUtil.pad(OpenItemsUtil.getPartialText( boleto.getLBR_BankAccount_Carteira().getLBR_CarteiraNo()  ,false )  , '0' , 2 , true );
		String docNo = TextUtil.pad( boleto.getLBR_NumberInBank(), '0', 11, true);

		// calcula DV
		String dac = getBradescoDAC( carteira + docNo );
		String fmtNumberInBank = carteira + "/" + docNo + "-" + dac;
		boleto.setLBR_Fmt_NumberInBank(fmtNumberInBank);
		
		// armazena DV
		docNo = docNo + dac;
		boleto.setLBR_NumberInBank(docNo);
		
		boleto.setLBR_Fmt_AgencyClient( agencia + "/" + convenio );
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