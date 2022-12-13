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



public class ExtratoParaGestaoCaixaSaldoInicial extends RegistroInicial{
	private Controle controle;
	private Servico2 servico;
	private String campoExclusivoCNAB1;
	private String naturezaDoSaldo;
	private Date horarioSaldoInicial;
	private String campoExclusivoCNAB2;
	private Saldo3 saldoInicial;
	private String usoBanco;
	private String campoExclusivoCNAB3;

	public ExtratoParaGestaoCaixaSaldoInicial() {
		setControle(new Controle());
		getControle().setTipoRegistro(TipoRegistro.REGISTROS_INICIAIS_DO_LOTE);
		setServico(new Servico2());
		getServico().setTipoOperacao(TipoOperacao.EXTRATO_PARA_GESTAO_DE_CAIXA);
		getServico().setTipoServico(TipoServico.GESTAO_DE_CAIXA);
		getServico().setNumeroVersaoLayoutLote(10);
		setCampoExclusivoCNAB1(ArquivoUtils.BRANCO);
		setNaturezaDoSaldo(ArquivoUtils.BRANCO);
		setCampoExclusivoCNAB2(ArquivoUtils.BRANCO);
		setUsoBanco(ArquivoUtils.BRANCO);
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

	public String getNaturezaDoSaldo() {
		return naturezaDoSaldo;
	}

	public void setNaturezaDoSaldo(String naturezaDoSaldo) {
		this.naturezaDoSaldo = naturezaDoSaldo;
	}

	public Date getHorarioSaldoInicial() {
		return horarioSaldoInicial;
	}

	public void setHorarioSaldoInicial(Date horarioSaldoInicial) {
		this.horarioSaldoInicial = horarioSaldoInicial;
	}

	public String getCampoExclusivoCNAB2() {
		return campoExclusivoCNAB2;
	}

	public void setCampoExclusivoCNAB2(String campoExclusivoCNAB2) {
		this.campoExclusivoCNAB2 = campoExclusivoCNAB2;
	}

	public Saldo3 getSaldoInicial() {
		return saldoInicial;
	}

	public void setSaldoInicial(Saldo3 saldoInicial) {
		this.saldoInicial = saldoInicial;
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

	public void setCampoExclusivoCNAB3(String campoExclusivoCNAB) {
		this.campoExclusivoCNAB3 = campoExclusivoCNAB;
	}

	@Override
	public String getConteudoRegistro() {
		StringBuilder sb = new StringBuilder(TAMANHO_REGISTRO);
		sb.append(getControle().toString());
		sb.append(getServico().toString());
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCampoExclusivoCNAB1(), 86));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getNaturezaDoSaldo(), 3));
		sb.append(ArquivoUtils.getCampoHoraFormatada(getHorarioSaldoInicial()));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCampoExclusivoCNAB2(), 31));
		sb.append(getSaldoInicial().toString());
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getUsoBanco(), 20));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCampoExclusivoCNAB3(), 51));
		
		return sb.toString();
	}

}
