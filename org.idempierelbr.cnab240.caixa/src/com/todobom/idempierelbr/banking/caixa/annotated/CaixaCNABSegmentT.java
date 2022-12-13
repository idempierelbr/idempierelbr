package com.todobom.idempierelbr.banking.caixa.annotated;

import org.idempierelbr.cnab240.annotated.CNABSegmentTRecord;

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
public class CaixaCNABSegmentT extends CNABSegmentTRecord {

	private String convenio;
	private int modalidadeCarteira;

	// campos alterados
	@Override
	@Field( offset=42 , length=15, paddingChar='0' , align = Align.RIGHT)
	public String getNossoNumero() {
		// TODO Auto-generated method stub
		return super.getNossoNumero();
	}
	
	@Override
	@Field( offset=59 , length=11, paddingChar=' ' , align = Align.LEFT)
	public String getNumeroDocumento() {
		// TODO Auto-generated method stub
		return super.getNumeroDocumento();
	}


	// campos adicionados
	@Field( offset = 24, length = 6 , paddingChar = '0' , align = Align.RIGHT )
	public String getConvenio() {
		return convenio;
	}

	public void setConvenio(String convenio) {
		this.convenio = convenio;
	}

	@Field( offset = 40, length = 2 , paddingChar = '0' , align = Align.RIGHT )
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
	
}
