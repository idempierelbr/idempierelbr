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


/**
 * REGISTRO G140 – IDENTIFICAÇÃO DO ITEM DO DOCUMENTO FISCAL
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RG140.java, 24/03/2011, 11:01:00, mgrigioni
 * 
 * @author Claudemir Todo Bom http://todobom.com
 * @version $ 15/02/2013 11:12 $
 */
public class RG140 extends RegSped
{

	@XMLFieldProperties(id = "NUM_ITEM")
	private int NUM_ITEM;
	
	@XMLFieldProperties(id = "COD_ITEM")
	private String COD_ITEM;

	public int getNUM_ITEM() {
		return NUM_ITEM;
	}

	public void setNUM_ITEM(int nUM_ITEM) {
		NUM_ITEM = nUM_ITEM;
	}

	public String getCOD_ITEM() {
		return COD_ITEM;
	}

	public void setCOD_ITEM(String cOD_ITEM) {
		COD_ITEM = cOD_ITEM;
	}
	
	
} //RG140