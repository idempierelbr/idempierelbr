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

public class IdentEmit {

	// Identificação do Emitente da Nota Fiscal
	
	private String emit;
	private String CNPJ;
	private String CPF;
	private String xNome;
	private String xFant;
	private EnderEmit enderEmit;

	private String IE;
	private String IEST;
	private String IM;
	private String CNAE;
	private String CRT;

	public EnderEmit getEnderEmit() {
		return enderEmit;
	}
	public void setEnderEmit(EnderEmit enderEmit) {
		this.enderEmit = enderEmit;
	}
	public String getEmit() {
		return emit;
	}
	public void setEmit(String emit) {
		if (emit != null)
			emit = emit.trim();
	
		this.emit = emit;
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
	public String getxFant() {
		return xFant;
	}
	public void setxFant(String xFant) {
		if (xFant != null)
			xFant = xFant.trim();
	
		this.xFant = xFant;
	}
	public String getIE() {
		return IE;
	}
	public void setIE(String iE) {
		if (iE != null)
			iE = iE.trim();
	
		IE = iE;
	}
	public String getIEST() {
		return IEST;
	}
	public void setIEST(String iEST) {
		if (iEST != null)
			iEST = iEST.trim();
	
		IEST = iEST;
	}
	public String getIM() {
		return IM;
	}
	public void setIM(String iM) {
		if (iM != null)
			iM = iM.trim();
	
		IM = iM;
	}
	public String getCNAE() {
		return CNAE;
	}
	public void setCNAE(String cNAE) {
		if (cNAE != null)
			cNAE = cNAE.trim();
	
		CNAE = cNAE;
	}
	public String getCRT() {
		return CRT;
	}
	public void setCRT(String cRT) {
		CRT = cRT;
	}
}