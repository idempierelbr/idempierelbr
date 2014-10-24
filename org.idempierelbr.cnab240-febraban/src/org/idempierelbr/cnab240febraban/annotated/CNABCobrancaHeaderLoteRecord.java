package org.idempierelbr.cnab240febraban.annotated;

import com.ancientprogramming.fixedformat4j.annotation.Field;
import com.ancientprogramming.fixedformat4j.annotation.Record;

@Record
public class CNABCobrancaHeaderLoteRecord extends CNABHeaderLoteRecord {

	private String convenio;

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
	
}
