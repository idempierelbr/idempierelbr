package org.idempierelbr.cnab240febraban.model.registro.trailer.servico;

import org.idempierelbr.cnab240febraban.enums.TipoRegistro;
import org.idempierelbr.cnab240febraban.model.pojo.Controle;
import org.idempierelbr.cnab240febraban.model.pojo.Totais3;
import org.idempierelbr.cnab240febraban.model.registro.trailer.TrailerLote;
import org.idempierelbr.cnab240febraban.util.ArquivoUtils;


public class TrailerLotePagamentoTributos extends TrailerLote {
	private Controle controle;
	private String campoExclusivoCNAB;
	private Totais3 totais;
	private String complementoRegistro;
	private String ocorrencias;

	public TrailerLotePagamentoTributos() {
		setControle(new Controle());
		getControle().setTipoRegistro(TipoRegistro.TRAILER_DE_LOTE);
		setCampoExclusivoCNAB(ArquivoUtils.BRANCO);
		setTotais(new Totais3());
		setComplementoRegistro(ArquivoUtils.BRANCO);
		setOcorrencias(ArquivoUtils.BRANCO);
	}
	
	public Controle getControle() {
		return controle;
	}

	public void setControle(Controle controle) {
		this.controle = controle;
	}

	public String getCampoExclusivoCNAB() {
		return campoExclusivoCNAB;
	}

	public void setCampoExclusivoCNAB(String campoExclusivoCNAB) {
		this.campoExclusivoCNAB = campoExclusivoCNAB;
	}

	public Totais3 getTotais() {
		return totais;
	}

	public void setTotais(Totais3 totais) {
		this.totais = totais;
	}

	public String getComplementoRegistro() {
		return complementoRegistro;
	}

	public void setComplementoRegistro(String camplementoRegistro) {
		this.complementoRegistro = camplementoRegistro;
	}

	public String getOcorrencias() {
		return ocorrencias;
	}

	public void setOcorrencias(String ocorrencias) {
		this.ocorrencias = ocorrencias;
	}

	@Override
	public String getConteudoRegistro() {
		StringBuilder sb = new StringBuilder(TAMANHO_REGISTRO);
		sb.append(getControle().toString());
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCampoExclusivoCNAB(), 9));
		sb.append(getTotais().toString());
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getComplementoRegistro(), 189));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getOcorrencias(), 10));
		
		return sb.toString();
	}

}