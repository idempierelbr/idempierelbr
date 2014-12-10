package org.idempierelbr.cnab240bradesco.process;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.process.ProcessCall;
import org.idempierelbr.cnab240bradesco.annotated.BradescoCNABRecords;
import org.idempierelbr.openitems.model.MLBRBoleto;
import org.idempierelbr.openitems.model.MLBRBoletoMovement;
import org.idempierelbr.openitems.process.IBankCollection;
import org.idempierelbr.openitems.processcnab240.CNAB240Return;

public class BradescoBankCollection implements IBankCollection {

	@Override
	public String getCampoLivre(MLBRBoleto boleto) {
		throw new AdempiereException("Plugin do Bradesco não suporta emissão de boleto pela empresa");
	}

	@Override
	public void postProcessBoleto(MLBRBoleto boleto) {
		// TODO Auto-generated method stub
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
		// Check status flags based on return movement code
		String returnMovCode = mov.getLBR_Cob_Movimento().getValue();
		
		// 06 - Liquidação
		// 17 - Liquidação Após Baixa
		if (returnMovCode.equals("06") || returnMovCode.equals("17")) 
			boleto.setIsPaid(true);
		
		// 09 - Baixa
		// 54 - Confirmação da Instrução de Baixa de Título Negativado
		else if (returnMovCode.equals("09") || returnMovCode.equals("54"))
			boleto.setLBR_IsBaixado(true);
		
		// 19 - Confirmação Instrução de Protesto
		// 23 - Remessa a Cartório
		// 47 - Instrução Protesto fins Falimentares
		else if (returnMovCode.equals("19") || returnMovCode.equals("23") || returnMovCode.equals("47"))
			boleto.setLBR_IsProtested(true);
		
		// 20 - Confirmação Instrução de Sustação
		// 24 - Retirada de Cartório
		else if (returnMovCode.equals("20") || returnMovCode.equals("24"))
			boleto.setLBR_IsSustado(true);
		
		// 25 - Protestado e Baixado
		else if (returnMovCode.equals("25")) {
			boleto.setLBR_IsProtested(true);
			boleto.setLBR_IsBaixado(true);
		}
	}

}
