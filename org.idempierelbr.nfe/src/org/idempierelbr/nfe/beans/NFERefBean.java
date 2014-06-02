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

import com.thoughtworks.xstream.annotations.XStreamAlias;

@XStreamAlias("NFref")
public class NFERefBean {

	private String refNFe;
	private InfNFERefBean refNF;
	private InfNFEProdutorRefBean refNFP;
	private String refCTe;
	private InfECFRefBean refECF;

	public String getRefNFe() {
		return refNFe;
	}

	public void setRefNFe(String refNFe) {
		if (refNFe != null)
			refNFe = refNFe.trim();
		
		this.refNFe = refNFe;
	}

	public InfNFERefBean getRefNF() {
		return refNF;
	}

	public void setRefNF(InfNFERefBean refNF) {
		this.refNF = refNF;
	}

	public InfNFEProdutorRefBean getRefNFP() {
		return refNFP;
	}

	public void setRefNFP(InfNFEProdutorRefBean refNFP) {
		this.refNFP = refNFP;
	}

	public String getRefCTe() {
		return refCTe;
	}

	public void setRefCTe(String refCTe) {
		this.refCTe = refCTe;
	}

	public InfECFRefBean getRefECF() {
		return refECF;
	}

	public void setRefECF(InfECFRefBean refECF) {
		this.refECF = refECF;
	}
}
