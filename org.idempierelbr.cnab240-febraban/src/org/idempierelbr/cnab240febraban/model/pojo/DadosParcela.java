package org.idempierelbr.cnab240febraban.model.pojo;

public class DadosParcela {
	private static final int TAMANHO_DADOS_PARCELA = 180;
	private Parcela[] parcelas;

	public DadosParcela() {
		Parcela[] parcelas = new Parcela[4];
		setParcelas(new Parcela[4]);
		for (int i = 0; i < parcelas.length; i++) {
			getParcelas()[i] = new Parcela();
		}
	}

	public Parcela[] getParcelas() {
		return parcelas;
	}

	public void setParcelas(Parcela[] parcelas) {
		this.parcelas = parcelas;
	}

	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder(TAMANHO_DADOS_PARCELA);
		for (Parcela parcela : parcelas) {
			sb.append(parcela.toString());
		}
		return sb.toString();
	}
}
