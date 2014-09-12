package org.idempierelbr.cnab240febraban.model.pojo;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

/**
 * Classe de suporte para a criação de registros.<br/>
 * Armazena totalizações referentes as quantidades de lotes, registros e contas para conciliação
 * @author Richard Mendes Madureira
 * @version 1.0
 *
 */
public class Totais {
	private int quantidadeLotes;
	private int quantidadeRegistros;
	private int quantidadeContasParaConciliacao;

	public Totais(){
		setQuantidadeLotes(0);
		setQuantidadeRegistros(0);
		setQuantidadeContasParaConciliacao(0);
	}
	
	public Totais(int quantLotes, int quantRegistros, int quantContasParaConciliacao){
		this.quantidadeLotes = quantLotes;
		this.quantidadeRegistros = quantRegistros;
		this.quantidadeContasParaConciliacao = quantContasParaConciliacao;
	}
	
	public int getQuantidadeLotes() {
		return quantidadeLotes;
	}

	public void setQuantidadeLotes(int quantidadeLotes) {
		this.quantidadeLotes = quantidadeLotes;
	}

	public int getQuantidadeRegistros() {
		return quantidadeRegistros;
	}

	public void setQuantidadeRegistros(int quantidadeRegistros) {
		this.quantidadeRegistros = quantidadeRegistros;
	}

	public int getQuantidadeContasParaConciliacao() {
		return quantidadeContasParaConciliacao;
	}

	public void setQuantidadeContasParaConciliacao( int quantidadeContasParaConciliacao) {
		this.quantidadeContasParaConciliacao = quantidadeContasParaConciliacao;
	}
	
	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder();
		sb.append(ArquivoUtils.getCampoNumerico(getQuantidadeLotes(), 6));
		sb.append(ArquivoUtils.getCampoNumerico(getQuantidadeRegistros(), 6));
		sb.append(ArquivoUtils.getCampoNumerico(getQuantidadeContasParaConciliacao(), 6));
		
		return sb.toString();
	}
	
	
}
