package org.idempierelbr.cnab240febraban.enums;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

/**
 * C�digo adotado pela FEBRABAN para identificar a forma de emissão do bloqueto
 * @author Richard Mendes Madureira
 *
 */
public enum FormaEmissaoBloqueto {
	BANCO_EMITE (1, "Banco Emite"),
	CLIENTE_EMITE (2, "Cliente Emite"),
	BANCO_PRE_EMITE_CLIENTE_COMPLEMENTA (3, "Banco Pré Emite e Cliente Complementa"),
	BANCO_REEMITE (4, "Banco Reemite"),
	BANCO_NAO_REEMITE (5, "Banco Não Reemite"),
	BANCO_EMITENTE_ABERTA(7, "Banco Emitente - Aberta"),
	BANCO_EMITENTE_AUTO_ENVELOPAVEL(8, "Banco Emitente Auto-envelopavel");
	
	public static final int TAMANHO_FORMA_EMISSAO_BLOQUETO = 1;
	private int codigo;
	private String descricao;
	
	private FormaEmissaoBloqueto(int codigo, String descricao){
		this.codigo = codigo;
		this.descricao = descricao;
	}
	
	public int getCodigo() {
		return codigo;
	}

	public String getDescricao() {
		return descricao;
	}
	
	@Override
	public String toString() {
		return ArquivoUtils.getCampoNumerico(getCodigo(), TAMANHO_FORMA_EMISSAO_BLOQUETO);
	}
	
	public boolean validate(TipoMovimentoRemessa tipoMovimentoRemessa){
		if(TipoMovimentoRemessa.ALTERACAO_DE_OUTROS_DADOS.equals(tipoMovimentoRemessa)){
			return (this.equals(BANCO_REEMITE) || this.equals(BANCO_NAO_REEMITE));
		}
		return true;
	}
}
