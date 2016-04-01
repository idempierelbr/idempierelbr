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
import java.math.MathContext;
import java.math.RoundingMode;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import org.idempierelbr.sped.annotation.XMLFieldProperties;
import org.idempierelbr.sped.icmsipi.util.RegSped;


import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;

/**
 * REGISTRO H005: TOTAIS DO INVENTÁRIO
 * 
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RH005.java, 21/03/2011, 10:55:00, mgrigioni
 */
public class RH005 extends RegSped {
	@XStreamAlias("Id")
	@XStreamAsAttribute
	@XMLFieldProperties(minSize = 8, maxSize = 8, isNumber = true, id = "DT_INV")
	private Timestamp DT_INV;

	@XMLFieldProperties(id = "VL_INV")
	private BigDecimal VL_INV;

	@XMLFieldProperties(minSize = 2, maxSize = 2, id = "MOT_INV")
	private String MOT_INV;
	
	@XMLFieldProperties(needsValidation = true, id = "RH010", isSPEDField = false)
	private List<RH010> rH010 = new ArrayList<RH010>();

	/**
	 * Constructor
	 * 
	 * @param DT_INV
	 * @param VL_INV
	 */
	public RH005() {
		super();

	} // RH005

	public List<RH010> getrH010() {
		return rH010;
	}

	public void setrH010(List<RH010> rH010) {
		this.rH010 = rH010;
	}

	public Timestamp getDT_INV() {
		return DT_INV;
	}

	public void setDT_INV(Timestamp dT_INV) {
		DT_INV = dT_INV;
	}

	public BigDecimal getVL_INV() {
		return VL_INV;
	}

	public void setVL_INV(BigDecimal vL_INV) {
		VL_INV = vL_INV;
	}

	public String getMOT_INV() {
		return MOT_INV;
	}

	public void setMOT_INV(String mOT_INV) {
		MOT_INV = mOT_INV;
	}

	// 
	public void addrH010(RH010 rh0010)
	{
		// adicionar a lista
		this.rH010.add(rh0010);
		
		// mc
		MathContext mc = new MathContext(12);
		
		// totalizar valor unitário
		this.VL_INV = this.VL_INV.add(rh0010.getQTD().
				multiply(rh0010.getVL_UNIT(), mc), mc).
				setScale(2, RoundingMode.HALF_UP);
	}
	
	
	@Override
	public int compareTo(Object o) {
		// TODO Auto-generated method stub
		return 0;
	}

} // RH005