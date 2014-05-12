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
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;

public class TributosInciBean {

	// Tributos Incidentes no Produto ou Serviço
 
	private ICMSBean ICMS;
	private ImpostoIPIBean IPI;
	private ImpostoDIBean II;
	private PISBean PIS;
	private COFINSBean COFINS;
	
	public ICMSBean getICMS() {
		return ICMS;
	}

	public void setICMS(ICMSBean icms) {
		ICMS = icms;
	}

	public ImpostoIPIBean getIPI() {
		return IPI;
	}

	public void setIPI(ImpostoIPIBean ipi) {
		IPI = ipi;
	}

	public ImpostoDIBean getII() {
		return II;
	}

	public void setII(ImpostoDIBean ii) {
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
	
	
}
