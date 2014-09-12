package org.idempierelbr.cnab240febraban.model.registro.detalhe.segmento;

import org.idempierelbr.cnab240febraban.enums.TipoRegistro;
import org.idempierelbr.cnab240febraban.model.pojo.ArrendamentoMercantil;
import org.idempierelbr.cnab240febraban.model.pojo.Controle;
import org.idempierelbr.cnab240febraban.model.pojo.MutuarioNaEmpresaOrgao;
import org.idempierelbr.cnab240febraban.model.pojo.MutuarioNaEmpresaOrgao2;
import org.idempierelbr.cnab240febraban.model.pojo.Operacao;
import org.idempierelbr.cnab240febraban.model.pojo.Servico7;
import org.idempierelbr.cnab240febraban.model.registro.detalhe.RegistroDeDetalhe;
import org.idempierelbr.cnab240febraban.util.ArquivoUtils;


public class EmprestimoPorConsignacaoRetencaoSegmentoH extends RegistroDeDetalhe {
	private Controle controle;
	private Servico7 servico;
	private MutuarioNaEmpresaOrgao mutuarioNaEmpresaOrgao;
	private Operacao operacao;
	private ArrendamentoMercantil arrendamentoMercantil;
	private MutuarioNaEmpresaOrgao2 mutuarioNaEmpresaOrgao2;
	private String usoBanco;
	private String campoExclusivoCNAB;
	private String ocorrencias;

	public EmprestimoPorConsignacaoRetencaoSegmentoH() {
		setControle(new Controle());
		getControle().setTipoRegistro(TipoRegistro.DETALHE);
		setServico(new Servico7());
		getServico().setCodigoSegmento("H");
		setMutuarioNaEmpresaOrgao(new MutuarioNaEmpresaOrgao());
		setOperacao(new Operacao());
		setArrendamentoMercantil(new ArrendamentoMercantil());
		setMutuarioNaEmpresaOrgao2(new MutuarioNaEmpresaOrgao2());
		setUsoBanco(ArquivoUtils.BRANCO);
		setCampoExclusivoCNAB(ArquivoUtils.BRANCO);
		setOcorrencias(ArquivoUtils.BRANCO);
	}
	
	public Controle getControle() {
		return controle;
	}

	public void setControle(Controle controle) {
		this.controle = controle;
	}

	public Servico7 getServico() {
		return servico;
	}

	public void setServico(Servico7 servico) {
		this.servico = servico;
	}

	public MutuarioNaEmpresaOrgao getMutuarioNaEmpresaOrgao() {
		return mutuarioNaEmpresaOrgao;
	}

	public void setMutuarioNaEmpresaOrgao(MutuarioNaEmpresaOrgao mutuarioNaEmpresaOrgao) {
		this.mutuarioNaEmpresaOrgao = mutuarioNaEmpresaOrgao;
	}

	public Operacao getOperacao() {
		return operacao;
	}

	public void setOperacao(Operacao operacao) {
		this.operacao = operacao;
	}

	public ArrendamentoMercantil getArrendamentoMercantil() {
		return arrendamentoMercantil;
	}

	public void setArrendamentoMercantil(ArrendamentoMercantil arrendamentoMercantil) {
		this.arrendamentoMercantil = arrendamentoMercantil;
	}

	public MutuarioNaEmpresaOrgao2 getMutuarioNaEmpresaOrgao2() {
		return mutuarioNaEmpresaOrgao2;
	}

	public void setMutuarioNaEmpresaOrgao2(MutuarioNaEmpresaOrgao2 mutuarioNaEmpresaOrgao2) {
		this.mutuarioNaEmpresaOrgao2 = mutuarioNaEmpresaOrgao2;
	}

	public String getUsoBanco() {
		return usoBanco;
	}

	public void setUsoBanco(String usoBanco) {
		this.usoBanco = usoBanco;
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
		sb.append(getMutuarioNaEmpresaOrgao().toString());
		sb.append(getOperacao().toString());
		sb.append(getArrendamentoMercantil().toString());
		sb.append(getMutuarioNaEmpresaOrgao2().toString());
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getUsoBanco(), 6));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCampoExclusivoCNAB(), 3));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getOcorrencias(), 10));
		
		return sb.toString();
	}

}
