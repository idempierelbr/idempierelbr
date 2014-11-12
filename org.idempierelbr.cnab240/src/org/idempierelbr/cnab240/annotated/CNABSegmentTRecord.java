package org.idempierelbr.cnab240.annotated;

import java.util.Date;

import com.ancientprogramming.fixedformat4j.annotation.Align;
import com.ancientprogramming.fixedformat4j.annotation.Field;
import com.ancientprogramming.fixedformat4j.annotation.FixedFormatDecimal;
import com.ancientprogramming.fixedformat4j.annotation.FixedFormatPattern;
import com.ancientprogramming.fixedformat4j.annotation.Record;

@Record
public abstract class CNABSegmentTRecord extends CNABCobrancaSegmentBaseRecord {

	private int agenciaCedente;
	private String dvAgenciaCedente;
	private long contaCedente;
	private String dvContaCedente;
	private String dvAgenciaContaCedente;
	private String nossoNumero;
	private int codigoCarteira;
	private String numeroDocumento;
	private Date vencimento;
	private Double valorTitulo;
	private int bancoCobrador;
	private int agenciaCobradora;
	private String dvAgenciaCobradora;
	private String identificacaoTituloNaEmpresa;
	private int codigoMoeda;
	private int tipoInscricaoSacado;
	private String inscricaoSacado;
	private String nomeSacado;
	private long numeroContrato;
	private Double valorTarifas;
	private String motivoOcorrencia;
	
	public CNABSegmentTRecord() {
		super();
		this.setTipoSegmento("T");
	}

	@Field( offset=18 , length=5, paddingChar = '0' , align = Align.RIGHT)
	public int getAgenciaCedente() {
		return agenciaCedente;
	}

	public void setAgenciaCedente(int agenciaCedente) {
		this.agenciaCedente = agenciaCedente;
	}

	@Field( offset=23 , length=1, paddingChar = ' ' , align = Align.LEFT)
	public String getDvAgenciaCedente() {
		return dvAgenciaCedente;
	}

	public void setDvAgenciaCedente(String dvAgenciaCedente) {
		this.dvAgenciaCedente = dvAgenciaCedente;
	}

	@Field( offset=24 , length=12, paddingChar = '0' , align = Align.RIGHT)
	public long getContaCedente() {
		return contaCedente;
	}

	public void setContaCedente(long contaCedente) {
		this.contaCedente = contaCedente;
	}

	@Field( offset=36 , length=1, paddingChar = ' ' , align = Align.LEFT)
	public String getDvContaCedente() {
		return dvContaCedente;
	}

	public void setDvContaCedente(String dvContaCedente) {
		this.dvContaCedente = dvContaCedente;
	}

	@Field( offset=37 , length=1, paddingChar = ' ' , align = Align.LEFT)
	public String getDvAgenciaContaCedente() {
		return dvAgenciaContaCedente;
	}

	public void setDvAgenciaContaCedente(String dvAgenciaContaCedente) {
		this.dvAgenciaContaCedente = dvAgenciaContaCedente;
	}

	@Field( offset=38 , length=20, paddingChar=' ' , align = Align.LEFT)
	public String getNossoNumero() {
		return nossoNumero;
	}
	public void setNossoNumero(String nossoNumero) {
		this.nossoNumero = nossoNumero;
	}

	@Field( offset=58 , length=1, paddingChar='0' , align = Align.RIGHT)
	public int getCodigoCarteira() {
		return codigoCarteira;
	}
	public void setCodigoCarteira(int carteira) {
		this.codigoCarteira = carteira;
	}

	@Field( offset=59 , length=15, paddingChar=' ' , align = Align.LEFT)
	public String getNumeroDocumento() {
		return numeroDocumento;
	}
	public void setNumeroDocumento(String numeroDocumento) {
		this.numeroDocumento = numeroDocumento;
	}
	
