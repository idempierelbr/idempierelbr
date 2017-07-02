package com.todobom.idempierelbr.banking.santander.annotated;

import org.idempierelbr.cnab240.annotated.CNABCobrancaTrailerLoteRecord;
import org.idempierelbr.cnab240.annotated.CNABRecords;
import org.idempierelbr.cnab240.annotated.CNABSegmentURecord;

import com.ancientprogramming.fixedformat4j.annotation.Record;

public class SantanderCNABRecords extends CNABRecords {
	
    public SantanderCNABRecords() {
		super();
		super.setSegmentTClass(SantanderCNABSegmentT.class);
		super.setHeaderLoteClass(SantanderCNABCobrancaRetornoHeaderLote.class);
		super.setHeaderLoteCobrancaClass(SantanderCNABCobrancaRemessaHeaderLote.class);
		super.setHeaderLoteRetornoCobrancaClass(SantanderCNABCobrancaRetornoHeaderLote.class);
		super.setHeaderArquivoClass(SantanderCNABHeaderArquivo.class);
		super.setTrailerLoteCobrancaClass(SantanderCNABCobrancaRemessaTrailerLote.class);
		super.setTrailerArquivoClass(SantanderCNABCobrancaTrailerArquivo.class);

		// retorno utiliza trailer de lote padrão
		super.setTrailerLoteRetornoCobrancaClass(CNABCobrancaTrailerLoteRecord.class);

		super.setSegmentPClass(SantanderCNABSegmentP.class);
		super.setSegmentQClass(SantanderCNABSegmentQ.class);
		super.setSegmentRClass(SantanderCNABSegmentR.class);
		super.setSegmentUClass(SantanderCNABSegmentU.class);
	}

    
    // exemplo para quando a modificação em uma classe é pequena
    // dispensa arquivo exclusivo
    
	@Record
	public class SantanderCNABSegmentU extends CNABSegmentURecord {

		@Override
		public String getNossoNumeroBancoCorrespondente() {
			return super.getNossoNumeroBancoCorrespondente();
		}
		
	}

    
}
