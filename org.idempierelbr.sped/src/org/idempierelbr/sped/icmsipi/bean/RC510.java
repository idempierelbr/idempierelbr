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
package org.idempierelbr.sped.icmsipi.bean;

import java.math.BigDecimal;

import org.idempierelbr.sped.annotation.XMLFieldProperties;
import org.idempierelbr.sped.icmsipi.util.RegSped;


import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;

/**
 * REGISTRO C510: ITENS DO DOCUMENTO NOTA FISCAL/CONTA ENERGIA ELÉTRICA (CÓDIGO
 * 06), NOTA FISCAL/CONTA DE FORNECIMENTO D'ÁGUA CANALIZADA (CÓDIGO 29) E NOTA
 * FISCAL/CONTA DE FORNECIMENTO DE GÁS (CÓDIGO 28).
 * 
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RC510.java, 10/02/2011, 15:04:00, mgrigioni
 */
public class RC510 extends RegSped {

	@XStreamAlias("Id")
	@XStreamAsAttribute
	@XMLFieldProperties(id = "NUM_ITEM", maxSize = 3)
	private Integer NUM_ITEM;
	
	@XMLFieldProperties(id = "COD_ITEM", maxSize = 60)
	private String COD_ITEM;
	
	@XMLFieldProperties(id = "COD_CLASS", isMandatory = false, maxSize = 4)
	private String COD_CLASS;
	
	@XMLFieldProperties(id = "QTD", scale = 3, isMandatory = false)
	private BigDecimal QTD;
	
	@XMLFieldProperties(id = "UNID", isMandatory = false)
	private String UNID;
	
	@XMLFieldProperties(id = "VL_ITEM")
	private BigDecimal VL_ITEM;
	
	@XMLFieldProperties(id = "VL_DESC", isMandatory = false)
	private BigDecimal VL_DESC;
	
	@XMLFieldProperties(id = "CST_ICMS", maxSize = 3, minSize = 3)
	private String CST_ICMS;
	
	@XMLFieldProperties(id = "CFOP", maxSize = 4, minSize = 3)
	private String CFOP;
	
	@XMLFieldProperties(id = "VL_BC_ICMS", isMandatory = false)
	private BigDecimal VL_BC_ICMS;
	
	@XMLFieldProperties(id = "ALIQ_ICMS", isMandatory = false, maxSize = 6)
	private BigDecimal ALIQ_ICMS;
	
	@XMLFieldProperties(id = "VL_ICMS", isMandatory = false)
	private BigDecimal VL_ICMS;
	
	@XMLFieldProperties(id = "VL_BC_ICMS_ST", isMandatory = false)
	private BigDecimal VL_BC_ICMS_ST;
	
	@XMLFieldProperties(id = "ALIQ_ST", isMandatory = false, maxSize = 6)
	private BigDecimal ALIQ_ST;
	
	@XMLFieldProperties(id = "VL_ICMS_ST", isMandatory = false)
	private BigDecimal VL_ICMS_ST;
	
	@XMLFieldProperties(id = "IND_REC", minSize = 1, maxSize = 1)
	private String IND_REC;
	
	@XMLFieldProperties(id = "COD_PART", isMandatory = false, maxSize = 60)
	private String COD_PART;
	
	@XMLFieldProperties(id = "VL_PIS", isMandatory = false)
	private BigDecimal VL_PIS;
	
	@XMLFieldProperties(id = "VL_COFINS", isMandatory = false)
	private BigDecimal VL_COFINS;
	
	@XMLFieldProperties(id = "COD_CTA", isMandatory = false)
	private String COD_CTA;

	/**
	 * Constructor
	 */
	public RC510() {
		super();

	}// RC510

	public Integer getNUM_ITEM() {
		return NUM_ITEM;
	}

	public void setNUM_ITEM(Integer nUM_ITEM) {
		NUM_ITEM = nUM_ITEM;
	}

	public String getCOD_ITEM() {
		return COD_ITEM;
	}

	public void setCOD_ITEM(String cOD_ITEM) {
		COD_ITEM = cOD_ITEM;
	}

	public String getCOD_CLASS() {
		return COD_CLASS;
	}

	public void setCOD_CLASS(String cOD_CLASS) {
		COD_CLASS = cOD_CLASS;
	}

	public BigDecimal getQTD() {
		return QTD;
	}

	public void setQTD(BigDecimal qTD) {
		QTD = qTD;
	}

	public String getUNID() {
		return UNID;
	}