	@Field( offset=74 , length=8 , paddingChar = '0' , align = Align.LEFT )
	@FixedFormatPattern("ddMMyyyy")
	public Date getVencimento() {
		return vencimento;
	}
	public void setVencimento(Date vencimento) {
		this.vencimento = vencimento;
	}

	@Field( offset=82 , length=15, paddingChar='0' , align = Align.RIGHT)
	@FixedFormatDecimal( decimals = 2 , useDecimalDelimiter = false )
	public Double getValorTitulo() {
		return valorTitulo;
	}

	public void setValorTitulo(Double valorTitulo) {
		this.valorTitulo = valorTitulo;
	}

	@Field( offset=97 , length=3 , paddingChar = '0' , align = Align.LEFT )
	public int getBancoCobrador() {
		return bancoCobrador;
	}

	public void setBancoCobrador(int bancoCobrador) {
		this.bancoCobrador = bancoCobrador;
	}

	@Field( offset=100 , length=5 , paddingChar='0' , align = Align.RIGHT)
	public int getAgenciaCobradora() {
		return agenciaCobradora;
	}
	public void setAgenciaCobradora(int agenciaCobradora) {
		this.agenciaCobradora = agenciaCobradora;
	}
	
	@Field( offset=105 , length=1 , paddingChar = '0' , align = Align.LEFT )
	public String getDvAgenciaCobradora() {
		return dvAgenciaCobradora;
	}

	public void setDvAgenciaCobradora(String dvAgenciaCobradora) {
		this.dvAgenciaCobradora = dvAgenciaCobradora;
	}

	@Field( offset=106 , length=25 , paddingChar=' ' , align = Align.LEFT)
	public String getIdentificacaoTituloNaEmpresa() {
		return identificacaoTituloNaEmpresa;
	}
	public void setIdentificacaoTituloNaEmpresa(String numeroTituloNaEmpresa) {
		this.identificacaoTituloNaEmpresa = numeroTituloNaEmpresa;
	}
	
	@Field( offset=131 , length=2 , paddingChar = '0' , align = Align.LEFT )
	public int getCodigoMoeda() {
		return codigoMoeda;
	}

	public void setCodigoMoeda(int codigoMoeda) {
		this.codigoMoeda = codigoMoeda;
	}

	@Field( offset=133 , length=1, paddingChar='0' , align = Align.RIGHT)
	public int getTipoInscricaoSacado() {
		return tipoInscricaoSacado;
	}
	public void setTipoInscricaoSacado(int tipoInscricaoSacado) {
		this.tipoInscricaoSacado = tipoInscricaoSacado;
	}

	@Field( offset=134 , length=15, paddingChar='0' , align = Align.RIGHT)
	public String getInscricaoSacado() {
		return inscricaoSacado;
	}
	public void setInscricaoSacado(String inscricaoSacado) {
		this.inscricaoSacado = inscricaoSacado;
	}

	@Field( offset=149 , length=40 , paddingChar = ' ' , align = Align.RIGHT )
	public String getNomeSacado() {
		return nomeSacado;
	}

	public void setNomeSacado(String nomeSacado) {
		this.nomeSacado = nomeSacado;
	}

	@Field( offset=189 , length=10 , paddingChar = '0' , align = Align.LEFT )
	public long getNumeroContrato() {
		return numeroContrato;
	}

	public void setNumeroContrato(long numeroContrato) {
		this.numeroContrato = numeroContrato;
	}

	@Field( offset=199 , length=15, paddingChar='0' , align = Align.RIGHT)
	@FixedFormatDecimal( decimals = 2 , useDecimalDelimiter = false )
	public Double getValorTarifas() {
		return valorTarifas;
	}
	public void setValorTarifas(Double valorTarifas) {
		this.valorTarifas = valorTarifas;
	}
	
	@Field( offset=214 , length=10 , paddingChar=' ' , align = Align.LEFT)
	public String getMotivoOcorrencia() {
		return motivoOcorrencia;
	}
	public void setMotivoOcorrencia(String motivoOcorrencia) {
		this.motivoOcorrencia = motivoOcorrencia;
	}	
	
}
