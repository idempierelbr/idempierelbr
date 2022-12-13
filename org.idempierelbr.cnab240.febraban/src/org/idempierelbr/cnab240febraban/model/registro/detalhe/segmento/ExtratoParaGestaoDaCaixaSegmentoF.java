package org.idempierelbr.cnab240febraban.model.registro.detalhe.segmento;

import java.util.Date;

import org.idempierelbr.cnab240febraban.enums.TipoRegistro;
import org.idempierelbr.cnab240febraban.model.pojo.Controle;
import org.idempierelbr.cnab240febraban.model.pojo.Lancamento;
import org.idempierelbr.cnab240febraban.model.pojo.Servico3;
import org.idempierelbr.cnab240febraban.model.registro.detalhe.RegistroDeDetalhe;
import org.idempierelbr.cnab240febraban.util.ArquivoUtils;



public class ExtratoParaGestaoDaCaixaSegmentoF extends RegistroDeDetalhe {
	private Controle controle;
	private Servico3 servico;
	private String campoExclusivoCNAB;
	private Date horario;
	private String naturezaLancamento;
	private int tipoComplemento;
	private String complemento;
	private boolean CPMFIsento;
	private Date dataContabil;
	private Lancamento lancamento;

	public ExtratoParaGestaoDaCaixaSegmentoF() {
		setControle(new Controle());
		getControle().setTipoRegistro(TipoRegistro.DETALHE);
		setServico(new Servico3());
		getServico().setCodigoSegmento("F");
		setCampoExclusivoCNAB(ArquivoUtils.BRANCO);
		setNaturezaLancamento(ArquivoUtils.BRANCO);
		setComplemento(ArquivoUtils.BRANCO);
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

	public String getCampoExclusivoCNAB() {
		return campoExclusivoCNAB;
	}

	public void setCampoExclusivoCNAB(String campoExclusivoCNAB) {
		this.campoExclusivoCNAB = campoExclusivoCNAB;
	}

	public Date getHorario() {
		return horario;
	}

	public void setHorario(Date horario) {
		this.horario = horario;
	}

	public String getNaturezaLancamento() {
		return naturezaLancamento;
	}

	public void setNaturezaLancamento(String naturezaLancamento) {
		this.naturezaLancamento = naturezaLancamento;
	}

	public int getTipoComplemento() {
		return tipoComplemento;
	}

	public void setTipoComplemento(int tipoComplemento) {
		this.tipoComplemento = tipoComplemento;
	}


	public String getComplemento() {
		return complemento;
	}

	public void setComplemento(String complemento) {
		this.complemento = complemento;
	}
	
	public boolean isCPMFIsento() {
		return CPMFIsento;
	}

	public void setCPMFIsento(boolean CPMFIsento) {
		this.CPMFIsento = CPMFIsento;
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
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCampoExclusivoCNAB(), 88));
		sb.append(ArquivoUtils.getCampoHoraFormatada(getHorario()));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getNaturezaLancamento(), 3));
		sb.append(ArquivoUtils.getCampoNumerico(getTipoComplemento(), 2));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getComplemento(), 20));
		sb.append(ArquivoUtils.getCampoBooleano(isCPMFIsento()));
		sb.append(ArquivoUtils.getCampoDataFormatada(getDataContabil()));
		sb.append(getLancamento().toString());
		
		return sb.toString();
	}

}
