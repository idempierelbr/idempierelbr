package org.idempierelbr.cnab240febraban.model.registro.detalhe.segmento;

import org.idempierelbr.cnab240febraban.enums.TipoRegistro;
import org.idempierelbr.cnab240febraban.model.pojo.Controle;
import org.idempierelbr.cnab240febraban.model.pojo.DadosPessoa;
import org.idempierelbr.cnab240febraban.model.pojo.Desconto;
import org.idempierelbr.cnab240febraban.model.pojo.Multa;
import org.idempierelbr.cnab240febraban.model.pojo.Servico4;
import org.idempierelbr.cnab240febraban.model.registro.detalhe.RegistroDeDetalhe;
import org.idempierelbr.cnab240febraban.util.ArquivoUtils;


public class BloquetoEletronicoSegmentoH extends RegistroDeDetalhe {
	private Controle controle;
	private Servico4 servico;
	private DadosPessoa sacadorAvalista;
	private Desconto desconto2;
	private Desconto desconto3;
	private Multa multa;
	private Double valorAbatimento;
	private String informacao1;
	private String informacao2;

	public BloquetoEletronicoSegmentoH() {
		setControle(new Controle());
		getControle().setTipoRegistro(TipoRegistro.DETALHE);
		setServico(new Servico4());
		getServico().setCodigoSegmento("H");
		setSacadorAvalista(new DadosPessoa());
		setDesconto2(new Desconto());
		setDesconto3(new Desconto());
		setMulta(new Multa());
		setInformacao1(ArquivoUtils.BRANCO);
		setInformacao2(ArquivoUtils.BRANCO);
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

	public DadosPessoa getSacadorAvalista() {
		return sacadorAvalista;
	}

	public void setSacadorAvalista(DadosPessoa sacadorAvalista) {
		this.sacadorAvalista = sacadorAvalista;
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

	public Double getValorAbatimento() {
		return valorAbatimento;
	}

	public void setValorAbatimento(Double valorAbatimento) {
		this.valorAbatimento = valorAbatimento;
	}

	public String getInformacao1() {
		return informacao1;
	}

	public void setInformacao1(String informacao1) {
		this.informacao1 = informacao1;
	}

	public String getInformacao2() {
		return informacao2;
	}

	public void setInformacao2(String informacao2) {
		this.informacao2 = informacao2;
	}

	@Override
	public String getConteudoRegistro() {
		StringBuilder sb = new StringBuilder(TAMANHO_REGISTRO);
		sb.append(getControle().toString());
		sb.append(getServico().toString());
		sb.append(getSacadorAvalista().toString());
		sb.append(getDesconto2().toString());
		sb.append(getDesconto3().toString());
		sb.append(getMulta().toString());
		sb.append(ArquivoUtils.getCampoDecimal(getValorAbatimento(), 13, 2));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getInformacao1(), 40));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getInformacao2(), 40));
		
		return sb.toString();
	}

}
