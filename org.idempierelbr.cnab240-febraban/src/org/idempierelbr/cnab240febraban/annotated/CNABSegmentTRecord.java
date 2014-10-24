package org.idempierelbr.cnab240febraban.annotated;

import java.util.Date;

import com.ancientprogramming.fixedformat4j.annotation.Align;
import com.ancientprogramming.fixedformat4j.annotation.Field;
import com.ancientprogramming.fixedformat4j.annotation.FixedFormatDecimal;
import com.ancientprogramming.fixedformat4j.annotation.FixedFormatPattern;
import com.ancientprogramming.fixedformat4j.annotation.Record;

@Record
public abstract class CNABSegmentTRecord extends CNABSegmentBaseRecord {

	private int codigoMovimento;
	private String nossoNumero;
	private int carteira;
	private String numeroDocumento;
	private int tipoInscricaoSacado;
	private String inscricaoSacado;
	private Double valorTarifas;
	private String numeroTituloNaEmpresa;
	private String agenciaCobradora;
	private Date vencimento;
	private String motivoOcorrencia;
	
	public CNABSegmentTRecord() {
		super();
		this.setTipoSegmento("T");
	}

	@Field( offset=16 , length=2, paddingChar='0' , align = Align.RIGHT)
	public int getCodigoMovimento() {
		return codigoMovimento;
	}
	public void setCodigoMovimento(int codigoMovimento) {
		this.codigoMovimento = codigoMovimento;
	}

	@Field( offset=38 , length=20, paddingChar=' ' , align = Align.LEFT)
	public String getNossoNumero() {
		return nossoNumero;
	}
	public void setNossoNumero(String nossoNumero) {
		this.nossoNumero = nossoNumero;
	}

	@Field( offset=58 , length=1, paddingChar='0' , align = Align.RIGHT)
	public int getCarteira() {
		return carteira;
	}
	public void setCarteira(int carteira) {
		this.carteira = carteira;
	}

	@Field( offset=59 , length=15, paddingChar=' ' , align = Align.LEFT)
	public String getNumeroDocumento() {
		return numeroDocumento;
	}
	public void setNumeroDocumento(String numeroDocumento) {
		this.numeroDocumento = numeroDocumento;
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

	@Field( offset=199 , length=15, paddingChar='0' , align = Align.RIGHT)
	@FixedFormatDecimal( decimals = 2 , useDecimalDelimiter = false )
	public Double getValorTarifas() {
		return valorTarifas;
	}
	public void setValorTarifas(Double valorTarifas) {
		this.valorTarifas = valorTarifas;
	}
	
	@Field( offset=106 , length=25 , paddingChar=' ' , align = Align.LEFT)
	public String getNumeroTituloNaEmpresa() {
		return numeroTituloNaEmpresa;
	}
	public void setNumeroTituloNaEmpresa(String numeroTituloNaEmpresa) {
		this.numeroTituloNaEmpresa = numeroTituloNaEmpresa;
	}
	
	@Field( offset=100 , length=5 , paddingChar='0' , align = Align.RIGHT)
	public String getAgenciaCobradora() {
		return agenciaCobradora;
	}
	public void setAgenciaCobradora(String agenciaCobradora) {
		this.agenciaCobradora = agenciaCobradora;
	}
	
	@Field( offset=74 , length=8 )
	@FixedFormatPattern("ddMMyyyy")
	public Date getVencimento() {
		return vencimento;
	}
	public void setVencimento(Date vencimento) {
		this.vencimento = vencimento;
	}
	
	@Field( offset=214 , length=10 , paddingChar=' ' , align = Align.LEFT)
	public String getMotivoOcorrencia() {
		return motivoOcorrencia;
	}
	public void setMotivoOcorrencia(String motivoOcorrencia) {
		this.motivoOcorrencia = motivoOcorrencia;
	}	
	
}
