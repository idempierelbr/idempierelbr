package org.idempierelbr.cnab240febraban.model.pojo;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import org.idempierelbr.cnab240febraban.model.registro.Registro;
import org.idempierelbr.cnab240febraban.model.registro.header.HeaderArquivo;
import org.idempierelbr.cnab240febraban.model.registro.header.HeaderLote;
import org.idempierelbr.cnab240febraban.model.registro.trailer.TrailerArquivo;
import org.idempierelbr.cnab240febraban.model.registro.trailer.TrailerLote;



/**
 * <b>Classe Principal</b>, responsável pelo armazenamento de toda a informação que será gravada no arquivo.
 * Essa informação pode ser obtida através to método toString() subscrito na classe.
 * @author Richard Mendes Madureira
 * @version 1.0
 */
public class ArquivoBanco {
	private HeaderArquivo header;
	private List<Lote<? extends HeaderLote, ? extends Registro, ?extends TrailerLote>> listaLotes;
	private TrailerArquivo trailer;
	private int numeroDeControle;
	
	private boolean fileRead;

	/**
	 * Método Construtor padrão, responsável pela inicialização dos objetos internos da classe
	 */
	public ArquivoBanco() {
		setHeader(new HeaderArquivo());
		setListaLotes(new ArrayList<Lote<? extends HeaderLote, ? extends Registro, ?extends TrailerLote>>());
		setTrailer(new TrailerArquivo());
		numeroDeControle = 1;
	}
	
	public ArquivoBanco(File arquivoRetorno) throws IOException {
		FileReader arq = new FileReader(arquivoRetorno);
		BufferedReader lerArq = new BufferedReader(arq);
		
		String linha = lerArq.readLine(); // lê a primeira linha
	}

	public HeaderArquivo getHeader() {
		return header;
	}

	public void setHeader(HeaderArquivo header) {
		this.header = header;
	}

	public List<Lote<? extends HeaderLote, ? extends Registro, ?extends TrailerLote>> getListaLotes() {
		return listaLotes;
	}

	public void setListaLotes(List<Lote<? extends HeaderLote, ? extends Registro, ?extends TrailerLote>> listaLotes) {
		this.listaLotes = listaLotes;
	}

	public TrailerArquivo getTrailer() {
		return trailer;
	}

	public void setTrailer(TrailerArquivo trailer) {
		this.trailer = trailer;
	}
	
	/**
	 * Método que retorna o conteúdo que será enviado aos Bancos.<br/>O layout já está organizado separadamente em cada classe utilizada.
	 */
	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder();
		//sb.append(header.toString());
		sb.append(header.getConteudoRegistro());

		for(Lote<? extends HeaderLote, ? extends Registro, ?extends TrailerLote> lote: listaLotes){
			sb.append(lote.toString());
		}
		//sb.append(trailer.toString());
		sb.append(trailer.getConteudoRegistro());
		return sb.toString();
	}

	public boolean isFileRead() {
		return fileRead;
	}

	private void setFileRead(boolean fileRead) {
		this.fileRead = fileRead;
	}
}