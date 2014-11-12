package org.idempierelbr.cnab240.annotated;

import java.util.Date;

import com.ancientprogramming.fixedformat4j.annotation.Align;
import com.ancientprogramming.fixedformat4j.annotation.Field;
import com.ancientprogramming.fixedformat4j.annotation.FixedFormatPattern;
import com.ancientprogramming.fixedformat4j.annotation.Record;

@Record
public class CNABCobrancaHeaderLoteRecord extends CNABHeaderLoteRecord {

	private String convenio;
	private String mensagem1;
	private String mensagem2;
	private int sequenciaLote;
	private Date dataGravacaoLote;
	private Date dataCredito;
	
	public CNABCobrancaHeaderLoteRecord() {
		super();
		this.setTipoServico(1);
	}

	@Field ( offset = 34 , length = 20 )
	public String getConvenio() {
		return convenio;
	}

	public void setConvenio(String convenio) {
		this.convenio = convenio;
	}

	@Field ( offset = 104 , length = 40 , paddingChar = ' ' , align = Align.LEFT )
	public String getMensagem1() {
		return mensagem1;
	}

	public void setMensagem1(String mensagem1) {
		this.mensagem1 = mensagem1;
	}

	@Field ( offset = 144 , length = 40 , paddingChar = ' ' , align = Align.LEFT )
	public String getMensagem2() {
		return mensagem2;
	}

	public void setMensagem2(String mensagem2) {
		this.mensagem2 = mensagem2;
	}

	@Field ( offset = 184 , length = 8 , paddingChar = '0' , align = Align.RIGHT )
	public int getSequenciaLote() {
		return sequenciaLote;
	}

	public void setSequenciaLote(int sequenciaLote) {
		this.sequenciaLote = sequenciaLote;
	}

	@Field( offset=192 , length=8 , paddingChar = '0' , align = Align.LEFT )
	@FixedFormatPattern("ddMMyyyy")
	public Date getDataGravacaoLote() {
		return dataGravacaoLote;
	}

	public void setDataGravacaoLote(Date dataGravacaoLote) {
		this.dataGravacaoLote = dataGravacaoLote;
	}

	@Field( offset=200 , length=8 , paddingChar = '0' , align = Align.LEFT )
	@FixedFormatPattern("ddMMyyyy")
	public Date getDataCredito() {
		return dataCredito;
	}

	public void setDataCredito(Date dataCredito) {
		this.dataCredito = dataCredito;
	}
	
}
