package org.idempierelbr.cnab240febraban.enums;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

/**
 * Sugestão: Utilizar os mesmos códigos de Forma de Lançamento
 * @author Richard Mendes Madureira
 * @see N005, e @link {@link FormaDeLancamento}
 *
 */
public enum TipoDeIdentificacaoDoTributo{
	//tributos federais
	TRIBUTO_DARF_NORMAL(16, "Tributo - DARF Normal"),
	TRIBUTO_GPS(17, "Tributo - GPS (Guia da Previdência Social)"),
	TRIBUTO_DARF_SIMPLES(18, "Tributo - DARF Simples"),
	DARJ(21, "Tributo – DARJ"),
	IPVA(25, "Tributo - IPVA"),
	TRIBUTO_LICENCIAMENTO(26, "Tributo - Licenciamento"),
	TRIBUTO_DPVAT(27, "Tributo – DPVAT"),
	//tributos estaduais
	GARE_SP_ICMS(22, "Tributo - GARE-SP ICMS"),
	GARE_SP_DR(23, "Tributo - GARE-SP DR"),
	TRIBUTO_GARE_SP_ITCMD(24, "Tributo - GARE-SP ITCMD"),
	//tributos municipais
	TRIBUTO_IPTU(19, "Tributo - IPTU – Prefeituras");
	
	public static final int TAMANHO_TIPO_DE_IDENTIFICACAO_DO_TRIBUTO = 2;
	private int codigo;
	private String descricao;
	
	private TipoDeIdentificacaoDoTributo(int codigo, String descricao){
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
		return ArquivoUtils.getCampoNumerico(getCodigo(), TAMANHO_TIPO_DE_IDENTIFICACAO_DO_TRIBUTO);
	}
}