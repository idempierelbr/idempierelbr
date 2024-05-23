package org.idempierelbr.cnab240.annotated;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.adempiere.exceptions.AdempiereException;
import org.apache.commons.lang.StringUtils;

public class CNABRecords {
	
	private List<CNABBaseRecord> listaRegistros;
	
    static LBRFixedFormatManager manager = new LBRFixedFormatManager();
    
    /* classes de registros básicos - dificilmente precisam ser alterados */
    private Class<? extends CNABBaseRecord> baseClass = CNABBaseRecord.class;
    private Class<? extends CNABHeaderLoteBaseRecord> headerLoteBaseClass = CNABHeaderLoteBaseRecord.class;
    private Class<? extends CNABCobrancaSegmentBaseRecord> segmentBaseClass = CNABCobrancaSegmentBaseRecord.class;

    /* classes de registros comuns */
    private Class<? extends CNABHeaderArquivoRecord> headerArquivoClass = CNABHeaderArquivoRecord.class;
    private Class<? extends CNABHeaderLoteRecord> headerLoteClass = CNABHeaderLoteRecord.class;
    private Class<? extends CNABTrailerLoteRecord> trailerLoteClass = CNABTrailerLoteRecord.class;
    private Class<? extends CNABTrailerArquivoRecord> trailerArquivoClass = CNABTrailerArquivoRecord.class;

    /* classes de registros cobrança */
    private Class<? extends CNABCobrancaHeaderLoteRecord> headerLoteCobrancaClass = CNABCobrancaHeaderLoteRecord.class;
    private Class<? extends CNABCobrancaHeaderLoteRecord> headerLoteRetornoCobrancaClass = null;
	private Class<? extends CNABCobrancaSegmentBaseRecord> segmentPClass = CNABSegmentPRecord.class;
    private Class<? extends CNABCobrancaSegmentBaseRecord> segmentQClass = CNABSegmentQRecord.class;
    private Class<? extends CNABCobrancaSegmentBaseRecord> segmentRClass = CNABSegmentRRecord.class;
    private Class<? extends CNABCobrancaSegmentBaseRecord> segmentTClass = CNABSegmentTRecord.class;
    private Class<? extends CNABCobrancaSegmentBaseRecord> segmentUClass = CNABSegmentURecord.class;
    private Class<? extends CNABCobrancaTrailerLoteRecord> trailerLoteCobrancaClass = CNABCobrancaTrailerLoteRecord.class;
	private Class<? extends CNABCobrancaTrailerLoteRecord> trailerLoteRetornoCobrancaClass = null;

    private int sequenciaSegmento;

    private CNABHeaderArquivoRecord fileHeader;
	private CNABHeaderLoteRecord loteHeader;

	private int recordCounter;
	private int loteCounter;

	public Class<? extends CNABBaseRecord> getBaseClass() {
		return this.baseClass;
	}

	public void setBaseClass(Class<? extends CNABBaseRecord> baseClass) {
		this.baseClass = baseClass;
	}

	public Class<? extends CNABHeaderLoteBaseRecord> getHeaderLoteBaseClass() {
		return headerLoteBaseClass;
	}

	public void setHeaderLoteBaseClass(Class<? extends CNABHeaderLoteBaseRecord> headerLoteBaseClass) {
		this.headerLoteBaseClass = headerLoteBaseClass;
	}

	public Class<? extends CNABHeaderLoteRecord> getHeaderLoteClass() {
		return headerLoteClass;
	}

	public void setHeaderLoteClass(
			Class<? extends CNABHeaderLoteRecord> headerLoteClass) {
		this.headerLoteClass = headerLoteClass;
	}

	public Class<? extends CNABCobrancaHeaderLoteRecord> getHeaderLoteCobrancaClass() {
		return headerLoteCobrancaClass;
	}

	public void setHeaderLoteCobrancaClass(Class<? extends CNABCobrancaHeaderLoteRecord> headerLoteCobrancaClass) {
		this.headerLoteCobrancaClass = headerLoteCobrancaClass;
	}

