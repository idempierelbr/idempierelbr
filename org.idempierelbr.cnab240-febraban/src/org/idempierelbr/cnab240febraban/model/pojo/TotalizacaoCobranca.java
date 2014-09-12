package org.idempierelbr.cnab240febraban.model.pojo;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

public class TotalizacaoCobranca{
		private static final int TAMANHO_TOTALIZACAO_COBRANCA = 23;
		
		private int quantidadeTitulos;
		private Double valotTotalTitulos;
		
		public int getQuantidadeTitulos() {
			return quantidadeTitulos;
		}
		public void setQuantidadeTitulos(int quantidadeTitulos) {
			this.quantidadeTitulos = quantidadeTitulos;
		}
		public Double getValotTotalTitulos() {
			return valotTotalTitulos;
		}
		public void setValotTotalTitulos(Double valotTotalTitulos) {
			this.valotTotalTitulos = valotTotalTitulos;
		}
		
		@Override
		public String toString() {
			StringBuilder sb = new StringBuilder(TAMANHO_TOTALIZACAO_COBRANCA);
			sb.append(ArquivoUtils.getCampoNumerico(getQuantidadeTitulos(), 6));
			sb.append(ArquivoUtils.getCampoDecimal(getValotTotalTitulos(), 15, 2));
			
			return sb.toString();
		}
	}