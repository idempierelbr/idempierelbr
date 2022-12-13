package org.idempierelbr.cnab240febraban.model.registro.detalhe.segmento;

import org.idempierelbr.cnab240febraban.model.pojo.Controle;
import org.idempierelbr.cnab240febraban.model.pojo.DadosPessoa;
import org.idempierelbr.cnab240febraban.model.pojo.Servico4;
import org.idempierelbr.cnab240febraban.model.registro.detalhe.RegistroDeDetalhe;
import org.idempierelbr.cnab240febraban.util.ArquivoUtils;


public class PagamentoTitulosCobrancaSegmentoJ52 extends RegistroDeDetalhe {
	private Controle controle;
	private Servico4 servico;
	private int codigoRegistroOpcional;
	private DadosPessoa dadosSacado;
	private DadosPessoa dadosCedente;
	private DadosPessoa dadosSacador;
	private String campoExclusivoCNAB;

	public PagamentoTitulosCobrancaSegmentoJ52() {
		setControle(new Controle());
		setServico(new Servico4());
		setCodigoRegistroOpcional(0);
		setDadosSacado(new DadosPessoa());
		setDadosCedente(new DadosPessoa());
		setDadosSacador(new DadosPessoa());
		setCampoExclusivoCNAB(ArquivoUtils.BRANCO);
	}

	@Override
	public String getConteudoRegistro() {
		StringBuilder sb = new StringBuilder(TAMANHO_REGISTRO);
		sb.append(getControle().toString());
		sb.append(getServico().toString());
		sb.append(ArquivoUtils.getCampoNumerico(getCodigoRegistroOpcional(), 2));
		sb.append(getDadosSacado().toString());
		sb.append(getDadosCedente().toString());
		sb.append(getDadosSacador().toString());
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCampoExclusivoCNAB(), 53));

		verificaTamanhoRegistro(sb);
		return sb.toString();
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

	public int getCodigoRegistroOpcional() {
		return codigoRegistroOpcional;
	}

	public void setCodigoRegistroOpcional(int codigoRegistroOpcional) {
		this.codigoRegistroOpcional = codigoRegistroOpcional;
	}

	public DadosPessoa getDadosSacado() {
		return dadosSacado;
	}

	public void setDadosSacado(DadosPessoa dadosSacado) {
		this.dadosSacado = dadosSacado;
	}

	public DadosPessoa getDadosCedente() {
		return dadosCedente;
	}

	public void setDadosCedente(DadosPessoa dadosCedente) {
		this.dadosCedente = dadosCedente;
	}

	public DadosPessoa getDadosSacador() {
		return dadosSacador;
	}

	public void setDadosSacador(DadosPessoa dadosSacador) {
		this.dadosSacador = dadosSacador;
	}

	public String getCampoExclusivoCNAB() {
		return campoExclusivoCNAB;
	}

	public void setCampoExclusivoCNAB(String campoExclusivoCNAB) {
		this.campoExclusivoCNAB = campoExclusivoCNAB;
	}

}
