package org.idempierelbr.cnab240febraban.model.registro.detalhe.segmento;

import org.idempierelbr.cnab240febraban.enums.TipoRegistro;
import org.idempierelbr.cnab240febraban.model.pojo.Controle;
import org.idempierelbr.cnab240febraban.model.pojo.Servico3;
import org.idempierelbr.cnab240febraban.model.registro.detalhe.RegistroDeDetalhe;
import org.idempierelbr.cnab240febraban.util.ArquivoUtils;


public class InformacoesComplementaresSegmentoW extends RegistroDeDetalhe {
	private Controle controle;
	private Servico3 servico;
	private int complementoRegistro;
	private String identificaUsoInformacoes1_e_2;
	private String informacaoComplementar1;
	private String informacaoComplementar2;
	private String identificadorTributo;
	private String informacaoComplementarTributo;
	private String reservado;
	private String ocorrencias;



	public InformacoesComplementaresSegmentoW() {
		setControle(new Controle());
		getControle().setTipoRegistro(TipoRegistro.DETALHE);
		setServico(new Servico3());
		getServico().setCodigoSegmento("W");
		setComplementoRegistro(0);
		setIdentificaUsoInformacoes1_e_2(ArquivoUtils.BRANCO);
		setInformacaoComplementar1(ArquivoUtils.BRANCO);
		setInformacaoComplementar2(ArquivoUtils.BRANCO);

		setReservado(ArquivoUtils.BRANCO);
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

	public int getComplementoRegistro() {
		return complementoRegistro;
	}

	public void setComplementoRegistro(int complementoRegistro) {
		this.complementoRegistro = complementoRegistro;
	}

	public String getIdentificaUsoInformacoes1_e_2() {
		return identificaUsoInformacoes1_e_2;
	}

	public void setIdentificaUsoInformacoes1_e_2(
			String identificaUsoInformacoes1_e_2) {
		this.identificaUsoInformacoes1_e_2 = identificaUsoInformacoes1_e_2;
	}

	public String getInformacaoComplementar1() {
		return informacaoComplementar1;
	}

	public void setInformacaoComplementar1(String informacaoComplementar1) {
		this.informacaoComplementar1 = informacaoComplementar1;
	}

	public String getInformacaoComplementar2() {
		return informacaoComplementar2;
	}

	public void setInformacaoComplementar2(String informacaoComplementar2) {
		this.informacaoComplementar2 = informacaoComplementar2;
	}

	public void setIdentificadorTributo(String identificadorTributo) {
		this.identificadorTributo = identificadorTributo;
	}
	
	public void setInformacaoComplementarTributo(
			String informacaoComplementarTributo) {
		this.informacaoComplementarTributo = informacaoComplementarTributo;
	}

	public String getInformacaoComplementar3() {
		return ArquivoUtils.getCampoAlfaNumerico(identificadorTributo, 2) + ArquivoUtils.getCampoAlfaNumerico(informacaoComplementarTributo, 48);
	}

	public String getReservado() {
		return reservado;
	}

	public void setReservado(String reservado) {
		this.reservado = reservado;
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
		sb.append(ArquivoUtils.getCampoNumerico(getComplementoRegistro(), 1));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getIdentificaUsoInformacoes1_e_2(), 1));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getInformacaoComplementar1(), 80));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getInformacaoComplementar2(), 80));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getInformacaoComplementar3(), 50));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getReservado(), 2));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getOcorrencias(), 10));

		return sb.toString();
	}

	
	public class InformacaoComplementarDeTributoPagamentoFGTS{
		public String identificadorDeTributo;
		public String codigoReceitaTributo;
		public String tipoIdentificacaoContribuinte;
		public String identificacaoContribuinte;
		public String identificadorFGTS;
		public String lacreConectividadeSocial;
		public String digitoLacreConectividadeSocial;
		public String campoReservado;
	}
	
}
