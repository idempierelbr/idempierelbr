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
 * REGISTRO E530: AJUSTES DA APURAÇÃO DO IPI
 * 
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RE530.java, 21/03/2011, 16:15:00, mgrigioni
 */
public class RE530 extends RegSped {

	@XStreamAlias("Id")
	@XStreamAsAttribute
	@XMLFieldProperties(id = "IND_AJ", maxSize = 1)
	private String IND_AJ;

	@XMLFieldProperties(id = "VL_AJ")
	private BigDecimal VL_AJ;

	@XMLFieldProperties(id = "COD_AJ", maxSize = 3, minSize = 3)
	private String COD_AJ;

	@XMLFieldProperties(id = "IND_DOC", maxSize = 1, isMandatory = false)
	private String IND_DOC;

	@XMLFieldProperties(id = "NUM_DOC", isMandatory = false)
	private String NUM_DOC;

	@XMLFieldProperties(id = "DESCR_AJ")
	private String DESCR_AJ;

	/**
	 * Constructor
	 */
	public RE530() {
		super();

	} // RE530

	public String getIND_AJ() {
		return IND_AJ;
	}

	public void setIND_AJ(String iND_AJ) {
		IND_AJ = iND_AJ;
	}

	public BigDecimal getVL_AJ() {
		return VL_AJ;
	}

	public void setVL_AJ(BigDecimal vL_AJ) {
		VL_AJ = vL_AJ;
	}

	public String getCOD_AJ() {
		return COD_AJ;
	}

	public void setCOD_AJ(String cOD_AJ) {
		COD_AJ = cOD_AJ;
	}

	public String getIND_DOC() {
		return IND_DOC;
	}

	public void setIND_DOC(String iND_DOC) {
		IND_DOC = iND_DOC;
	}

	public String getNUM_DOC() {
		return NUM_DOC;
	}

	public void setNUM_DOC(String nUM_DOC) {
		NUM_DOC = nUM_DOC;
	}

	public String getDESCR_AJ() {
		return DESCR_AJ;
	}

	public void setDESCR_AJ(String dESCR_AJ) {
		DESCR_AJ = dESCR_AJ;
	}

	@Override
	public int compareTo(Object o) {
		// TODO Auto-generated method stub
		return 0;
	}

} // RE530