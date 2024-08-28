package com.todobom.idempierelbr.banking.bancodobrasil.process;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.PO;
import org.compiere.process.ProcessCall;
import org.idempierelbr.base.model.MLBRBankAccountCarteira;
import org.idempierelbr.base.model.MLBRBankAccountConvenio;
import org.idempierelbr.base.model.MLBRBoleto;
import org.idempierelbr.base.model.MLBRBoletoMovement;
import org.idempierelbr.base.service.IBankCollection;
import org.idempierelbr.base.util.OpenItemsUtil;
import org.idempierelbr.base.util.TextUtil;
import org.idempierelbr.openitems.processcnab240.CNAB240Generate;
import org.idempierelbr.openitems.processcnab240.CNAB240Return;

import com.todobom.idempierelbr.banking.bancodobrasil.annotated.BancoDoBrasilCNABHeaderArquivo;
import com.todobom.idempierelbr.banking.bancodobrasil.annotated.BancoDoBrasilCNABRecords;

public class BancoDoBrasilBankCollection implements IBankCollection {

	public String dacNNMod11( String input ) {
		int soma = OpenItemsUtil.dacWeightedSum(input, 9, 2);

		int dac = soma%11;
		if (dac==10) {
			return "X";
		}
		return Integer.toString(dac);
	}

	@Override
	public String getCampoLivre(MLBRBoleto boleto) {

		String agencia = TextUtil.pad(OpenItemsUtil.getPartialText( ( (PO) boleto.getC_BankAccount()).get_ValueAsString("LBR_BankAgencyNo") , false ),'0',4,true);
		String conta = TextUtil.pad(OpenItemsUtil.getPartialText(boleto.getC_BankAccount().getAccountNo(),false),'0',8,true);
		String convenio = boleto.getLBR_BankAccount_Convenio().getLBR_ConvenioNo();
		String numeroCarteira = TextUtil.pad(OpenItemsUtil.getPartialText( boleto.getLBR_BankAccount_Carteira().getLBR_CarteiraNo(),false ),'0',2,true);
		String numberInBank = boleto.getLBR_NumberInBank();
		int convLen = convenio.length();
		
		String campoLivre;
		switch (convLen) {
		case 4:
			campoLivre = numberInBank.substring(0, 11) + agencia + conta + numeroCarteira;
			break;
		case 6:
			campoLivre = numberInBank.substring(0, 11) + agencia + conta + numeroCarteira;
			break;
		case 7:
			campoLivre = "000000" + numberInBank + numeroCarteira;
			break;
		default:
			throw new AdempiereException("Convênio não reconhecido");
		}
		
		return campoLivre;
	}

	@Override
	public void postProcessBoleto(MLBRBoleto boleto) {
		String fmtAgencia = ( (PO) boleto.getC_BankAccount()).get_ValueAsString("LBR_BankAgencyNo");
		String fmtConta = boleto.getC_BankAccount().getAccountNo();
		String convenio = boleto.getLBR_BankAccount_Convenio().getLBR_ConvenioNo();
		int convLen = convenio.length();
		
		String numberInBank;
		String fmtNumberInBank = "";
		String dv = "";
		switch (convLen) {
		case 4:
			numberInBank = convenio + TextUtil.pad( boleto.getLBR_NumberInBank(), '0', 7, true);
			dv = dacNNMod11( numberInBank );
			fmtNumberInBank = numberInBank + "-" + dv;
			numberInBank = numberInBank + dv;
			break;
		case 6:
			numberInBank = convenio + TextUtil.pad( boleto.getLBR_NumberInBank(), '0', 5, true);
			dv = dacNNMod11( numberInBank );
			fmtNumberInBank = numberInBank + "-" + dv;
			numberInBank = numberInBank + dv;
			break;
		case 7:
			numberInBank = convenio + TextUtil.pad( boleto.getLBR_NumberInBank(), '0', 10, true);
			fmtNumberInBank = numberInBank;
			break;
		default:
			throw new AdempiereException("Convênio não reconhecido");
		}
		
		boleto.setLBR_NumberInBank(numberInBank);
		boleto.setLBR_Fmt_NumberInBank(fmtNumberInBank);
		
		boleto.setLBR_Fmt_AgencyClient( fmtAgencia + " / " + fmtConta );
		
		boleto.setLBR_Fmt_Billfold( boleto.getLBR_BankAccount_Carteira().getLBR_CarteiraNo());
		
	}

	@Override
	public void postProcessGenerated(Object generated, Object origin) {

		String generatedClassName = generated.getClass().getSimpleName();
		String originClassName = origin.getClass().getSimpleName();
		
		// personaliza header do arquivo de cobrança
		if (  generatedClassName.equals("BancoDoBrasilCNABHeaderArquivo") 
				&& originClassName.equals("MLBRBankAccountConvenio")) {
			MLBRBankAccountConvenio convenio = ((MLBRBankAccountConvenio) origin );
			MLBRBankAccountCarteira[] carteiras = convenio.getCarteiras();
			if (carteiras.length != 1) {
				throw new AdempiereException("Banco do Brasil exige exatamente 1 carteira por convênio de cobrança");
			}
			
			String numeroCarteira = TextUtil.pad( OpenItemsUtil.getPartialText( carteiras[0].getLBR_CarteiraNo() , false ), '0', 2, true);
			String variacaoCarteira = TextUtil.pad( OpenItemsUtil.getPartialText( carteiras[0].getLBR_CarteiraNo() , true ), '0', 3, true);

			((BancoDoBrasilCNABHeaderArquivo) generated).setAdendoConvenioBB("0014" + numeroCarteira + variacaoCarteira );

		}

	}

	@Override
	public void postProcessReturn(Object returned, MLBRBoletoMovement mov,
			MLBRBoleto boleto) {
		// TODO Auto-generated method stub

	}

	@Override
	public ProcessCall getProcessReturn() {
		return new CNAB240Return( new BancoDoBrasilCNABRecords() , this );
	}

	@Override
	public ProcessCall getGenerateTransmission() {
		return new CNAB240Generate( new BancoDoBrasilCNABRecords() , this );
	}

}
