package com.todobom.idempierelbr.banking.caixa.process;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.PO;
import org.compiere.process.ProcessCall;
import org.idempierelbr.cnab240.utils.ArquivoUtils;
import org.idempierelbr.openitems.model.MLBRBoleto;
import org.idempierelbr.openitems.model.MLBRBoletoMovement;
import org.idempierelbr.openitems.process.IBankCollection;
import org.idempierelbr.openitems.processcnab240.CNAB240Generate;
import org.idempierelbr.openitems.processcnab240.CNAB240Return;
import org.idempierelbr.openitems.util.OpenItemsUtil;

import com.todobom.idempierelbr.banking.caixa.annotated.CaixaCNABRecords;
import com.todobom.idempierelbr.banking.caixa.annotated.CaixaCNABSegmentP;

/**
 * 
 * @author Claudemir Todo Bom
 *
 * Patrocinado por FIT Soluções - www.fitsolucoes.biz
 *
 * LICENÇA: GPLv2 - http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt
 *
 */
public class CaixaBankCollection implements IBankCollection {

	@Override
	public ProcessCall getProcessReturn() {
		return new CNAB240Return( new CaixaCNABRecords() , this );
	}


	@Override
	public ProcessCall getGenerateTransmission() {
		return new CNAB240Generate( new CaixaCNABRecords() , this );
	}

	/**
	 * 
	 * Calcula DV com peso 2 a 9, 11 - resto da divisão da soma por 11, 
	 * valor igual a 10 retorna 0.
	 * 
	 * @param input
	 * @return
	 */
	private String CaixaDV(String input) {
		int soma = OpenItemsUtil.dacWeightedSum(input, 2, 9);

		int dac = 11-(soma%11);
		if (dac==10) {
			return "0";
		}
		return Integer.toString(dac);
	}
	
	@Override
	public String getCampoLivre(MLBRBoleto boleto) {
		// Obtém agência sem dígito
		String agencia = OpenItemsUtil.getPartialText( ( (PO) boleto.getC_BankAccount()).get_ValueAsString("LBR_BankAgencyNo") , false );
		// Obtém número do convênio
		String convenio = boleto.getLBR_BankAccount_Convenio().getLBR_ConvenioNo();
		
		// Formata com zeros a esquerda
		agencia = ArquivoUtils.getCampoNumerico(agencia,4);
		convenio = ArquivoUtils.getCampoNumerico(convenio,6);

		// Tipo de cobrança
		String tipoCobranca = boleto.getLBR_CollectionRegType();
		
		// Emissão do boleto pelo Cedente = 4
		String emissor = "4";

		// Nosso número com 15 dígitos
		String nossoNumero = ArquivoUtils.getCampoNumerico(boleto.getLBR_NumberInBank(),15);

		// Formata o campo livre
		String campoLivre = 
				convenio + 
				CaixaDV(convenio) + 
				nossoNumero.substring(0, 3) +
				tipoCobranca +
				nossoNumero.substring(3, 6) +
				emissor +
				nossoNumero.substring(6,15);
		
		// Retorna campo livre com dígito verificador
		return ( campoLivre + CaixaDV(campoLivre) );
	}

	@Override
	public void postProcessBoleto(MLBRBoleto boleto) {
		// Obtém agência sem dígito
		String agencia = OpenItemsUtil.getPartialText( ( (PO) boleto.getC_BankAccount()).get_ValueAsString("LBR_BankAgencyNo") , false );
		// Obtém número do convênio
		String convenio = boleto.getLBR_BankAccount_Convenio().getLBR_ConvenioNo();
		
		// Formata com zeros a esquerda
		agencia = ArquivoUtils.getCampoNumerico(agencia,4);
		convenio = ArquivoUtils.getCampoNumerico(convenio,6);

		// Calcula DV de Agência/Cedente e formata campo
		boleto.setLBR_Fmt_AgencyClient( agencia + "/" + convenio + "-" + CaixaDV(convenio) );		

		// Tipo de cobrança
		String tipoCobranca = boleto.getLBR_CollectionRegType();
		
		// Emissão do boleto pelo Cedente = 4
		String emissor = "4";

		// Nosso número com 15 dígitos
		String nossoNumero = ArquivoUtils.getCampoNumerico(boleto.getLBR_NumberInBank(),15);
		
		// Dígito verificador do Nosso Número
		String nnDv = CaixaDV(tipoCobranca + emissor + nossoNumero);

		// Formata nosso número para o boleto impresso
		boleto.setLBR_Fmt_NumberInBank( tipoCobranca + emissor + "/" + nossoNumero + "-" + nnDv);


		String carteiraFmt;
		// Formata Carteira
		if (tipoCobranca.equals("1")) {
			carteiraFmt = "RG";
		} else if (tipoCobranca.equals("2") ) {
			carteiraFmt = "SR";
		} else {
			throw new AdempiereException("Suportadas apenas cobrança com ou sem registro");
		}
		
		boleto.setLBR_Fmt_Billfold( carteiraFmt );

	}

	@Override
	public void postProcessGenerated(Object generated, Object origin) {

		String generatedClassName = generated.getClass().getSimpleName();
		String originClassName = origin.getClass().getSimpleName();
		
		// personaliza header do arquivo de cobrança
		if (  generatedClassName.equals("CaixaCNABSegmentP") 
				&& originClassName.equals("MLBRBoletoMovement")) {
			MLBRBoletoMovement mov = (MLBRBoletoMovement) origin ;
			MLBRBoleto boleto = (MLBRBoleto) mov.getLBR_Boleto();
			String convenio = mov.getLBR_Boleto().getLBR_BankAccount_Convenio().getLBR_ConvenioNo();
			
			CaixaCNABSegmentP segP = (CaixaCNABSegmentP) generated;
			segP.setConvenio(convenio);

			// Tipo de cobrança
			String tipoCobranca = boleto.getLBR_CollectionRegType();
			
			int carteiraFmt;
			if (tipoCobranca.equals("1")) {
				carteiraFmt = 14;
			} else if (tipoCobranca.equals("2") ) {
				carteiraFmt = 24;
			} else {
				throw new AdempiereException("Tipo de cobrança não suportado:" + tipoCobranca);
			}
			
			segP.setModalidadeCarteira(carteiraFmt);

		}
	}

	@Override
	public void postProcessReturn(Object returned, MLBRBoletoMovement mov, MLBRBoleto boleto) {
		// TODO Auto-generated method stub

	}

}
