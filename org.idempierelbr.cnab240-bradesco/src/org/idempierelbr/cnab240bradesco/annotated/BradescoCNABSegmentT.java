package org.idempierelbr.cnab240bradesco.annotated;

import java.util.Date;

import org.idempierelbr.cnab240febraban.annotated.CNABSegmentTRecord;

import com.ancientprogramming.fixedformat4j.annotation.Align;
import com.ancientprogramming.fixedformat4j.annotation.Field;
import com.ancientprogramming.fixedformat4j.annotation.FixedFormatDecimal;
import com.ancientprogramming.fixedformat4j.annotation.FixedFormatPattern;
import com.ancientprogramming.fixedformat4j.annotation.Record;

@Record
public class BradescoCNABSegmentT extends CNABSegmentTRecord {

	/*
	private String nossoNumero;
	private int carteira;
	private String numeroDocumento;
	private int tipoInscricaoSacado;
	private String inscricaoSacado;
	private Double valorTarifas;
	private String numeroTituloNaEmpresa;
    */
	
	@Field( offset=46 , length=11, paddingChar='0' , align = Align.RIGHT)
	public String getNossoNumero() {
		return super.getNossoNumero();
		// return nossoNumero;
	}
	public void setNossoNumero(String nossoNumero) {
		super.setNossoNumero(nossoNumero);
		// this.nossoNumero = nossoNumero;
	}
	
	@Field( offset=58 , length=1, paddingChar='0' , align = Align.RIGHT)
	public int getCarteira() {
		return super.getCarteira();
		// return carteira;
	}
	public void setCarteira(int carteira) {
		super.setCarteira(carteira);
		// this.carteira = carteira;
	}

	@Field( offset=59 , length=15, paddingChar=' ' , align = Align.LEFT)
	public String getNumeroDocumento() {
		return super.getNumeroDocumento();
		// return numeroDocumento;
	}
	public void setNumeroDocumento(String numeroDocumento) {
		super.setNumeroDocumento(numeroDocumento);
		// this.numeroDocumento = numeroDocumento;
	}

	public int getTipoInscricaoSacado() {
		return 0;
		// return tipoInscricaoSacado;
	}
	public void setTipoInscricaoSacado(int tipoInscricaoSacado) {
		//super.setTipoInscricaoSacado(tipoInscricaoSacado);
		// this.tipoInscricaoSacado = tipoInscricaoSacado;
	}

	public String getInscricaoSacado() {
		return "0";
		// return inscricaoSacado;
	}
	public void setInscricaoSacado(String inscricaoSacado) {
		//super.setInscricaoSacado(inscricaoSacado);
		// this.inscricaoSacado = inscricaoSacado;
	}

	@Field( offset=199 , length=15, paddingChar='0' , align = Align.RIGHT)
	@FixedFormatDecimal( decimals = 2 , useDecimalDelimiter = false )
	public Double getValorTarifas() {
		return super.getValorTarifas();
		// return valorTarifas;
	}
	public void setValorTarifas(Double valorTarifas) {
		super.setValorTarifas(valorTarifas);
		// this.valorTarifas = valorTarifas;
	}
	
	@Field( offset=106 , length=25 , paddingChar=' ' , align = Align.LEFT)
	public String getNumeroTituloNaEmpresa() {
		return super.getNumeroTituloNaEmpresa();
		// return numeroTituloNaEmpresa;
	}
	public void setNumeroTituloNaEmpresa(String numeroTituloNaEmpresa) {
		super.setNumeroTituloNaEmpresa(numeroTituloNaEmpresa);
		// this.numeroTituloNaEmpresa = numeroTituloNaEmpresa;
	}	

	@Field( offset=100 , length=5 , paddingChar='0' , align = Align.RIGHT)
	public String getAgenciaCobradora() {
		return super.getAgenciaCobradora();
	}
	public void setAgenciaCobradora(String agenciaCobradora) {
		super.setAgenciaCobradora(agenciaCobradora);
	}
	
	@Field( offset=74 , length=8 )
	@FixedFormatPattern("ddMMyyyy")
	public Date getVencimento() {
		return super.getVencimento();
	}
	public void setVencimento(Date vencimento) {
		super.setVencimento(vencimento);
	}

	@Field( offset=214 , length=10 , paddingChar=' ' , align = Align.LEFT)
	public String getMotivoOcorrencia() {
		return super.getMotivoOcorrencia();
	}
	@Override
	public void setMotivoOcorrencia(String motivoOcorrencia) {
		super.setMotivoOcorrencia(motivoOcorrencia);
	}	

}
