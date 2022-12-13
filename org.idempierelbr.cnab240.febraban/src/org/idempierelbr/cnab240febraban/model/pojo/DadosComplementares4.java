package org.idempierelbr.cnab240febraban.model.pojo;

public class DadosComplementares4 {
	@SuppressWarnings("unused")
	private static final int TAMANHO_DADOS_COMPLEMENTARES4 = 75;
	private Debito2 debito;
	
	public DadosComplementares4() {
		setDebito(new Debito2());
	}

	public Debito2 getDebito() {
		return debito;
	}

	public void setDebito(Debito2 debito) {
		this.debito = debito;
	}
	
	@Override
	public String toString() {
		return getDebito().toString();
	}
}
