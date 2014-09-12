package org.idempierelbr.cnab240febraban.model.registro.header.servico;

import org.idempierelbr.cnab240febraban.enums.FormaDeLancamento;
import org.idempierelbr.cnab240febraban.enums.TipoMoeda;
import org.idempierelbr.cnab240febraban.enums.TipoOperacao;
import org.idempierelbr.cnab240febraban.enums.TipoRegistro;
import org.idempierelbr.cnab240febraban.model.pojo.Controle;
import org.idempierelbr.cnab240febraban.model.pojo.Empresa;
import org.idempierelbr.cnab240febraban.model.pojo.Servico2;
import org.idempierelbr.cnab240febraban.model.pojo.SomatoriaSaldosIniciais;
import org.idempierelbr.cnab240febraban.model.registro.header.HeaderLote;
import org.idempierelbr.cnab240febraban.util.ArquivoUtils;


public class HeaderLoteExtratoParaGestaoCaixa extends HeaderLote {
	private Controle controle;
	private Servico2 servico;
	private String campoExclusivoCNAB1;
	private Empresa empresa;
	private String naturezaSaldo;
	private String horarioSaldoInicial;
	private String campoExclusivoCNAB2;
	private SomatoriaSaldosIniciais somatoriaSaldosIniciais;
	private TipoMoeda tipoMoeda;
	private int numeroSequenciaExtrado;
	private String campoExclusivoCNAB3;

	public HeaderLoteExtratoParaGestaoCaixa() {
		setControle(new Controle());
		getControle().setTipoRegistro(TipoRegistro.HEADER_DE_LOTE);
		setServico(new Servico2());
		getServico().setTipoOperacao(TipoOperacao.EXTRATO_PARA_GESTAO_DE_CAIXA);
		getServico().setFormaLancamento(FormaDeLancamento.EXTRATO_PARA_GESTAO_DE_CAIXA);
		getServico().setNumeroVersaoLayoutLote(3);
		setCampoExclusivoCNAB1(ArquivoUtils.BRANCO);
		setEmpresa(new Empresa());
		setNaturezaSaldo(ArquivoUtils.BRANCO);
		setHorariosaldoInicial(ArquivoUtils.BRANCO);
		setCampoExclusivoCNAB2(ArquivoUtils.BRANCO);
		setSomatoriaSaldosIniciais(new SomatoriaSaldosIniciais());
		setCampoExclusivoCNAB3(ArquivoUtils.BRANCO);
	}

	public Controle getControle() {
		return controle;
	}

	public void setControle(Controle controle) {
		this.controle = controle;
	}

	public Servico2 getServico() {
		return servico;
	}

	public void setServico(Servico2 servico) {
		this.servico = servico;
	}

	public String getCampoExclusivoCNAB1() {
		return campoExclusivoCNAB1;
	}

	public void setCampoExclusivoCNAB1(String campoExclusivoCNAB1) {
		this.campoExclusivoCNAB1 = campoExclusivoCNAB1;
	}

	public Empresa getEmpresa() {
		return empresa;
	}

	public void setEmpresa(Empresa empresa) {
		this.empresa = empresa;
	}

	public String getNaturezaSaldo() {
		return naturezaSaldo;
	}

	public void setNaturezaSaldo(String naturezaSaldo) {
		this.naturezaSaldo = naturezaSaldo;
	}

	public String getHorariosaldoInicial() {
		return horarioSaldoInicial;
	}

	public void setHorariosaldoInicial(String horarioSaldoInicial) {
		this.horarioSaldoInicial = horarioSaldoInicial;
	}

	public String getCampoExclusivoCNAB2() {
		return campoExclusivoCNAB2;
	}

	public void setCampoExclusivoCNAB2(String campoExclusivoCNAB2) {
		this.campoExclusivoCNAB2 = campoExclusivoCNAB2;
	}

	public SomatoriaSaldosIniciais getSomatoriaSaldosIniciais() {
		return somatoriaSaldosIniciais;
	}

	public void setSomatoriaSaldosIniciais(
			SomatoriaSaldosIniciais somatoriaSaldosIniciais) {
		this.somatoriaSaldosIniciais = somatoriaSaldosIniciais;
	}

	public TipoMoeda getTipoMoeda() {
		return tipoMoeda;
	}

	public void setTipoMoeda(TipoMoeda tipoMoeda) {
		this.tipoMoeda = tipoMoeda;
	}

	public int getNumeroSequenciaExtrado() {
		return numeroSequenciaExtrado;
	}

	public void setNumeroSequenciaExtrado(int numeroSequenciaExtrado) {
		this.numeroSequenciaExtrado = numeroSequenciaExtrado;
	}

	public String getCampoExclusivoCNAB3() {
		return campoExclusivoCNAB3;
	}

	public void setCampoExclusivoCNAB3(String campoExclusivoCNAB3) {
		this.campoExclusivoCNAB3 = campoExclusivoCNAB3;
	}

	@Override
	public String getConteudoRegistro() {
		StringBuilder sb = new StringBuilder(TAMANHO_REGISTRO);
		sb.append(getControle().toString());
		sb.append(getServico().toString());
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCampoExclusivoCNAB1(), 1));
		sb.append(getEmpresa().toString());
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getNaturezaSaldo(), 3));
		sb.append(ArquivoUtils.getcampoHoarioHHMMSS(getHorariosaldoInicial()));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCampoExclusivoCNAB2(), 31));
		sb.append(getSomatoriaSaldosIniciais().toString());
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getTipoMoeda().getSigla(), 3));
		sb.append(ArquivoUtils.getCampoNumerico(getNumeroSequenciaExtrado(), 5));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCampoExclusivoCNAB3(), 62));

		return sb.toString();
	}

}
