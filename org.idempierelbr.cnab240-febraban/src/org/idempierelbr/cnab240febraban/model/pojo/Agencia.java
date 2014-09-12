package org.idempierelbr.cnab240febraban.model.pojo;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

/**
 * Classe de suporte para a criação de Registros.<br/>
 * Uma Agencia é uma classe que armazena o codigo da agência e o seu dígito verificador
 * 
 * @author Richard Mendes Madureira
 * @version 1.0
 *
 */
public class Agencia {
	private static final int TAMANHO_REGISTRO = 6;
	
	private int codigo;
	private String digitoVerificador;
	
	public Agencia(){
		setCodigo(0);
		setDigitoVerificador(ArquivoUtils.BRANCO);
	}
	
	public Agencia(int codigo, String digitoVerificador){
		setCodigo(codigo);
		setDigitoVerificador(digitoVerificador);
	}

	public int getCodigo() {
		return codigo;
	}

	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}

	public String getDigitoVerificador() {
		return digitoVerificador;
	}

	public void setDigitoVerificador(String digitoVerificador) {
		this.digitoVerificador = digitoVerificador;
	}
	
	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder(TAMANHO_REGISTRO);
		sb.append(ArquivoUtils.getCampoNumerico(getCodigo(), 5));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getDigitoVerificador(), 1));
		
		return sb.toString();
	}
}