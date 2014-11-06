package com.todobom.idempierelbr.banking.santander.annotated;

import java.util.Date;

import org.idempierelbr.cnab240.annotated.CNABSegmentTRecord;

import com.ancientprogramming.fixedformat4j.annotation.Align;
import com.ancientprogramming.fixedformat4j.annotation.Field;
import com.ancientprogramming.fixedformat4j.annotation.FixedFormatDecimal;
import com.ancientprogramming.fixedformat4j.annotation.FixedFormatPattern;
import com.ancientprogramming.fixedformat4j.annotation.Record;

@Record
public class SantanderCNABSegmentT extends CNABSegmentTRecord {


	@Override
	@Field( offset=18 , length=4, paddingChar='0' , align = Align.RIGHT)
	public int getAgenciaCedente() {
		// TODO Auto-generated method stub
		return super.getAgenciaCedente();
	}

	@Override
	@Field( offset=22 , length=1, paddingChar='0' , align = Align.RIGHT)
	public String getDvAgenciaCedente() {
		// TODO Auto-generated method stub
		return super.getDvAgenciaCedente();
	}

	@Override
	@Field( offset=23 , length=9, paddingChar='0' , align = Align.RIGHT)
	public long getContaCedente() {
		// TODO Auto-generated method stub
		return super.getContaCedente();
	}

	@Override
	@Field( offset=32 , length=1, paddingChar='0' , align = Align.RIGHT)
	public String getDvContaCedente() {
		// TODO Auto-generated method stub
		return super.getDvContaCedente();
	}

	@Override
	public String getDvAgenciaContaCedente() {
		// TODO Auto-generated method stub
		return super.getDvAgenciaContaCedente();
	}

	@Field( offset=41 , length=13, paddingChar='0' , align = Align.RIGHT)
	public String getNossoNumero() {
		return super.getNossoNumero();
		// return nossoNumero;
	}
	
	@Field( offset=54 , length=1, paddingChar='0' , align = Align.RIGHT)
	public int getCodigoCarteira() {
		return super.getCodigoCarteira();
		// return carteira;
	}

	@Field( offset=55 , length=15, paddingChar=' ' , align = Align.LEFT)
	public String getNumeroDocumento() {
		return super.getNumeroDocumento();
		// return numeroDocumento;
	}
	
	
	@Field( offset=70 , length=8 , paddingChar = '0' , align = Align.LEFT )
	@FixedFormatPattern("ddMMyyyy")
	public Date getVencimento() {
		return super.getVencimento();
	}

	@Override
	@Field( offset=78 , length=15, paddingChar='0' , align = Align.RIGHT)
	@FixedFormatDecimal( decimals = 2 , useDecimalDelimiter = false )
	public Double getValorTitulo() {
		// TODO Auto-generated method stub
		return super.getValorTitulo();
	}

	@Override
	@Field( offset=93 , length=3, paddingChar='0' , align = Align.RIGHT)
	public int getBancoCobrador() {
		// TODO Auto-generated method stub
		return super.getBancoCobrador();
	}


	@Field( offset=96 , length=5 , paddingChar='0' , align = Align.RIGHT)
	public int getAgenciaCobradora() {
		return super.getAgenciaCobradora();
	}

	@Override
	@Field( offset=100 , length=1, paddingChar='0' , align = Align.RIGHT)
	public String getDvAgenciaCobradora() {
		// TODO Auto-generated method stub
		return super.getDvAgenciaCobradora();
	}

	@Field( offset=101 , length=25 , paddingChar=' ' , align = Align.LEFT)
	public String getIdentificacaoTituloNaEmpresa() {
		return super.getIdentificacaoTituloNaEmpresa();
		// return numeroTituloNaEmpresa;
	}
	
	@Override
	@Field( offset=126 , length=2, paddingChar='0' , align = Align.RIGHT)
	public int getCodigoMoeda() {
		// TODO Auto-generated method stub
		return super.getCodigoMoeda();
	}

	@Field( offset=128 , length=1, paddingChar='0' , align = Align.RIGHT)
	public int getTipoInscricaoSacado() {
		return super.getTipoInscricaoSacado();
		// return tipoInscricaoSacado;
	}

	@Field( offset=129 , length=15, paddingChar='0' , align = Align.RIGHT)
	public String getInscricaoSacado() {
		return super.getInscricaoSacado();
		// return inscricaoSacado;
	}

	@Override
	@Field( offset=144 , length=40, paddingChar=' ' , align = Align.LEFT)
	public String getNomeSacado() {
		// TODO Auto-generated method stub
		return super.getNomeSacado();
	}

	@Field( offset=194 , length=15, paddingChar='0' , align = Align.RIGHT)
	@FixedFormatDecimal( decimals = 2 , useDecimalDelimiter = false )
	public Double getValorTarifas() {
		return super.getValorTarifas();
		// return valorTarifas;
	}

	@Override
	public long getNumeroContrato() {
		// TODO Auto-generated method stub
		return super.getNumeroContrato();
	}

	@Field( offset=209 , length=10 , paddingChar=' ' , align = Align.LEFT)
	public String getMotivoOcorrencia() {
		return super.getMotivoOcorrencia();
	}

}
