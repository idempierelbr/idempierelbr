package org.idempierelbr.cnab240febraban.model.pojo;

import org.idempierelbr.cnab240febraban.enums.Banco;
import org.idempierelbr.cnab240febraban.enums.TipoRegistro;
import org.idempierelbr.cnab240febraban.util.ArquivoUtils;


/**Classe utilizada de suporte para criação dos registros
 * 
 * @author Richard Mendes Madureira
 *
 */
public class Controle {
	private static final int TAMANHO_CONTROLE = 8;
	
	private Banco banco;
	private int loteServico;
	private TipoRegistro tipoRegistro;

	public Controle() {
		setLoteServico(0);
		setTipoRegistro(null);
	}
	
	public Controle(Banco banco, TipoRegistro tipoRegistro){
		this.banco = banco;
		this.tipoRegistro = tipoRegistro;
	}

	public Banco getBanco() {
		return banco;
	}

	public void setBanco(Banco banco) {
		this.banco = banco;
	}

	public int getLoteServico() {
		return loteServico;
	}

	public void setLoteServico(int loteServico) {
		this.loteServico = loteServico;
	}

	public TipoRegistro getTipoRegistro() {
		return tipoRegistro;
	}

	public void setTipoRegistro(TipoRegistro tipoRegistro) {
		this.tipoRegistro = tipoRegistro;
	}
	
	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder(TAMANHO_CONTROLE);
		sb.append(getBanco().toString());
		sb.append(ArquivoUtils.getCampoNumerico(getLoteServico(), 4));
		sb.append(ArquivoUtils.getCampoNumerico(getTipoRegistro().getCodigoTipo(), 1));
		
		return sb.toString();
	}
}