	public Class<? extends CNABCobrancaHeaderLoteRecord> getHeaderLoteRetornoCobrancaClass() {
		return headerLoteRetornoCobrancaClass;
	}

	public void setHeaderLoteRetornoCobrancaClass(
			Class<? extends CNABCobrancaHeaderLoteRecord> headerLoteRetornoCobrancaClass) {
		this.headerLoteRetornoCobrancaClass = headerLoteRetornoCobrancaClass;
	}

	public Class<? extends CNABSegmentBaseRecord> getSegmentBaseClass() {
		return segmentBaseClass;
	}

	public void setSegmentBaseClass(Class<? extends CNABCobrancaSegmentBaseRecord> segmentBaseClass) {
		this.segmentBaseClass = segmentBaseClass;
	}

	public Class<? extends CNABSegmentBaseRecord> getSegmentTClass() {
		return segmentTClass;
	}

    public Class<? extends CNABCobrancaSegmentBaseRecord> getSegmentPClass() {
		return segmentPClass;
	}

	public void setSegmentPClass(
			Class<? extends CNABCobrancaSegmentBaseRecord> segmentPClass) {
		this.segmentPClass = segmentPClass;
	}

	public Class<? extends CNABCobrancaSegmentBaseRecord> getSegmentQClass() {
		return segmentQClass;
	}

	public void setSegmentQClass(
			Class<? extends CNABCobrancaSegmentBaseRecord> segmentQClass) {
		this.segmentQClass = segmentQClass;
	}

	public Class<? extends CNABCobrancaSegmentBaseRecord> getSegmentRClass() {
		return segmentRClass;
	}

	public void setSegmentRClass(
			Class<? extends CNABCobrancaSegmentBaseRecord> segmentRClass) {
		this.segmentRClass = segmentRClass;
	}

	public void setSegmentTClass(Class<? extends CNABCobrancaSegmentBaseRecord> segmentTClass) {
		this.segmentTClass = segmentTClass;
	}

	public Class<? extends CNABSegmentBaseRecord> getSegmentUClass() {
		return segmentUClass;
	}

	public void setSegmentUClass(Class<? extends CNABCobrancaSegmentBaseRecord> segmentUClass) {
		this.segmentUClass = segmentUClass;
	}

	public CNABRecords() {
		
		setListaRegistros(new ArrayList<CNABBaseRecord>());
		sequenciaSegmento = 0;
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
		
		listaRegistros.clear();
		
		String linha;
		int lineCount = 1;
		try {
			while ( (linha = lerArq.readLine() ) !=null && !linha.trim().equals("") ) {
				CNABBaseRecord record = loadRecord(linha);

				if (record != null) {
					listaRegistros.add(record);
				}

				lineCount++;
			}
		} catch ( Exception e ) {
			throw new AdempiereException("Erro processando linha " + lineCount + ": " + e.getMessage() , e );
		} finally {
			lerArq.close();
			arq.close();
		}

	}

