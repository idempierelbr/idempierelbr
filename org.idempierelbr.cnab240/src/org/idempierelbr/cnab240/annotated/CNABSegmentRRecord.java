package org.idempierelbr.cnab240.annotated;

import java.util.Date;

import com.ancientprogramming.fixedformat4j.annotation.Align;
import com.ancientprogramming.fixedformat4j.annotation.Field;
import com.ancientprogramming.fixedformat4j.annotation.FixedFormatDecimal;
import com.ancientprogramming.fixedformat4j.annotation.FixedFormatPattern;
import com.ancientprogramming.fixedformat4j.annotation.Record;

@Record
public class CNABSegmentRRecord extends CNABCobrancaSegmentBaseRecord {

	private int decimaisPercentualDesconto = 2;
	private int codigoDesconto2;
	private Date dataDesconto2;
	private Double desconto2;
	private int codigoDesconto3;
	private Date dataDesconto3;
	private String desconto3;
	private int decimaisPercentualMulta = 2;
	private int codigoMulta;
	private Date dataMulta;
	private Double multa;
	private String informacoesSacado;
	private String mensagem3;
	private String mensagem4;
	private int codOcorrenciaSacado;
	private int debitoBanco;
	private int debitoAgencia;
	private String debitoAgenciaDV;
	private long debitoConta;
	private String debitoContaDV;
	private String debitoAgContaDV;
	private int avisoDebito;
	
	public CNABSegmentRRecord() {
		super();
		this.setTipoSegmento("R");
	}

	@Field( offset=18 , length=1, paddingChar = '0' , align = Align.RIGHT)
	public int getCodigoDesconto2() {
		return codigoDesconto2;
	}

	public void setCodigoDesconto2(int codigoDesconto2) {
		this.codigoDesconto2 = codigoDesconto2;
	}

	@Field( offset=19 , length=8 , paddingChar = '0' , align = Align.LEFT )
	@FixedFormatPattern("ddMMyyyy")
	public Date getDataDesconto2() {
		return dataDesconto2;
	}

	public void setDataDesconto2(Date dataDesconto2) {
		this.dataDesconto2 = dataDesconto2;
	}

	@Field( offset=27 , length=15, paddingChar='0' , align = Align.RIGHT)
	@FixedFormatDecimal( decimals = 2 , useDecimalDelimiter = false )
	public Double getDesconto2() {
		return desconto2;
	}

	public void setDesconto2(Double desconto2) {
		this.desconto2 = desconto2;
	}
	
	public void setDesconto2(Double desconto , boolean percentual ) {
		if (percentual)
			this.setDesconto2( desconto * ( Math.pow(10, this.decimaisPercentualDesconto-3 ) ) );
		else
			this.setDesconto2( desconto );
	}

	public Double getDesconto2( boolean percentual ) {
		if (percentual)
			return ( this.getDesconto2() / ( Math.pow(10, this.decimaisPercentualDesconto-3 ) ) );

		return this.getDesconto2();
	}

	

	@Field( offset=42 , length=1, paddingChar = '0' , align = Align.RIGHT)
	public int getCodigoDesconto3() {
		return codigoDesconto3;
	}

	public void setCodigoDesconto3(int codigoDesconto3) {
		this.codigoDesconto3 = codigoDesconto3;
	}

	@Field( offset=43 , length=8 , paddingChar = '0' , align = Align.LEFT )
	@FixedFormatPattern("ddMMyyyy")
	public Date getDataDesconto3() {
		return dataDesconto3;
	}

	public void setDataDesconto3(Date dataDesconto3) {
		this.dataDesconto3 = dataDesconto3;
	}

	@Field( offset=51 , length=15, paddingChar='0' , align = Align.RIGHT)
	@FixedFormatDecimal( decimals = 2 , useDecimalDelimiter = false )
	public String getDesconto3() {
		return desconto3;
	}

	public void setDesconto3(String desconto3) {
		this.desconto3 = desconto3;
	}

	@Field( offset=66 , length=1, paddingChar = '0' , align = Align.RIGHT)
	public int getCodigoMulta() {
		return codigoMulta;
	}

	public void setCodigoMulta(int codigoMulta) {
		this.codigoMulta = codigoMulta;
	}

	@Field( offset=67 , length=8 , paddingChar = '0' , align = Align.LEFT )
	@FixedFormatPattern("ddMMyyyy")
	public Date getDataMulta() {
		return dataMulta;
	}

