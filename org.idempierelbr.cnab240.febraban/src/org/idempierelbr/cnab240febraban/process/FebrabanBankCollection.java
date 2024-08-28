package org.idempierelbr.cnab240febraban.process;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.process.ProcessCall;
import org.idempierelbr.base.model.MLBRBoleto;
import org.idempierelbr.base.model.MLBRBoletoMovement;
import org.idempierelbr.base.service.IBankCollection;
import org.idempierelbr.cnab240.annotated.CNABRecords;
import org.idempierelbr.openitems.processcnab240.CNAB240Return;

public class FebrabanBankCollection implements IBankCollection {

	@Override
	public String getCampoLivre(MLBRBoleto boleto) {
		throw new AdempiereException("Plugin FEBRABAN não suporta emissão de boletos pela empresa");
	}

	@Override
	public void postProcessBoleto(MLBRBoleto boleto) {
		// TODO Auto-generated method stub
	}

	@Override
	public ProcessCall getProcessReturn() {
		return new CNAB240Return( new CNABRecords() , this );
	}

	@Override
	public ProcessCall getGenerateTransmission() {
		return new FebrabanGenerate();
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

}
