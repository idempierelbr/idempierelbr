package org.idempierelbr.cnab240.annotated;

import com.ancientprogramming.fixedformat4j.annotation.Align;
import com.ancientprogramming.fixedformat4j.annotation.Field;
import com.ancientprogramming.fixedformat4j.annotation.FixedFormatDecimal;
import com.ancientprogramming.fixedformat4j.annotation.Record;

@Record
public class CNABCobrancaTrailerLoteRecord extends CNABTrailerLoteRecord {


	private int quantidadeCobrancaSimples;
	private Double totalCobrancaSimples;
	private int quantidadeCobrancaVinculada;
	private Double totalCobrancaVinculada;
	private int quantidadeCobrancaCaucionada;
	private Double totalCobrancaCaucionada;
	private int quantidadeCobrancaDescontada;
	private Double totalCobrancaDescontada;
	private String numeroAvisoLancamento;

	
	@Field( offset=24 , length=6, paddingChar='0' , align = Align.RIGHT)
	public int getQuantidadeCobrancaSimples() {
		return quantidadeCobrancaSimples;
	}
	public void setQuantidadeCobrancaSimples(int quantidadeCobrancaSimples) {
		this.quantidadeCobrancaSimples = quantidadeCobrancaSimples;
	}
	@Field( offset=30 , length=17, paddingChar='0' , align = Align.RIGHT)
	@FixedFormatDecimal( decimals = 2 , useDecimalDelimiter = false )
	public Double getTotalCobrancaSimples() {
		return totalCobrancaSimples;
	}
	public void setTotalCobrancaSimples(Double totalCobrancaSimples) {
		this.totalCobrancaSimples = totalCobrancaSimples;
	}

	@Field( offset=47 , length=6, paddingChar='0' , align = Align.RIGHT)
	public int getQuantidadeCobrancaVinculada() {
		return quantidadeCobrancaVinculada;
	}
	public void setQuantidadeCobrancaVinculada(int quantidadeCobrancaVinculada) {
		this.quantidadeCobrancaVinculada = quantidadeCobrancaVinculada;
	}

	@Field( offset=53 , length=17, paddingChar='0' , align = Align.RIGHT)
	@FixedFormatDecimal( decimals = 2 , useDecimalDelimiter = false )
	public Double getTotalCobrancaVinculada() {
		return totalCobrancaVinculada;
	}
	public void setTotalCobrancaVinculada(Double totalCobrancaVinculada) {
		this.totalCobrancaVinculada = totalCobrancaVinculada;
	}

	@Field( offset=70 , length=6, paddingChar='0' , align = Align.RIGHT)
	public int getQuantidadeCobrancaCaucionada() {
		return quantidadeCobrancaCaucionada;
	}
	public void setQuantidadeCobrancaCaucionada(int quantidadeCobrancaCaucionada) {
		this.quantidadeCobrancaCaucionada = quantidadeCobrancaCaucionada;
	}

	@Field( offset=76 , length=17, paddingChar='0' , align = Align.RIGHT)
	@FixedFormatDecimal( decimals = 2 , useDecimalDelimiter = false )
	public Double getTotalCobrancaCaucionada() {
		return totalCobrancaCaucionada;
	}
	public void setTotalCobrancaCaucionada(Double totalCobrancaCaucionada) {
		this.totalCobrancaCaucionada = totalCobrancaCaucionada;
	}

	@Field( offset=93 , length=6, paddingChar='0' , align = Align.RIGHT)
	public int getQuantidadeCobrancaDescontada() {
		return quantidadeCobrancaDescontada;
	}
	public void setQuantidadeCobrancaDescontada(int quantidadeCobrancaDescontada) {
		this.quantidadeCobrancaDescontada = quantidadeCobrancaDescontada;
	}

	@Field( offset=99 , length=17, paddingChar='0' , align = Align.RIGHT)
	@FixedFormatDecimal( decimals = 2 , useDecimalDelimiter = false )
	public Double getTotalCobrancaDescontada() {
		return totalCobrancaDescontada;
	}
	public void setTotalCobrancaDescontada(Double totalCobrancaDescontada) {
		this.totalCobrancaDescontada = totalCobrancaDescontada;
	}
	
	@Field( offset=116 , length=8, paddingChar=' ' , align = Align.LEFT)
	public String getNumeroAvisoLancamento() {
		return numeroAvisoLancamento;
	}
	public void setNumeroAvisoLancamento(String numeroAvisoLancamento) {
		this.numeroAvisoLancamento = numeroAvisoLancamento;
	}
	
}
