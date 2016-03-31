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

import org.idempierelbr.sped.annotation.XMLFieldProperties;
import org.idempierelbr.sped.icmsipi.util.RegSped;


import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;

/**
 * REGISTRO 0500: PLANO DE CONTAS CONTÁBEIS
 * 
 * @author Mario Grigioni, mgrigioni
 * @version $Id: R0500.java, 24/03/2011, 15:04:00, mgrigioni
 */
public class R0500 extends RegSped {
	
	@XStreamAlias("Id")
	@XStreamAsAttribute
	@XMLFieldProperties(maxSize = 8, minSize = 8, isNumber = true, id = "DT_ALT")
	private Timestamp DT_ALT;

	@XMLFieldProperties(minSize = 2, maxSize = 2, id = "COD_NAT_CC")
	private String COD_NAT_CC;
	
	@XMLFieldProperties(maxSize = 1, id = "IND_CTA")	
	private String IND_CTA;
	
	@XMLFieldProperties(maxSize = 5, id = "NIVEL")
	private int NIVEL;
	
	@XMLFieldProperties(maxSize = 60, id = "COD_CTA")
	private String COD_CTA;
	
	@XMLFieldProperties(maxSize = 60, id = "NOME_CTA")
	private String NOME_CTA;

	/**
	 * Constructor
	 */
	public R0500() {
		super();
	} // R0500

	public Timestamp getDT_ALT() {
		return DT_ALT;
	}

	public void setDT_ALT(Timestamp dT_ALT) {
		DT_ALT = dT_ALT;
	}

	public String getCOD_NAT_CC() {
		return COD_NAT_CC;
	}

	public void setCOD_NAT_CC(String cOD_NAT_CC) {
		COD_NAT_CC = cOD_NAT_CC;
	}

	public String getIND_CTA() {
		return IND_CTA;
	}

	public void setIND_CTA(String iND_CTA) {
		IND_CTA = iND_CTA;
	}

	public int getNIVEL() {
		return NIVEL;
	}

	public void setNIVEL(int nIVEL) {
		NIVEL = nIVEL;
	}

	public String getCOD_CTA() {
		return COD_CTA;
	}

	public void setCOD_CTA(String cOD_CTA) {
		COD_CTA = cOD_CTA;
	}

	public String getNOME_CTA() {
		return NOME_CTA;
	}

	public void setNOME_CTA(String nOME_CTA) {
		NOME_CTA = nOME_CTA;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result + ((COD_CTA == null) ? 0 : COD_CTA.hashCode());
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
		R0500 other = (R0500) obj;
		if (COD_CTA == null) {
			if (other.COD_CTA != null)
				return false;
		} else if (!COD_CTA.equals(other.COD_CTA))
			return false;
		return true;
	}

	@Override
	public int compareTo(Object arg0) {
		// TODO Auto-generated method stub
		return 0;
	}

} // R0500