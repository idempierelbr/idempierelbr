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

import org.idempierelbr.sped.icmsipi.util.RegSped;


/**
 * REGISTRO C140: FATURA
 * 
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RC140.java, 07/02/2011, 08:01:00, mgrigioni
 */
public class RC140 extends RegSped {

	private String IND_EMIT;
	private String IND_TIT;
	private String DESC_TIT;
	private String NUM_TIT;
	private BigDecimal QTD_PARC;
	private BigDecimal VL_TIT;

	/**
	 * Constructor
	 */
	public RC140() {
		super();
	}

	public String getIND_EMIT() {
		return IND_EMIT;
	}

	public void setIND_EMIT(String iND_EMIT) {
		IND_EMIT = iND_EMIT;
	}

	public String getIND_TIT() {
		return IND_TIT;
	}

	public void setIND_TIT(String iND_TIT) {
		IND_TIT = iND_TIT;
	}

	public String getDESC_TIT() {
		return DESC_TIT;
	}

	public void setDESC_TIT(String dESC_TIT) {
		DESC_TIT = dESC_TIT;
	}

	public String getNUM_TIT() {
		return NUM_TIT;
	}

	public void setNUM_TIT(String nUM_TIT) {
		NUM_TIT = nUM_TIT;
	}

	public BigDecimal getQTD_PARC() {
		return QTD_PARC;
	}

	public void setQTD_PARC(BigDecimal qTD_PARC) {
		QTD_PARC = qTD_PARC;
	}

	public BigDecimal getVL_TIT() {
		return VL_TIT;
	}

	public void setVL_TIT(BigDecimal vL_TIT) {
		VL_TIT = vL_TIT;
	}

	@Override
	public int compareTo(Object arg0) {
		// TODO Auto-generated method stub
		return 0;
	}

} // RC140