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

public class TributosInciBean {

	// Tributos Incidentes no Produto ou Serviço
 
	private ICMSBean ICMS;
	private IPIBean IPI;
	private IIBean II;
	private PISBean PIS;
	private PISSTBean PISST;
	private COFINSBean COFINS;
	private COFINSSTBean COFINSST;
	private ISSQNBean ISSQN;
	private ICMSUFDestBean ICMSUFDest;
	
	public ICMSBean getICMS() {
		return ICMS;
	}

	public void setICMS(ICMSBean icms) {
		ICMS = icms;
	}

	public IPIBean getIPI() {
		return IPI;
	}

	public void setIPI(IPIBean ipi) {
		IPI = ipi;
	}

	public IIBean getII() {
		return II;
	}

	public void setII(IIBean ii) {
		II = ii;
	}

	public PISBean getPIS() {
		return PIS;
	}

	public void setPIS(PISBean pis) {
		PIS = pis;
	}

	public COFINSBean getCOFINS() {
		return COFINS;
	}

	public void setCOFINS(COFINSBean cofins) {
		COFINS = cofins;
	}

	public PISSTBean getPISST() {
		return PISST;
	}

	public void setPISST(PISSTBean pISST) {
		PISST = pISST;
	}

	public COFINSSTBean getCOFINSST() {
		return COFINSST;
	}

	public void setCOFINSST(COFINSSTBean cOFINSST) {
		COFINSST = cOFINSST;
	}

	public ISSQNBean getISSQN() {
		return ISSQN;
	}

	public void setISSQN(ISSQNBean iSSQN) {
		ISSQN = iSSQN;
	}

	public ICMSUFDestBean getICMSUFDest() {
		return ICMSUFDest;
	}

	public void setICMSUFDest(ICMSUFDestBean iCMSUFDest) {
		ICMSUFDest = iCMSUFDest;
	}	
}
