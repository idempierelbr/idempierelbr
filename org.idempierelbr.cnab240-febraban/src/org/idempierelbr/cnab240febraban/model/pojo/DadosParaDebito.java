package org.idempierelbr.cnab240febraban.model.pojo;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

public class DadosParaDebito {
	private static final int TAMANHO_DADOS_PARA_DEBITO = 23;
	private int codigoBanco;
	private ContaCorrente contaCorrente;

	public DadosParaDebito() {
		setContaCorrente(new ContaCorrente());
	}

	public int getCodigoBanco() {
		return codigoBanco;
	}

	public void setCodigoBanco(int codigoBanco) {
		this.codigoBanco = codigoBanco;
	}

	public ContaCorrente getContaCorrente() {
		return contaCorrente;
	}

	public void setContaCorrente(ContaCorrente contaCorrente) {
		this.contaCorrente = contaCorrente;
	}

	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder(TAMANHO_DADOS_PARA_DEBITO);
		sb.append(ArquivoUtils.getCampoNumerico(getCodigoBanco(), 3));
		sb.append(getContaCorrente().toString());
		
		return sb.toString();
	}
}
