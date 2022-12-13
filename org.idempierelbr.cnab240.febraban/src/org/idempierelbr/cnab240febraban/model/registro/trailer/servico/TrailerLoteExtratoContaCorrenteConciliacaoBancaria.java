package org.idempierelbr.cnab240febraban.model.registro.trailer.servico;

import org.idempierelbr.cnab240febraban.enums.TipoRegistro;
import org.idempierelbr.cnab240febraban.model.pojo.Controle;
import org.idempierelbr.cnab240febraban.model.pojo.Empresa;
import org.idempierelbr.cnab240febraban.model.pojo.Saldo2;
import org.idempierelbr.cnab240febraban.model.pojo.Totais4;
import org.idempierelbr.cnab240febraban.model.pojo.Valores;
import org.idempierelbr.cnab240febraban.model.registro.trailer.TrailerLote;
import org.idempierelbr.cnab240febraban.util.ArquivoUtils;


public class TrailerLoteExtratoContaCorrenteConciliacaoBancaria extends TrailerLote {
	private Controle controle;
	private String campoExclusivoCNAB1;
	private Empresa empresa;
	private String campoExclusivoCNAB2;
	private Valores valores;
	private Saldo2 saldoFinal;
	private Totais4 totais;
	private String campoExclusivoCNAB3;

	public TrailerLoteExtratoContaCorrenteConciliacaoBancaria() {
		setControle(new Controle());
		getControle().setTipoRegistro(TipoRegistro.TRAILER_DE_LOTE);
		setCampoExclusivoCNAB1(ArquivoUtils.BRANCO);
		setEmpresa(new Empresa());
		setCampoExclusivoCNAB2(ArquivoUtils.BRANCO);
		setTotais(new Totais4());
		setCampoExclusivoCNAB3(ArquivoUtils.BRANCO);
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

	public Empresa getEmpresa() {
		return empresa;
	}

	public void setEmpresa(Empresa empresa) {
		this.empresa = empresa;
	}

	public String getCampoExclusivoCNAB2() {
		return campoExclusivoCNAB2;
	}

	public void setCampoExclusivoCNAB2(String campoExlusivoCNAB2) {
		this.campoExclusivoCNAB2 = campoExlusivoCNAB2;
	}

	public Valores getValores() {
		return valores;
	}

	public void setValores(Valores valores) {
		this.valores = valores;
	}

	public Saldo2 getSaldoFinal() {
		return saldoFinal;
	}

	public void setSaldoFinal(Saldo2 saldoFinal) {
		this.saldoFinal = saldoFinal;
	}

	public Totais4 getTotais() {
		return totais;
	}
	
	public void setTotais(Totais4 totais) {
		this.totais = totais;
	}
	
	public String getCampoExclusivoCNAB3() {
		return campoExclusivoCNAB3;
	}
	
	public void setCampoExclusivoCNAB3(String campoExclusivoCNAB3) {
		this.campoExclusivoCNAB3 = campoExclusivoCNAB3;
	}

	@Override
	public String getConteudoRegistro() {
		StringBuilder sb = new StringBuilder(TAMANHO_REGISTRO);
		sb.append(getControle().toString());
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCampoExclusivoCNAB1(), 9));
		sb.append(getEmpresa().toString());
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCampoExclusivoCNAB2(), 16));
		sb.append(getValores().toString());
		sb.append(getSaldoFinal().toString());
		sb.append(getTotais().toString());
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCampoExclusivoCNAB3(), 16));
		
		return sb.toString();
	}
}
