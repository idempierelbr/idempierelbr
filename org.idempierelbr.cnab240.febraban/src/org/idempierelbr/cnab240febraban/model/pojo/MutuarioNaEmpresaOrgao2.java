package org.idempierelbr.cnab240febraban.model.pojo;

public class MutuarioNaEmpresaOrgao2 {
	@SuppressWarnings("unused")
	private static final int TAMANHO_MUTUARIO_NA_EMPRESA_ORGAO2 = 19;
	private ContaCorrenteSemDV contaCorrente;

	public ContaCorrenteSemDV getContaCorrente() {
		return contaCorrente;
	}

	public void setContaCorrente(ContaCorrenteSemDV contaCorrente) {
		this.contaCorrente = contaCorrente;
	}

	@Override
	public String toString() {
		return getContaCorrente().toString();
	}
}
