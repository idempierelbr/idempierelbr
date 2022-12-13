package org.idempierelbr.cnab240febraban.model.pojo.error;

import org.apache.commons.lang.StringUtils;
import org.idempierelbr.cnab240febraban.util.ArquivoUtils;



/**
 * Classe responsável pelo armazenamento de uma mensagem de erro em um registro
 * @author Richard Mendes Madureira
 */
public class MensagemDeErro {
	private int numeroLinha;
	private String descricaoErro;

	public MensagemDeErro() {
	}

	public MensagemDeErro(int numeroLinha, String descricaoErro) {
		setNumeroLinha(numeroLinha);
		setDescricaoErro(descricaoErro);
	}

	public int getNumeroLinha() {
		return numeroLinha;
	}

	public void setNumeroLinha(int numeroLinha) {
		this.numeroLinha = numeroLinha;
	}

	public String getDescricaoErro() {
		return descricaoErro;
	}

	public void setDescricaoErro(String descricaoErro) {
		this.descricaoErro = descricaoErro;
	}

	@Override
	public String toString() {
		return "Nº DA LINHA:\t" + StringUtils.leftPad(String.valueOf(getNumeroLinha()), ArquivoUtils.NUMERO_MAXIMO_REGISTROS_NO_ARQUIVO.length(), "0") + ". ERRO: " + getDescricaoErro();
	}
	
}
