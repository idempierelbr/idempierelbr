package org.idempierelbr.cnab240febraban.model.registro.header;

import org.idempierelbr.cnab240febraban.enums.TipoRegistro;
import org.idempierelbr.cnab240febraban.model.pojo.Arquivo;
import org.idempierelbr.cnab240febraban.model.pojo.Controle;
import org.idempierelbr.cnab240febraban.model.pojo.Empresa;
import org.idempierelbr.cnab240febraban.model.registro.Registro;
import org.idempierelbr.cnab240febraban.util.ArquivoUtils;


/**
 * Classe que representa um registro de header de arquivo, utilizada para armazenar informa��es do Arquivo
 * @author Richard Mendes Madureira
 * @version 1.0
 *
 */
@org.idempierelbr.cnab240febraban.annotation.Registro(obrigatorio=true, tipoRegistro=TipoRegistro.HEADER_DE_ARQUIVO)
public class HeaderArquivo extends Registro {
	private Controle controle;
	private String campoExclusivoCNAB1;

	private Empresa empresa;
	private String nomeBanco;
	private String campoExclusivoCNAB2;

	private Arquivo arquivo;
	private String campoReservadoBanco;
	private String campoReservadoEmpresa;
	private String campoExclusivoCNAB3;

	public HeaderArquivo() {
		setControle(new Controle());
		getControle().setTipoRegistro(TipoRegistro.HEADER_DE_ARQUIVO);
		setCampoExclusivoCNAB1(ArquivoUtils.BRANCO);
		setEmpresa(new Empresa());
		setNomeBanco(ArquivoUtils.BRANCO);
		setCampoExclusivoCNAB2(ArquivoUtils.BRANCO);
		setArquivo(new Arquivo());
		setCampoReservadoBanco(ArquivoUtils.BRANCO);
		setCampoReservadoEmpresa(ArquivoUtils.BRANCO);
		setCampoExclusivoCNAB3(ArquivoUtils.BRANCO);
	}

	public Controle getControle() {
		return controle;
	}

	public void setControle(Controle controle) {
		this.controle = controle;
	}

	public String getCampoExclusivoCNAB1() {
		return campoExclusivoCNAB1;
	}

	public void setCampoExclusivoCNAB1(String campoExclusivoCNAB1) {
		this.campoExclusivoCNAB1 = campoExclusivoCNAB1;
	}

	public Empresa getEmpresa() {
		return empresa;
	}

	public void setEmpresa(Empresa empresa) {
		this.empresa = empresa;
	}

	public String getNomeBanco() {
		return nomeBanco;
	}

	public void setNomeBanco(String nomeBanco) {
		this.nomeBanco = nomeBanco;
	}

	public String getCampoExclusivoCNAB2() {
		return campoExclusivoCNAB2;
	}

	public void setCampoExclusivoCNAB2(String campoExclusivoCNAB2) {
		this.campoExclusivoCNAB2 = campoExclusivoCNAB2;
	}

	public Arquivo getArquivo() {
		return arquivo;
	}

	public void setArquivo(Arquivo arquivo) {
		this.arquivo = arquivo;
	}

	public String getCampoReservadoBanco() {
		return campoReservadoBanco;
	}

	public void setCampoReservadoBanco(String campoReservadoBanco) {
		this.campoReservadoBanco = campoReservadoBanco;
	}

	public String getCampoReservadoEmpresa() {
		return campoReservadoEmpresa;
	}

	public void setCampoReservadoEmpresa(String campoReservadoEmpresa) {
		this.campoReservadoEmpresa = campoReservadoEmpresa;
	}

	public String getCampoExclusivoCNAB3() {
		return campoExclusivoCNAB3;
	}

	public void setCampoExclusivoCNAB3(String campoExclusivoCNAB3) {
		this.campoExclusivoCNAB3 = campoExclusivoCNAB3;
	}
	
	@Override
	public String getConteudoRegistro() {
		StringBuilder sb = new StringBuilder(TAMANHO_REGISTRO);
		sb.append(controle.toString()); //8
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCampoExclusivoCNAB1(), 9));
		/*---------------------------------------------------------*/
		sb.append(empresa.toString()); // 85
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getNomeBanco(), 30));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCampoExclusivoCNAB2(), 10));
		/*----------------------------------------------------------*/
		sb.append(arquivo.toString()); //29
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCampoReservadoBanco(), 20));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCampoReservadoEmpresa(), 20));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCampoExclusivoCNAB3(), 29));

		verificaTamanhoRegistro(sb);
		return sb.toString();
	}

}
