package org.idempierelbr.cnab240febraban.model.registro.detalhe.segmento;

import org.idempierelbr.cnab240febraban.model.pojo.Controle;
import org.idempierelbr.cnab240febraban.model.pojo.PagamentoTitulosCobrancaSegmentoAux;
import org.idempierelbr.cnab240febraban.model.pojo.Servico;
import org.idempierelbr.cnab240febraban.model.registro.detalhe.RegistroDeDetalhe;
import org.idempierelbr.cnab240febraban.util.ArquivoUtils;


public class PagamentoTitulosCobrancaSegmentoJ extends RegistroDeDetalhe {
	private Controle controle;
	private Servico servico;
	private PagamentoTitulosCobrancaSegmentoAux pagamento;
	private String nossoNumero; // numero do doc atribuito pelo banco
	private int codigoMoeda;
	private String campoExclusivoCNAB;
	private String codigoOcorrencias;

	public PagamentoTitulosCobrancaSegmentoJ() {
		setControle(new Controle());
		setServico(new Servico());
		setPagamento(new PagamentoTitulosCobrancaSegmentoAux());
		setNossoNumero(ArquivoUtils.BRANCO);
		setCodigoMoeda(0);
		setCampoExclusivoCNAB(ArquivoUtils.BRANCO);
		setCodigoOcorrencias(ArquivoUtils.BRANCO);
	}

	@Override
	public String getConteudoRegistro() {
		StringBuilder sb = new StringBuilder(TAMANHO_REGISTRO);
		sb.append(getControle().toString());
		sb.append(getServico().toString());
		sb.append(getPagamento().toString());
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getNossoNumero(), 20));
		sb.append(ArquivoUtils.getCampoNumerico(getCodigoMoeda(), 2));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCampoExclusivoCNAB(), 6));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCodigoOcorrencias(), 10));
		
		return sb.toString();
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

	public PagamentoTitulosCobrancaSegmentoAux getPagamento() {
		return pagamento;
	}

	public void setPagamento(PagamentoTitulosCobrancaSegmentoAux pagamento) {
		this.pagamento = pagamento;
	}

	public String getNossoNumero() {
		return nossoNumero;
	}

	public void setNossoNumero(String nossoNumero) {
		this.nossoNumero = nossoNumero;
	}

	public int getCodigoMoeda() {
		return codigoMoeda;
	}

	public void setCodigoMoeda(int codigoMoeda) {
		this.codigoMoeda = codigoMoeda;
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

	public void setCodigoOcorrencias(String codigoOcorrencias) {
		this.codigoOcorrencias = codigoOcorrencias;
	}

}
