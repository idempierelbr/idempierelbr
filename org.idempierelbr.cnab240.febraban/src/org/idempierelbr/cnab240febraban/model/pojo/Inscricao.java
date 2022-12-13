package org.idempierelbr.cnab240febraban.model.pojo;

import org.idempierelbr.cnab240febraban.enums.TipoInscricao;
import org.idempierelbr.cnab240febraban.util.ArquivoUtils;


/**
 * Classe para suporte a criação de registros. Até o momento, utilizada em {@link Empresa}
 * @author richard
 *
 */
public class Inscricao {
	private static final int TAMANHO_TIPO_INSCRICAO_HEADER_ARQUIVO= 15;
	private static final int TAMANHO_TIPO_INSCRICAO_HEADER_LOTE= 16;
	
	private int tamanho;
	private TipoInscricao tipoInscricao;
	private long numeroInscricao;
	
	public Inscricao() {
		this(15);
	}

	public Inscricao(int tamanho) {
		this.tamanho = tamanho;
		setTipoInscricao(TipoInscricao.OUTROS);
		setNumeroInscricao(0);
	}

	public Inscricao(int tamanho, TipoInscricao tipoInscricao, int numeroInscricao){
		this.tamanho = tamanho;
		this.tipoInscricao = tipoInscricao;
		this.numeroInscricao = numeroInscricao;
	}
	
	public TipoInscricao getTipoInscricao() {
		return tipoInscricao;
	}

	public void setTipoInscricao(TipoInscricao tipoInscricao) {
		this.tipoInscricao = tipoInscricao;
	}

	public long getNumeroInscricao() {
		return numeroInscricao;
	}

	public void setNumeroInscricao(long numeroInscricao) {
		this.numeroInscricao = numeroInscricao;
	}

	
	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder(tamanho);
		sb.append(ArquivoUtils.getCampoNumerico(getTipoInscricao().getCodigo(), 1));
		sb.append(ArquivoUtils.getCampoNumerico(getNumeroInscricao(), tamanho-1));
		return sb.toString();
	}
}
