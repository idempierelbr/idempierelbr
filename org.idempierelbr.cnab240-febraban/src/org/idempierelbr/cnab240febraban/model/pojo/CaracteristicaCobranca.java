package org.idempierelbr.cnab240febraban.model.pojo;

import org.idempierelbr.cnab240febraban.enums.FormaDistribuicaoBloqueto;
import org.idempierelbr.cnab240febraban.enums.FormaEmissaoBloqueto;
import org.idempierelbr.cnab240febraban.enums.TipoDocumento;
import org.idempierelbr.cnab240febraban.util.ArquivoUtils;


public class CaracteristicaCobranca {
	private static final int TAMANHO_CARACTERISTICA_COBRANCA = 5;

	private int codigoCarteira;
	private int formaCadastramentoTituloNoBanco;
	private TipoDocumento tipoDocumento;
	private FormaEmissaoBloqueto formaEmissaoBloqueto;
	private FormaDistribuicaoBloqueto formaDistribuitcaoBloqueto;

	public CaracteristicaCobranca() {

	}

	public int getCodigoCarteira() {
		return codigoCarteira;
	}

	public void setCodigoCarteira(int codigoCarteira) {
		this.codigoCarteira = codigoCarteira;
	}

	public TipoDocumento getTipoDocumento() {
		return tipoDocumento;
	}

	public void setTipoDocumento(TipoDocumento tipoDocumento) {
		this.tipoDocumento = tipoDocumento;
	}

	public FormaEmissaoBloqueto getFormaEmissaoBloqueto() {
		return formaEmissaoBloqueto;
	}

	public void setFormaEmissaoBloqueto(
			FormaEmissaoBloqueto formaEmissaoBloqueto) {
		this.formaEmissaoBloqueto = formaEmissaoBloqueto;
	}

	public FormaDistribuicaoBloqueto getFormaDistribuitcaoBloqueto() {
		return formaDistribuitcaoBloqueto;
	}

	public void setDistribuicaoBloqueto(FormaDistribuicaoBloqueto formaDistribuitcaoBloqueto) {
		this.formaDistribuitcaoBloqueto = formaDistribuitcaoBloqueto;
	}

	public static int getTamanhoCaracteristicaCobranca() {
		return TAMANHO_CARACTERISTICA_COBRANCA;
	}

	public int getFormaCadastramentoTituloNoBanco() {
		return formaCadastramentoTituloNoBanco;
	}
	
	public void setFormaCadastramentoTituloNoBanco(
			int formaCadastramentoTituloNoBanco) {
		this.formaCadastramentoTituloNoBanco = formaCadastramentoTituloNoBanco;
	}

	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder(TAMANHO_CARACTERISTICA_COBRANCA);
		sb.append(ArquivoUtils.getCampoNumerico(getCodigoCarteira(), 1));
		sb.append(ArquivoUtils.getCampoNumerico(getFormaCadastramentoTituloNoBanco(), 1));
		sb.append(ArquivoUtils.getCampoNumerico(getTipoDocumento().getCodigo(), 1));
		sb.append(ArquivoUtils.getCampoNumerico(getFormaEmissaoBloqueto().getCodigo(), 1));
		sb.append(ArquivoUtils.getCampoNumerico(getFormaDistribuitcaoBloqueto().getCodigo(), 1));
		
		return sb.toString();
	}

}
