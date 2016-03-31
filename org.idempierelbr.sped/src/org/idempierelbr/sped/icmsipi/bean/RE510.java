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
 * REGISTRO E510: CONSOLIDAÇÃO DOS VALORES DO IPI.
 * 
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RE510.java, 09/02/2011, 09:43:00, mgrigioni
 */
public class RE510 extends RegSped implements Comparable<Object> {

	@XStreamAlias("Id")
	@XStreamAsAttribute
	@XMLFieldProperties(id = "CFOP", maxSize = 4, minSize = 4, isNumber = true )
	private String CFOP;

	@XMLFieldProperties(id = "CST_IPI", maxSize = 2, minSize = 2)
	private String CST_IPI;

	@XMLFieldProperties(id = "VL_CONT_IPI")
	private BigDecimal VL_CONT_IPI;

	@XMLFieldProperties(id = "VL_BC_IPI")
	private BigDecimal VL_BC_IPI;

	@XMLFieldProperties(id = "VL_IPI")
	private BigDecimal VL_IPI;

	/**
	 * Constructor
	 */
	public RE510() {
		super();
	} // RE510

	public String getCFOP() {
		return CFOP;
	}

	public void setCFOP(String cFOP) {
		CFOP = cFOP;
	}

	public String getCST_IPI() {
		return CST_IPI;
	}

	public void setCST_IPI(String cST_IPI) {
		CST_IPI = cST_IPI;
	}

	public BigDecimal getVL_CONT_IPI() {
		return VL_CONT_IPI;
	}

	public void setVL_CONT_IPI(BigDecimal vL_CONT_IPI) {
		VL_CONT_IPI = vL_CONT_IPI;
	}

	public BigDecimal getVL_BC_IPI() {
		return VL_BC_IPI;
	}

	public void setVL_BC_IPI(BigDecimal vL_BC_IPI) {
		VL_BC_IPI = vL_BC_IPI;
	}

	public BigDecimal getVL_IPI() {
		return VL_IPI;
	}

	public void setVL_IPI(BigDecimal vL_IPI) {
		VL_IPI = vL_IPI;
	}

	public void addValues(RE510 other)
	{
		setVL_BC_IPI(getVL_BC_IPI().add(other.getVL_BC_IPI()));
		setVL_CONT_IPI(getVL_CONT_IPI().add(other.getVL_CONT_IPI()));
		setVL_IPI(getVL_IPI().add(other.getVL_IPI()));
	}
	
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result + ((CFOP == null) ? 0 : CFOP.hashCode());
		result = prime * result + ((CST_IPI == null) ? 0 : CST_IPI.hashCode());
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
		RE510 other = (RE510) obj;
		if (CFOP == null) {
			if (other.CFOP != null)
				return false;
		} else if (!CFOP.equals(other.CFOP))
			return false;
		if (CST_IPI == null) {
			if (other.CST_IPI != null)
				return false;
		} else if (!CST_IPI.equals(other.CST_IPI))
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
		else if (o1 instanceof RE510 && o2 instanceof RE510) {
			RE510 e1 = (RE510) o1;
			RE510 e2 = (RE510) o2;
			//
			if (e1.CFOP == null || e1.CST_IPI == null) // Depois
				return 1;
			else if (e2.CFOP == null || e2.CST_IPI == null) // Antes
				return -1;

			int compare = e1.CFOP.compareTo(e2.CFOP); // Comparar

			if (compare == 0) {
				compare = e1.CST_IPI.compareTo(e2.CST_IPI);
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

} // RE510