package org.idempierelbr.cnab240febraban.enums;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

/**
 * C�digo adotado pela FEBRABAN para identificar o tipo de prazo a ser considerado para o protesto.
 * @author Richard Mendes Madureira
 * @see C026
 *
 */
public enum CodigoParaProtesto {
	PROTESTAR_DIAS_CORRIDOS(1, "Protestar Dias Corridos"),
	PROTESTAR_DIAS_UTEIS(2, "Protestar Dias Úteis"),
	NAO_PROTESTAR(3, "Não Protestar"),
	PROTESTAR_FIM_FALIMENTAR_DIAS_UTEIS(4, "Protestar Fim Falimentoar - Dias Úteis"),
	PROTESTAR_FIM_FALIMENTAR_DIAS_CORRIDOS(5, "Protestar Fim Falimentoar - Dias Corridos"),
	NEGATIVACAO_SEM_PROTESTO(8, "Negativação sem Protesto"),
	CANCELAMENTO_PROTESTO_AUTOMATICO(9, "Cancelamento Protesto Automático");
	
	public static final int TAMANHO_CODIGO_PROTESTO = 1;
	private int codigo;
	private String descricao;

	private CodigoParaProtesto(int codigo, String descricao) {
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
		return ArquivoUtils.getCampoNumerico(getCodigo(), TAMANHO_CODIGO_PROTESTO);
	}
	
	public boolean validate(TipoMovimentoRemessa tipoMovimentoRemessa){
		if(TipoMovimentoRemessa.ALTERACAO_DE_OUTROS_DADOS.equals(tipoMovimentoRemessa)){
			//if(this instanceof CodigoParaProtesto.CANCELAMENTO_PROTESTO_AUTOMATICO){
//				return true;
			//}
		}
		return true;
	}
}
