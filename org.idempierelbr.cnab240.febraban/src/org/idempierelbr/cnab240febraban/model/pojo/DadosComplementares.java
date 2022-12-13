package org.idempierelbr.cnab240febraban.model.pojo;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

public class DadosComplementares {
	private static final int TAMANHO_DADOS_COMPLEMENTARES = 208;
	
	private Favorecido2 favorecido;
	private Pagamento pagamento;
	private String codigoDocumentoFavorecido;


	public DadosComplementares(){
		setFavorecido(new Favorecido2());
		setPagamento(new Pagamento());
		setCodigoDocumentoFavorecido(ArquivoUtils.BRANCO);
	}
	
	public DadosComplementares(Favorecido2 favorecido, Pagamento pagamento, String codigoDocumentoFavorecido){
		setFavorecido(favorecido);
		setPagamento(pagamento);
		setCodigoDocumentoFavorecido(codigoDocumentoFavorecido);
	}
	
	
	public Favorecido2 getFavorecido() {
		return favorecido;
	}

	public void setFavorecido(Favorecido2 favorecido) {
		this.favorecido = favorecido;
	}

	public Pagamento getPagamento() {
		return pagamento;
	}

	public void setPagamento(Pagamento pagamento) {
		this.pagamento = pagamento;
	}

	public String getCodigoDocumentoFavorecido() {
		return codigoDocumentoFavorecido;
	}

	public void setCodigoDocumentoFavorecido(String codigoDocumentoFavorecido) {
		this.codigoDocumentoFavorecido = codigoDocumentoFavorecido;
	}
	
	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder(TAMANHO_DADOS_COMPLEMENTARES); 
		sb.append(getFavorecido().toString()); // 110
		sb.append(getPagamento().toString()); //83
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCodigoDocumentoFavorecido(), 15));
		
		return sb.toString();
	}
}