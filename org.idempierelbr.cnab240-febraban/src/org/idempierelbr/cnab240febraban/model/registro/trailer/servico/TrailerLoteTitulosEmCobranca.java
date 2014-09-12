package org.idempierelbr.cnab240febraban.model.registro.trailer.servico;

import org.idempierelbr.cnab240febraban.enums.TipoRegistro;
import org.idempierelbr.cnab240febraban.model.pojo.Controle;
import org.idempierelbr.cnab240febraban.model.pojo.TotalizacaoCobranca;
import org.idempierelbr.cnab240febraban.model.registro.trailer.TrailerLote;
import org.idempierelbr.cnab240febraban.util.ArquivoUtils;


public class TrailerLoteTitulosEmCobranca extends TrailerLote {
	private Controle controle;
	private String campoExclusivoCNAB1;
	private int quantidadeRegistros;
	private TotalizacaoCobranca totalizacaoCobrancaSimples;
	private TotalizacaoCobranca totalizacaoCobrancaVinculada;
	private TotalizacaoCobranca totalizacaoCobrancaCaucionada;
	private TotalizacaoCobranca totalizacaoCobrancaDescontada;
	private String numeroAvisoLancamento;
	private String campoExclusivoCNAB2;

	public TrailerLoteTitulosEmCobranca() {
		setControle(new Controle());
		getControle().setTipoRegistro(TipoRegistro.TRAILER_DE_LOTE);
		setCampoExclusivoCNAB1(ArquivoUtils.BRANCO);
		setTotalizacaoCobrancaSimples(new TotalizacaoCobranca());
		setTotalizacaoCobrancaVinculada(new TotalizacaoCobranca());
		setTotalizacaoCobrancaCaucionada(new TotalizacaoCobranca());
		setTotalizacaoCobrancaDescontada(new TotalizacaoCobranca());
		setNumeroAvisoLancamento(ArquivoUtils.BRANCO);
		setCampoExclusivoCNAB2(ArquivoUtils.BRANCO);
	}

	public Controle getControle() {
		return controle;
	}

	public void setControle(Controle controle) {
		this.controle = controle;
	}

	public String getCampoExclusivoCNAB1() {
		return campoExclusivoCNAB1;
	}

	public void setCampoExclusivoCNAB1(String campoExclusivoCNAB1) {
		this.campoExclusivoCNAB1 = campoExclusivoCNAB1;
	}

	public int getQuantidadeRegistros() {
		return quantidadeRegistros;
	}

	public void setQuantidadeRegistros(int quantidadeRegistros) {
		this.quantidadeRegistros = quantidadeRegistros;
	}

	public TotalizacaoCobranca getTotalizacaoCobrancaSimples() {
		return totalizacaoCobrancaSimples;
	}

	public void setTotalizacaoCobrancaSimples(
			TotalizacaoCobranca totalizacaoCobrancaSimples) {
		this.totalizacaoCobrancaSimples = totalizacaoCobrancaSimples;
	}

	public TotalizacaoCobranca getTotalizacaoCobrancaVinculada() {
		return totalizacaoCobrancaVinculada;
	}

	public void setTotalizacaoCobrancaVinculada(
			TotalizacaoCobranca totalizacaoCobrancaVinculada) {
		this.totalizacaoCobrancaVinculada = totalizacaoCobrancaVinculada;
	}

	public TotalizacaoCobranca getTotalizacaoCobrancaCaucionada() {
		return totalizacaoCobrancaCaucionada;
	}

	public void setTotalizacaoCobrancaCaucionada(
			TotalizacaoCobranca totalizacaoCobrancaCaucionada) {
		this.totalizacaoCobrancaCaucionada = totalizacaoCobrancaCaucionada;
	}

	public TotalizacaoCobranca getTotalizacaoCobrancaDescontada() {
		return totalizacaoCobrancaDescontada;
	}

	public void setTotalizacaoCobrancaDescontada(
			TotalizacaoCobranca totalizacaoCobrancaDescontada) {
		this.totalizacaoCobrancaDescontada = totalizacaoCobrancaDescontada;
	}

	public String getNumeroAvisoLancamento() {
		return numeroAvisoLancamento;
	}

	public void setNumeroAvisoLancamento(String numeroAvisoLancamento) {
		this.numeroAvisoLancamento = numeroAvisoLancamento;
	}

	public String getCampoExclusivoCNAB2() {
		return campoExclusivoCNAB2;
	}

	public void setCampoExclusivoCNAB2(String campoExclusivoCNAB2) {
		this.campoExclusivoCNAB2 = campoExclusivoCNAB2;
	}

	@Override
	public String getConteudoRegistro() {
		StringBuilder sb = new StringBuilder(TAMANHO_REGISTRO);
		sb.append(getControle().toString());
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCampoExclusivoCNAB1(), 9));
		sb.append(ArquivoUtils.getCampoNumerico(getQuantidadeRegistros(), 6));
		sb.append(getTotalizacaoCobrancaSimples().toString());
		sb.append(getTotalizacaoCobrancaVinculada().toString());
		sb.append(getTotalizacaoCobrancaCaucionada().toString());
		sb.append(getTotalizacaoCobrancaDescontada().toString());
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getNumeroAvisoLancamento(), 8));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCampoExclusivoCNAB2(), 117));
		
		return sb.toString();
	}

}
