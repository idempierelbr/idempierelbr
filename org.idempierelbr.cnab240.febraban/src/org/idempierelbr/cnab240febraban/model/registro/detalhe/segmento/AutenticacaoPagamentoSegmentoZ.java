package org.idempierelbr.cnab240febraban.model.registro.detalhe.segmento;

import org.idempierelbr.cnab240febraban.enums.TipoRegistro;
import org.idempierelbr.cnab240febraban.model.pojo.Controle;
import org.idempierelbr.cnab240febraban.model.pojo.Servico3;
import org.idempierelbr.cnab240febraban.model.registro.detalhe.RegistroDeDetalhe;
import org.idempierelbr.cnab240febraban.util.ArquivoUtils;


public class AutenticacaoPagamentoSegmentoZ extends RegistroDeDetalhe {
	private Controle controle;
	private Servico3 servico;
	private String autenticacao;
	private String controleBancario;
	private String campoExclusivoCNAB;
	private String ocorrencias;

	public AutenticacaoPagamentoSegmentoZ() {
		setControle(new Controle());
		getControle().setTipoRegistro(TipoRegistro.DETALHE);
		setServico(new Servico3());
		getServico().setCodigoSegmento("Z");
		setAutenticacao(ArquivoUtils.BRANCO);
		setControleBancario(ArquivoUtils.BRANCO);
		setCampoExclusivoCNAB(ArquivoUtils.BRANCO);
		setOcorrencias(ArquivoUtils.BRANCO);
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

	public String getAutenticacao() {
		return autenticacao;
	}

	public void setAutenticacao(String autenticacao) {
		this.autenticacao = autenticacao;
	}

	public String getControleBancario() {
		return controleBancario;
	}

	public void setControleBancario(String controleBancario) {
		this.controleBancario = controleBancario;
	}

	public String getCampoExclusivoCNAB() {
		return campoExclusivoCNAB;
	}

	public void setCampoExclusivoCNAB(String campoExclusivoCNAB) {
		this.campoExclusivoCNAB = campoExclusivoCNAB;
	}

	public String getOcorrencias() {
		return ocorrencias;
	}

	public void setOcorrencias(String ocorrencias) {
		this.ocorrencias = ocorrencias;
	}

	@Override
	public String getConteudoRegistro() {
		StringBuilder sb = new StringBuilder(TAMANHO_REGISTRO);
		sb.append(getControle().toString());
		sb.append(getServico().toString());
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getAutenticacao(), 64));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getControleBancario(), 25));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCampoExclusivoCNAB(), 127));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getOcorrencias(), 10));
		
		return sb.toString();
	}

}