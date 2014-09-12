package org.idempierelbr.cnab240febraban.ocorrencia;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

public enum OcorrenciaTitulosDeCobranca {
	CODIGO_BANCO_INVALIDO("01", "Código do Banco Inválido"),
	CODIGO_REGISTRO_DETALHE_INVALIDO("02", "Código do Registro Detalhe Inválido"),
	CODIGO_SEGMENTO_INVALIDO("03", "Código do Segmento Inválido"),
	CODIGO_MOVIMENTO_NAO_PERMITIDO_PARA_CARTEIRA("04", "Código de Movimento Não Permitido para Carteira"),
	CODIGO_MOVIMENTO_INVALIDO("05", "Código de Movimento Inválido"),
	TIPO_NUMERO_INSCRICAO_DO_CEDENTE_INVALIDOS("06", "Tipo/Número de Inscrição do Cedente Inválidos"),
	AGENCIA_CONTA_DV_INVALIDO("07", "Agência/Conta/DV Inválido"),
	NOSSO_NUMERO_INVALIDO("08", "Nosso Número Inválido"),
	NOSSO_NUMERO_DUPLICADO("09", "Nosso Número Duplicado"),
	CARTEIRA_INVALIDA("10", "Carteira Inválida"),
	FORMA_CADASTRAMENTO_TITULO_INVALIDO("11", "Forma de Cadastramento do Título Inválido"),
	TIPO_DE_DOCUMENTO_INVALIDO("12", "Tipo de Documento Inválido"),
	IDENTIFICACAO_DA_EMISSAO_DO_BLOQUETO_INVALIDA("13", "Identificação da Emissão do Bloqueto Inválida"),
	IDENTIFICACAO_DA_DISTRIBUICAO_DO_BLOQUETO_INVALIDA("14", "Identificação da Distribuição do Bloqueto Inválida"),
	CARACTERISTICAS_DE_COBRANCA_INCOMPATIVEIS("15", "Características de Cobrança Incompatíveis"),
	DATA_VENCIMENTO_INVALIDA("16", "Data de Vencimento Inválida"),
	DATA_VENCIMENTO_ANTERIOR_DATA_DE_EMISSAO("17", "Data de Vencimento Anterior a Data de Emissão"),
	VENCIMENTO_FORA_DO_PRAZO_DE_OPERACAO("18", "Vencimento Forma do Prazo de Operação"),
	TITULO_A_CARGO_DE_BANCOS_CORRESPONDENTES_COM_VENC_INFERIOR_A_XX_DIAS("19", "Título a Cargo de Bancos Correspondentes com Vencimento Inferior a XX Dias"),
	VALOR_DO_TITULO_INVALIDO("20", "Valor do Título Inválido"),
	ESPECIE_DO_TITULO_INVALIDA("21", "Espécie do Título Inválida"),
	ESPECIE_DO_TITULO_NAO_PERMITIDA_PARA_A_CARTEIRA("22", "Espécie do Título, não Permitida para a Carteira"),
	ACEITE_INVALIDO("23", "Aceite Inválido"),
	DATA_DA_EMISSAO_INVALIDA("24", "Data de Emisão Inválida"),
	DATA_DA_EMISSAO_POSTERIOR_A_DATA_DE_ENTRADA("25", "Data da Emissão Posterior a data de Entrada"),
	CODIGO_DE_JUROS_DE_MORA_INVALIDO("26", "Código de Juros de Mora Inválido"),
	VALOR_TAXA_DE_JUROS_DE_MORA_INVALIDO("27", "Valor/Taxa de Juros de Mora Inválido"),
	CODIGO_DO_DESCONTO_INVALIDO("28", "Código de Desconto Inválido"),
	VALOR_DO_DESCONTO_MAIOR_OU_IGUAL_AO_VALOR_DO_TITULO("29", "Valor do Desconto Maior ou Igual ao Valor do Título"),
	DESCONTO_A_CONCEDER_NAO_CONFERE("30", "Desconto a Conceder não Confere"),
	CONCESSAO_DE_DESCONTO_JA_EXISTE_DESCONTO_ANTERIOR("31", "Concessão de Desconto - Já existe Desconto Anterior");
	//TODO INCLUIR OS TIPOS RESTANTES CONFORME P�?GINA 150 C047
	
	public static final int TAMANHO_OCORRENCIA_TITULOS_DE_COBRANCA = 2;
	private String codigo;
	private String descricao;
	
	private OcorrenciaTitulosDeCobranca(String codigo, String descricao){
		this.codigo = codigo;
		this.descricao = descricao;
	}
	
	public String getCodigo(){
		return codigo;
	}
	
	public String getDescricao(){
		return descricao;
	}
	
	@Override
	public String toString() {
		return ArquivoUtils.getCampoAlfaNumerico(getCodigo(), TAMANHO_OCORRENCIA_TITULOS_DE_COBRANCA);
	}
	
}