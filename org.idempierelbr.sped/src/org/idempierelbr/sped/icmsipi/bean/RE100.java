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

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import org.idempierelbr.sped.annotation.XMLFieldProperties;
import org.idempierelbr.sped.icmsipi.util.RegSped;


import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;

/**
 * REGISTRO E100: PERÍODO DA APURAÇÃO DO ICMS.
 * 
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RE100.java, 08/02/2011, 12:13:00, mgrigioni
 */
public class RE100 extends RegSped {

	@XStreamAlias("Id")
	@XStreamAsAttribute
	@XMLFieldProperties(id = "DT_INI", maxSize = 8, isNumber = true)
	private Timestamp DT_INI;

	@XMLFieldProperties(id = "DT_FIN", maxSize = 8, isNumber = true)
	private Timestamp DT_FIN;

	@XMLFieldProperties(id = "RE110", isSPEDField = false)
	private RE110 rE110;

	@XMLFieldProperties(id = "RE111", isSPEDField = false)
	private List<RE111> rE111 = new ArrayList<RE111>();

	@XMLFieldProperties(id = "RE116", isSPEDField = false)
	private RE116 rE116;

	/**
	 * Constructor
	 * 
	 * @param DT_INI
	 * @param DT_FIN
	 */
	public RE100() {
		super();
	} // RE100

	public RE116 getrE116() {
		return rE116;
	}

	public void setrE116(RE116 rE116) {
		this.rE116 = rE116;
	}

	public RE110 getrE110() {
		return rE110;
	}

	public void setrE110(RE110 rE110) {
		this.rE110 = rE110;
	}

	public List<RE111> getrE111() {
		return rE111;
	}

	public void setrE111(List<RE111> rE111) {
		this.rE111 = rE111;
	}

	public Timestamp getDT_INI() {
		return DT_INI;
	}

	public void setDT_INI(Timestamp dT_INI) {
		DT_INI = dT_INI;
	}

	public Timestamp getDT_FIN() {
		return DT_FIN;
	}

	public void setDT_FIN(Timestamp dT_FIN) {
		DT_FIN = dT_FIN;
	}

	public void addrE111(RE111 reg) {
		this.rE111.add(reg);
	}

	
	@Override
	public int compareTo(Object o) {
		// TODO Auto-generated method stub
		return 0;
	}

} // RE100