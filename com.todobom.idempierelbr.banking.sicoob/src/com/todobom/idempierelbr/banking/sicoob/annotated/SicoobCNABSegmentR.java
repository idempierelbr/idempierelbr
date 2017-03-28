package com.todobom.idempierelbr.banking.sicoob.annotated;

import java.util.Date;

import org.idempierelbr.cnab240.annotated.CNABSegmentRRecord;

import com.ancientprogramming.fixedformat4j.annotation.Align;
import com.ancientprogramming.fixedformat4j.annotation.Field;
import com.ancientprogramming.fixedformat4j.annotation.FixedFormatPattern;
import com.ancientprogramming.fixedformat4j.annotation.Record;

/**
 * 
 * @author André Faria
 *
 * Patrocinado por Cloudcon Tecnologia
 *
 * LICENÃ‡A: GPLv2 - http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt
 *
 */
@Record
public class SicoobCNABSegmentR extends CNABSegmentRRecord {

	private Date dataJurosMora;
	private Date dataEmissao;
	
	@Override
	@Field(offset = 67, length = 8, paddingChar = '0', align = Align.LEFT)
	@FixedFormatPattern("ddMMyyyy")
	public Date getDataMulta() {
		if (dataJurosMora == null)
			return getDataEmissao();
		else
			return dataJurosMora;
	}


	public Date getDataEmissao() {
		return dataEmissao;
	}


	public void setDataEmissao(Date dataEmissao) {
		this.dataEmissao = dataEmissao;
	}


	public void setDataJurosMora(Date dataJurosMora) {
		this.dataJurosMora = dataJurosMora;
	}
	
	
	
}
