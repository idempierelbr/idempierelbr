package org.idempierelbr.cnab240febraban.model.registro.header.servico;

import org.idempierelbr.cnab240febraban.enums.Banco;
import org.idempierelbr.cnab240febraban.enums.TipoOperacao;
import org.idempierelbr.cnab240febraban.enums.TipoRegistro;
import org.idempierelbr.cnab240febraban.model.pojo.Controle;
import org.idempierelbr.cnab240febraban.model.pojo.Empresa;
import org.idempierelbr.cnab240febraban.model.pojo.Endereco;
import org.idempierelbr.cnab240febraban.model.pojo.Servico2;
import org.idempierelbr.cnab240febraban.model.registro.header.HeaderLote;
import org.idempierelbr.cnab240febraban.util.ArquivoUtils;


public class HeaderLotePagamentoCreditoEmConta extends HeaderLote {
	private Controle controle;
	private Servico2 servico;
	private String campoExclusivoCNAB1;
	private Empresa empresa;
	private String informacao1;
	private Endereco enderecoEmpresa;
	private int indicativoFormaPagamento;
	private String campoExclusivoCNAB2;
	private String codigoOcorrencias;

	public HeaderLotePagamentoCreditoEmConta() {
		setControle(new Controle());
		getControle().setTipoRegistro(TipoRegistro.HEADER_DE_LOTE);
		setServico(new Servico2());
		getServico().setNumeroVersaoLayoutLote(44);
		getServico().setTipoOperacao(TipoOperacao.LANCAMENTO_A_CREDITO);
		setEmpresa(new Empresa());
		setInformacao1(ArquivoUtils.BRANCO);
		setEnderecoEmpresa(new Endereco());
		setIndicativoFormaPagamento(0);
		setCampoExclusivoCNAB2(ArquivoUtils.BRANCO);
		setCodigoOcorrencias(ArquivoUtils.BRANCO);
	}
	
	public HeaderLotePagamentoCreditoEmConta(Banco banco){
		this();
		getControle().setBanco(banco);
	}

	@Override
	public String getConteudoRegistro() {
		StringBuilder sb = new StringBuilder(TAMANHO_REGISTRO);
		sb.append(getControle().toString()); //8
		sb.append(getServico().toString());  //8
		sb.append(ArquivoUtils.getCampoNumerico(getCampoExclusivoCNAB1(), 1));
		/*-------------------------------------------------------------------*/
		sb.append(getEmpresa().toString()); // 85
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getInformacao1(), 40));
		/*-------------------------------------------------------------------*/
		sb.append(getEnderecoEmpresa().toString()); //80
		sb.append(ArquivoUtils.getCampoNumerico(getIndicativoFormaPagamento(), 2));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCampoExclusivoCNAB2(), 6));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCodigoOcorrencias(), 10));
		
		verificaTamanhoRegistro(sb);
		return sb.toString();
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

	public int getIndicativoFormaPagamento() {
		return indicativoFormaPagamento;
	}

	public void setIndicativoFormaPagamento(int indicativoFormaPagamento) {
		this.indicativoFormaPagamento = indicativoFormaPagamento;
	}

	public String getCampoExclusivoCNAB2() {
		return campoExclusivoCNAB2;
	}

	public void setCampoExclusivoCNAB2(String campoExclusivoCNAB2) {
		this.campoExclusivoCNAB2 = campoExclusivoCNAB2;
	}

	public String getCodigoOcorrencias() {
		return codigoOcorrencias;
	}

	public void setCodigoOcorrencias(String codigoOcorrencias) {
		this.codigoOcorrencias = codigoOcorrencias;
	}

	public Controle getControle() {
		return controle;
	}

	public void setControle(Controle controle) {
		this.controle = controle;
	}

	public Servico2 getServico() {
		return servico;
	}

	public void setServico(Servico2 servico) {
		this.servico = servico;
	}

	public Endereco getEnderecoEmpresa() {
		return enderecoEmpresa;
	}

	public void setEnderecoEmpresa(Endereco enderecoEmpresa) {
		this.enderecoEmpresa = enderecoEmpresa;
	}
}
