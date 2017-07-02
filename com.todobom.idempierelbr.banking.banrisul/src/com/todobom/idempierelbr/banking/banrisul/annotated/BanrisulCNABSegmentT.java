package com.todobom.idempierelbr.banking.banrisul.annotated;

import org.idempierelbr.cnab240.annotated.CNABSegmentTRecord;

import com.ancientprogramming.fixedformat4j.annotation.Align;
import com.ancientprogramming.fixedformat4j.annotation.Field;
import com.ancientprogramming.fixedformat4j.annotation.Record;

@Record
public class BanrisulCNABSegmentT extends CNABSegmentTRecord {

	@Override
	@Field( offset=58 , length=1, paddingChar='0' , align = Align.RIGHT)
	public String getCodigoCarteira() {
		// TODO Auto-generated method stub
		String codigoCarteira = super.getCodigoCarteira();
		
		// o "banco" banrisul retorna alguns caracteres que não respeitam
		// os tipos de carteira da febraban - ajuste manual
		switch (codigoCarteira.charAt(0)) {

		// cobranças simples
		case 'D': // CSB (seria simples?)
		case 'G': // BBH (seria simples?)
		case 'K': // Simples INCC-M
		case 'U': // CSB e CCB sem registro (seria simples?)
			codigoCarteira="1";
			break;
			
		// cobranças vinculadas
			
		case 'N': // capital de giro
		case 'P': // CDCI PF
		case 'Q': // CDCI PJ
		case 'T': // Leasing
			codigoCarteira="2";
			break;
			
		// cobranças caucionadas
		case 'B': // CGB especial
		case 'E': // Cambio
		case 'H': // em Dolar
		case 'I': // Compror
		case 'J': // NPR
			codigoCarteira="3";
			break;

		// cobranças descontadas
		case 'O': // cheque
		case 'R': // duplicata
			codigoCarteira="4";
			break;
			
		// cobranças vendor
		case 'F': // vendor
		case 'S': // vendor eletronico
			codigoCarteira="5";
			break;
			
		}
		return codigoCarteira;
	}

}
