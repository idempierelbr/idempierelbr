package org.idempierelbr.openitems.processcnab240;

import org.compiere.model.PO;
import org.compiere.process.ProcessCall;
import org.idempierelbr.openitems.model.MLBRBoleto;
import org.idempierelbr.openitems.model.MLBRBoletoMovement;
import org.idempierelbr.openitems.process.IBankCollection;

public class ExampleBankCollection implements IBankCollection {

	@Override
	public void postProcessBoleto(MLBRBoleto boleto) {
		
		String agencia = ( (PO) boleto.getC_BankAccount()).get_ValueAsString("LBR_BankAgencyNo");
		String convenio = boleto.getLBR_BankAccount_Convenio().getLBR_ConvenioNo();
		String carteira = boleto.getLBR_BankAccount_Carteira().getLBR_CarteiraNo();
		
		boleto.setLBR_Fmt_NumberInBank( boleto.getLBR_NumberInBank());
		boleto.setLBR_Fmt_AgencyClient( agencia + " / " + convenio );
		boleto.setLBR_Fmt_Billfold( carteira );

	}

	@Override
	public String getCampoLivre(MLBRBoleto boleto) {
		return "1234567890123456789012345";
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
		return new CNAB240Return();
	}

	@Override
	public ProcessCall getGenerateTransmission() {
		return new CNAB240Generate();
	}

}
