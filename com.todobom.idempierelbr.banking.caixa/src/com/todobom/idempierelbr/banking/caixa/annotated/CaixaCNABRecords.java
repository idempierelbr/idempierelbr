package com.todobom.idempierelbr.banking.caixa.annotated;

import org.idempierelbr.cnab240.annotated.CNABRecords;

/**
 * 
 * @author Claudemir Todo Bom
 *
 * Patrocinado por FIT Soluções - www.fitsolucoes.biz
 *
 * LICENÇA: GPLv2 - http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt
 *
 */
public class CaixaCNABRecords extends CNABRecords {

	public CaixaCNABRecords() {
		super();
		
		super.setHeaderArquivoClass(CaixaCNABHeaderArquivo.class);
		
		super.setTrailerArquivoClass(CaixaCNABTrailerArquivo.class);
		super.setHeaderLoteCobrancaClass(CaixaCNABCobrancaHeaderLote.class);
		super.setSegmentPClass(CaixaCNABSegmentP.class);
		super.setSegmentRClass(CaixaCNABSegmentR.class);
		super.setSegmentTClass(CaixaCNABSegmentT.class);
		super.setSegmentUClass(CaixaCNABSegmentU.class);
		super.setTrailerLoteCobrancaClass(CaixaCNABCobrancaTrailerLote.class);

	}

}
