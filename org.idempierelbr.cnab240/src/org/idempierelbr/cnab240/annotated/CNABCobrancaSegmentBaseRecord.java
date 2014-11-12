package org.idempierelbr.cnab240.annotated;

import com.ancientprogramming.fixedformat4j.annotation.Align;
import com.ancientprogramming.fixedformat4j.annotation.Field;
import com.ancientprogramming.fixedformat4j.annotation.Record;

@Record
public class CNABCobrancaSegmentBaseRecord extends CNABSegmentBaseRecord {

	private int codigoMovimento;

	@Field( offset=16 , length=2, paddingChar = '0' , align = Align.RIGHT)
	public int getCodigoMovimento() {
		return codigoMovimento;
	}

	public void setCodigoMovimento(int codigoMovimento) {
		this.codigoMovimento = codigoMovimento;
	}

}
