package org.idempierelbr.cnab240febraban.model.registro.detalhe.segmento;

import java.util.Date;

import org.idempierelbr.cnab240febraban.enums.TipoOperacao;
import org.idempierelbr.cnab240febraban.enums.TipoRegistro;
import org.idempierelbr.cnab240febraban.enums.TipoServico;
import org.idempierelbr.cnab240febraban.model.pojo.Controle;
import org.idempierelbr.cnab240febraban.model.pojo.Saldo3;
import org.idempierelbr.cnab240febraban.model.pojo.Servico2;
import org.idempierelbr.cnab240febraban.model.registro.RegistroInicial;
import org.idempierelbr.cnab240febraban.util.ArquivoUtils;



public class ExtratoParaGestaoDaCaixaSaldoFinal extends RegistroInicial{
	private Controle controle;
	private Servico2 servico;
	private String campoExclusivoCNAB1;
	private String naturezaSaldo;
	private Date horarioSaldo;
	private String campoExclusivoCNAB2;
	private Saldo3 saldoFinal;
	private String usoBanco;
	private String campoExclusivoCNAB3;

	public ExtratoParaGestaoDaCaixaSaldoFinal() {
		setControle(new Controle());
		getControle().setTipoRegistro(TipoRegistro.DETALHE);
		setServico(new Servico2());
		getServico().setNumeroVersaoLayoutLote(10);
		getServico().setTipoOperacao(TipoOperacao.EXTRATO_PARA_GESTAO_DE_CAIXA);
		getServico().setTipoServico(TipoServico.GESTAO_DE_CAIXA);
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

	public void setCampoExclusivoCNAB2(String campoExlcusivoCNAB2) {
		this.campoExclusivoCNAB2 = campoExlcusivoCNAB2;
	}

	public Saldo3 getSaldoFinal() {
		return saldoFinal;
	}

	public void setSaldoFinal(Saldo3 saldoFinal) {
		this.saldoFinal = saldoFinal;
	}

	public String getUsoBanco() {
		return usoBanco;
	}

	public void setUsoBanco(String usoBanco) {
		this.usoBanco = usoBanco;
	}

	public String getCampoExclusivoCNAB3() {
		return campoExclusivoCNAB3;
	}

	public void setCampoExclusivoCNAB3(String campoExlcusivoCNAB3) {
		this.campoExclusivoCNAB3 = campoExlcusivoCNAB3;
	}

	@Override
	public String getConteudoRegistro() {
		StringBuilder sb = new StringBuilder(TAMANHO_REGISTRO);
		sb.append(getControle().toString());
		sb.append(getServico().toString());
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCampoExclusivoCNAB1(), 86));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getNaturezaSaldo(), 3));
		sb.append(ArquivoUtils.getCampoHoraFormatada(getHorarioSaldo()));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCampoExclusivoCNAB2(), 31));
		sb.append(getSaldoFinal().toString());
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getUsoBanco(), 20));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCampoExclusivoCNAB3(), 51));
		
		return sb.toString();
	}

}
