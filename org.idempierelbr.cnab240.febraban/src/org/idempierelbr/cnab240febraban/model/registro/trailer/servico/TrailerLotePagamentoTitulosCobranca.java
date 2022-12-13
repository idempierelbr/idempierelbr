package org.idempierelbr.cnab240febraban.model.registro.trailer.servico;

import org.idempierelbr.cnab240febraban.model.pojo.Controle;
import org.idempierelbr.cnab240febraban.model.pojo.Totais2;
import org.idempierelbr.cnab240febraban.model.registro.trailer.TrailerLote;
import org.idempierelbr.cnab240febraban.util.ArquivoUtils;


public class TrailerLotePagamentoTitulosCobranca extends TrailerLote {
	private Controle controle;
	private String campoExclusivoCNAB1;
	private Totais2 totais;
	private int numeroAvisoDebito;
	private String campoExclusivoCNAB2;
	private String codigoOcorrencias;

	public TrailerLotePagamentoTitulosCobranca() {
		setControle(new Controle());
		setCampoExclusivoCNAB1(ArquivoUtils.BRANCO);
		setTotais(new Totais2());
		setNumeroAvisoDebito(0);
		setCampoExclusivoCNAB2(ArquivoUtils.BRANCO);
		setCodigoOcorrencias(ArquivoUtils.BRANCO);
	}

	@Override
	public String getConteudoRegistro() {
		StringBuilder sb = new StringBuilder(TAMANHO_REGISTRO);
		sb.append(getControle().toString());
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCampoExclusivoCNAB1(), 9));
		sb.append(getTotais().toString());
		sb.append(ArquivoUtils.getCampoNumerico(getNumeroAvisoDebito(), 6));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCampoExclusivoCNAB2(), 165));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCodigoOcorrencias(), 10));
		
		verificaTamanhoRegistro(sb);
		return sb.toString();
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

	public Totais2 getTotais() {
		return totais;
	}

	public void setTotais(Totais2 totais) {
		this.totais = totais;
	}

	public int getNumeroAvisoDebito() {
		return numeroAvisoDebito;
	}

	public void setNumeroAvisoDebito(int numeroAvisoDebito) {
		this.numeroAvisoDebito = numeroAvisoDebito;
	}

	public String getCampoExclusivoCNAB2() {
		return campoExclusivoCNAB2;
	}

	public void setCampoExclusivoCNAB2(String campoExclusivoCNAB2) {
		this.campoExclusivoCNAB2 = campoExclusivoCNAB2;
	}

	public String getCodigoOcorrencias() {
		return codigoOcorrencias;
	}

	public void setCodigoOcorrencias(String codigoOcorrencias) {
		this.codigoOcorrencias = codigoOcorrencias;
	}

}