	public void setUNID(String uNID) {
		UNID = uNID;
	}

	public BigDecimal getVL_ITEM() {
		return VL_ITEM;
	}

	public void setVL_ITEM(BigDecimal vL_ITEM) {
		VL_ITEM = vL_ITEM;
	}

	public BigDecimal getVL_DESC() {
		return VL_DESC;
	}

	public void setVL_DESC(BigDecimal vL_DESC) {
		VL_DESC = vL_DESC;
	}

	public String getCST_ICMS() {
		return CST_ICMS;
	}

	public void setCST_ICMS(String cST_ICMS) {
		CST_ICMS = cST_ICMS;
	}

	public String getCFOP() {
		return CFOP;
	}

	public void setCFOP(String cFOP) {
		CFOP = cFOP;
	}

	public BigDecimal getVL_BC_ICMS() {
		return VL_BC_ICMS;
	}

	public void setVL_BC_ICMS(BigDecimal vL_BC_ICMS) {
		VL_BC_ICMS = vL_BC_ICMS;
	}

	public BigDecimal getALIQ_ICMS() {
		return ALIQ_ICMS;
	}

	public void setALIQ_ICMS(BigDecimal aLIQ_ICMS) {
		ALIQ_ICMS = aLIQ_ICMS;
	}

	public BigDecimal getVL_ICMS() {
		return VL_ICMS;
	}

	public void setVL_ICMS(BigDecimal vL_ICMS) {
		VL_ICMS = vL_ICMS;
	}

	public BigDecimal getVL_BC_ICMS_ST() {
		return VL_BC_ICMS_ST;
	}

	public void setVL_BC_ICMS_ST(BigDecimal vL_BC_ICMS_ST) {
		VL_BC_ICMS_ST = vL_BC_ICMS_ST;
	}

	public BigDecimal getALIQ_ST() {
		return ALIQ_ST;
	}

	public void setALIQ_ST(BigDecimal aLIQ_ST) {
		ALIQ_ST = aLIQ_ST;
	}

	public BigDecimal getVL_ICMS_ST() {
		return VL_ICMS_ST;
	}

	public void setVL_ICMS_ST(BigDecimal vL_ICMS_ST) {
		VL_ICMS_ST = vL_ICMS_ST;
	}

	public String getIND_REC() {
		return IND_REC;
	}

	public void setIND_REC(String iND_REC) {
		IND_REC = iND_REC;
	}

	public String getCOD_PART() {
		return COD_PART;
	}

	public void setCOD_PART(String cOD_PART) {
		COD_PART = cOD_PART;
	}

	public BigDecimal getVL_PIS() {
		return VL_PIS;
	}

	public void setVL_PIS(BigDecimal vL_PIS) {
		VL_PIS = vL_PIS;
	}

	public BigDecimal getVL_COFINS() {
		return VL_COFINS;
	}

	public void setVL_COFINS(BigDecimal vL_COFINS) {
		VL_COFINS = vL_COFINS;
	}

	public String getCOD_CTA() {
		return COD_CTA;
	}

	public void setCOD_CTA(String cOD_CTA) {
		COD_CTA = cOD_CTA;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result
				+ ((NUM_ITEM == null) ? 0 : NUM_ITEM.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (!super.equals(obj))
			return false;
		if (getClass() != obj.getClass())
			return false;
		RC510 other = (RC510) obj;
		if (NUM_ITEM == null) {
			if (other.NUM_ITEM != null)
				return false;
		} else if (!NUM_ITEM.equals(other.NUM_ITEM))
			return false;
		return true;
	}

	/**
	 * Comparador para Collection
	 * 
	 * @see java.util.Comparator#compare(java.lang.Object, java.lang.Object)
	 */
	public int compare(Object o1, Object o2) {
		if (o1 == null) // Depois
			return 1;
		else if (o2 == null)
			return -1; // Antes
		else if (o1 instanceof RC510 && o2 instanceof RC510) {
			RC510 e1 = (RC510) o1;
			RC510 e2 = (RC510) o2;
			//
			if (e1.NUM_ITEM == null) // Depois
				return 1;
			else if (e2.NUM_ITEM == null) // Antes
				return -1;
			else
				return e1.NUM_ITEM.compareTo(e2.NUM_ITEM); // Comparar
		} else
			return 0; //
	}

	/**
	 * Comparador para Collection
	 */
	public int compareTo(Object o) {
		return compare(this, o);
	}

}// RC510