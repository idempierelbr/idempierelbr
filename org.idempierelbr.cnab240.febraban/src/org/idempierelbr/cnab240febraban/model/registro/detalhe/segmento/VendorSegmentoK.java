package org.idempierelbr.cnab240febraban.model.registro.detalhe.segmento;

import org.idempierelbr.cnab240febraban.annotation.Registro;
import org.idempierelbr.cnab240febraban.enums.TipoEnvio;
import org.idempierelbr.cnab240febraban.enums.TipoRegistro;
import org.idempierelbr.cnab240febraban.model.pojo.Comprador;
import org.idempierelbr.cnab240febraban.model.pojo.Controle;
import org.idempierelbr.cnab240febraban.model.pojo.Servico;
import org.idempierelbr.cnab240febraban.model.registro.detalhe.RegistroDeDetalhe;
import org.idempierelbr.cnab240febraban.util.ArquivoUtils;


@Registro(obrigatorio=true, tipoEnvio=TipoEnvio.REMESSA, tipoRegistro=TipoRegistro.DETALHE)
public class VendorSegmentoK extends RegistroDeDetalhe {
	private Controle controle;
	private Servico servico;
	private int motivoOcorrencia;
	private Comprador comprador;
	private long nossoNumero;
	private int ramoAtividade;
	private String codigoProgramaOperacional;
	private String mensagem;
	private String usoEmpresaCedente;

	public VendorSegmentoK() {
		setControle(new Controle());
		getControle().setTipoRegistro(TipoRegistro.DETALHE);
		setServico(new Servico());
		getServico().setCodigoSegmento("K");
		setComprador(new Comprador());
		setCodigoProgramaOperacional(ArquivoUtils.BRANCO);
		setMensagem(ArquivoUtils.BRANCO);
		setUsoEmpresaCedente(ArquivoUtils.BRANCO);
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

	public int getMotivoOcorrencia() {
		return motivoOcorrencia;
	}

	public void setMotivoOcorrencia(int motivoOcorrencia) {
		this.motivoOcorrencia = motivoOcorrencia;
	}

	public Comprador getComprador() {
		return comprador;
	}

	public void setComprador(Comprador comprador) {
		this.comprador = comprador;
	}

	public long getNossoNumero() {
		return nossoNumero;
	}

	public void setNossoNumero(long nossoNumero) {
		this.nossoNumero = nossoNumero;
	}

	public int getRamoAtividade() {
		return ramoAtividade;
	}

	public void setRamoAtividade(int ramoAtividade) {
		this.ramoAtividade = ramoAtividade;
	}

	public String getCodigoProgramaOperacional() {
		return codigoProgramaOperacional;
	}

	public void setCodigoProgramaOperacional(String codgoProgramaOperacional) {
		this.codigoProgramaOperacional = codgoProgramaOperacional;
	}

	public String getMensagem() {
		return mensagem;
	}

	public void setMensagem(String mensagem) {
		this.mensagem = mensagem;
	}

	public String getUsoEmpresaCedente() {
		return usoEmpresaCedente;
	}

	public void setUsoEmpresaCedente(String usoEmpresaCedente) {
		this.usoEmpresaCedente = usoEmpresaCedente;
	}

	@Override
	public String getConteudoRegistro() {
		StringBuilder sb = new StringBuilder(TAMANHO_REGISTRO);
		sb.append(getControle().toString());
		sb.append(getServico().toString());
		sb.append(ArquivoUtils.getCampoNumerico(getMotivoOcorrencia(), 3));
		sb.append(getComprador().toString());
		sb.append(ArquivoUtils.getCampoNumerico(getNossoNumero(), 20));
		sb.append(ArquivoUtils.getCampoNumerico(getRamoAtividade(), 6));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCodigoProgramaOperacional(), 5));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getMensagem(), 5));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getUsoEmpresaCedente(), 27));
		
		return sb.toString();
	}

}
