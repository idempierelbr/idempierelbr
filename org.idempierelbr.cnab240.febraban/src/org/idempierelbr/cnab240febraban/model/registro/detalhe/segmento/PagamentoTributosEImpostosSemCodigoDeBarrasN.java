package org.idempierelbr.cnab240febraban.model.registro.detalhe.segmento;

import java.util.Date;

import org.idempierelbr.cnab240febraban.enums.TipoRegistro;
import org.idempierelbr.cnab240febraban.model.pojo.Controle;
import org.idempierelbr.cnab240febraban.model.pojo.Pagamento4;
import org.idempierelbr.cnab240febraban.model.pojo.Servico;
import org.idempierelbr.cnab240febraban.model.registro.detalhe.RegistroDeDetalhe;
import org.idempierelbr.cnab240febraban.util.ArquivoUtils;



public class PagamentoTributosEImpostosSemCodigoDeBarrasN extends
		RegistroDeDetalhe {
	private Controle controle;
	private Servico servico;
	private Pagamento4 pagamento;
	private InformacoesComplementaresPagamentoGPS informacoesComplementares;
	private String ocorrencias;

	public PagamentoTributosEImpostosSemCodigoDeBarrasN() {
		setControle(new Controle());
		getControle().setTipoRegistro(TipoRegistro.DETALHE);
		setServico(new Servico());
		getServico().setCodigoSegmento("N");
		setPagamento(new Pagamento4());
		setOcorrencias(ArquivoUtils.BRANCO);
	}

	@Override
	public String getConteudoRegistro() {
		StringBuilder sb = new StringBuilder();
		sb.append(getControle().toString());
		sb.append(getServico().toString());
		sb.append(getPagamento().toString());
		sb.append(getInformacoesComplementares().toString());
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getOcorrencias(), 10));

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

	public Pagamento4 getPagamento() {
		return pagamento;
	}

	public void setPagamento(Pagamento4 pagamento) {
		this.pagamento = pagamento;
	}

	public InformacoesComplementaresPagamentoGPS getInformacoesComplementares() {
		return informacoesComplementares;
	}

	public void setInformacoesComplementares(
			InformacoesComplementaresPagamentoGPS informacoesComplementares) {
		this.informacoesComplementares = informacoesComplementares;
	}

	public String getOcorrencias() {
		return ocorrencias;
	}

	public void setOcorrencias(String ocorrencias) {
		this.ocorrencias = ocorrencias;
	}

	/* Informaçoes complementares para pagamento da GPS */
	public class InformacoesComplementaresPagamentoGPS {
		public String codigoReceita;
		public int tipoDeIdentificacaoContribuinte;
		public long identificacaoContribuinte;
		public String codigoIdentificacaoTributo;
		public int competencia; // mes e ano
		public Double valorTributo;
		public Double valorOutrasEntidades;
		public Double atualizacaoMonetaria;
		public String campoExclusivoCNAB;
	}
	
	public class InformacoesComplementaresPagamentoDARF{
		public String codigoReceita;
		public int tipoIdentificacaoContribuinte;
		public long identificacaoContribuinte;
		public String codigoIdentificacaoTributo;
		public String periodoApuracao;
		public String numeroReferencia;
		public Double valorPrincipal;
		public Double valorMulta;
		public Double jurosEncargos;
		public Date dataVencimento;
		public String campoExclusivoCNAB;
	}
	
	public class InformacoesComplementaresPagamentoDARFSimples{
		public String codigoReceita;
		public int tipoIdentificacaoContribuinte;
		public long identificacaoContribuinte;
		public String codigoIdentificacaoTributo;
		public String periodoApuracao;
		public Double valorReceitaBrutaAcumulada;
		public Double percentualSobreReceitaBrutaAcumulada;
		public Double valorPrincipal;
		public Double valorMulta;
		public Double jurosEncargos;
		public String campoExclusivoCNAB;
	}
	
	public class InformacoesComplementaresPagamentoGARE_SP{
		public String codigoReceita;
		public int tipoIdentificacaoContribuinte;
		public long identificacaoContribuinte;
		public String codigoIdentificacaoTributo;
		public Date dataVencimento;
		public long inscricaoEstadualCodigoMunicipioNumeroDeclaracao;
		public long dividaAtivaEtiqueta;
		public long  periodoReferencia;
		public int numeroParcelaNotificacao;
		public Double valorReceita;
		public Double jurosEncargos;
		public Double valorMulta;
		public String campoExclusivoCNAB;
	}
	
	public class InformacoesComplementaresPagamentoIPVA{
		public String codigoReceita;
		public int tipoIdentificacaoContribuinte;
		public long identificacaoContribuinte;
		public String codigoIdentificacaoTributo;
		public int exercicio; //anoBase
		public long codigoRenavam;
		public String uf;
		public int codigoMunicipio;
		public String placaVeiculo;
		public String opcaoPagamento;
		public String campoExclusivoCNAB;
	}
	
	public class InformacoesComplementaresPagamentoDPVAT{
		public String codigoReceita;
		public int tipoIdentificacaoContribuinte;
		public long identificacaoContribuinte;
		public String codigoIdentificacaoTributo;
		public int exercicio; //anoBase
		public long codigoRenavam;
		public String uf;
		public int codigoMunicipio;
		public String placaVeiculo;
		public String opcaoPagamento;
		public String campoExclusivoCNAB;
	}
	
	public class InformacoesComplementaresPagamentoLicenciamento{
		public String codigoReceita;
		public int tipoIdentificacaoContribuinte;
		public long identificacaoContribuinte;
		public String codigoIdentificacaoTributo;
		public int exercicio; //anoBase
		public long codigoRenavam;
		public String uf;
		public int codigoMunicipio;
		public String placaVeiculo;
		public String opcaoPagamento;
		public String opcaoRetiradaCRVL;
		public String campoExclusivoCNAB;
	}
	
	public class InformacoesComplementaresPagamentoDARJ{
		public String codigoReceita;
		public int tipoIdentificacaoContribuinte;
		public long identificacaoContribuinte;
		public String inscricaoEstadualCodigoMunicipioNumeroDeclaracao;
		public long origem;
		public Double valorPrincipal;
		public Double valorAtualizacaoMonetaria;
		public Double valorMora;
		public Double valorMulta;
		public Date dataVencimento;
		public int periodoOuParcela;
	}

}
