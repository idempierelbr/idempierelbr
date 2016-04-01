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
import java.sql.Timestamp;

import org.idempierelbr.sped.icmsipi.util.RegSped;


/**
 * REGISTRO C141: VENCIMENTO DA FATURA (CÓDIGO 01).
 * 
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RC141.java, 07/02/2011, 08:24:00, mgrigioni
 */
public class RC141 extends RegSped {

	private String NUM_PARC;
	private Timestamp DL_VCTO;
	private BigDecimal VL_PARC;

	public RC141() {
		super();
	}

	public String getNUM_PARC() {
		return NUM_PARC;
	}

	public void setNUM_PARC(String nUM_PARC) {
		NUM_PARC = nUM_PARC;
	}

	public Timestamp getDL_VCTO() {
		return DL_VCTO;
	}

	public void setDL_VCTO(Timestamp dL_VCTO) {
		DL_VCTO = dL_VCTO;
	}

	public BigDecimal getVL_PARC() {
		return VL_PARC;
	}

	public void setVL_PARC(BigDecimal vL_PARC) {
		VL_PARC = vL_PARC;
	}

	@Override
	public int compareTo(Object arg0) {
		// TODO Auto-generated method stub
		return 0;
	}

} // RC141