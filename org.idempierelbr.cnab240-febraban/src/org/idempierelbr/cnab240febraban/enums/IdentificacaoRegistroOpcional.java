package org.idempierelbr.cnab240febraban.enums;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

/**
 * C�digo adotado pela FEBRABAN para identificação de registros opcionais
 * @author Richard Mendes Madureira
 * @see G067
 *
 */
public enum IdentificacaoRegistroOpcional {
	INFORMACAO_DE_DADOS_DO_SACADOR_AVALISTA(1, "Informação de Dados do Sacador Avalista"),
	ALEGACAO_DO_SACADO(2, "Alegação do Sacado"),
	INFORMACAO_DE_DADOS_DO_SACADO(3, "Informação de Dados do Sacado"),
	INFORMACAO_DE_DADOS_DE_CHEQUES_UTILIZADOS(4, "Informação de Dados de Cheques Utilizados"),
	INFORMACOES_SOBRE_DADOS_DE_PARCELAS_DE_COMPROR(11, "Informacoes sobre Dados de Parcelas de Compror"),
	INFORMACAO_DE_DADOS_PARA_RATEIO_DE_CREDITO(50, "Informação de Dados para Rateio de Crédito"),
	INFORMACOES_DE_NOTAS_FISCAIS(51, "Informações de Notas Fiscais"),
	IDENTIFICACAO_DOS_ENTES_ENVOLVIDOS_NO_PROCESSO_DE_PAGAMENTO(52, "Identificação dos Entes Envolvidos no Processo de Pagamento");
	
	public static final int TAMANHO_IDENTIFICACAO_REGISTRO_OPCIONAL = 2;
	private int codigo;
	private String descricao;
	
	private IdentificacaoRegistroOpcional(int codigo, String descricao){
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
		return ArquivoUtils.getCampoNumerico(getCodigo(), TAMANHO_IDENTIFICACAO_REGISTRO_OPCIONAL);
	}
}
