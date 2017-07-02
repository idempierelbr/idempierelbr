package com.todobom.idempierelbr.banking.itau.process;

import org.compiere.model.PO;
import org.compiere.process.ProcessCall;
import org.idempierelbr.cnab240.annotated.CNABBaseRecord;
import org.idempierelbr.cnab240.annotated.CNABSegmentBaseRecord;
import org.idempierelbr.core.util.TextUtil;
import org.idempierelbr.openitems.model.MLBRBoleto;
import org.idempierelbr.openitems.model.MLBRBoletoMovement;
import org.idempierelbr.openitems.process.IBankCollection;
import org.idempierelbr.openitems.processcnab240.CNAB240Generate;
import org.idempierelbr.openitems.processcnab240.CNAB240Return;
import org.idempierelbr.openitems.util.OpenItemsUtil;

import com.todobom.idempierelbr.banking.itau.annotated.ItauCNABRecords;
import com.todobom.idempierelbr.banking.itau.annotated.ItauCNABSegmentP;

public class ItauBankCollection implements IBankCollection {

	private static String getDocDAC ( String agencia , String conta , String carteira , String docNo ) {
		// 126, 131, 146, 150 e 168 utilizam apenas carteira e docNo para o DAC
		String docDAC;
		if ( carteira.equals("126") ||
			 carteira.equals("131") ||
			 carteira.equals("146") ||
			 carteira.equals("150") ||
			 carteira.equals("168") ) {
			docDAC = OpenItemsUtil.genTypeAbleDV(  carteira+docNo );
		} else {
			docDAC = OpenItemsUtil.genTypeAbleDV(  agencia+conta+carteira+docNo );
		}
	
		return ( docDAC );
	}
	
	@Override
	public void postProcessBoleto(MLBRBoleto boleto) {
		
		// usado apenas para carteiras com emissão pelo cliente
		if ( ! boleto.getLBR_IssueType().equals(MLBRBoleto.LBR_ISSUETYPE_2_ClienteEmite) ) {
			return;
		}
		
		String agencia = OpenItemsUtil.getPartialText( ( (PO) boleto.getC_BankAccount()).get_ValueAsString("LBR_BankAgencyNo") , false );
		String conta = OpenItemsUtil.getPartialText(boleto.getC_BankAccount().getAccountNo(),false);

		// DV da agencia + conta
		String agAccDAC = OpenItemsUtil.getPartialText(boleto.getC_BankAccount().getAccountNo(),true);

		String carteira = TextUtil.pad(boleto.getLBR_BankAccount_Carteira().getLBR_CarteiraNo(),'0',3,true);
		String docNo = TextUtil.pad(boleto.getLBR_NumberInBank(),'0',8,true);

		// calcula digito do documento
		String docDAC = getDocDAC ( TextUtil.pad(agencia,'0',4,true) , TextUtil.pad(conta,'0',5,true) , carteira , docNo );
		
		// formata nosso número para o boleto impresso
		boleto.setLBR_Fmt_NumberInBank(carteira + "/" + docNo + "-" + docDAC );

		// armazena o "Nosso Número" com o DAC
		boleto.setLBR_NumberInBank( boleto.getLBR_NumberInBank() + docDAC );

		boleto.setLBR_Fmt_AgencyClient( agencia + " / " + conta + "-" + agAccDAC );
		
		// FIXME: melhorar deteção de tipo de carteira
		String carteiraFmt = boleto.getLBR_BankAccount_Carteira().getLBR_CarteiraNo();
		
		boleto.setLBR_Fmt_Billfold( carteiraFmt );
		
	}

	@Override
	public String getCampoLivre(MLBRBoleto boleto) {

		// obtem dados nos tamanhos corretos
		String agencia = TextUtil.pad(OpenItemsUtil.getPartialText( ( (PO) boleto.getC_BankAccount()).get_ValueAsString("LBR_BankAgencyNo") , false ),'0',4,true);
		String conta = TextUtil.pad(OpenItemsUtil.getPartialText(boleto.getC_BankAccount().getAccountNo(),false),'0',5,true);
		String carteira = TextUtil.pad(boleto.getLBR_BankAccount_Carteira().getLBR_CarteiraNo(),'0',3,true);
		
		// número no banco já é armazenado com o DAC - por isso 9 posições
		String docNo = TextUtil.pad(boleto.getLBR_NumberInBank(),'0',9,true);

		// calcula DAC da agencia + conta
		String agAccDAC = OpenItemsUtil.genTypeAbleDV ( agencia + conta );
		
 		String campolivre = carteira + docNo + agencia + conta + agAccDAC + "000" ;
		return campolivre;
	}

	@Override
	public void postProcessGenerated(Object generated, Object origin) {
		
		CNABBaseRecord record = (CNABBaseRecord) generated;
		
		switch (record.getTipoRegistro()) {

		case 3:		// se for segmento
			char segType = ((CNABSegmentBaseRecord) record).getTipoSegmento().charAt(0);
			MLBRBoletoMovement mov = (MLBRBoletoMovement) origin;
			switch (segType) {
			case 'P':
				((ItauCNABSegmentP) record).setNumeroCarteira(  Integer.parseInt( mov.getLBR_Boleto().getLBR_BankAccount_Carteira().getLBR_CarteiraNo() ) );
				break;
			} // segType

			break;
		} // tipoRegistro
		
	}

	@Override
	public void postProcessReturn(
			Object returned, MLBRBoletoMovement mov,
			MLBRBoleto boleto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public ProcessCall getProcessReturn() {
		return new CNAB240Return( new ItauCNABRecords() , this );
	}

	@Override
	public ProcessCall getGenerateTransmission() {
		return new CNAB240Generate( new ItauCNABRecords() , this );
	}

}
