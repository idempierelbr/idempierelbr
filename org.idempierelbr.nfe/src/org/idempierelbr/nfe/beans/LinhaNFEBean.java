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

public class LinhaNFEBean {
	
	private String prod;
	private String cProd;
	private String cEAN;
	private String xProd;
	private String NCM;
	private String EXTIPI;
	private String genero;
	private String CFOP;
	private String uCom;
	private String qCom;
	private String vUnCom;
	private String vProd;
	private String cEANTrib;
	private String uTrib;
	private String qTrib;
	private String vUnTrib;
	private String vFrete;
	private String vSeg;
	private String vDesc;
	private int nItem;
	private DeclaracaoDI DI;
	private ICMSBean ICMS;
	private IPIBean IPI;
	private IIBean II;
	private PISBean PIS;
	private COFINSBean COFINS;
	
	public DeclaracaoDI getDI() {
		return DI;
	}
	public void setDI(DeclaracaoDI di) {
		DI = di;
	}
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
	public int getNItem() {
		return nItem;
	}
	public void setNItem(int item) {
		nItem = item;
	}
	public String getProd() {
		return prod;
	}
	public void setProd(String prod) {
		if (prod != null)
			prod = prod.trim();
	
		this.prod = prod;
	}
	public String getcProd() {
		return cProd;
	}
	public void setcProd(String cProd) {
		if (cProd != null)
			cProd = cProd.trim();
	
		this.cProd = cProd;
	}
	public String getcEAN() {
		return cEAN;
	}
	public void setcEAN(String cEAN) {
		if (cEAN != null)
			cEAN = cEAN.trim();
	
		this.cEAN = cEAN;
	}
	public String getxProd() {
		return xProd;
	}
	public void setxProd(String xProd) {
		if (xProd != null)
			xProd = xProd.trim();
	
		this.xProd = xProd;
	}
	public String getNCM() {
		return NCM;
	}
	public void setNCM(String nCM) {
		if (nCM != null)
			nCM = nCM.trim();
	
		NCM = nCM;
	}
	public String getEXTIPI() {
		return EXTIPI;
	}
	public void setEXTIPI(String eXTIPI) {
		if (eXTIPI != null)
			eXTIPI = eXTIPI.trim();
	
		EXTIPI = eXTIPI;
	}
	public String getGenero() {
		return genero;
	}
	public void setGenero(String genero) {
		if (genero != null)
			genero = genero.trim();
	
		this.genero = genero;
	}
	public String getCFOP() {
		return CFOP;
	}
	public void setCFOP(String cFOP) {
		if (cFOP != null)
			cFOP = cFOP.trim();
	
		CFOP = cFOP;
	}
	public String getuCom() {
		return uCom;
	}
	public void setuCom(String uCom) {
		if (uCom != null)
			uCom = uCom.trim();
	
		this.uCom = uCom;
	}
	public String getqCom() {
		return qCom;
	}
	public void setqCom(String qCom) {
		if (qCom != null)
			qCom = qCom.trim();
	
		this.qCom = qCom;
	}
	public String getvUnCom() {
		return vUnCom;
	}
	public void setvUnCom(String vUnCom) {
		if (vUnCom != null)
			vUnCom = vUnCom.trim();
	
		this.vUnCom = vUnCom;
	}
	public String getvProd() {
		return vProd;
	}
	public void setvProd(String vProd) {
		if (vProd != null)
			vProd = vProd.trim();
	
		this.vProd = vProd;
	}
	public String getcEANTrib() {
		return cEANTrib;
	}
	public void setcEANTrib(String cEANTrib) {
		if (cEANTrib != null)
			cEANTrib = cEANTrib.trim();
	
		this.cEANTrib = cEANTrib;
	}
	public String getuTrib() {
		return uTrib;
	}
	public void setuTrib(String uTrib) {
		if (uTrib != null)
			uTrib = uTrib.trim();
	
		this.uTrib = uTrib;
	}
	public String getqTrib() {
		return qTrib;
	}
	public void setqTrib(String qTrib) {
		if (qTrib != null)
			qTrib = qTrib.trim();
	
		this.qTrib = qTrib;
	}
	public String getvUnTrib() {
		return vUnTrib;
	}
	public void setvUnTrib(String vUnTrib) {
		if (vUnTrib != null)
			vUnTrib = vUnTrib.trim();
	
		this.vUnTrib = vUnTrib;
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

}