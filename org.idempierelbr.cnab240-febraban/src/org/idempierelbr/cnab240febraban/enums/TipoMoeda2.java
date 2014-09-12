package org.idempierelbr.cnab240febraban.enums;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

/**
 * Código adotado pela FEBRABAN para identificar a moeda referenciada no Título
 * @author Richard Mendes Madureira
 * @see G065
 *
 */
public enum TipoMoeda2 {
	RESERVADO_PARA_USO_FUTURO(1, "Reservado para Uso Futuro"),
	DOLAR_AMERICANO_COMERCIAL_VENDA(2, "Dólar Americano Comercial (Venda)"),
	DOLAR_AMERICANO_TURISMO_VENDA(3, "Dólar Americano Turismo (Venda)"),
	ITRD(4, "ITRD"),
	IDTR(5, "IDTR"),
	UFIR_DIARIA(6, "UFIR Diária"),
	UFIR_MENSAL(7, "UFIR Mensal"),
	FAJ_TR(8, "FAJ-TR"),
	REAL(9, "Real"),
	TR(10, "TR"),
	IGPM(11, "IGPM"),
	CDO(12, "CDI"),
	PERCENTUAL_DO_CDI(13, "Percentual do CDI"),
	EURO(14, "Euro");
	
	public static final int TAMANHO_TIPO_MOEDA2 = 2;
	private int codigo;
	private String descricao;
	
	private TipoMoeda2(int codigo, String descricao){
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
		return ArquivoUtils.getCampoNumerico(getCodigo(), TAMANHO_TIPO_MOEDA2);
	}
}
