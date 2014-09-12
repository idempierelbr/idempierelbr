package org.idempierelbr.cnab240febraban.model.registro.detalhe.segmento;

import org.idempierelbr.cnab240febraban.enums.TipoRegistro;
import org.idempierelbr.cnab240febraban.model.pojo.Controle;
import org.idempierelbr.cnab240febraban.model.pojo.DadosParaDebito;
import org.idempierelbr.cnab240febraban.model.pojo.Desconto;
import org.idempierelbr.cnab240febraban.model.pojo.Multa;
import org.idempierelbr.cnab240febraban.model.pojo.Servico4;
import org.idempierelbr.cnab240febraban.model.registro.detalhe.RegistroDeDetalhe;
import org.idempierelbr.cnab240febraban.util.ArquivoUtils;


public class TitulosEmCobrancaSegmentoR extends RegistroDeDetalhe {
	private Controle controle;
	private Servico4 servico;
	private Desconto desconto2;
	private Desconto desconto3;
	private Multa multa;
	private String informacaoAoSacado;
	private String informacao3;
	private String informacao4;
	private String campoExclusivoCNAB1;
	private long codigoOcorrenciaSacado;
	private DadosParaDebito dadosParaDebito;
	private boolean debitoAutomatico;
	private String campoExclusivoCNAB2;

	public TitulosEmCobrancaSegmentoR() {
		setControle(new Controle());
		getControle().setTipoRegistro(TipoRegistro.DETALHE);
		setServico(new Servico4());
		getServico().setCodigoSegmento("R");
		setDesconto2(new Desconto());
		setDesconto3(new Desconto());
		setMulta(new Multa());
		setInformacao3(ArquivoUtils.BRANCO);
		setInformacao4(ArquivoUtils.BRANCO);
		setCampoExclusivoCNAB1(ArquivoUtils.BRANCO);
		setDebitoAutomatico(false);
		setCampoExclusivoCNAB2(ArquivoUtils.BRANCO);
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

	public Desconto getDesconto2() {
		return desconto2;
	}

	public void setDesconto2(Desconto desconto2) {
		this.desconto2 = desconto2;
	}

	public Desconto getDesconto3() {
		return desconto3;
	}

	public void setDesconto3(Desconto desconto3) {
		this.desconto3 = desconto3;
	}

	public Multa getMulta() {
		return multa;
	}

	public void setMulta(Multa multa) {
		this.multa = multa;
	}

	public String getInformacaoAoSacado() {
		return informacaoAoSacado;
	}

	public void setInformacaoAoSacado(String informacaoAoSacado) {
		this.informacaoAoSacado = informacaoAoSacado;
	}

	public String getInformacao3() {
		return informacao3;
	}

	public void setInformacao3(String informacao3) {
		this.informacao3 = informacao3;
	}

	public String getInformacao4() {
		return informacao4;
	}

	public void setInformacao4(String informacao4) {
		this.informacao4 = informacao4;
	}

	public String getCampoExclusivoCNAB1() {
		return campoExclusivoCNAB1;
	}

	public void setCampoExclusivoCNAB1(String campoExclusivoCNAB1) {
		this.campoExclusivoCNAB1 = campoExclusivoCNAB1;
	}

	public long getCodigoOcorrenciaSacado() {
		return codigoOcorrenciaSacado;
	}

	public void setCodigoOcorrenciaSacado(long codigoOcorrenciaSacado) {
		this.codigoOcorrenciaSacado = codigoOcorrenciaSacado;
	}

	public DadosParaDebito getDadosParaDebito() {
		return dadosParaDebito;
	}

	public void setDadosParaDebito(DadosParaDebito dadosParaDebito) {
		this.dadosParaDebito = dadosParaDebito;
	}

	public boolean isDebitoAutomatico() {
		return debitoAutomatico;
	}

	public void setDebitoAutomatico(boolean debitoAutomatico) {
		this.debitoAutomatico = debitoAutomatico;
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
		sb.append(getDesconto2().toString());
		sb.append(getDesconto3().toString());
		sb.append(getMulta().toString());
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getInformacaoAoSacado(), 10));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getInformacao3(), 40));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getInformacao4(), 40));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCampoExclusivoCNAB1(), 20));
		sb.append(ArquivoUtils.getCampoNumerico(getCodigoOcorrenciaSacado(), 8));
		sb.append(getDadosParaDebito().toString());
		sb.append(ArquivoUtils.getCampoBooleano(isDebitoAutomatico()));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCampoExclusivoCNAB2(), 9));
		
		return sb.toString();
	}

}
