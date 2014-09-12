package org.idempierelbr.cnab240febraban.enums;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

/**
 * Densidade de Gravação (BPI) do arquivo encaminhado
 * @author Richard Mendes Madureira
 * @see G020
 *
 */
public enum DensidadeGravacaoArquivo {
	BPI_1600(1600, "BPI"),
	BPI_6250(6250, "BPI");
	
	private static final int TAMANHO_DENSIDADE_GRAVACAO_ARQUIVO = 4;
	private int valor;
	private String tipoDensidade;
	
	private DensidadeGravacaoArquivo(int valor, String tipoDensidade){
		this.valor = valor;
		this.tipoDensidade = tipoDensidade;
	}
	
	public int getValor(){
		return valor;
	}
	
	public String getTipoDensidade(){
		return tipoDensidade;
	}
	
	@Override
	public String toString() {
		//TODO Verificar se o retorno é numerico ou alfa numerico
		return ArquivoUtils.getCampoNumerico(getValor(), TAMANHO_DENSIDADE_GRAVACAO_ARQUIVO);
	}
}
