package com.todobom.idempierelbr.banking.caixa.annotated;

import java.util.Date;

import org.idempierelbr.cnab240.annotated.CNABSegmentURecord;

import com.ancientprogramming.fixedformat4j.annotation.Record;

/**
 * 
 * @author Claudemir Todo Bom
 *
 * Patrocinado por FIT Soluções - www.fitsolucoes.biz
 *
 * LICENÇA: GPLv2 - http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt
 *
 */
@Record
public class CaixaCNABSegmentU extends CNABSegmentURecord {

	// campos removidos
	@Override
	public String getCodigoOcorrenciaSacado() {
		// TODO Auto-generated method stub
		return super.getCodigoOcorrenciaSacado();
	}

	@Override
	public Date getDataOcorrenciaSacado() {
		// TODO Auto-generated method stub
		return super.getDataOcorrenciaSacado();
	}

	@Override
	public Double getValorOcorrenciaSacado() {
		// TODO Auto-generated method stub
		return super.getValorOcorrenciaSacado();
	}

	@Override
	public String getComplementoOcorrenciaSacado() {
		// TODO Auto-generated method stub
		return super.getComplementoOcorrenciaSacado();
	}

	
}
