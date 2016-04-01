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
 * REGISTRO C590: REGISTRO ANALÍTICO DO DOCUMENTO - NOTA FISCAL/CONTA DE ENERGIA
 * ELÉTRICA (CÓDIGO 06), NOTA FISCAL/CONTA DE FORNECIMENTO D'ÁGUA CANALIZADA
 * (CÓDIGO 29) E NOTA FISCAL CONSUMO FORNECIMENTO DE GÁS (CÓDIGO 28).
 * 
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RC590.java, 10/02/2011, 15:23:00, mgrigioni
 */
public class RC590 extends RegSped {

	@XStreamAlias("Id")
	@XStreamAsAttribute
	@XMLFieldProperties(id = "CST_ICMS", minSize = 3, maxSize = 3)
	private String CST_ICMS;
	
	@XMLFieldProperties(id = "CFOP", minSize = 4, maxSize = 4, isNumber = true)
	private String CFOP;
	
	@XMLFieldProperties(id = "ALIQ_ICMS", isMandatory = false, maxSize = 6)
	private BigDecimal ALIQ_ICMS;
	
	@XMLFieldProperties(id = "VL_OPR")
	private BigDecimal VL_OPR;
	
	@XMLFieldProperties(id = "VL_BC_ICMS", isMandatory = false)
	private BigDecimal VL_BC_ICMS;
	
	@XMLFieldProperties(id = "VL_ICMS", isMandatory = false)
	private BigDecimal VL_ICMS;
	
	@XMLFieldProperties(id = "VL_BC_ICMS_ST", isMandatory = false)
	private BigDecimal VL_BC_ICMS_ST;
	
	@XMLFieldProperties(id = "VL_ICMS_ST", isMandatory = false)
	private BigDecimal VL_ICMS_ST;
	
	@XMLFieldProperties(id = "VL_RED_BC", isMandatory = false)
	private BigDecimal VL_RED_BC;
	
	@XMLFieldProperties(id = "COD_OBS", isMandatory = false, maxSize = 6)
	private String COD_OBS;

	/**
	 * Constructor
	 */
	public RC590() {
		super();
	}// RC590

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

	public BigDecimal getALIQ_ICMS() {
		return ALIQ_ICMS;
	}

	public void setALIQ_ICMS(BigDecimal aLIQ_ICMS) {
		ALIQ_ICMS = aLIQ_ICMS;
	}

	public BigDecimal getVL_OPR() {
		return VL_OPR;
	}

	public void setVL_OPR(BigDecimal vL_OPR) {
		VL_OPR = vL_OPR;
	}

	public BigDecimal getVL_BC_ICMS() {
		return VL_BC_ICMS;
	}

	public void setVL_BC_ICMS(BigDecimal vL_BC_ICMS) {
		VL_BC_ICMS = vL_BC_ICMS;
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

	public BigDecimal getVL_ICMS_ST() {
		return VL_ICMS_ST;
	}

	public void setVL_ICMS_ST(BigDecimal vL_ICMS_ST) {
		VL_ICMS_ST = vL_ICMS_ST;
	}

	public BigDecimal getVL_RED_BC() {
		return VL_RED_BC;
	}

	public void setVL_RED_BC(BigDecimal vL_RED_BC) {
		VL_RED_BC = vL_RED_BC;
	}

	public String getCOD_OBS() {
		return COD_OBS;
	}

	public void setCOD_OBS(String cOD_OBS) {
		COD_OBS = cOD_OBS;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result
				+ ((ALIQ_ICMS == null) ? 0 : ALIQ_ICMS.hashCode());
		result = prime * result + ((CFOP == null) ? 0 : CFOP.hashCode());
		result = prime * result
				+ ((CST_ICMS == null) ? 0 : CST_ICMS.hashCode());
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
		RC590 other = (RC590) obj;
		if (ALIQ_ICMS == null) {
			if (other.ALIQ_ICMS != null)
				return false;
		} else if (!ALIQ_ICMS.equals(other.ALIQ_ICMS))
			return false;
		if (CFOP == null) {
			if (other.CFOP != null)
				return false;
		} else if (!CFOP.equals(other.CFOP))
			return false;
		if (CST_ICMS == null) {
			if (other.CST_ICMS != null)
				return false;
		} else if (!CST_ICMS.equals(other.CST_ICMS))
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
		else if (o1 instanceof RC590 && o2 instanceof RC590) {
			RC590 e1 = (RC590) o1;
			RC590 e2 = (RC590) o2;
			//
			if (e1.CFOP == null || e1.CST_ICMS == null || e1.ALIQ_ICMS == null) // Depois
				return 1;
			else if (e2.CFOP == null || e2.CST_ICMS == null
					|| e2.ALIQ_ICMS == null) // Antes
				return -1;

			int compare = e1.CFOP.compareTo(e2.CFOP); // Comparar

			if (compare == 0) {
				compare = e1.CST_ICMS.compareTo(e2.CST_ICMS);
			}

			if (compare == 0) {
				compare = e1.ALIQ_ICMS.compareTo(e2.ALIQ_ICMS);
			}

			return compare;
		} else
			return 0; //
	}

	/**
	 * Comparador para Collection
	 */
	public int compareTo(Object o) {
		return compare(this, o);
	}

}// RC590