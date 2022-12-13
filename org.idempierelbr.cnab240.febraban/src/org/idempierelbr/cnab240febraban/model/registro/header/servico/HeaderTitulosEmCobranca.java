package org.idempierelbr.cnab240febraban.model.registro.header.servico;

import java.util.Date;

import org.idempierelbr.cnab240febraban.model.pojo.Controle;
import org.idempierelbr.cnab240febraban.model.pojo.ControleCobranca;
import org.idempierelbr.cnab240febraban.model.pojo.Empresa;
import org.idempierelbr.cnab240febraban.model.pojo.Servico5;
import org.idempierelbr.cnab240febraban.model.registro.header.HeaderLote;
import org.idempierelbr.cnab240febraban.util.ArquivoUtils;



public class HeaderTitulosEmCobranca extends HeaderLote {
	private Controle controle;
	private Servico5 servico;
	private String campoExclusivoCNAB1;
	private Empresa empresa;
	private String informacao1;
	private String informacao2;
	private ControleCobranca controleCobranca;
	private Date dataCredito;
	private String campoExclusivoCNAB2;

	public HeaderTitulosEmCobranca() {
		setControle(new Controle());
		setServico(new Servico5());
		setCampoExclusivoCNAB1(ArquivoUtils.BRANCO);
		setEmpresa(new Empresa());
		setInformacao1(ArquivoUtils.BRANCO);
		setInformacao2(ArquivoUtils.BRANCO);
		setControleCobranca(new ControleCobranca());
		setDataCredito(null);
		setCampoExclusivoCNAB2(ArquivoUtils.BRANCO);
	}

	@Override
	public String getConteudoRegistro() {
		StringBuilder sb = new StringBuilder(TAMANHO_REGISTRO);
		sb.append(getControle().toString());
		sb.append(getServico().toString());
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCampoExclusivoCNAB1(), 1));
		sb.append(getEmpresa().toString());
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getInformacao1(), 40));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getInformacao2(), 40));
		sb.append(getControleCobranca().toString());
		
		if (getDataCredito() == null)
			sb.append(ArquivoUtils.getCampoNumerico(0, 8));
		else
			sb.append(ArquivoUtils.getCampoDataFormatada(getDataCredito()));
		
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCampoExclusivoCNAB2(), 33));

		verificaTamanhoRegistro(sb);
		return sb.toString();
	}

	public Controle getControle() {
		return controle;
	}

	public void setControle(Controle controle) {
		this.controle = controle;
	}

	public Servico5 getServico() {
		return servico;
	}

	public void setServico(Servico5 servico) {
		this.servico = servico;
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

	public ControleCobranca getControleCobranca() {
		return controleCobranca;
	}

	public void setControleCobranca(ControleCobranca controleCobranca) {
		this.controleCobranca = controleCobranca;
	}

	public Date getDataCredito() {
		return dataCredito;
	}

	public void setDataCredito(Date dataCredito) {
		this.dataCredito = dataCredito;
	}

	public String getCampoExclusivoCNAB2() {
		return campoExclusivoCNAB2;
	}

	public void setCampoExclusivoCNAB2(String campoExclusivoCNAB2) {
		this.campoExclusivoCNAB2 = campoExclusivoCNAB2;
	}

}
