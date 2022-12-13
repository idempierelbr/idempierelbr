package org.idempierelbr.cnab240febraban.ocorrencia;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

/**
 * C�digo adotado pela FEBRABAN para identificar as ocorr�ncias relacionadas ao registro Detalhe.
 * Pode-se informar at� 5 ocorr�ncias simultaneamente, cada uma delas com dois d�gitos.
 * @author Richard Mendes Madureira
 * @see K020
 *
 */
public enum OcorrenciaRegistroDetalhe {
	BANCO_DO_CONTROLE_INVALIDO(1, "Banco do Controle Inv�lido"),
	LOTE_INVALIDO(2, "Lote Inv�lido"),
	REGISTRO_INVALIDO(3, "Registro Inv�lido"),
	SEGMENTO_INVALIDO(4, "Segmento Inv�lido"),
	TIPO_DE_MOVIMENTO_INVALIDO(5, "Tipo de Movimento Inv�lido"),
	CODIGO_DA_FINALIDADE_INVALIDA(6, "C�digo da finalidade inv�lida"),
	FORMA_DE_ENTRADA_INVALIDA(7, "Forma de Entrada Inv�lida"),
	CMC7_LINHA1_INVALIDA(8, "CMC7/Linha1 Inv�lida"),
	CHEQUE_EM_DUPLICIDADE_NO_ARQUIVO(9, "Cheque em Duplicidade no Arquivo"),
	TIPO_NUMERO_DE_INSTRICAO_DO_EMITENTE_INVALIDO(10, "Tipo/N�mero de Inscri��o do Emitente Inv�lido"),
	VALOR_DO_CHEQUE_INVALIDO(11, "Valor do Cheque Inv�lido"),
	DATA_PARA_DEPOSITO_INVALIDA(12, "Data para Dep�sito Inv�lida"),
	AGENCIA_CONTA_PARA_DEVOLUCAO_INVALIDA(13, "Ag�ncia/Conta para Devolu��o Inv�lida"),
	BANCO_NAO_CADASTRADO_NA_COMPE(14, "Banco N�o Cadastrado na COMPE"),
	AGENCIA_NAO_CADASTRADA_NA_COMPE(15, "Ag�ncia N�o Cadastrado na COMPE"),
	CONTA_DO_CHEQUE_INVALIDO(16, "Conta do Cheque (no mesmo Banco) inv�lido"),
	CHEQUE_NAO_ACEITO_PARA_DESCONTO(17, "Cheque não Aceito para Desconto"),
	CHEQUE_NAO_ACEITO_PARA_CAUCAO(18, "Cheque n�o Aceito para Cau��o"),
	CHEQUE_ACATADO_COM_DIVERGENCIA_DE_VALOR(19, "Cheque acatado com Diverg�ncia de Valor"),
	CHEQUE_ACATADO_COM_DIVERGENCIA_DE_DATA_PARA_DEPOSITO(20, "Cheque acatado com Diverg�ncia de Data para Dep�sito"),
	CHEQUE_ACATADO_COM_DIVERGENCIA_DE_CPF_CNPJ_DO_EMITENTE(21, "Cheque acatado com Diverg�ncia de CPF/CNPJ do Emitente");
	
	public static final int TAMANHO_OCORRENCIA_REGISTRO_DETALHE = 2;
	private int codigo;
	private String descricao;
	
	private OcorrenciaRegistroDetalhe(int codigo, String descricao){
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
		return ArquivoUtils.getCampoNumerico(getCodigo(), TAMANHO_OCORRENCIA_REGISTRO_DETALHE);
	}
	
}