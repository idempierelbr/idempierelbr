package org.idempierelbr.base.service;

import org.compiere.process.ProcessCall;
import org.idempierelbr.base.model.MLBRBoleto;
import org.idempierelbr.base.model.MLBRBoletoMovement;

public interface IBankCollection {
	
	public String getCampoLivre(MLBRBoleto boleto);	
	
	/**
	 * 
	 * postProcessBoleto() method will prepare the LBR_Boleto record
	 * to be used on printing and generating transmission to the bank.
	 * 
	 * It is important to implement this method to fill the data on
	 * the following fields of boleto:
	 * 
	 *    Number In Bank (NossoNumero)
	 *     LBR_NumberInBank: exactly the data that will go to transmission
	 *     LBR_Fmt_NumberInBank: the data as it will be printed on 
	 *                           the Boleto Document
	 *     
	 *    Other boleto data:
	 *     LBR_AgencyClient: the formatted Agency and Client (our contract) to be
	 *                       printed on the Boleto Document
	 *     LBR_Fmt_Billfold: the formatted billfold to be printed
	 *                       on the Boleto Document
	 *     LBR_BankUse: the formatted BankUse to be printed on the Boleto document
	 *     
	 * @param boleto
	 */
	public void postProcessBoleto(MLBRBoleto boleto);

	public ProcessCall getProcessReturn();
	
	public ProcessCall getGenerateTransmission();
	
	public void postProcessGenerated( Object generated , Object origin );

	public void postProcessReturn( Object returned , MLBRBoletoMovement mov , MLBRBoleto boleto );
	
}
