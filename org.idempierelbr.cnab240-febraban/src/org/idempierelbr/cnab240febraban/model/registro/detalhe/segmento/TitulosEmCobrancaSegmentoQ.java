package org.idempierelbr.cnab240febraban.model.registro.detalhe.segmento;

import org.idempierelbr.cnab240febraban.enums.TipoRegistro;
import org.idempierelbr.cnab240febraban.model.pojo.Controle;
import org.idempierelbr.cnab240febraban.model.pojo.DadosDoSacado;
import org.idempierelbr.cnab240febraban.model.pojo.DadosPessoa;
import org.idempierelbr.cnab240febraban.model.pojo.Servico4;
import org.idempierelbr.cnab240febraban.model.registro.detalhe.RegistroDeDetalhe;
import org.idempierelbr.cnab240febraban.util.ArquivoUtils;


public class TitulosEmCobrancaSegmentoQ extends RegistroDeDetalhe {
	private Controle controle;
	private Servico4 servico;
	private DadosDoSacado dadosDoSacado;
	private DadosPessoa sacadorAvalista;
	private int codigoBancoCorrespondenteNaCompensacao;
	private String nossuNumeroBancoCorrespondente;
	private String campoExclusivoCNAB;

	public TitulosEmCobrancaSegmentoQ() {
		setControle(new Controle());
		getControle().setTipoRegistro(TipoRegistro.DETALHE);
		setServico(new Servico4());
		setDadosDoSacado(new DadosDoSacado());
		setSacadorAvalista(new DadosPessoa());
		//setCodigoBancoCorrespondenteNaCompensacao(0);
		setNossuNumeroBancoCorrespondente(ArquivoUtils.BRANCO);
		setCampoExclusivoCNAB(ArquivoUtils.BRANCO);
	}

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

	public DadosDoSacado getDadosDoSacado() {
		return dadosDoSacado;
	}

	public void setDadosDoSacado(DadosDoSacado dadosDoSacado) {
		this.dadosDoSacado = dadosDoSacado;
	}

	public DadosPessoa getSacadorAvalista() {
		return sacadorAvalista;
	}

	public void setSacadorAvalista(DadosPessoa sacadorAvalista) {
		this.sacadorAvalista = sacadorAvalista;
	}

	public int getCodigoBancoCorrespondenteNaCompensacao() {
		return codigoBancoCorrespondenteNaCompensacao;
	}

	public void setCodigoBancoCorrespondenteNaCompensacao(
			int codigoBancoCorrespondenteNaCompensacao) {
		this.codigoBancoCorrespondenteNaCompensacao = codigoBancoCorrespondenteNaCompensacao;
	}

	public String getNossuNumeroBancoCorrespondente() {
		return nossuNumeroBancoCorrespondente;
	}

	public void setNossuNumeroBancoCorrespondente(
			String nossuNumeroBancoCorrespondente) {
		this.nossuNumeroBancoCorrespondente = nossuNumeroBancoCorrespondente;
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
		sb.append(getDadosDoSacado().toString());
		sb.append(getSacadorAvalista().toString());
		sb.append(ArquivoUtils.getCampoNumerico(getCodigoBancoCorrespondenteNaCompensacao(), 3));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getNossuNumeroBancoCorrespondente(), 20));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCampoExclusivoCNAB(), 8));
		
		return sb.toString();
	}
}