	CNABBaseRecord loadRecord( String linha ) {
		
		if ( linha.length() != 240 ) {
			throw new AdempiereException( "Tamanho de registro diferente de 240 caracteres");
		}
		
		CNABBaseRecord record = manager.load(baseClass, linha);

		switch (record.getTipoRegistro()) {
		case 0:
			record = loadHeaderArquivo( linha );
			fileHeader = (CNABHeaderArquivoRecord) record;
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
		
		if ( loteHeader == null ) {
			return record;
		}
		
		switch ( loteHeader.getTipoServico() ) {
		case 1:
			if ( loteHeader.getTipoOperacao().equals("T") && trailerLoteRetornoCobrancaClass != null) {
				record = manager.load( trailerLoteRetornoCobrancaClass , linha );
			} else {
				record = manager.load( trailerLoteCobrancaClass , linha );
			}
			break;
		}
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
		case 'P':
			record = manager.load ( segmentPClass , linha);
			break;
		case 'Q':
			record = manager.load ( segmentQClass , linha);
			break;
		case 'R':
			record = manager.load ( segmentRClass , linha);
			break;
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
		CNABHeaderLoteBaseRecord record = manager.load( headerLoteBaseClass, linha);
		switch ( record.getTipoServico() ) {
		case 1:
			if ( record.getTipoOperacao().equals("T") && headerLoteRetornoCobrancaClass != null) {
				record = manager.load( headerLoteRetornoCobrancaClass , linha );
			} else {
				record = manager.load( headerLoteCobrancaClass , linha );
			}
			break;
		}
		return record;
	}

	private CNABBaseRecord loadHeaderArquivo(String linha) {
		CNABBaseRecord record = manager.load( headerArquivoClass, linha);
		return record;
	}

	public List<CNABBaseRecord> getListaRegistros() {
		return listaRegistros;
	}

	public void setListaRegistros(List<CNABBaseRecord> listaRegistros) {
		this.listaRegistros = listaRegistros;
	}

	public Class<? extends CNABHeaderArquivoRecord> getHeaderArquivo() {
		return headerArquivoClass;
	}

	public void setHeaderArquivoClass(Class<? extends CNABHeaderArquivoRecord> headerArquivo) {
		this.headerArquivoClass = headerArquivo;
	}

	
	public Class<? extends CNABTrailerLoteRecord> getTrailerLoteClass() {
		return trailerLoteClass;
	}

	public void setTrailerLoteClass(Class<? extends CNABTrailerLoteRecord> trailerLoteClass) {
		this.trailerLoteClass = trailerLoteClass;
	}

	public Class<? extends CNABCobrancaTrailerLoteRecord> getTrailerLoteCobrancaClass() {
		return trailerLoteCobrancaClass;
	}

	public void setTrailerLoteCobrancaClass(Class<? extends CNABCobrancaTrailerLoteRecord> trailerLoteCobrancaClass) {
		this.trailerLoteCobrancaClass = trailerLoteCobrancaClass;
	}

	public Class<? extends CNABCobrancaTrailerLoteRecord> getTrailerLoteRetornoCobrancaClass() {
		return trailerLoteRetornoCobrancaClass;
	}

	public void setTrailerLoteRetornoCobrancaClass(
			Class<? extends CNABCobrancaTrailerLoteRecord> trailerLoteRetornoCobrancaClass) {
		this.trailerLoteRetornoCobrancaClass = trailerLoteRetornoCobrancaClass;
	}

	public Class<? extends CNABTrailerArquivoRecord> getTrailerArquivoClass() {
		return trailerArquivoClass;
	}

	public void setTrailerArquivoClass(Class<? extends CNABTrailerArquivoRecord> trailerArquivoClass) {
		this.trailerArquivoClass = trailerArquivoClass;
	}

	public CNABHeaderArquivoRecord getFileHeader() {
		return fileHeader;
	}

	public void setFileHeader(CNABHeaderArquivoRecord fileHeader) {
		this.fileHeader = fileHeader;
	}

	public CNABHeaderLoteRecord getLoteHeader() {
		return loteHeader;
	}

	public void setLoteHeader(CNABHeaderLoteRecord loteHeader) {
		this.loteHeader = loteHeader;
	}

	public Class<? extends CNABHeaderArquivoRecord> getHeaderArquivoClass() {
		return headerArquivoClass;
	}


	public CNABHeaderArquivoRecord addHeader ( int tipoInscricaoEmpresa , String inscricaoEmpresa , String nomeEmpresa , int sequenciaArquivo ) throws InstantiationException, IllegalAccessException {
		CNABHeaderArquivoRecord record = manager.load(headerArquivoClass );

		record.setTipoInscricaoEmpresa(tipoInscricaoEmpresa);
		record.setInscricaoEmpresa(inscricaoEmpresa);
		record.setNomeEmpresa(nomeEmpresa);
		record.setSequenciaArquivo(sequenciaArquivo);
		record.setDataHoraGeracao( new Date() );
		
		fileHeader = record;
		listaRegistros.add(record);
		recordCounter = 1;
		loteCounter = 0;
		return record;
	}
	
	public CNABHeaderLoteRecord addHeaderLote ( int tipoServico , int lote ) throws InstantiationException, IllegalAccessException {
		CNABHeaderLoteRecord record;

		switch ( tipoServico ) {
		case 1:
			record = manager.load(headerLoteCobrancaClass);
			break;
		default:
			record = manager.load(headerLoteClass );
		}

		if ( fileHeader != null ) {
			record.setTipoInscricaoEmpresa(fileHeader.getTipoInscricaoEmpresa());
			record.setInscricaoEmpresa(fileHeader.getInscricaoEmpresa());
			record.setNomeEmpresa(fileHeader.getNomeEmpresa());
			record.setBanco(fileHeader.getBanco());
			
			record.setConvenio(fileHeader.getConvenio());
			record.setAgencia(fileHeader.getAgencia());
			record.setDvAgencia(fileHeader.getDvAgencia());
			record.setConta(fileHeader.getConta());
			record.setDvConta(fileHeader.getDvConta());
			record.setDvAgenciaConta(fileHeader.getDvAgenciaConta());

			if ( tipoServico == 1) {
				((CNABCobrancaHeaderLoteRecord) record).setDataGravacaoLote(fileHeader.getDataHoraGeracao());
				((CNABCobrancaHeaderLoteRecord) record).setSequenciaLote(lote);
			}
			
		}
		
		recordCounter++;
		loteCounter++;
		
		record.setLote( loteCounter );

		loteHeader = record;
		
		sequenciaSegmento = 0;
		listaRegistros.add(record);
		return record;

	}
	
	public CNABSegmentBaseRecord createSegmento ( String tipoSegmento ) {
		CNABSegmentBaseRecord record;
		
		switch ( tipoSegmento.charAt(0) ) {
		case 'P':
			record = manager.load( segmentPClass );
			break;
		case 'Q':
			record = manager.load( segmentQClass );
			break;
		case 'R':
			record = manager.load( segmentRClass );
			break;
		default:
			record = manager.load(CNABSegmentBaseRecord.class );
		}

		if (fileHeader != null) {
			record.setBanco(fileHeader.getBanco());
		}
		
		if (loteHeader != null) {
			record.setLote(loteHeader.getLote());
		}
		
		return record;

	}

	public CNABSegmentBaseRecord addSegmento ( CNABSegmentBaseRecord record ) {
		sequenciaSegmento++;
		recordCounter++;
		record.setSequencia(sequenciaSegmento);
		
		listaRegistros.add(record);
		
		return record;
	}
	
	public CNABSegmentBaseRecord addSegmento ( String tipoSegmento ) throws InstantiationException, IllegalAccessException {		

		CNABSegmentBaseRecord record = createSegmento( tipoSegmento );
		
		return addSegmento(record);
	}
	
	public CNABTrailerLoteRecord addTrailerLote ( ) {
		CNABTrailerLoteRecord record;
		int tipo;
		int nLote = 0;

		tipo = -1;
		if ( loteHeader != null) {
			tipo = loteHeader.getTipoServico();
			nLote = loteHeader.getLote();
		}
		
		switch (tipo) {
		case 1:
			record = manager.load(trailerLoteCobrancaClass);
			break;
		default:
			record = manager.load(trailerLoteClass);
			break;
		}
		
		recordCounter++;

		if (fileHeader != null) {
			record.setBanco(fileHeader.getBanco());
		}
		
		record.setLote(nLote);
		record.setQuantidadeRegistros(sequenciaSegmento+2);
		
		listaRegistros.add(record);
		return record;
	}
	
	public CNABTrailerArquivoRecord addTrailer() {
		CNABTrailerArquivoRecord record;
		
		record = manager.load(trailerArquivoClass);
		recordCounter++;
		
		record.setQuantidadeLotes(loteCounter);
		record.setQuantidadeRegistros(recordCounter);
	
		if (fileHeader != null) {
			record.setBanco(fileHeader.getBanco());
		}

		listaRegistros.add(record);
		return record;
	}
	
	public String toString() {
	    StringBuffer result = new StringBuffer("");

	    for ( CNABBaseRecord record : listaRegistros ) {
	    	result.append(StringUtils.rightPad(manager.export(record),240).concat("\r\n"));
		}
		
		return result.toString();
	}
	
}
