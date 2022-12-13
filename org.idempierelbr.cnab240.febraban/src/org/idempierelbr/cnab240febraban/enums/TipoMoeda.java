package org.idempierelbr.cnab240febraban.enums;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

/**
 * Código adotado pela FEBRABAN para identificar a moeda utilizada para expressar o valor do documento
 * @author Richard Mendes Madureira
 * @see G040
 *
 */
public enum TipoMoeda {
	BTN("BTN", "Bônus do Tesouro Nacional + TR"),
	BRL("BRL", "Real"),
	USD("USD", "Dólar Americano"),
	PTE("PTE", "Escudo Português"),
	FRF("FRF", "Franco Francês"),
	CHF("CHF", "Franco Suíço"),
	JPY("JPY" , "Ien Japonês"),
	IGP("IGP" , "�?ndice Geral de Preços"),
	IGM("IGM", "�?ndice Geral de Preços de Mercado"),
	GBP("GBP", "Libra Esterlina"),
	ITL("ITL", "Lira Italiana"),
	DEM("DEM", "Marco Alemão"),
	TRD("TRD", "Taxa Referencial Diária"),
	UPC("UPC", "Unidade Padrão de Capital"),
	UPF("UPF", "Unidade Padrão de Financiamento"),
	UFR("UFR", "Unidade Fiscal de Referência"),
	XEU("XEU", "Unidade Monetária Européia");
	
	public static final int TAMANHO_TIPO_MOEDA = 3;
	private String sigla;
	private String descricao;
	
	private TipoMoeda(String sigla, String descricao){
		this.sigla = sigla;
		this.descricao = descricao;
	}
	
	public String getSigla(){
		return sigla;
	}
	
	public String getDescricao(){
		return descricao;
	}
	
	@Override
	public String toString() {
		return ArquivoUtils.getCampoAlfaNumerico(getSigla(), TAMANHO_TIPO_MOEDA);
	}
}
