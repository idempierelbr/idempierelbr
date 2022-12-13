package org.idempierelbr.cnab240febraban.model.registro.detalhe.segmento;

import org.idempierelbr.cnab240febraban.enums.TipoRegistro;
import org.idempierelbr.cnab240febraban.model.pojo.Composicao;
import org.idempierelbr.cnab240febraban.model.pojo.Controle;
import org.idempierelbr.cnab240febraban.model.pojo.Servico3;
import org.idempierelbr.cnab240febraban.model.registro.detalhe.RegistroDeDetalhe;
import org.idempierelbr.cnab240febraban.util.ArquivoUtils;


public class ExtratoParaGestaoDaCaixaSegmentoI extends RegistroDeDetalhe {
	private Controle controle;
	private Servico3 servico;
	private String campoExclusivoCNAB1;
	private double valorTotalCDS;
	private Composicao composicao;
	private String campoExclusivoCNAB2;

	public ExtratoParaGestaoDaCaixaSegmentoI() {
		setControle(new Controle());
		getControle().setTipoRegistro(TipoRegistro.DETALHE);
		setServico(new Servico3());
		getServico().setCodigoSegmento("I");
		setCampoExclusivoCNAB1(ArquivoUtils.getCampoAlfaNumerico(getCampoExclusivoCNAB1(), 88));
		setComposicao(new Composicao());
		setCampoExclusivoCNAB2(ArquivoUtils.getCampoAlfaNumerico(getCampoExclusivoCNAB2(), 66));
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

	public double getValorTotalCDS() {
		return valorTotalCDS;
	}

	public void setValorTotalCDS(double valorTotalCDS) {
		this.valorTotalCDS = valorTotalCDS;
	}

	public Composicao getComposicao() {
		return composicao;
	}

	public void setComposicao(Composicao composicao) {
		this.composicao = composicao;
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
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCampoExclusivoCNAB1(), 88));
		sb.append(ArquivoUtils.getCampoDecimal(getValorTotalCDS(), 16, 2));
		sb.append(getComposicao().toString());
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCampoExclusivoCNAB2(), 66));
		
		return sb.toString();
	}

}
