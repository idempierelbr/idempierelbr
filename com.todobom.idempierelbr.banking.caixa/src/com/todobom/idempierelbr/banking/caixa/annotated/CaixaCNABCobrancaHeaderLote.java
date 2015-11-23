package com.todobom.idempierelbr.banking.caixa.annotated;

import org.idempierelbr.cnab240.annotated.CNABCobrancaHeaderLoteRecord;

import com.ancientprogramming.fixedformat4j.annotation.Align;
import com.ancientprogramming.fixedformat4j.annotation.Field;
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
public class CaixaCNABCobrancaHeaderLote extends CNABCobrancaHeaderLoteRecord {

	public CaixaCNABCobrancaHeaderLote() {
		super();
		super.setVersaoLeiaute(30);
	}

	

	@Override
	@Field( offset = 34, length = 6 , paddingChar = '0' , align = Align.RIGHT )
	public String getConvenio() {
		// TODO Auto-generated method stub
		return super.getConvenio();
	}
	
	// A Caixa repete duas vezes o campo convênio, com o mesmo conteúdo
	@Field( offset = 60, length = 6 , paddingChar = '0' , align = Align.RIGHT )
	public String getConvenio2() {
		// TODO Auto-generated method stub
		return super.getConvenio();
	}
	
	public void setConvenio2( String convenio2 ) {
		return;
	}
	
	
	private String codigoModeloPersonalizado;
	
	@Field( offset = 66, length = 7 , paddingChar = '0' , align = Align.RIGHT )
	public String getCodigoModeloPersonalizado() {
		return codigoModeloPersonalizado;
	}

	public void setCodigoModeloPersonalizado(String codigoModeloPersonalizado) {
		this.codigoModeloPersonalizado = codigoModeloPersonalizado;
	}


	

	// campos removidos do layout
	@Override
	public long getConta() {
		// TODO Auto-generated method stub
		return super.getConta();
	}

	@Override
	public String getDvConta() {
		// TODO Auto-generated method stub
		return super.getDvConta();
	}

	@Override
	public String getDvAgenciaConta() {
		// TODO Auto-generated method stub
		return super.getDvAgenciaConta();
	}

	
	
	// Campos a seguir apenas para preencher os zeros do registro
	@Field(offset=12, length=2, paddingChar='0')
	public int getZeros1() {
		return 0;
	}

	public void setZeros1( int Zero ) {
		return;
	}

	@Field(offset=40, length=14, paddingChar='0')
	public int getZeros2() {
		return 0;
	}

	public void setZeros2( int Zero ) {
		return;
	}


	@Field(offset=73, length=1, paddingChar='0')
	public int getZeros3() {
		return 0;
	}

	public void setZeros3( int Zero ) {
		return;
	}


		
}
