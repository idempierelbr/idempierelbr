package org.idempierelbr.cnab240febraban.model.registro.trailer.servico;

import org.idempierelbr.cnab240febraban.model.pojo.Controle;
import org.idempierelbr.cnab240febraban.model.pojo.Desconto3;
import org.idempierelbr.cnab240febraban.model.pojo.Totais5;
import org.idempierelbr.cnab240febraban.model.registro.trailer.TrailerLote;
import org.idempierelbr.cnab240febraban.util.ArquivoUtils;


public class TraileLoteCustodiaDeCheques extends TrailerLote {
	private Controle controle;
	private String campoExclusivoCNAB1;
	private Totais5 totais;
	private Desconto3 totalDescontos;
	private String campoExclusivoCNAB2;
	private String ocorrencias;

	public TraileLoteCustodiaDeCheques() {
		
	}

	public Controle getControle() {
		return controle;
	}

	public void setControle(Controle controle) {
		this.controle = controle;
	}

	public String getCampoExclusivoCNAB1() {
		return campoExclusivoCNAB1;
	}

	public void setCampoExclusivoCNAB1(String campoExclusivoCNAB1) {
		this.campoExclusivoCNAB1 = campoExclusivoCNAB1;
	}

	public Totais5 getTotais() {
		return totais;
	}

	public void setTotais(Totais5 totais) {
		this.totais = totais;
	}

	public Desconto3 getTotalDescontos() {
		return totalDescontos;
	}

	public void setTotalDescontos(Desconto3 totalDescontos) {
		this.totalDescontos = totalDescontos;
	}

	public String getCampoExclusivoCNAB2() {
		return campoExclusivoCNAB2;
	}

	public void setCampoExclusivoCNAB2(String campoExclusivoCNAB2) {
		this.campoExclusivoCNAB2 = campoExclusivoCNAB2;
	}

	public String getOcorrencias() {
		return ocorrencias;
	}

	public void setOcorrencias(String ocorrencias) {
		this.ocorrencias = ocorrencias;
	}

	@Override
	public String getConteudoRegistro() {
		StringBuilder sb = new StringBuilder(TAMANHO_REGISTRO);
		sb.append(getControle().toString());
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCampoExclusivoCNAB1(), 9));
		sb.append(getTotais().toString());
		sb.append(getTotalDescontos().toString());
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCampoExclusivoCNAB2(), 135));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getOcorrencias(), 10));
		
		return sb.toString();
	}

}
