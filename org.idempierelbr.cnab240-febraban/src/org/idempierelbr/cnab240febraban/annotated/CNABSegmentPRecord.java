package org.idempierelbr.cnab240febraban.annotated;

import java.util.Date;

import com.ancientprogramming.fixedformat4j.annotation.Align;
import com.ancientprogramming.fixedformat4j.annotation.Field;
import com.ancientprogramming.fixedformat4j.annotation.FixedFormatDecimal;
import com.ancientprogramming.fixedformat4j.annotation.FixedFormatPattern;

public class CNABSegmentPRecord extends CNABSegmentBaseRecord {

	private int codigoMovimento;
	private String nossoNumero;
	private int codigoCarteira;
	private int formaCadastramento;
	private String tipoDocumento;
	private int emissaoBloqueto;
	private String distribuicaoBloqueto;
	private String numeroDocumento;
	private Date vencimento;
	private Double valorTitulo;
	private int agenciaCobradora;
	private String dvAgenciaCobradora;
	private int especieTitulo;
	private String aceite;
	private Date dataEmissao;
	private int codigoJurosMora;
	private Date dataJurosMora;
	private Double jurosMora;
	private int codigoDesconto;
	private Date dataDesconto;
	private Double desconto;
	private Double valorIOF;
	private Double valorAbatimento;
	private String identificacaoTituloEmpresa; 
	private int codigoProtesto;
	private int prazoProtesto;
	private int codigoBaixaDevolucao;
	private int prazoBaixaDevolucao;
	private int codigoMoeda;

	public CNABSegmentPRecord() {
		super();
		this.setTipoSegmento("P");
	}

	@Field( offset=16 , length=2, paddingChar = '0' , align = Align.RIGHT)
	public int getCodigoMovimento() {
		return codigoMovimento;
	}

	public void setCodigoMovimento(int codigoMovimento) {
		this.codigoMovimento = codigoMovimento;
	}

	@Field( offset=38 , length=20, paddingChar = ' ' , align = Align.LEFT)
	public String getNossoNumero() {
		return nossoNumero;
	}

	public void setNossoNumero(String nossoNumero) {
		this.nossoNumero = nossoNumero;
	}

	@Field( offset=58 , length=1, paddingChar = '0' , align = Align.RIGHT)
	public int getCodigoCarteira() {
		return codigoCarteira;
	}

	public void setCodigoCarteira(int codigoCarteira) {
		this.codigoCarteira = codigoCarteira;
	}

	@Field( offset=59 , length=1, paddingChar = '0' , align = Align.RIGHT)
	public int getFormaCadastramento() {
		return formaCadastramento;
	}

	public void setFormaCadastramento(int formaCadastramento) {
		this.formaCadastramento = formaCadastramento;
	}

	@Field( offset=60 , length=1, paddingChar = ' ' , align = Align.RIGHT)
	public String getTipoDocumento() {
		return tipoDocumento;
	}

	public void setTipoDocumento(String tipoDocumento) {
		this.tipoDocumento = tipoDocumento;
	}

	@Field( offset=61 , length=1, paddingChar = '0' , align = Align.RIGHT)
	public int getEmissaoBloqueto() {
		return emissaoBloqueto;
	}

	public void setEmissaoBloqueto(int emissaoBloqueto) {
		this.emissaoBloqueto = emissaoBloqueto;
	}

	@Field( offset=62 , length=1, paddingChar = ' ' , align = Align.RIGHT)
	public String getDistribuicaoBloqueto() {
		return distribuicaoBloqueto;
	}

	public void setDistribuicaoBloqueto(String distribuicaoBloqueto) {
		this.distribuicaoBloqueto = distribuicaoBloqueto;
	}

	@Field( offset=63 , length=15, paddingChar = ' ' , align = Align.LEFT)
	public String getNumeroDocumento() {
		return numeroDocumento;
	}

	public void setNumeroDocumento(String numeroDocumento) {
		this.numeroDocumento = numeroDocumento;
	}

	@Field( offset=78 , length=8 )
	@FixedFormatPattern("ddMMyyyy")
	public Date getVencimento() {
		return vencimento;
	}

	public void setVencimento(Date dataVencimento) {
		this.vencimento = dataVencimento;
	}

	@Field( offset=86 , length=15, paddingChar='0' , align = Align.RIGHT)
	@FixedFormatDecimal( decimals = 2 , useDecimalDelimiter = false )
	public Double getValorTitulo() {
		return valorTitulo;
	}

	public void setValorTitulo(Double valorTitulo) {
		this.valorTitulo = valorTitulo;
	}

	@Field( offset=101 , length=5, paddingChar='0' , align = Align.RIGHT)
	public int getAgenciaCobradora() {
		return agenciaCobradora;
	}

	public void setAgenciaCobradora(int agenciaCobradora) {
		this.agenciaCobradora = agenciaCobradora;
	}

	@Field( offset=106 , length=1, paddingChar=' ' , align = Align.RIGHT)
	public String getDvAgenciaCobradora() {
		return dvAgenciaCobradora;
	}

	public void setDvAgenciaCobradora(String dvAgenciaCobradora) {
		this.dvAgenciaCobradora = dvAgenciaCobradora;
	}