	public void setDataMulta(Date dataMulta) {
		this.dataMulta = dataMulta;
	}

	@Field( offset=75 , length=15, paddingChar='0' , align = Align.RIGHT)
	@FixedFormatDecimal( decimals = 2 , useDecimalDelimiter = false )
	public Double getMulta() {
		return multa;
	}

	public void setMulta(Double multa) {
		this.multa = multa;
	}

	public void setMulta(Double multa , boolean percentual ) {
		if (percentual)
			this.setMulta( multa * ( Math.pow(10, this.getDecimaisPercentualMulta()-2 ) ) );
		else
			this.setMulta( multa );
	}

	public Double getMulta( boolean percentual ) {
		if (percentual)
			return ( this.getMulta() / ( Math.pow(10, this.getDecimaisPercentualDesconto()-2 ) ) );

		return this.getMulta();
	}

	@Field( offset=90 , length=10, paddingChar=' ' , align = Align.LEFT)
	public String getInformacoesSacado() {
		return informacoesSacado;
	}

	public void setInformacoesSacado(String informacoesSacado) {
		this.informacoesSacado = informacoesSacado;
	}

	@Field( offset=100 , length=40, paddingChar=' ' , align = Align.LEFT)
	public String getMensagem3() {
		return mensagem3;
	}

	public void setMensagem3(String mensagem3) {
		this.mensagem3 = mensagem3;
	}

	@Field( offset=140 , length=40, paddingChar=' ' , align = Align.LEFT)
	public String getMensagem4() {
		return mensagem4;
	}

	public void setMensagem4(String mensagem4) {
		this.mensagem4 = mensagem4;
	}

	@Field( offset=200 , length=8, paddingChar='0' , align = Align.RIGHT)
	public int getCodOcorrenciaSacado() {
		return codOcorrenciaSacado;
	}

	public void setCodOcorrenciaSacado(int codOcorrenciaSacado) {
		this.codOcorrenciaSacado = codOcorrenciaSacado;
	}

	@Field( offset=208 , length=3, paddingChar='0' , align = Align.RIGHT)
	public int getDebitoBanco() {
		return debitoBanco;
	}

	public void setDebitoBanco(int debitoBanco) {
		this.debitoBanco = debitoBanco;
	}

	@Field( offset=211 , length=5, paddingChar='0' , align = Align.RIGHT)
	public int getDebitoAgencia() {
		return debitoAgencia;
	}

	public void setDebitoAgencia(int debitoAgencia) {
		this.debitoAgencia = debitoAgencia;
	}

	@Field( offset=216 , length=1, paddingChar=' ' , align = Align.LEFT)
	public String getDebitoAgenciaDV() {
		return debitoAgenciaDV;
	}

	public void setDebitoAgenciaDV(String debitoAgenciaDV) {
		this.debitoAgenciaDV = debitoAgenciaDV;
	}

	@Field( offset=217 , length=12, paddingChar='0' , align = Align.RIGHT)
	public long getDebitoConta() {
		return debitoConta;
	}

	public void setDebitoConta(long debitoConta) {
		this.debitoConta = debitoConta;
	}

	@Field( offset=229 , length=1, paddingChar=' ' , align = Align.LEFT)
	public String getDebitoContaDV() {
		return debitoContaDV;
	}

	public void setDebitoContaDV(String debitoContaDV) {
		this.debitoContaDV = debitoContaDV;
	}

	@Field( offset=230 , length=1, paddingChar=' ' , align = Align.LEFT)
	public String getDebitoAgContaDV() {
		return debitoAgContaDV;
	}

	public void setDebitoAgContaDV(String debitoAgContaDV) {
		this.debitoAgContaDV = debitoAgContaDV;
	}

	@Field( offset=231 , length=1, paddingChar='0' , align = Align.RIGHT)
	public int getAvisoDebito() {
		return avisoDebito;
	}

	public void setAvisoDebito(int avisoDebito) {
		this.avisoDebito = avisoDebito;
	}

	public void setDecimaisPercentualDesconto(int decimaisPercentualDesconto) {
		this.decimaisPercentualDesconto = decimaisPercentualDesconto;
	}

	public void setDecimaisPercentualMulta(int decimaisPercentualMulta) {
		this.decimaisPercentualMulta = decimaisPercentualMulta;
	}

	public int getDecimaisPercentualDesconto() {
		return decimaisPercentualDesconto;
	}

	public int getDecimaisPercentualMulta() {
		return decimaisPercentualMulta;
	}

}
