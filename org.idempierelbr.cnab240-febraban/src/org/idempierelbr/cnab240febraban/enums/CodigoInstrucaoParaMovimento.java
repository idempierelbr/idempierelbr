package org.idempierelbr.cnab240febraban.enums;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

/**
 * C�digo adotado pela FEBRABAN para identificar a ação a ser realizada com o lançamento enviado no arquivo
 * @author Richard Mendes Madureira
 * @see G061
 *
 */
public enum CodigoInstrucaoParaMovimento {
	INCLUSAO_DE_REGISTRO_DETALHE_LIBERADO(0, "Inclusão de Registro DeTalhe Liberado"),
	INCLUSAO_DO_REGISTRO_DETALHE_BLOQUEADO(9, "Inclusão do Registro Detalhe Bloqueado"),
	ALTERACAO_DO_PAGAMENTO_LIBERADO_PARA_BLOQUEADO(10, "Alteração do Pagamento Liberado para Bloqueado (Bloqueio)"),
	ALTERACAO_DO_PAGAMENTO_BLOQUEADO_PARA_LIBERADO(11, "Alteração do Pagamento Bloqueado para Liberado (Liberação)"),
	ALTERACAO_DO_VALOR_DO_TITULO(17, "Alteração do Valor do Título"),
	ALTERACAO_DA_DATA_DE_PAGAMENTO(19, "Alteração da Data de Pagamento"),
	PAGAMENTO_DIRETO_AO_FORNECEDOR_BAIXAR(23, "Pagamento Direto ao Fornecedor - Baixar"),
	MANUTENCAO_EM_CARTEIRA_NAO_PAGAR(25, "Manutenção em Carteira - Não Pagar"),
	RETIRADA_DE_CARTEIRA_NAO_PAGAR(27, "Retirada de Carteira - Não Pagar"),
	ESTORNO_POR_DEVOLUCAO_DA_CAMARA_CENTRALIZADORA(33, "Estorno por Devolução da Câmara Centralizadora"),//somente para tipo movimento = 3
	ALEGACAO_DO_SACADO(40, "Alegação do Sacado"),
	EXCLUSAO_DO_REGISTRO_DETALHE_INCLUIDO_ANTERIORMENTE(99, "Exclusão do REgistro Detalhe Incluído Anteriormente");
	
	public static final int TAMANHO_CODIGO_INSTRUCAO_PARA_MOVIMENTO = 2;
	private int codigo;
	private String descricao;
	
	private CodigoInstrucaoParaMovimento(int codigo, String descricao){
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
		return ArquivoUtils.getCampoNumerico(getCodigo(), TAMANHO_CODIGO_INSTRUCAO_PARA_MOVIMENTO);
	}
}
