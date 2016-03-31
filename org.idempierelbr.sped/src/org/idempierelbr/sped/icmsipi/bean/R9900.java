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
 * REGISTRO 9900: REGISTROS DO ARQUIVO.
 * @author Mario Grigioni, mgrigioni
 * @version $Id: R9900.java, 07/02/2011, 14:44:00, mgrigioni
 */
public class R9900 extends RegSped {
	
	public String getREG_BLC() {
		return REG_BLC;
	}

	public void setREG_BLC(String rEG_BLC) {
		REG_BLC = rEG_BLC;
	}

	public String getQTD_REG_BLC() {
		return QTD_REG_BLC;
	}

	public void setQTD_REG_BLC(String qTD_REG_BLC) {
		QTD_REG_BLC = qTD_REG_BLC;
	}

	@XStreamAlias("Id")
	@XStreamAsAttribute
	@XMLFieldProperties(id = "REG_BLC")
	private String REG_BLC;
	
	@XMLFieldProperties(id = "QTD_REG_BLC")
	private String QTD_REG_BLC;

	/**
	 * Constructor
	 */
	public R9900() {
		super();
	} //R9900

	@Override
	public int compareTo(Object o) {
		// TODO Auto-generated method stub
		return 0;
	}
	
} //R9900