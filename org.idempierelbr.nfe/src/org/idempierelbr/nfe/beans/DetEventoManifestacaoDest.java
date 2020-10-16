package org.idempierelbr.nfe.beans;

import com.thoughtworks.xstream.annotations.XStreamAsAttribute;

/**
 * 	Informações da manifestação do destinatário
 */
public class DetEventoManifestacaoDest implements I_DetEvento
{
	public static String DESC_EVENTO_CONFIRMACAO = "Confirmacao da Operacao";
	public static String DESC_EVENTO_CIENCIA = "Ciencia da Operacao";
	public static String DESC_EVENTO_DESCONHECIMENTO = "Desconhecimento da Operacao";
	public static String DESC_EVENTO_NAO_REALIZADA = "Operacao nao Realizada";
	
	@XStreamAsAttribute
	private String versao;
	
	private String descEvento;
	
	private String xJust;
	
	public String getVersao()
	{
		return versao;
	}

	public void setVersao(String versao)
	{
		this.versao = versao;
	}
	
	public String getDescEvento()
	{
		return descEvento;
	}

	public void setDescEvento(String descEvento) {
		this.descEvento = descEvento;
	}

	public String getxJust() {
		return xJust;
	}

	public void setxJust(String xJust) {
		this.xJust = xJust;
	}
}
