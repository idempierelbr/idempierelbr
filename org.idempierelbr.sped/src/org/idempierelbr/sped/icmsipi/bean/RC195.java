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
 * REGISTRO C195 – OBSERVAÇÃO DO LANÇAMENTO FISCAL
 * 
 * @author Pablo Boff Pigozzo, pablobp
 * @version $Id: RC195.java, 28/12/2011, 11:30:00, pablobp
 */
public class RC195 extends RegSped {

	@XStreamAlias("Id")
	@XStreamAsAttribute
	@XMLFieldProperties(maxSize = 6, id = "COD_OBS")
	private String COD_OBS;
	
	@XMLFieldProperties(id = "TXT", isMandatory = false)
	private String TXT;

	/**
	 * Constructor
	 */
	public RC195() {
		super();
	}

	public String getCOD_OBS() {
		return COD_OBS;
	}

	public void setCOD_OBS(String cOD_OBS) {
		COD_OBS = cOD_OBS;
	}

	public String getTXT() {
		return TXT;
	}

	public void setTXT(String tXT) {
		TXT = tXT;
	}

	@Override
	public int compareTo(Object arg0) {
		// TODO Auto-generated method stub
		return 0;
	}

} // R0305