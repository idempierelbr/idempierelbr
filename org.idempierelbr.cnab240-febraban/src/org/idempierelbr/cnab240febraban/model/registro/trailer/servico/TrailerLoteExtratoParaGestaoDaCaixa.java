package org.idempierelbr.cnab240febraban.model.registro.trailer.servico;

import java.util.Date;

import org.idempierelbr.cnab240febraban.enums.TipoMoeda;
import org.idempierelbr.cnab240febraban.model.pojo.Controle;
import org.idempierelbr.cnab240febraban.model.pojo.Empresa;
import org.idempierelbr.cnab240febraban.model.pojo.Servico2;
import org.idempierelbr.cnab240febraban.model.pojo.SomatoriaSaldosFinais;
import org.idempierelbr.cnab240febraban.model.registro.trailer.TrailerLote;
import org.idempierelbr.cnab240febraban.util.ArquivoUtils;



public class TrailerLoteExtratoParaGestaoDaCaixa extends TrailerLote {
	private Controle controle;
	private Servico2 servico;
	private String campoExclusivoCNAB1;
	private Empresa empresa;
	private String naturezaSaldo;
	private Date horarioSaldo;
	private String campoExclusivoCNAB2;
	private double valorLimiteConta;
	private SomatoriaSaldosFinais somatoriaSaldosFinais;
	private TipoMoeda tipoMoeda;
	private int numeroSequenciaExtrato;
	private int quantidadeRegistros;
	private String campoExclusivoCNAB3;

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

	public Date getHorarioSaldo() {
		return horarioSaldo;
	}

	public void setHorarioSaldo(Date horarioSaldo) {
		this.horarioSaldo = horarioSaldo;
	}

	public String getCampoExclusivoCNAB2() {
		return campoExclusivoCNAB2;
	}

	public void setCampoExclusivoCNAB2(String campoExclusivoCNAB2) {
		this.campoExclusivoCNAB2 = campoExclusivoCNAB2;
	}

	public double getValorLimiteConta() {
		return valorLimiteConta;
	}

	public void setValorLimiteConta(double valorLimiteConta) {
		this.valorLimiteConta = valorLimiteConta;
	}

	public SomatoriaSaldosFinais getSomatoriaSaldosFinais() {
		return somatoriaSaldosFinais;
	}

	public void setSomatoriaSaldosFinais(
			SomatoriaSaldosFinais somatoriaSaldosFinais) {
		this.somatoriaSaldosFinais = somatoriaSaldosFinais;
	}

	public TipoMoeda getTipoMoeda() {
		return tipoMoeda;
	}

	public void setTipoMoeda(TipoMoeda tipoMoeda) {
		this.tipoMoeda = tipoMoeda;
	}

	public int getNumeroSequenciaExtrato() {
		return numeroSequenciaExtrato;
	}

	public void setNumeroSequenciaExtrato(int numeroSequenciaExtrato) {
		this.numeroSequenciaExtrato = numeroSequenciaExtrato;
	}

	public int getQuantidadeRegistros() {
		return quantidadeRegistros;
	}

	public void setQuantidadeRegistros(int quantidadeRegistros) {
		this.quantidadeRegistros = quantidadeRegistros;
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
		sb.append(ArquivoUtils.getCampoHoraFormatada(getHorarioSaldo()));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCampoExclusivoCNAB2(), 13));
		sb.append(getSomatoriaSaldosFinais().toString());
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getTipoMoeda().getSigla(), 3));
		sb.append(ArquivoUtils.getCampoNumerico(getNumeroSequenciaExtrato(), 5));
		sb.append(ArquivoUtils.getCampoNumerico(getQuantidadeRegistros(), 6));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCampoExclusivoCNAB3(), 56));
		
		return sb.toString();
	}

}
