package org.idempierelbr.cnab240febraban.annotated;

import com.ancientprogramming.fixedformat4j.annotation.Record;

@Record
public class CNABHeaderArquivoRecord extends CNABBaseRecord {

	public CNABHeaderArquivoRecord() {
		super();
		this.setTipoRegistro(0);
	}

}
