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
import java.util.ArrayList;
import java.util.List;

import org.idempierelbr.sped.annotation.XMLFieldProperties;
import org.idempierelbr.sped.icmsipi.util.RegSped;


import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;

/**
 * REGISTRO E520: APURAÇÃO DO IPI.
 * 
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RE520.java, 09/02/2011, 09:50:00, mgrigioni
 */
public class RE520 extends RegSped {

	@XStreamAlias("Id")
	@XStreamAsAttribute
	@XMLFieldProperties(id = "VL_SD_ANT_IPI")
	private BigDecimal VL_SD_ANT_IPI;

	@XMLFieldProperties(id = "VL_DEB_IPI")
	private BigDecimal VL_DEB_IPI;

	@XMLFieldProperties(id = "VL_CRED_IPI")
	private BigDecimal VL_CRED_IPI;

	@XMLFieldProperties(id = "VL_OD_IPI")
	private BigDecimal VL_OD_IPI;

	@XMLFieldProperties(id = "VL_OC_IPI")
	private BigDecimal VL_OC_IPI;

	@XMLFieldProperties(id = "VL_SC_IPI")
	private BigDecimal VL_SC_IPI;

	@XMLFieldProperties(id = "VL_SD_IPI")
	private BigDecimal VL_SD_IPI;

	@XMLFieldProperties(id = "RE530", isSPEDField = false)
	private List<RE530> rE530 = new ArrayList<RE530>();

	
	/**
	 * Constructor
	 */
	public RE520() {
		super();
	} // RE520

	@Override
	public int compareTo(Object o) {
		// TODO Auto-generated method stub
		return 0;
	}

	public BigDecimal getVL_SD_ANT_IPI() {
		return VL_SD_ANT_IPI;
	}

	public void setVL_SD_ANT_IPI(BigDecimal vL_SD_ANT_IPI) {
		VL_SD_ANT_IPI = vL_SD_ANT_IPI;
	}

	public BigDecimal getVL_DEB_IPI() {
		return VL_DEB_IPI;
	}

	public void setVL_DEB_IPI(BigDecimal vL_DEB_IPI) {
		VL_DEB_IPI = vL_DEB_IPI;
	}

	public BigDecimal getVL_CRED_IPI() {
		return VL_CRED_IPI;
	}

	public void setVL_CRED_IPI(BigDecimal vL_CRED_IPI) {
		VL_CRED_IPI = vL_CRED_IPI;
	}

	public BigDecimal getVL_OD_IPI() {
		return VL_OD_IPI;
	}

	public void setVL_OD_IPI(BigDecimal vL_OD_IPI) {
		VL_OD_IPI = vL_OD_IPI;
	}

	public BigDecimal getVL_OC_IPI() {
		return VL_OC_IPI;
	}

	public void setVL_OC_IPI(BigDecimal vL_OC_IPI) {
		VL_OC_IPI = vL_OC_IPI;
	}

	public BigDecimal getVL_SC_IPI() {
		return VL_SC_IPI;
	}

	public void setVL_SC_IPI(BigDecimal vL_SC_IPI) {
		VL_SC_IPI = vL_SC_IPI;
	}

	public BigDecimal getVL_SD_IPI() {
		return VL_SD_IPI;
	}

	public void setVL_SD_IPI(BigDecimal vL_SD_IPI) {
		VL_SD_IPI = vL_SD_IPI;
	}

	public List<RE530> getrE530() {
		return rE530;
	}

	public void setrE530(List<RE530> rE530) {
		this.rE530 = rE530;
	}
	
	public void addrE530(RE530 reg)
	{
		this.rE530.add(reg);
	}
} // RE520