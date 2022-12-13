package org.idempierelbr.cnab240febraban.model.registro.detalhe.segmento;

import org.idempierelbr.cnab240febraban.enums.TipoRegistro;
import org.idempierelbr.cnab240febraban.model.pojo.Controle;
import org.idempierelbr.cnab240febraban.model.pojo.Servico4;
import org.idempierelbr.cnab240febraban.model.registro.detalhe.RegistroDeDetalhe;
import org.idempierelbr.cnab240febraban.util.ArquivoUtils;


public class TitulosEmCobrancaSegmentoY05 extends RegistroDeDetalhe {
	private Controle controle;
	private Servico4 servico;
	private int codigoRegistroOpcional;
	private Cheque cheque;
	private String campoExclusivoCNAB;

	public TitulosEmCobrancaSegmentoY05() {
		setControle(new Controle());
		getControle().setTipoRegistro(TipoRegistro.DETALHE);
		setServico(new Servico4());
		getServico().setCodigoSegmento("Y");
		setCodigoRegistroOpcional(4);
		setCheque(new Cheque());
		setCampoExclusivoCNAB(ArquivoUtils.BRANCO);
	}

	public Controle getControle() {
		return controle;
	}

	public void setControle(Controle controle) {
		this.controle = controle;
	}

	public Servico4 getServico() {
		return servico;
	}

	public void setServico(Servico4 servico) {
		this.servico = servico;
	}

	public int getCodigoRegistroOpcional() {
		return codigoRegistroOpcional;
	}

	public void setCodigoRegistroOpcional(int codigoRegistroOpcional) {
		this.codigoRegistroOpcional = codigoRegistroOpcional;
	}

	public Cheque getCheque() {
		return cheque;
	}

	public void setCheque(Cheque cheque) {
		this.cheque = cheque;
	}

	public String getCampoExclusivoCNAB() {
		return campoExclusivoCNAB;
	}

	public void setCampoExclusivoCNAB(String campoExclusivoCNAB) {
		this.campoExclusivoCNAB = campoExclusivoCNAB;
	}

	private class Cheque {
		private static final int TAMANHO_CHEQUE = 34 * 6;
		public String cmc7Cheque1;
		public String cmc7Cheque2;
		public String cmc7Cheque3;
		public String cmc7Cheque4;
		public String cmc7Cheque5;
		public String cmc7Cheque6;

		@Override
		public String toString() {
			StringBuilder sb = new StringBuilder(TAMANHO_CHEQUE);
			sb.append(ArquivoUtils.getCampoAlfaNumerico(cmc7Cheque1, 34));
			sb.append(ArquivoUtils.getCampoAlfaNumerico(cmc7Cheque2, 34));
			sb.append(ArquivoUtils.getCampoAlfaNumerico(cmc7Cheque3, 34));
			sb.append(ArquivoUtils.getCampoAlfaNumerico(cmc7Cheque4, 34));
			sb.append(ArquivoUtils.getCampoAlfaNumerico(cmc7Cheque5, 34));
			sb.append(ArquivoUtils.getCampoAlfaNumerico(cmc7Cheque6, 34));

			return sb.toString();
		}
	}

	@Override
	public String getConteudoRegistro() {
		StringBuilder sb = new StringBuilder(TAMANHO_REGISTRO);
		sb.append(getControle().toString());
		sb.append(getServico().toString());
		sb.append(ArquivoUtils.getCampoNumerico(getCodigoRegistroOpcional(), 1));
		sb.append(getCheque().toString());
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCampoExclusivoCNAB(), 17));
		
		return sb.toString();
	}

}