package com.todobom.idempierelbr.banking.caixa.annotated;

import org.idempierelbr.cnab240.annotated.CNABSegmentPRecord;

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
public class CaixaCNABSegmentP extends CNABSegmentPRecord {

	private String convenio;
	private int modalidadeCarteira;

	
	// campos modificados
	
	@Override
	@Field( offset=43 , length=15, paddingChar = '0' , align = Align.RIGHT)
	public String getNossoNumero() {
		// TODO Auto-generated method stub
		return super.getNossoNumero();
	}

	@Override
	@Field( offset=63 , length=11, paddingChar = ' ' , align = Align.LEFT)
	public String getNumeroDocumento() {
		// TODO Auto-generated method stub
		return super.getNumeroDocumento();
	}

	
	// Campos com manipulação de conteúdo
	@Override
	public void setDistribuicaoBloqueto(String distribuicaoBloqueto) {

		if ( distribuicaoBloqueto.equals("2") ) {
			super.setDistribuicaoBloqueto("0");
		} else {
			super.setDistribuicaoBloqueto(distribuicaoBloqueto);
		}
	}
	


	// campos adicionados
	@Field( offset = 24, length = 6 , paddingChar = '0' , align = Align.RIGHT )
	public String getConvenio() {
		return convenio;
	}

	public void setConvenio(String convenio) {
		this.convenio = convenio;
	}

	@Field( offset = 41, length = 2 , paddingChar = '0' , align = Align.RIGHT )
	public int getModalidadeCarteira() {
		return modalidadeCarteira;
	}

	public void setModalidadeCarteira(int modalidadeCarteira) {
		this.modalidadeCarteira = modalidadeCarteira;
	}

	// campos excluídos
	@Override
	public long getContaCedente() {
		// TODO Auto-generated method stub
		return super.getContaCedente();
	}

	@Override
	public String getDvContaCedente() {
		// TODO Auto-generated method stub
		return super.getDvContaCedente();
	}

	@Override
	public String getDvAgenciaContaCedente() {
		// TODO Auto-generated method stub
		return super.getDvAgenciaContaCedente();
	}
	
	@Override
	public long getNumeroContrato() {
		return super.getNumeroContrato();
	}


	// Campos a seguir apenas para preencher os zeros do registro
	@Field(offset=30, length=11, paddingChar='0')
	public int getZeros1() {
		return 0;
	}

	public void setZeros1( int Zero ) {
		return;
	}

	@Field(offset=230, length=10, paddingChar='0')
	public int getZeros2() {
		return 0;
	}

	public void setZeros2( int Zero ) {
		return;
	}
	
}
