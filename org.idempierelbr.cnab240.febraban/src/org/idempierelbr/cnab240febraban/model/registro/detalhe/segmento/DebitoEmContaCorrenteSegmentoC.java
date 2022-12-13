package org.idempierelbr.cnab240febraban.model.registro.detalhe.segmento;

import org.idempierelbr.cnab240febraban.enums.TipoRegistro;
import org.idempierelbr.cnab240febraban.model.pojo.ContaCorrente;
import org.idempierelbr.cnab240febraban.model.pojo.Controle;
import org.idempierelbr.cnab240febraban.model.pojo.DadosComplementares4;
import org.idempierelbr.cnab240febraban.model.pojo.Servico3;
import org.idempierelbr.cnab240febraban.model.registro.detalhe.RegistroDeDetalhe;
import org.idempierelbr.cnab240febraban.util.ArquivoUtils;


public class DebitoEmContaCorrenteSegmentoC extends RegistroDeDetalhe {
	private Controle controle;
	private Servico3 servico;
	private String campoExclusivoCNAB1;
	private DadosComplementares4 dadosComplementares;
	private ContaCorrente substituta;
	private Double valorINSS;
	private String campoExclusivoCNAB2;

	public DebitoEmContaCorrenteSegmentoC() {
		setControle(new Controle());
		getControle().setTipoRegistro(TipoRegistro.DETALHE);
		setServico(new Servico3());
		getServico().setCodigoSegmento("C");
		setCampoExclusivoCNAB1(ArquivoUtils.BRANCO);
		setDadosComplementares(new DadosComplementares4());
		setSubstituta(new ContaCorrente());
		setCampoExclusivoCNAB2(ArquivoUtils.BRANCO);
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

	public DadosComplementares4 getDadosComplementares() {
		return dadosComplementares;
	}

	public void setDadosComplementares(DadosComplementares4 dadosComplementares) {
		this.dadosComplementares = dadosComplementares;
	}

	public ContaCorrente getSubstituta() {
		return substituta;
	}

	public void setSubstituta(ContaCorrente substituta) {
		this.substituta = substituta;
	}

	public Double getValorINSS() {
		return valorINSS;
	}

	public void setValorINSS(Double valorINSS) {
		this.valorINSS = valorINSS;
	}

	public String getCampoExclusivoCNAB1() {
		return campoExclusivoCNAB1;
	}

	public void setCampoExclusivoCNAB1(String campoExclusivoCNAB1) {
		this.campoExclusivoCNAB1 = campoExclusivoCNAB1;
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
		sb.append(getServico().toString());
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCampoExclusivoCNAB1(), 3));
		sb.append(getDadosComplementares().toString());
		sb.append(getSubstituta().toString());
		sb.append(ArquivoUtils.getCampoDecimal(getValorINSS(), 13, 2));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCampoExclusivoCNAB2(), 113));
		
		return sb.toString();
	}
}
