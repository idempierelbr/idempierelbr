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

public class IPIBean {

	// Imposto sobre Produtos Industrializados
	
	private String clEnq;
	private String CNPJProd;
	private String cSelo;
	private String qSelo;
	private String cEnq;
	private IPIGrupoBean IPITrib ;
	private IPIGrupoBean IPINT ;
	
	public IPIGrupoBean getIPI() {
		return IPITrib;
	}
	public void setIPI(IPIGrupoBean ipi) {
		IPITrib = ipi;
	}	
	public IPIGrupoBean getIPINT() {
		return IPINT;
	}
	public void setIPINT(IPIGrupoBean ipi) {
		IPINT = ipi;
	}
	public String getClEnq() {
		return clEnq;
	}
	public void setClEnq(String clEnq) {
		if (clEnq != null)
			clEnq = clEnq.trim();
	
		this.clEnq = clEnq;
	}
	public String getCNPJProd() {
		return CNPJProd;
	}
	public void setCNPJProd(String cNPJProd) {
		if (cNPJProd != null)
			cNPJProd = cNPJProd.trim();
	
		CNPJProd = cNPJProd;
	}
	public String getcSelo() {
		return cSelo;
	}
	public void setcSelo(String cSelo) {
		if (cSelo != null)
			cSelo = cSelo.trim();
	
		this.cSelo = cSelo;
	}
	public String getqSelo() {
		return qSelo;
	}
	public void setqSelo(String qSelo) {
		if (qSelo != null)
			qSelo = qSelo.trim();
	
		this.qSelo = qSelo;
	}
	public String getcEnq() {
		return cEnq;
	}
	public void setcEnq(String cEnq) {
		if (cEnq != null)
			cEnq = cEnq.trim();
	
		this.cEnq = cEnq;
	}

}