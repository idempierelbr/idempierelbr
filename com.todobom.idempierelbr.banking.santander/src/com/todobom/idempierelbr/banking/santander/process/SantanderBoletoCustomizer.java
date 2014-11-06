package com.todobom.idempierelbr.banking.santander.process;

import org.compiere.model.PO;
import org.compiere.process.ProcessCall;
import org.idempierelbr.cnab240.utils.ArquivoUtils;
import org.idempierelbr.openitems.model.MLBRBoleto;
import org.idempierelbr.openitems.model.MLBRBoletoMovement;
import org.idempierelbr.openitems.process.IBankCollection;
import org.idempierelbr.openitems.processcnab240.CNAB240Generate;
import org.idempierelbr.openitems.processcnab240.CNAB240Return;
import org.idempierelbr.openitems.util.OpenItemsUtil;

import com.todobom.idempierelbr.banking.santander.annotated.SantanderCNABRecords;
import com.todobom.idempierelbr.banking.santander.utils.SantanderUtils;

public class SantanderBoletoCustomizer implements IBankCollection {

	@Override
	public boolean postProcessBoleto(MLBRBoleto boleto) {
		
		String agencia = OpenItemsUtil.getPartialText( ( (PO) boleto.getC_BankAccount()).get_ValueAsString("LBR_BankAgencyNo") , false );
		String convenio = boleto.getLBR_BankAccount_Convenio().getLBR_ConvenioNo();

		// formata nosso número para o boleto impresso
		boleto.setLBR_Fmt_NumberInBank( SantanderUtils.addFormattedDAC(boleto.getLBR_NumberInBank()));
		
		// adiciona dv ao nosso número limpo
		boleto.setLBR_NumberInBank(SantanderUtils.addDAC(boleto.getLBR_NumberInBank()));

		boleto.setLBR_Fmt_AgencyClient( agencia + " / " + convenio );
		
		// FIXME: melhorar deteção de tipo de carteira
		String carteiraFmt = "";
		if (boleto.getLBR_CarteiraType().equals("5")) {
			carteiraFmt = "RCR";
		} else if (boleto.getLBR_CollectionRegType().equals("1") ) {
			carteiraFmt = "ECR";
		} else if (boleto.getLBR_CollectionRegType().equals("2") ) {
			carteiraFmt = "CSR";
		}
		
		boleto.setLBR_Fmt_Billfold( carteiraFmt );
		
		return true;
	}

	@Override
	public String getCampoLivre(MLBRBoleto boleto) {

		String convenio = boleto.getLBR_BankAccount_Convenio().getLBR_ConvenioNo();
		
		String cl = "9";
		cl += ArquivoUtils.getCampoNumerico(convenio,7);
		cl += ArquivoUtils.getCampoNumerico(boleto.getLBR_NumberInBank(),13);
		cl += "0";
		if (boleto.getLBR_CollectionRegType().equals("1") ) {
			cl += "101";
		} else {
			cl += "102";
		}
		
		return cl;
	}

	@Override
	public void postProcessGenerated(Object generated, Object origin) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void postProcessReturn(
			Object returned, MLBRBoletoMovement mov,
			MLBRBoleto boleto) {
		// TODO Auto-generated method stub
		
	}
	
	@Override
	public ProcessCall getProcessReturn() {
		return new CNAB240Return( new SantanderCNABRecords() , this );
	}


	@Override
	public ProcessCall getGenerateTransmission() {
		return new CNAB240Generate( new SantanderCNABRecords() , this );
	}



}
