package org.idempierelbr.cnab240febraban.model.registro.detalhe.segmento;

import org.idempierelbr.cnab240febraban.model.pojo.Controle;
import org.idempierelbr.cnab240febraban.model.pojo.DadosParcela;
import org.idempierelbr.cnab240febraban.model.pojo.Servico4;
import org.idempierelbr.cnab240febraban.model.registro.detalhe.RegistroDeDetalhe;
import org.idempierelbr.cnab240febraban.util.ArquivoUtils;


public class ComprorSegmentoI11 extends RegistroDeDetalhe {
	private Controle controle;
	private Servico4 servico;
	private int codigoRegistroOpcional;
	private DadosParcela dadosDaParcela;
	private String campoExclusivoCNAB;

	public Controle getControle() {
		return controle;
	}

	public void setControle(Controle controle) {
		this.controle = controle;
	}

	public Servico4 getServico() {
		return servico;
	}

	public void setServico(Servico4 servico) {
		this.servico = servico;
	}

	public int getCodigoRegistroOpcional() {
		return codigoRegistroOpcional;
	}

	public void setCodigoRegistroOpcional(int codigoRegistroOpcional) {
		this.codigoRegistroOpcional = codigoRegistroOpcional;
	}

	public DadosParcela getDadosDaParcela() {
		return dadosDaParcela;
	}

	public void setDadosDaParcela(DadosParcela dadosDaParcela) {
		this.dadosDaParcela = dadosDaParcela;
	}

	public String getCampoExclusivoCNAB() {
		return campoExclusivoCNAB;
	}

	public void setCampoExclusivoCNAB(String campoExclusivoCNAB) {
		this.campoExclusivoCNAB = campoExclusivoCNAB;
	}

	@Override
	public String getConteudoRegistro() {
		StringBuilder sb = new StringBuilder(TAMANHO_REGISTRO);
		sb.append(getControle().toString());
		sb.append(getServico().toString());
		sb.append(ArquivoUtils.getCampoNumerico(getCodigoRegistroOpcional(), 2));
		sb.append(getDadosDaParcela().toString());
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCampoExclusivoCNAB(), 41));
		
		return sb.toString();
	}

}
