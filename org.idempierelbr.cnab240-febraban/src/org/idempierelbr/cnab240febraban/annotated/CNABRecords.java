package org.idempierelbr.cnab240febraban.annotated;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import com.ancientprogramming.fixedformat4j.format.FixedFormatManager;
import com.ancientprogramming.fixedformat4j.format.impl.FixedFormatManagerImpl;

public class CNABRecords {
	
	private List<CNABBaseRecord> listaRegistros;
	
    static FixedFormatManager manager = new FixedFormatManagerImpl();
    
    private Class<? extends CNABBaseRecord> baseClass = CNABBaseRecord.class;
    private Class<? extends CNABHeaderArquivoRecord> headerArquivo = CNABHeaderArquivoRecord.class;
    private Class<? extends CNABCobrancaHeaderLoteRecord> headerLoteClass = CNABCobrancaHeaderLoteRecord.class;
    private Class<? extends CNABSegmentBaseRecord> segmentBaseClass = CNABSegmentBaseRecord.class;
    private Class<? extends CNABSegmentBaseRecord> segmentTClass = CNABSegmentTRecord.class;
    private Class<? extends CNABSegmentBaseRecord> segmentUClass = CNABSegmentURecord.class;
    
	public Class<? extends CNABBaseRecord> getBaseClass() {
		return baseClass;
	}

	public void setBaseClass(Class<? extends CNABBaseRecord> baseClass) {
		this.baseClass = baseClass;
	}

	public Class<? extends CNABCobrancaHeaderLoteRecord> getHeaderLoteClass() {
		return headerLoteClass;
	}

	public void setHeaderLoteClass(Class<? extends CNABCobrancaHeaderLoteRecord> headerClass) {
		this.headerLoteClass = headerClass;
	}

	public Class<? extends CNABSegmentBaseRecord> getSegmentBaseClass() {
		return segmentBaseClass;
	}

	public void setSegmentBaseClass(Class<? extends CNABSegmentBaseRecord> segmentBaseClass) {
		this.segmentBaseClass = segmentBaseClass;
	}

	public Class<? extends CNABSegmentBaseRecord> getSegmentTClass() {
		return segmentTClass;
	}

	public void setSegmentTClass(Class<? extends CNABSegmentBaseRecord> segmentTClass) {
		this.segmentTClass = segmentTClass;
	}

	public Class<? extends CNABSegmentBaseRecord> getSegmentUClass() {
		return segmentUClass;
	}

	public void setSegmentUClass(Class<? extends CNABSegmentBaseRecord> segmentUClass) {
		this.segmentUClass = segmentUClass;
	}

	public CNABRecords() {
		
		setListaRegistros(new ArrayList<CNABBaseRecord>());
		
	}
	
	public void loadRecords( File arqCNAB ) throws IOException {
		
		FileReader arq;
		try {
			arq = new FileReader(arqCNAB);
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return;
		}
		
		BufferedReader lerArq = new BufferedReader(arq);
		
		String linha;
		while ( (linha = lerArq.readLine() ) !=null ) {
			CNABBaseRecord record = loadRecord(linha);
			
			if (record != null) {
				listaRegistros.add(record);
			}
		}

		lerArq.close();
		arq.close();

	}

	CNABBaseRecord loadRecord( String linha ) {
		CNABBaseRecord record = manager.load(baseClass, linha);

		switch (record.getTipoRegistro()) {
		case 0:
			record = loadHeaderArquivo( linha );
			break;
		case 1:
			record = loadHeaderLote( linha );
			break;
		case 2:
			record = loadRegistroInicialLote ( linha );
			break;
		case 3:
			record = loadSegmento ( linha );
			break;
		case 4:
			record = loadRegistroFinalLote ( linha );
			break;
		case 5:
			record = loadTrailerLote ( linha );
			break;
		case 6:
			record = loadTrailerArquivo ( linha );
			break;
		}

		return record;
	}
	
	private CNABBaseRecord loadTrailerArquivo(String linha) {
		CNABBaseRecord record = manager.load( baseClass, linha);
		return record;
	}

	private CNABBaseRecord loadTrailerLote(String linha) {
		CNABBaseRecord record = manager.load( baseClass, linha);
		return record;
	}

	private CNABBaseRecord loadRegistroFinalLote(String linha) {
		CNABBaseRecord record = manager.load( baseClass, linha);
		return record;
	}

	private CNABBaseRecord loadRegistroInicialLote(String linha) {
		CNABBaseRecord record = manager.load( baseClass, linha);
		return record;
	}

	private CNABBaseRecord loadSegmento(String linha) {
		CNABSegmentBaseRecord record = manager.load( segmentBaseClass, linha);
		
		switch (record.getTipoSegmento().charAt(0)) {
		case 'T':
			record = manager.load ( segmentTClass , linha);
			break;
		case 'U':
			record = manager.load ( segmentUClass , linha);
			break;
		}
		
		return record;
	}

	private CNABBaseRecord loadHeaderLote(String linha) {
		CNABCobrancaHeaderLoteRecord record = manager.load( headerLoteClass, linha);
		return record;
	}

	private CNABBaseRecord loadHeaderArquivo(String linha) {
		CNABBaseRecord record = manager.load( baseClass, linha);
		return record;
	}

	public List<CNABBaseRecord> getListaRegistros() {
		return listaRegistros;
	}

	public void setListaRegistros(List<CNABBaseRecord> listaRegistros) {
		this.listaRegistros = listaRegistros;
	}

	public Class<? extends CNABHeaderArquivoRecord> getHeaderArquivo() {
		return headerArquivo;
	}

	public void setHeaderArquivo(Class<? extends CNABHeaderArquivoRecord> headerArquivo) {
		this.headerArquivo = headerArquivo;
	}

}
