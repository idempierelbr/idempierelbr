/******************************************************************************
 * Product: ADempiereLBR - ADempiere Localization Brazil                      *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 *****************************************************************************/
package org.idempierelbr.nfe.beans;


public class IdentDest {

	// Identificação do Destinatário da Nota Fiscal Eletronica
	
	private String dest;
	private String CNPJ;
	private String CPF;
	private String idEstrangeiro;
	private String xNome;
	private EnderDest enderDest;
	private String indIEDest;
	private String IE;
	private String ISUF;

	public EnderDest getEnderDest() {
		return enderDest;
	}
	public void setEnderDest(EnderDest enderDest) {
		this.enderDest = enderDest;
	}
	public String getDest() {
		return dest;
	}
	public void setDest(String dest) {
		if (dest != null)
			dest = dest.trim();
	
		this.dest = dest;
	}
	public String getCNPJ() {
		return CNPJ;
	}
	public void setCNPJ(String cNPJ) {
		if (cNPJ != null)
			cNPJ = cNPJ.trim();
	
		CNPJ = cNPJ;
	}
	public String getCPF() {
		return CPF;
	}
	public void setCPF(String cPF) {
		if (cPF != null)
			cPF = cPF.trim();
	
		CPF = cPF;
	}
	public String getxNome() {
		return xNome;
	}
	public void setxNome(String xNome) {
		if (xNome != null)
			xNome = xNome.trim();
	
		this.xNome = xNome;
	}
	public String getIndIEDest() {
		return indIEDest;
	}
	public void setIndIEDest(String indIEDest) {
		if (indIEDest != null)
			indIEDest = indIEDest.trim();
		
		this.indIEDest = indIEDest;
	}
	public String getIE() {
		return IE;
	}
	public void setIE(String iE) {
		if (iE != null)
			iE = iE.trim();
	
		IE = iE;
	}
	public String getISUF() {
		return ISUF;
	}
	public void setISUF(String iSUF) {
		if (iSUF != null)
			iSUF = iSUF.trim();
	
		ISUF = iSUF;
	}
	public String getIdEstrangeiro() {
		return idEstrangeiro;
	}

	public void setIdEstrangeiro(String idEstrangeiro) {
		if (idEstrangeiro != null)
			idEstrangeiro = idEstrangeiro.trim();
		
		this.idEstrangeiro = idEstrangeiro;
	}
}
