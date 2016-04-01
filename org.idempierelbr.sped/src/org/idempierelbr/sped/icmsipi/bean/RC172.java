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
 * REGISTRO C172: OPERAÇÕES COM ISSQN (CÓDIGO 01)
 * 
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RC172.java, 11/02/2011, 14:45:00, mgrigioni
 */
public class RC172 extends RegSped {

	@XStreamAlias("Id")
	@XStreamAsAttribute
	@XMLFieldProperties(id = "VL_BC_ISSQN")
	private BigDecimal VL_BC_ISSQN;
	
	@XMLFieldProperties(maxSize = 6, id = "ALIQ_ISSQN")
	private BigDecimal ALIQ_ISSQN;
	
	@XMLFieldProperties(id = "VL_ISSQN")
	private BigDecimal VL_ISSQN;

	/**
	 * Constructor
	 */
	public RC172() {
		super();

	} // RC172

	public BigDecimal getVL_BC_ISSQN() {
		return VL_BC_ISSQN;
	}

	public void setVL_BC_ISSQN(BigDecimal vL_BC_ISSQN) {
		VL_BC_ISSQN = vL_BC_ISSQN;
	}

	public BigDecimal getALIQ_ISSQN() {
		return ALIQ_ISSQN;
	}

	public void setALIQ_ISSQN(BigDecimal aLIQ_ISSQN) {
		ALIQ_ISSQN = aLIQ_ISSQN;
	}

	public BigDecimal getVL_ISSQN() {
		return VL_ISSQN;
	}

	public void setVL_ISSQN(BigDecimal vL_ISSQN) {
		VL_ISSQN = vL_ISSQN;
	}

	@Override
	public int compareTo(Object arg0) {
		// TODO Auto-generated method stub
		return 0;
	}

} // RC172