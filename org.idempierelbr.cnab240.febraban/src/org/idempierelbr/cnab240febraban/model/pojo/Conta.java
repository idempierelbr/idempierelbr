package org.idempierelbr.cnab240febraban.model.pojo;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;
/**
 * Classe de suporte para criação de registros. Um objeto conta representa o número da conta corrente e o seu digito verificador.
 * @author Richard Mendes Madureira
 * @version 1.0
 *
 */
public class Conta {
	private static final int TAMANHO_RESGISTRO = 13;
	
	private int numero;
	private String digitoVerificador;

	public Conta(){
	}
	
	public Conta(int numero, String digitoVerificador) {
		setNumero(numero);
		setDigitoVerificador(digitoVerificador);
	}

	public int getNumero() {
		return numero;
	}

	public void setNumero(int numero) {
		this.numero = numero;
	}

	public String getDigitoVerificador() {
		return digitoVerificador;
	}

	public void setDigitoVerificador(String digitoVerificador) {
		this.digitoVerificador = digitoVerificador;
	}
	
	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder(TAMANHO_RESGISTRO);
		sb.append(ArquivoUtils.getCampoNumerico(getNumero(), 12));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getDigitoVerificador(), 1));
		
		return sb.toString();
	}
}