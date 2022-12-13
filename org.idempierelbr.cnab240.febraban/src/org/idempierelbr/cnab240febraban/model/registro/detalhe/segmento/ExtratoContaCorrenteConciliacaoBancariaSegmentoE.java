package org.idempierelbr.cnab240febraban.model.registro.detalhe.segmento;

import java.util.Date;

import org.idempierelbr.cnab240febraban.enums.TipoRegistro;
import org.idempierelbr.cnab240febraban.model.pojo.Controle;
import org.idempierelbr.cnab240febraban.model.pojo.Empresa;
import org.idempierelbr.cnab240febraban.model.pojo.Lancamento;
import org.idempierelbr.cnab240febraban.model.pojo.Servico3;
import org.idempierelbr.cnab240febraban.model.registro.detalhe.RegistroDeDetalhe;
import org.idempierelbr.cnab240febraban.util.ArquivoUtils;



public class ExtratoContaCorrenteConciliacaoBancariaSegmentoE extends RegistroDeDetalhe {
	private Controle controle;
	private Servico3 servico;
	private String campoExclusivoCNAB1;
	private Empresa empresa;
	private String campoExclusivoCNAB2;
	private String naturezaLancamento;
	private int tipoComplementoLancamento;
	private String complmento;
	private boolean cpmfIsento;
	private Date dataContabil;
	private Lancamento lancamento;

	public ExtratoContaCorrenteConciliacaoBancariaSegmentoE() {
		setControle(new Controle());
		getControle().setTipoRegistro(TipoRegistro.DETALHE);
		setServico(new Servico3());
		getServico().setCodigoSegmento("E");
		setCampoExclusivoCNAB1(ArquivoUtils.BRANCO);
		setEmpresa(new Empresa());
		setCampoExclusivoCNAB2(ArquivoUtils.BRANCO);
		setNaturezaLancamento(ArquivoUtils.BRANCO);
		setComplmento(ArquivoUtils.BRANCO);
		setCpmfIsento(false);
		setLancamento(new Lancamento());
		
	}
	
	public Controle getControle() {
		return controle;
	}

	public void setControle(Controle controle) {
		this.controle = controle;
	}

	public Servico3 getServico() {
		return servico;
	}

	public void setServico(Servico3 servico) {
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

	public String getCampoExclusivoCNAB2() {
		return campoExclusivoCNAB2;
	}

	public void setCampoExclusivoCNAB2(String campoExclusivoCNAB2) {
		this.campoExclusivoCNAB2 = campoExclusivoCNAB2;
	}

	public String getNaturezaLancamento() {
		return naturezaLancamento;
	}

	public void setNaturezaLancamento(String naturezaLancamento) {
		this.naturezaLancamento = naturezaLancamento;
	}

	public int getTipoComplementoLancamento() {
		return tipoComplementoLancamento;
	}

	public void setTipoComplementoLancamento(int tipoComplementoLancamento) {
		this.tipoComplementoLancamento = tipoComplementoLancamento;
	}

	public String getComplmento() {
		return complmento;
	}

	public void setComplmento(String complmento) {
		this.complmento = complmento;
	}

	public boolean isCpmfIsento() {
		return cpmfIsento;
	}

	public void setCpmfIsento(boolean cpmfIsento) {
		this.cpmfIsento = cpmfIsento;
	}

	public Date getDataContabil() {
		return dataContabil;
	}

	public void setDataContabil(Date dataContabil) {
		this.dataContabil = dataContabil;
	}

	public Lancamento getLancamento() {
		return lancamento;
	}

	public void setLancamento(Lancamento lancamento) {
		this.lancamento = lancamento;
	}

	@Override
	public String getConteudoRegistro() {
		StringBuilder sb = new StringBuilder(TAMANHO_REGISTRO);
		sb.append(getControle().toString());
		sb.append(getServico().toString());
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCampoExclusivoCNAB1(), 3));
		sb.append(getEmpresa().toString());
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCampoExclusivoCNAB2(), 6));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getNaturezaLancamento(), 3));
		sb.append(ArquivoUtils.getCampoNumerico(getTipoComplementoLancamento(), 2));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getComplmento(), 20));
		sb.append(ArquivoUtils.getCampoBooleano(isCpmfIsento()));
		sb.append(ArquivoUtils.getCampoDataFormatada(getDataContabil()));
		sb.append(getLancamento().toString());
		
		return sb.toString();
	}

}