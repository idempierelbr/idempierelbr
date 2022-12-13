package org.idempierelbr.cnab240febraban.model.registro.detalhe.segmento;

import org.idempierelbr.cnab240febraban.enums.TipoRegistro;
import org.idempierelbr.cnab240febraban.model.pojo.Controle;
import org.idempierelbr.cnab240febraban.model.pojo.Servico4;
import org.idempierelbr.cnab240febraban.model.registro.detalhe.RegistroDeDetalhe;
import org.idempierelbr.cnab240febraban.util.ArquivoUtils;


public class AlegacaoSacadoSegmentoY02 extends RegistroDeDetalhe {
	private Controle controle;
	private Servico4 servico;
	private int codigoRegistroOpcional;
	private long codigoBarras;
	private int codigoPadrao;
	private int codigoOcorrencia;
	private String complementoOcorrencia;
	private String campoExclusivoCNAB;
	private String codigoOcorrencias;

	public AlegacaoSacadoSegmentoY02() {
		setControle(new Controle());
		getControle().setTipoRegistro(TipoRegistro.DETALHE);
		setServico(new Servico4());
		getServico().setCodigoSegmento("Y");
		getServico().setCodigoMovimentoRemessa(40);
		setCodigoRegistroOpcional(2);
		setComplementoOcorrencia(ArquivoUtils.BRANCO);
		setCampoExclusivoCNAB(ArquivoUtils.BRANCO);
		setCodigoOcorrencias(ArquivoUtils.BRANCO);
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

	public int getCodigoRegistroOpcional() {
		return codigoRegistroOpcional;
	}

	public void setCodigoRegistroOpcional(int codigoRegistroOpcional) {
		this.codigoRegistroOpcional = codigoRegistroOpcional;
	}

	public long getCodigoBarras() {
		return codigoBarras;
	}

	public void setCodigoBarras(long codigoBarras) {
		this.codigoBarras = codigoBarras;
	}

	public int getCodigoPadrao() {
		return codigoPadrao;
	}

	public void setCodigoPadrao(int codigoPadrao) {
		this.codigoPadrao = codigoPadrao;
	}

	public int getCodigoOcorrencia() {
		return codigoOcorrencia;
	}

	public void setCodigoOcorrencia(int codigoOcorrencia) {
		this.codigoOcorrencia = codigoOcorrencia;
	}

	public String getComplementoOcorrencia() {
		return complementoOcorrencia;
	}

	public void setComplementoOcorrencia(String complementoOcorrencia) {
		this.complementoOcorrencia = complementoOcorrencia;
	}

	public String getCampoExclusivoCNAB() {
		return campoExclusivoCNAB;
	}

	public void setCampoExclusivoCNAB(String campoExclusivoCNAB) {
		this.campoExclusivoCNAB = campoExclusivoCNAB;
	}

	public String getCodigoOcorrencias() {
		return codigoOcorrencias;
	}

	public void setCodigoOcorrencias(String codigoOcorencias) {
		this.codigoOcorrencias = codigoOcorencias;
	}

	@Override
	public String getConteudoRegistro() {
		StringBuilder sb = new StringBuilder(TAMANHO_REGISTRO);
		sb.append(getControle().toString());
		sb.append(getServico().toString());
		sb.append(ArquivoUtils.getCampoNumerico(getCodigoRegistroOpcional(), 2));
		sb.append(ArquivoUtils.getCampoNumerico(getCodigoBarras(), 44));
		sb.append(ArquivoUtils.getCampoNumerico(getCodigoPadrao(), 2));
		sb.append(ArquivoUtils.getCampoNumerico(getCodigoOcorrencia(), 4));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getComplementoOcorrencia(), 150));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCampoExclusivoCNAB(), 11));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCodigoOcorrencias(), 10));
		
		return sb.toString();
	}
}
