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
 * REGISTRO C120: OPERAÇÕES DE IMPORTAÇÃO (CÓDIGO 01).
 * 
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RC120.java, 07/02/2011, 08:02:00, mgrigioni
 */
public class RC120 extends RegSped {

	@XStreamAlias("Id")
	@XStreamAsAttribute
	@XMLFieldProperties(minSize = 1, maxSize = 1, id = "COD_DOC_IMP")
	private String COD_DOC_IMP;
	
	@XMLFieldProperties(maxSize = 255, id = "NUM_DOC_IMP")
	private String NUM_DOC_IMP;
	
	@XMLFieldProperties(id = "PIS_IMP", isMandatory = false)
	private BigDecimal PIS_IMP;
	
	@XMLFieldProperties(id = "COFINS_IMP", isMandatory = false)
	private BigDecimal COFINS_IMP;
	
	@XMLFieldProperties(id = "COFINS_IMP", isMandatory = false)
	private String NUM_ACDRAW;

	/**
	 * Constructor
	 */
	public RC120() {
		super();
	} // RC120

	public String getCOD_DOC_IMP() {
		return COD_DOC_IMP;
	}

	public void setCOD_DOC_IMP(String cOD_DOC_IMP) {
		COD_DOC_IMP = cOD_DOC_IMP;
	}

	public String getNUM_DOC_IMP() {
		return NUM_DOC_IMP;
	}

	public void setNUM_DOC_IMP(String nUM_DOC_IMP) {
		NUM_DOC_IMP = nUM_DOC_IMP;
	}

	public BigDecimal getPIS_IMP() {
		return PIS_IMP;
	}

	public void setPIS_IMP(BigDecimal pIS_IMP) {
		PIS_IMP = pIS_IMP;
	}

	public BigDecimal getCOFINS_IMP() {
		return COFINS_IMP;
	}

	public void setCOFINS_IMP(BigDecimal cOFINS_IMP) {
		COFINS_IMP = cOFINS_IMP;
	}

	public String getNUM_ACDRAW() {
		return NUM_ACDRAW;
	}

	public void setNUM_ACDRAW(String nUM_ACDRAW) {
		NUM_ACDRAW = nUM_ACDRAW;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result
				+ ((NUM_ACDRAW == null) ? 0 : NUM_ACDRAW.hashCode());
		result = prime * result
				+ ((NUM_DOC_IMP == null) ? 0 : NUM_DOC_IMP.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (!super.equals(obj))
			return false;
		if (getClass() != obj.getClass())
			return false;
		RC120 other = (RC120) obj;
		if (NUM_ACDRAW == null) {
			if (other.NUM_ACDRAW != null)
				return false;
		} else if (!NUM_ACDRAW.equals(other.NUM_ACDRAW))
			return false;
		if (NUM_DOC_IMP == null) {
			if (other.NUM_DOC_IMP != null)
				return false;
		} else if (!NUM_DOC_IMP.equals(other.NUM_DOC_IMP))
			return false;
		return true;
	}

	@Override
	public int compareTo(Object arg0) {
		// TODO Auto-generated method stub
		return 0;
	}

} // RC120