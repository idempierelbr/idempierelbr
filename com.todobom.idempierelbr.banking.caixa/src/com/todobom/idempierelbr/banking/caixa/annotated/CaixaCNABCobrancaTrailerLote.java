package com.todobom.idempierelbr.banking.caixa.annotated;

import org.idempierelbr.cnab240.annotated.CNABCobrancaTrailerLoteRecord;

import com.ancientprogramming.fixedformat4j.annotation.Align;
import com.ancientprogramming.fixedformat4j.annotation.Field;
import com.ancientprogramming.fixedformat4j.annotation.FixedFormatDecimal;
import com.ancientprogramming.fixedformat4j.annotation.Record;

/**
 * 
 * @author Claudemir Todo Bom
 *
 * Patrocinado por FIT Soluções - www.fitsolucoes.biz
 *
 * LICENÇA: GPLv2 - http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt
 *
 */
@Record
public class CaixaCNABCobrancaTrailerLote extends CNABCobrancaTrailerLoteRecord {

	// campos modificados
	@Override
	@Field( offset=47 , length=6, paddingChar='0' , align = Align.RIGHT)
	public int getQuantidadeCobrancaCaucionada() {
		// TODO Auto-generated method stub
		return super.getQuantidadeCobrancaCaucionada();
	}

	@Override
	@Field( offset=53 , length=17, paddingChar='0' , align = Align.RIGHT)
	@FixedFormatDecimal( decimals = 2 , useDecimalDelimiter = false )
	public Double getTotalCobrancaCaucionada() {
		// TODO Auto-generated method stub
		return super.getTotalCobrancaCaucionada();
	}

	@Override
	@Field( offset=70 , length=6, paddingChar='0' , align = Align.RIGHT)
	public int getQuantidadeCobrancaDescontada() {
		// TODO Auto-generated method stub
		return super.getQuantidadeCobrancaDescontada();
	}

	@Override
	@Field( offset=76 , length=17, paddingChar='0' , align = Align.RIGHT)
	@FixedFormatDecimal( decimals = 2 , useDecimalDelimiter = false )
	public Double getTotalCobrancaDescontada() {
		// TODO Auto-generated method stub
		return super.getTotalCobrancaDescontada();
	}

	
	
	// campos removidos
	@Override
	public int getQuantidadeCobrancaVinculada() {
		// TODO Auto-generated method stub
		return super.getQuantidadeCobrancaVinculada();
	}

	@Override
	public Double getTotalCobrancaVinculada() {
		// TODO Auto-generated method stub
		return super.getTotalCobrancaVinculada();
	}

	@Override
	public String getNumeroAvisoLancamento() {
		// TODO Auto-generated method stub
		return super.getNumeroAvisoLancamento();
	}

	
}
