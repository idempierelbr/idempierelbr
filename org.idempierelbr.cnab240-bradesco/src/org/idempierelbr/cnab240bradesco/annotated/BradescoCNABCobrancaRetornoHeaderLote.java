package org.idempierelbr.cnab240bradesco.annotated;

import org.idempierelbr.cnab240febraban.annotated.CNABCobrancaHeaderLoteRecord;

import com.ancientprogramming.fixedformat4j.annotation.Align;
import com.ancientprogramming.fixedformat4j.annotation.Field;
import com.ancientprogramming.fixedformat4j.annotation.Record;

@Record
public class BradescoCNABCobrancaRetornoHeaderLote extends CNABCobrancaHeaderLoteRecord {
	
	@Field ( offset = 34 , length = 20 , paddingChar = '0' , align = Align.RIGHT )
	public String getConvenio() {
		return super.getConvenio();
	}

	public void setConvenio(String convenio) {
		super.setConvenio(convenio);
	}

}
