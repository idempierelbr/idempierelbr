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
 * REGISTRO 0990: ENCERRAMENTO DO BLOCO 0
 * @author Mario Grigioni, mgrigioni
 * @version $Id: R0990.java, 19/01/2011, 11:47:00, mgrigioni
 */
public class R0990 extends RegSped {
	
	@XStreamAlias("Id")
	@XStreamAsAttribute
	@XMLFieldProperties(id = "QTD_LIN_0")
	private String QTD_LIN_0 = "";

	/**
	 * Constructor
	 */
	public R0990() 
	{
		super();
	} //R0990

	public String getQTD_LIN_0() {
		return QTD_LIN_0;
	}

	public void setQTD_LIN_0(String qTD_LIN_0) {
		QTD_LIN_0 = qTD_LIN_0;
	}

	@Override
	public int compareTo(Object arg0) {
		// TODO Auto-generated method stub
		return 0;
	}

} //R0990