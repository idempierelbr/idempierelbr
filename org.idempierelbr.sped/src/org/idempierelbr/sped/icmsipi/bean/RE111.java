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
 * REGISTRO E111: AJUSTE/BENEFÍCIO/INCENTIVO DA APURAÇÃO DO ICMS.
 * 
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RE111.java, 21/03/2011, 14:46:00, mgrigioni
 */
public class RE111 extends RegSped {

	@XStreamAlias("Id")
	@XStreamAsAttribute
	@XMLFieldProperties(id = "COD_AJ_APUR", maxSize = 8, minSize = 8)
	private String COD_AJ_APUR;

	@XMLFieldProperties(id = "DESCR_COMPL_AJ", isMandatory = false)
	private String DESCR_COMPL_AJ;

	@XMLFieldProperties(id = "VL_AJ_APUR")
	private BigDecimal VL_AJ_APUR;

	/**
	 * Constructor
	 * 
	 * @param COD_AJ_APUR
	 * @param DESCR_COMPL_AJ
	 * @param VL_AJ_APUR
	 */
	public RE111() {
		super();
	} // RE111

	public String getCOD_AJ_APUR() {
		return COD_AJ_APUR;
	}

	public void setCOD_AJ_APUR(String cOD_AJ_APUR) {
		COD_AJ_APUR = cOD_AJ_APUR;
	}

	public String getDESCR_COMPL_AJ() {
		return DESCR_COMPL_AJ;
	}

	public void setDESCR_COMPL_AJ(String dESCR_COMPL_AJ) {
		DESCR_COMPL_AJ = dESCR_COMPL_AJ;
	}

	public BigDecimal getVL_AJ_APUR() {
		return VL_AJ_APUR;
	}

	public void setVL_AJ_APUR(BigDecimal vL_AJ_APUR) {
		VL_AJ_APUR = vL_AJ_APUR;
	}

	@Override
	public int compareTo(Object o) {
		// TODO Auto-generated method stub
		return 0;
	}

} // RE111