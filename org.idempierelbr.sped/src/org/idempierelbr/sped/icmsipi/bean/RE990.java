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
 * REGISTRO E990: ENCERRAMENTO DO BLOCO E
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RE990.java, 08/02/2011, 12:04:00, mgrigioni
 */
public class RE990 extends RegSped {
	
	@XStreamAlias("Id")
	@XStreamAsAttribute
	@XMLFieldProperties(id = "QTD_LIN_E")
	private String QTD_LIN_E;

	/**
	 * Constructor
	 */
	public RE990() 
	{
		super();
	} //RE990

	public String getQTD_LIN_E() {
		return QTD_LIN_E;
	}

	public void setQTD_LIN_E(String qTD_LIN_E) {
		QTD_LIN_E = qTD_LIN_E;
	}

	@Override
	public int compareTo(Object o) {
		// TODO Auto-generated method stub
		return 0;
	}


} //RE990