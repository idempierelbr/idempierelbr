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
 * REGISTRO C130: ISSQN, IRRF E PREVIDÊNCIA SOCIAL.
 * 
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RC130.java, 11/02/2011, 14:22:00, mgrigioni
 */
public class RC130 extends RegSped {

	@XStreamAlias("Id")
	@XStreamAsAttribute
	@XMLFieldProperties(id = "VL_SERV_NT")
	private BigDecimal VL_SERV_NT;

	@XMLFieldProperties(id = "VL_BC_ISSQN")
	private BigDecimal VL_BC_ISSQN;
	
	@XMLFieldProperties(id = "VL_ISSQN", isMandatory = false)
	private BigDecimal VL_ISSQN;
	
	@XMLFieldProperties(id = "VL_BC_IRRF", isMandatory = false)
	private BigDecimal VL_BC_IRRF;
	
	@XMLFieldProperties(id = "VL_IRRF", isMandatory = false)
	private BigDecimal VL_IRRF;
	
	@XMLFieldProperties(id = "VL_BC_PREV", isMandatory = false)
	private BigDecimal VL_BC_PREV;
	
	@XMLFieldProperties(id = "VL_PREV", isMandatory = false)
	private BigDecimal VL_PREV;

	/**
	 * Constructor
	 * 
	 * @param VL_SERV_NT
	 * @param VL_BC_ISSQN
	 * @param VL_ISSQN
	 * @param VL_BC_IRRF
	 * @param VL_IRRF
	 * @param VL_BC_PREV
	 * @param VL_PREV
	 */
	public RC130() {
		super();
	} // RC130

	public BigDecimal getVL_SERV_NT() {
		return VL_SERV_NT;
	}

	public void setVL_SERV_NT(BigDecimal vL_SERV_NT) {
		VL_SERV_NT = vL_SERV_NT;
	}

	public BigDecimal getVL_BC_ISSQN() {
		return VL_BC_ISSQN;
	}

	public void setVL_BC_ISSQN(BigDecimal vL_BC_ISSQN) {
		VL_BC_ISSQN = vL_BC_ISSQN;
	}

	public BigDecimal getVL_ISSQN() {
		return VL_ISSQN;
	}

	public void setVL_ISSQN(BigDecimal vL_ISSQN) {
		VL_ISSQN = vL_ISSQN;
	}

	public BigDecimal getVL_BC_IRRF() {
		return VL_BC_IRRF;
	}

	public void setVL_BC_IRRF(BigDecimal vL_BC_IRRF) {
		VL_BC_IRRF = vL_BC_IRRF;
	}

	public BigDecimal getVL_IRRF() {
		return VL_IRRF;
	}

	public void setVL_IRRF(BigDecimal vL_IRRF) {
		VL_IRRF = vL_IRRF;
	}

	public BigDecimal getVL_BC_PREV() {
		return VL_BC_PREV;
	}

	public void setVL_BC_PREV(BigDecimal vL_BC_PREV) {
		VL_BC_PREV = vL_BC_PREV;
	}

	public BigDecimal getVL_PREV() {
		return VL_PREV;
	}

	public void setVL_PREV(BigDecimal vL_PREV) {
		VL_PREV = vL_PREV;
	}

	@Override
	public int compareTo(Object arg0) {
		// TODO Auto-generated method stub
		return 0;
	}

} // RC130