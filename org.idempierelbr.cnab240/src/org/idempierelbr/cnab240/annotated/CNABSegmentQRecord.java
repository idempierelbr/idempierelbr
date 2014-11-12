package org.idempierelbr.cnab240.annotated;

import com.ancientprogramming.fixedformat4j.annotation.Align;
import com.ancientprogramming.fixedformat4j.annotation.Field;
import com.ancientprogramming.fixedformat4j.annotation.Record;

@Record
public class CNABSegmentQRecord extends CNABCobrancaSegmentBaseRecord {

	private int tipoInscricaoSacado;
	private String inscricaoSacado;
	private String nomeSacado;
	private String enderecoSacado;
	private String bairroSacado;
	private String cepSacado;
	private String municipioSacado;
	private String ufSacado;
	private int tipoInscricaoSacadorAvalista;
	private String inscricaoSacadorAvalista;
	private String nomeSacadorAvalista;
	private int bancoCorrespondente;
	private String nossoNumeroCorrespondente;

	public CNABSegmentQRecord() {
		super();
		this.setTipoSegmento("Q");
	}

	@Field( offset=18 , length=1, paddingChar = '0' , align = Align.RIGHT)
	public int getTipoInscricaoSacado() {
		return tipoInscricaoSacado;
	}

	public void setTipoInscricaoSacado(int tipoInscricaoSacado) {
		this.tipoInscricaoSacado = tipoInscricaoSacado;
	}

	@Field( offset=19 , length=15, paddingChar = '0' , align = Align.RIGHT)
	public String getInscricaoSacado() {
		return inscricaoSacado;
	}

	public void setInscricaoSacado(String inscricaoSacado) {
		this.inscricaoSacado = inscricaoSacado;
	}

	@Field( offset=34 , length=40, paddingChar = ' ' , align = Align.LEFT)
	public String getNomeSacado() {
		return nomeSacado;
	}

	public void setNomeSacado(String nomeSacado) {
		this.nomeSacado = nomeSacado;
	}

	@Field( offset=74 , length=40, paddingChar = ' ' , align = Align.LEFT)
	public String getEnderecoSacado() {
		return enderecoSacado;
	}

	public void setEnderecoSacado(String enderecoSacado) {
		this.enderecoSacado = enderecoSacado;
	}

	@Field( offset=114 , length=15, paddingChar = ' ' , align = Align.LEFT)
	public String getBairroSacado() {
		return bairroSacado;
	}

	public void setBairroSacado(String bairroSacado) {
		this.bairroSacado = bairroSacado;
	}

	@Field( offset=129 , length=8, paddingChar = '0' , align = Align.LEFT)
	public String getCepSacado() {
		return cepSacado;
	}

	public void setCepSacado(String cepSacado) {
		this.cepSacado = cepSacado;
	}

	@Field( offset=137 , length=15, paddingChar = ' ' , align = Align.LEFT)
	public String getMunicipioSacado() {
		return municipioSacado;
	}

	public void setMunicipioSacado(String municipioSacado) {
		this.municipioSacado = municipioSacado;
	}

	@Field( offset=152 , length=2, paddingChar = ' ' , align = Align.LEFT)
	public String getUfSacado() {
		return ufSacado;
	}

	public void setUfSacado(String ufSacado) {
		this.ufSacado = ufSacado;
	}

	@Field( offset=154 , length=1, paddingChar = '0' , align = Align.RIGHT)
	public int getTipoInscricaoSacadorAvalista() {
		return tipoInscricaoSacadorAvalista;
	}

	public void setTipoInscricaoSacadorAvalista(int tipoInscricaoSacadorAvalista) {
		this.tipoInscricaoSacadorAvalista = tipoInscricaoSacadorAvalista;
	}

	@Field( offset=155 , length=15, paddingChar = '0' , align = Align.RIGHT)
	public String getInscricaoSacadorAvalista() {
		return inscricaoSacadorAvalista;
	}

	public void setInscricaoSacadorAvalista(String inscricaoSacadorAvalista) {
		this.inscricaoSacadorAvalista = inscricaoSacadorAvalista;
	}

	@Field( offset=170 , length=40, paddingChar = ' ' , align = Align.LEFT)
	public String getNomeSacadorAvalista() {
		return nomeSacadorAvalista;
	}

	public void setNomeSacadorAvalista(String nomeSacadorAvalista) {
		this.nomeSacadorAvalista = nomeSacadorAvalista;
	}

	@Field( offset=210 , length=3, paddingChar = '0' , align = Align.RIGHT)
	public int getBancoCorrespondente() {
		return bancoCorrespondente;
	}

	public void setBancoCorrespondente(int bancoCorrespondente) {
		this.bancoCorrespondente = bancoCorrespondente;
	}

	@Field( offset=213 , length=20, paddingChar = ' ' , align = Align.LEFT)
	public String getNossoNumeroCorrespondente() {
		return nossoNumeroCorrespondente;
	}

	public void setNossoNumeroCorrespondente(String nossoNumeroCorrespondente) {
		this.nossoNumeroCorrespondente = nossoNumeroCorrespondente;
	}

}
