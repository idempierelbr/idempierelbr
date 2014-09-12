package org.idempierelbr.cnab240febraban.enums;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

/**
 * C�digo adotato pela FEBRABAN para identificar o título de cobrança.
 * @see C015
 * @author Richard Mendes Madureira
 *@version 1.0
 */
public enum EspecieTitulo {
	CHEQUE (1, "CH", "Cheque"),
	DUPLICATA_MERCANTIL (2, "DM", "Duplicata Mercantil"),
	DUPLICATA_MERCANTIL_INDICACAO (3, "DMI", "Duplicata Mercantil para Indicação"),
	DUPLICATA_SERVICO (4, "DS", "Duplicata de Serviço"),
	DUPLICATA_SERVICO_INDICACAO (5, "DSI", "Duplicata de Serviço para Indicação"),
	DUPLICATA_RURAL (6, "DR", "Duplicata Rural"),
	LETRA_CAMBIO (7, "LC", "Letra de Câmbio"),
	NOTA_CREDITO_COMERCIAL (8, "NCC", "Nota de Crétido Comercial"),
	NOTA_CREDITO_EXPORTACAO (9, "NCE", "Nota de Crédito a Exportação"),
	NOTA_CREDITO_INDUSTRIAL (0, "NCI", "Nota de Crédito Industrial"),
	NOTA_CREDITO_RURAL (11, "NCR", "Nota de Crétido Rural"),
	NOTA_PROMISSORIA (12, "NP", "Nota Promiss�ria"),
	NOTA_PROMISSORIA_RURAL (13, "NPR", "Nota Promiss�ria Rural"),
	TRIPLICATA_MERCANTIL (14, "TM", "Triplicata Mercantil"),
	TRIPLICATA_SERVICO (15, "TS", "Triplicata de Serviço"),
	NOTA_SEGURO (16, "NS", "Nota de Seguro"),
	RECIBO (17, "RC", "Recibo"),
	FATURA (18, "FAT", "Fatura"),
	NOTA_DEBITO (19, "ND", "Nota de Débito"),
	APOLICE_SEGURO (20, "AP", "Ap�lice de Seguro"),
	MENSALIDADE_ESCOLAR(21, "ME", "Mensalidade Escolar"),
	PARCELA_CONSORCIO(22, "PC", "Parcela de Cons�rcio"),
	NOTA_FISCAL (23, "NF", "Nota Fiscal"),
	DOCUMENTO_DIVIDA(24, "DD", "Documento de Dívida"),
	CEDULA_PRODUTO_RURAL(25, "", "Cédula de Produto Rural"),
	WARRANT(26, "", "Warrant"),
	DIVIDA_ATIVA_ESTADO(27, "", "Dívida Ativa de Estado"),
	DIVIDA_ATIVA_MUNICIPIO(28, "", "Dívida Ativa de Município"),
	DIVIDA_ATIVA_UNIAO(29, "", "Dívida Ativa da Unisão"),
	ENCARGOS_CONDOMINAIS(30, "", "Encargos Condominais"),
	CARTAO_CREDITO(31, "", "Cartão de Crédito"),
	OUTROS(99, "", "Outros");
	
	private static final int TAMANHO_ESPECIE_TITULO = 2;
	private int codigo;
	private String sigla;
	private String descricao;
	
	private EspecieTitulo(int codigo, String sigla, String descricao){
		this.codigo = codigo;
		this.sigla = sigla;
		this.descricao = descricao;
	}
	
	public int getCodigo(){
		return codigo;
	}
	
	public String getSigla(){
		return sigla;
	}
	
	public String getDescricao(){
		return descricao;
	}
	
	@Override
	public String toString() {
		return ArquivoUtils.getCampoNumerico(getCodigo(), TAMANHO_ESPECIE_TITULO);
	}
}
