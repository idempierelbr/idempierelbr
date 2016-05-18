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

public class ValoresICMS {

	private String ICMSTot;
	private String vBC;
	private String vICMS;
	private String vICMSDeson;
	private String vFCPUFDest;
	private String vICMSUFDest;
	private String vICMSUFRemet;
	private String vBCST;
	private String vST;
	private String vProd;
	private String vFrete;
	private String vSeg;
	private String vDesc;
	private String vII;
	private String vIPI;
	private String vPIS;
	private String vCOFINS;
	private String vOutro;
	private String vNF;

	public String getICMSTot() {
		return ICMSTot;
	}

	public void setICMSTot(String iCMSTot) {
		if (iCMSTot != null)
			iCMSTot = iCMSTot.trim();

		ICMSTot = iCMSTot;
	}

	public String getvBC() {
		return vBC;
	}

	public void setvBC(String vBC) {
		if (vBC != null)
			vBC = vBC.trim();

		this.vBC = vBC;
	}

	public String getvICMS() {
		return vICMS;
	}

	public void setvICMS(String vICMS) {
		if (vICMS != null)
			vICMS = vICMS.trim();

		this.vICMS = vICMS;
	}

	public String getvICMSDeson() {
		return vICMSDeson;
	}

	public void setvICMSDeson(String vICMSDeson) {
		if (vICMSDeson != null)
			vICMSDeson = vICMSDeson.trim();

		this.vICMSDeson = vICMSDeson;
	}

	public String getvBCST() {
		return vBCST;
	}

	public void setvBCST(String vBCST) {
		if (vBCST != null)
			vBCST = vBCST.trim();

		this.vBCST = vBCST;
	}

	public String getvST() {
		return vST;
	}

	public void setvST(String vST) {
		if (vST != null)
			vST = vST.trim();

		this.vST = vST;
	}

	public String getvProd() {
		return vProd;
	}

	public void setvProd(String vProd) {
		if (vProd != null)
			vProd = vProd.trim();

		this.vProd = vProd;
	}

	public String getvFrete() {
		return vFrete;
	}

	public void setvFrete(String vFrete) {
		if (vFrete != null)
			vFrete = vFrete.trim();

		this.vFrete = vFrete;
	}

	public String getvSeg() {
		return vSeg;
	}

	public void setvSeg(String vSeg) {
		if (vSeg != null)
			vSeg = vSeg.trim();

		this.vSeg = vSeg;
	}

	public String getvDesc() {
		return vDesc;
	}

	public void setvDesc(String vDesc) {
		if (vDesc != null)
			vDesc = vDesc.trim();

		this.vDesc = vDesc;
	}

	public String getvII() {
		return vII;
	}

	public void setvII(String vII) {
		if (vII != null)
			vII = vII.trim();

		this.vII = vII;
	}

	public String getvIPI() {
		return vIPI;
	}

	public void setvIPI(String vIPI) {
		if (vIPI != null)
			vIPI = vIPI.trim();

		this.vIPI = vIPI;
	}

	public String getvPIS() {
		return vPIS;
	}

	public void setvPIS(String vPIS) {
		if (vPIS != null)
			vPIS = vPIS.trim();

		this.vPIS = vPIS;
	}

	public String getvCOFINS() {
		return vCOFINS;
	}

	public void setvCOFINS(String vCOFINS) {
		if (vCOFINS != null)
			vCOFINS = vCOFINS.trim();

		this.vCOFINS = vCOFINS;
	}

	public String getvOutro() {
		return vOutro;
	}

	public void setvOutro(String vOutro) {
		if (vOutro != null)
			vOutro = vOutro.trim();

		this.vOutro = vOutro;
	}

	public String getvNF() {
		return vNF;
	}

	public void setvNF(String vNF) {
		if (vNF != null)
			vNF = vNF.trim();

		this.vNF = vNF;
	}

	public String getvFCPUFDest() {
		return vFCPUFDest;
	}

	public void setvFCPUFDest(String vFCPUFDest) {
		this.vFCPUFDest = vFCPUFDest;
	}

	public String getvICMSUFDest() {
		return vICMSUFDest;
	}

	public void setvICMSUFDest(String vICMSUFDest) {
		this.vICMSUFDest = vICMSUFDest;
	}

	public String getvICMSUFRemet() {
		return vICMSUFRemet;
	}

	public void setvICMSUFRemet(String vICMSUFRemet) {
		this.vICMSUFRemet = vICMSUFRemet;
	}
}