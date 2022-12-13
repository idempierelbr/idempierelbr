package org.idempierelbr.cnab240febraban.enums;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

/**
 * C�digo adotado pela FEBRABAN para identificação da emissão do aviso de débito automático em conta corrente
 * @author Richard Mendes Madureira
 * @see C039
 *
 */
public enum AvisoDebitoAutomatico {
	EMITE_AVISO_COM_ENDERECO_INFORMADO_NO_ARQUIVO_REMESSA(1, "Emite o Aviso com o Endereço Informado no Arquivo de Remessa"),
	NAO_EMITE_AVISO_AO_SACADO(2, "Não Emite Aviso ao Sacado"),
	EMITE_AVISO_COM_ENDERECO_CONSTANTE_CADASTRO_BANCO(3, "Emite Aviso com Endereço Constante do Cadastro do Banco");
	
	private static final int TAMANHO_AVISO_DEBITO_AUTOMATICO = 2;
	private int codigo;
	private String descricao;
	
	private AvisoDebitoAutomatico(int codigo, String descricao){
		this.codigo = codigo;
		this.descricao = descricao;
	}
	
	public int getCodigo(){
		return codigo;
	}
	
	public String getDescricao(){
		return descricao;
	}
	
	@Override
	public String toString() {
		return ArquivoUtils.getCampoNumerico(getCodigo(), TAMANHO_AVISO_DEBITO_AUTOMATICO);
	}
}
