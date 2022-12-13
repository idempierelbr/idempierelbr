package org.idempierelbr.cnab240febraban.model.registro.detalhe.segmento;

import org.idempierelbr.cnab240febraban.enums.TipoRegistro;
import org.idempierelbr.cnab240febraban.model.pojo.Controle;
import org.idempierelbr.cnab240febraban.model.pojo.DadosComplementares;
import org.idempierelbr.cnab240febraban.model.pojo.Servico3;
import org.idempierelbr.cnab240febraban.model.registro.detalhe.RegistroDeDetalhe;
import org.idempierelbr.cnab240febraban.util.ArquivoUtils;


public class PagamentoCreditoEmContaSegmentoB extends RegistroDeDetalhe {
	private Controle controle;
	private Servico3 servico;
	private String campoExclusivoCNAB1;
	/*-------------------------------------*/
	private DadosComplementares dadosComplementares;
	private int aviso;
	private int codigoUGCentralizadora;
	private String campoExclusivoCNAB2;

	public PagamentoCreditoEmContaSegmentoB() {
		setControle(new Controle());
		getControle().setTipoRegistro(TipoRegistro.DETALHE);
		setServico(new Servico3());
		getServico().setCodigoSegmento("B");
		setCampoExclusivoCNAB1(ArquivoUtils.BRANCO);
		setDadosComplementares(new DadosComplementares());
		setAviso(0);
		setCodigoUGCentralizadora(0);
		setCampoExclusivoCNAB2(ArquivoUtils.BRANCO);
	}

	@Override
	public String getConteudoRegistro() {
		StringBuilder sb = new StringBuilder(TAMANHO_REGISTRO);
		sb.append(getControle().toString()); //8
		sb.append(getServico().toString()); //6
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCampoExclusivoCNAB1(), 3));
		sb.append(getDadosComplementares().toString()); //208
		sb.append(ArquivoUtils.getCampoNumerico(getAviso(), 1));
		sb.append(ArquivoUtils.getCampoNumerico(getCodigoUGCentralizadora(), 6));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCampoExclusivoCNAB2(), 8));
		
		verificaTamanhoRegistro(sb);
		return sb.toString();
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

	public DadosComplementares getDadosComplementares() {
		return dadosComplementares;
	}

	public void setDadosComplementares(DadosComplementares dadosComplementares) {
		this.dadosComplementares = dadosComplementares;
	}

	public int getAviso() {
		return aviso;
	}

	public void setAviso(int aviso) {
		this.aviso = aviso;
	}

	public int getCodigoUGCentralizadora() {
		return codigoUGCentralizadora;
	}

	public void setCodigoUGCentralizadora(int codigoUGCentralizadora) {
		this.codigoUGCentralizadora = codigoUGCentralizadora;
	}

	public String getCampoExclusivoCNAB2() {
		return campoExclusivoCNAB2;
	}

	public void setCampoExclusivoCNAB2(String campoExclusivoCNAB2) {
		this.campoExclusivoCNAB2 = campoExclusivoCNAB2;
	}

}
