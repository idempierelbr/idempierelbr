package org.idempierelbr.nfe.beans;

import com.thoughtworks.xstream.annotations.XStreamAsAttribute;

public class ObsContribGrupo {
	@XStreamAsAttribute
	private String xCampo;
	private String xTexto;
	public String getxCampo() {
		return xCampo;
	}
	public void setxCampo(String xCampo) {
		this.xCampo = xCampo;
	}
	public String getxTexto() {
		return xTexto;
	}
	public void setxTexto(String xTexto) {
		this.xTexto = xTexto;
	}
}
