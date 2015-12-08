package com.todobom.idempierelbr.banking.caixa.annotated;

import org.idempierelbr.cnab240.annotated.CNABHeaderArquivoRecord;

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
public class CaixaCNABHeaderArquivo extends CNABHeaderArquivoRecord {

	public CaixaCNABHeaderArquivo() {
		super();
		super.setBanco(104);
		super.setNomeBanco("CAIXA ECONOMICA FEDERAL");
		super.setVersaoLayout(50);
	}
	
	@Override
	@Field( offset = 59, length = 6 , paddingChar = '0' , align = Align.RIGHT )
	public String getConvenio() {
		return super.getConvenio();
	}

	
	// campos excluídos
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
	@Field(offset=33, length=20, paddingChar='0')
	public int getZeros1() {
		return 0;
	}

	public void setZeros1( int Zero ) {
		return;
	}
	
	@Field(offset=65, length=7, paddingChar='0')
	public int getZeros2() {
		return 0;
	}

	public void setZeros2( int Zero ) {
		return;
	}
	
	@Field(offset=72, length=1, paddingChar='0')
	public int getZeros3() {
		return 0;
	}

	public void setZeros3( int Zero ) {
		return;
	}
	
	@Field( offset = 167, length = 5 , paddingChar = '0' , align = Align.RIGHT )
	public int getZeros4() {
		return 0;
	}

	public void setZeros4( int Zero ) {
		return;
	}

	// campo adicional da Caixa
	private String versaoAplicativo;
	
	@Field( offset = 212, length = 4 , paddingChar = ' ' , align = Align.LEFT )
	public String getVersaoAplicativo() {
		return versaoAplicativo;
	}

	public void setVersaoAplicativo(String versaoAplicativo) {
		this.versaoAplicativo = versaoAplicativo;
	}
	
}
