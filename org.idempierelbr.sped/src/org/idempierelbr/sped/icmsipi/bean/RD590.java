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
 * REGISTRO D590: NOTA FISCAL DE TELEFONIA
 * 
 * @author Priscila Pinheiro, ppinheiro
 * @version $Id: RD590.java, 10/02/2011, 16:03:00, Kenos
 */
public class RD590 extends RegSped implements Comparable<Object> {

	@XStreamAlias("Id")
	@XStreamAsAttribute
	@XMLFieldProperties(id = "CST_ICMS", minSize = 3, maxSize = 3, isNumber = true)
	private String CST_ICMS;
	
	@XMLFieldProperties(id = "CFOP", minSize = 4, maxSize = 4, isNumber = true)
	private String CFOP;
	
	@XMLFieldProperties(id = "ALIQ_ICMS", isMandatory = false, maxSize = 6)
	private BigDecimal ALIQ_ICMS;
	
	@XMLFieldProperties(id = "VL_OPR")
	private BigDecimal VL_OPR;
	
	@XMLFieldProperties(id = "VL_BC_ICMS")
	private BigDecimal VL_BC_ICMS;
	
	@XMLFieldProperties(id = "VL_ICMS")
	private BigDecimal VL_ICMS;
	
	@XMLFieldProperties(id = "VL_BC_ICMS_UF")
	private BigDecimal VL_BC_ICMS_UF;
	
	@XMLFieldProperties(id = "VL_ICMS_UF")
	private BigDecimal VL_ICMS_UF;
	
	@XMLFieldProperties(id = "VL_RED_BC")
	private BigDecimal VL_RED_BC;
	
	@XMLFieldProperties(id = "COD_OBS", isMandatory = false, maxSize = 6)
	private String COD_OBS;

	/**
	 * Constructor
	 */
	public RD590() {
		super();
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

	public BigDecimal getVL_BC_ICMS_UF() {
		return VL_BC_ICMS_UF;
	}

	public void setVL_BC_ICMS_UF(BigDecimal vL_BC_ICMS_UF) {
		VL_BC_ICMS_UF = vL_BC_ICMS_UF;
	}

	public BigDecimal getVL_ICMS_UF() {
		return VL_ICMS_UF;
	}

	public void setVL_ICMS_UF(BigDecimal vL_ICMS_UF) {
		VL_ICMS_UF = vL_ICMS_UF;
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

} // RD590