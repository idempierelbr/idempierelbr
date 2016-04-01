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

import org.idempierelbr.sped.annotation.XMLFieldProperties;
import org.idempierelbr.sped.icmsipi.util.RegSped;


import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;

/**
 * REGISTRO 0190: IDENTIFICAÇÃO DAS UNIDADES DE MEDIDA
 * 
 * @author Mario Grigioni, mgrigioni
 * @version $Id: R0190.java, 04/02/2011, 09:28:00, mgrigioni
 * 
 * @contributor Pablo Boff Pigozzo
 * @version $Id: 07/08/2012, 14:00, pablobp4
 */
public class R0190 extends RegSped {

	@XStreamAlias("Id")
	@XStreamAsAttribute
	@XMLFieldProperties(maxSize = 6, id = "UNID")
	private String UNID;

	@XMLFieldProperties(maxSize = 255, id = "DESCR")
	private String DESCR;

	/**
	 * Constructor
	 * 
	 * @param UNID
	 * @param DESCR
	 */
	public R0190() {
		super();
	}

	public String getUNID() {
		return UNID;
	}

	public void setUNID(String uNID) {
		UNID = uNID;
	}

	public String getDESCR() {
		return DESCR;
	}

	public void setDESCR(String dESCR) {
		DESCR = dESCR;
	}


	@Override
	public int hashCode() 
	{
		final int prime = 31;
		int result = 1;
		result = prime * result + ((UNID == null) ? 0 : UNID.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		R0190 other = (R0190) obj;
		if (UNID == null) {
			if (other.UNID != null)
				return false;
		} else if (!UNID.equals(other.UNID))
			return false;
		return true;
	}

	@Override
	public int compareTo(Object arg0) 
	{
	
		
		
		return 0;
	}

} // R0190