	@Field( offset=107 , length=2, paddingChar='0' , align = Align.RIGHT)
	public int getEspecieTitulo() {
		return especieTitulo;
	}

	public void setEspecieTitulo(int especieTitulo) {
		this.especieTitulo = especieTitulo;
	}

	@Field( offset=109 , length=1, paddingChar=' ' , align = Align.RIGHT)
	public String getAceite() {
		return aceite;
	}

	public void setAceite(String aceite) {
		this.aceite = aceite;
	}

	@Field( offset=110 , length=8 )
	@FixedFormatPattern("ddMMyyyy")
	public Date getDataEmissao() {
		return dataEmissao;
	}

	public void setDataEmissao(Date dataEmissao) {
		this.dataEmissao = dataEmissao;
	}

	@Field( offset=118 , length=1, paddingChar='0' , align = Align.RIGHT)
	public int getCodigoJurosMora() {
		return codigoJurosMora;
	}

	public void setCodigoJurosMora(int codigoJurosMora) {
		this.codigoJurosMora = codigoJurosMora;
	}

	@Field( offset=119 , length=8 )
	@FixedFormatPattern("ddMMyyyy")
	public Date getDataJurosMora() {
		return dataJurosMora;
	}

	public void setDataJurosMora(Date dataJurosMora) {
		this.dataJurosMora = dataJurosMora;
	}

	@Field( offset=127 , length=15, paddingChar='0' , align = Align.RIGHT)
	@FixedFormatDecimal( decimals = 2 , useDecimalDelimiter = false )
	public Double getJurosMora() {
		return jurosMora;
	}

	public void setJurosMora(Double jurosMora) {
		this.jurosMora = jurosMora;
	}

	@Field( offset=142 , length=1, paddingChar='0' , align = Align.RIGHT)
	public int getCodigoDesconto() {
		return codigoDesconto;
	}

	public void setCodigoDesconto(int codigoDesconto) {
		this.codigoDesconto = codigoDesconto;
	}

	@Field( offset=78 , length=8 )
	@FixedFormatPattern("ddMMyyyy")
	public Date getDataDesconto() {
		return dataDesconto;
	}

	public void setDataDesconto(Date dataDesconto) {
		this.dataDesconto = dataDesconto;
	}

	@Field( offset=151 , length=15, paddingChar='0' , align = Align.RIGHT)
	@FixedFormatDecimal( decimals = 2 , useDecimalDelimiter = false )
	public Double getDesconto() {
		return desconto;
	}

	public void setDesconto(Double desconto) {
		this.desconto = desconto;
	}

	@Field( offset=166 , length=15, paddingChar='0' , align = Align.RIGHT)
	@FixedFormatDecimal( decimals = 2 , useDecimalDelimiter = false )
	public Double getValorIOF() {
		return valorIOF;
	}

	public void setValorIOF(Double valorIOF) {
		this.valorIOF = valorIOF;
	}

	@Field( offset=181 , length=15, paddingChar='0' , align = Align.RIGHT)
	@FixedFormatDecimal( decimals = 2 , useDecimalDelimiter = false )
	public Double getValorAbatimento() {
		return valorAbatimento;
	}

	public void setValorAbatimento(Double valorAbatimento) {
		this.valorAbatimento = valorAbatimento;
	}

	@Field( offset=196 , length=25, paddingChar=' ' , align = Align.LEFT)
	public String getIdentificacaoTituloEmpresa() {
		return identificacaoTituloEmpresa;
	}

	public void setIdentificacaoTituloEmpresa(String identificacaoTituloEmpresa) {
		this.identificacaoTituloEmpresa = identificacaoTituloEmpresa;
	}

	@Field( offset=221 , length=1, paddingChar='0' , align = Align.RIGHT)
	public int getCodigoProtesto() {
		return codigoProtesto;
	}

	public void setCodigoProtesto(int codigoProtesto) {
		this.codigoProtesto = codigoProtesto;
	}

	@Field( offset=222 , length=2, paddingChar='0' , align = Align.RIGHT)
	public int getPrazoProtesto() {
		return prazoProtesto;
	}

	public void setPrazoProtesto(int prazoProtesto) {
		this.prazoProtesto = prazoProtesto;
	}

	@Field( offset=224 , length=1, paddingChar='0' , align = Align.RIGHT)
	public int getCodigoBaixaDevolucao() {
		return codigoBaixaDevolucao;
	}

	public void setCodigoBaixaDevolucao(int codigoBaixaDevolucao) {
		this.codigoBaixaDevolucao = codigoBaixaDevolucao;
	}

	@Field( offset=225 , length=3, paddingChar='0' , align = Align.RIGHT)
	public int getPrazoBaixaDevolucao() {
		return prazoBaixaDevolucao;
	}

	public void setPrazoBaixaDevolucao(int prazoBaixaDevolucao) {
		this.prazoBaixaDevolucao = prazoBaixaDevolucao;
	}

	@Field( offset=228 , length=2, paddingChar='0' , align = Align.RIGHT)
	public int getCodigoMoeda() {
		return codigoMoeda;
	}

	public void setCodigoMoeda(int codigoMoeda) {
		this.codigoMoeda = codigoMoeda;
	}
	
}
