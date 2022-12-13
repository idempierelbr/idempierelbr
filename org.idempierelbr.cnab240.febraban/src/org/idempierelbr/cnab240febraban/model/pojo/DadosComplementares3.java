package org.idempierelbr.cnab240febraban.model.pojo;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

public class DadosComplementares3 {
	private static final int TAMANHO_DADOS_COMPLEMENTARES3 = 208;
	private Pagador2 pagador;
	private Debito debito;
	private String codigoDocumentoPagador;
	
	public DadosComplementares3() {
		setPagador(new Pagador2());
		setDebito(new Debito());
		setCodigoDocumentoPagador(ArquivoUtils.BRANCO);
	}

	public Pagador2 getPagador() {
		return pagador;
	}

	public void setPagador(Pagador2 pagador) {
		this.pagador = pagador;
	}

	public Debito getDebito() {
		return debito;
	}

	public void setDebito(Debito debito) {
		this.debito = debito;
	}

	public String getCodigoDocumentoPagador() {
		return codigoDocumentoPagador;
	}

	public void setCodigoDocumentoPagador(String codigoDocumentoPagador) {
		this.codigoDocumentoPagador = codigoDocumentoPagador;
	}
	
	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder(TAMANHO_DADOS_COMPLEMENTARES3);
		sb.append(getPagador().toString());
		sb.append(getDebito().toString());
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCodigoDocumentoPagador(), 15));
		
		return sb.toString();
	}
}
