package org.idempierelbr.cnab240febraban.model.registro.detalhe.segmento;

import org.idempierelbr.cnab240febraban.model.pojo.Controle;
import org.idempierelbr.cnab240febraban.model.pojo.Pagamento3;
import org.idempierelbr.cnab240febraban.model.pojo.Servico;
import org.idempierelbr.cnab240febraban.model.registro.detalhe.RegistroDeDetalhe;
import org.idempierelbr.cnab240febraban.util.ArquivoUtils;


public class PagamentoDeContaseTributosComCodigosDeBarrasSegmentoO extends RegistroDeDetalhe {
	private Controle controle;
	private Servico servico;
	private Pagamento3 pagamento;
	private String campoExclusivoCNAB;
	private String ocorrencias;

	@Override
	public String getConteudoRegistro() {
		StringBuilder sb = new StringBuilder(TAMANHO_REGISTRO);
		sb.append(getControle().toString());
		sb.append(getServico().toString());
		sb.append(getPagamento().toString());
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCampoExclusivoCNAB(), 68));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getOcorrencias(), 10));
		return null;
	}

	public Controle getControle() {
		return controle;
	}

	public void setControle(Controle controle) {
		this.controle = controle;
	}

	public Servico getServico() {
		return servico;
	}

	public void setServico(Servico servico) {
		this.servico = servico;
	}

	public Pagamento3 getPagamento() {
		return pagamento;
	}

	public void setPagamento(Pagamento3 pagamento) {
		this.pagamento = pagamento;
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

}
