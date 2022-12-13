package org.idempierelbr.cnab240febraban.model.pojo;

public class DadosComplementares2 {
	public static final int TAMANHO_DADOS_COMPLEMENTARES2 = 75;
	
	private Pagamento2 pagamento;
	
	public DadosComplementares2(){
		setPagamento(new Pagamento2());
	}

	public Pagamento2 getPagamento() {
		return pagamento;
	}

	public void setPagamento(Pagamento2 pagamento) {
		this.pagamento = pagamento;
	}
	
	@Override
	public String toString() {
		return getPagamento().toString(); // 75
	}
}
