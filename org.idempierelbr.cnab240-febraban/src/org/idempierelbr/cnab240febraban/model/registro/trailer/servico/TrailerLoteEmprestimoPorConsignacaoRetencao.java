package org.idempierelbr.cnab240febraban.model.registro.trailer.servico;

import org.idempierelbr.cnab240febraban.enums.TipoRegistro;
import org.idempierelbr.cnab240febraban.model.pojo.Controle;
import org.idempierelbr.cnab240febraban.model.pojo.Totais6;
import org.idempierelbr.cnab240febraban.model.registro.trailer.TrailerLote;
import org.idempierelbr.cnab240febraban.util.ArquivoUtils;


public class TrailerLoteEmprestimoPorConsignacaoRetencao extends TrailerLote {
	private Controle controle;
	private int numeroSequencialLote;
	private Totais6 totais;
	private double totalCPMF;
	private String campoExclusivoCNAB;
	private String ocorrencias;

	public TrailerLoteEmprestimoPorConsignacaoRetencao() {
		setControle(new Controle());
		getControle().setTipoRegistro(TipoRegistro.TRAILER_DE_LOTE);
		setTotais(new Totais6());
		setCampoExclusivoCNAB(ArquivoUtils.BRANCO);
		setOcorrencias(ArquivoUtils.BRANCO);
	}
	
	public Controle getControle() {
		return controle;
	}

	public void setControle(Controle controle) {
		this.controle = controle;
	}

	public int getNumeroSequencialLote() {
		return numeroSequencialLote;
	}

	public void setNumeroSequencialLote(int numeroSequencialLote) {
		this.numeroSequencialLote = numeroSequencialLote;
	}

	public Totais6 getTotais() {
		return totais;
	}

	public void setTotais(Totais6 totais) {
		this.totais = totais;
	}

	public double getTotalCPMF() {
		return totalCPMF;
	}

	public void setTotalCPMF(double totalCPMF) {
		this.totalCPMF = totalCPMF;
	}

	public String getCampoExclusivoCNAB() {
		return campoExclusivoCNAB;
	}

	public void setCampoExclusivoCNAB(String campoExclusivoCNAB) {
		this.campoExclusivoCNAB = campoExclusivoCNAB;
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
		sb.append(ArquivoUtils.getCampoNumerico(getNumeroSequencialLote(), 7));
		sb.append(getTotais().toString());
		sb.append(ArquivoUtils.getCampoDecimal(getTotalCPMF(), 7, 2));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCampoExclusivoCNAB(), 120));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getOcorrencias(), 10));
		
		return sb.toString();
	}

}
