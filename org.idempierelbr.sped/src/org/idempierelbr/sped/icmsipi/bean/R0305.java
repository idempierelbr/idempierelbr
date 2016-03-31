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
 * REGISTRO 0305 – INFORMAÇÃO SOBRE A UTILIZAÇÃO DO BEM
 * @author Mario Grigioni, mgrigioni
 * @version $Id: R0305.java, 04/02/2011, 10:30:00, mgrigioni
 * 
 * @author Claudemir Todo Bom http://todobom.com
 * @version $ 15/02/2013 11:10 $
 */
public class R0305 extends RegSped  {
	
	@XMLFieldProperties(id = "COD_CCUS")
	private String COD_CCUS;

	@XMLFieldProperties(id = "FUNC")
	private String FUNC;
	
	@XMLFieldProperties(id = "VIDA_UTIL")
	private int VIDA_UTIL;

	public String getCOD_CCUS() {
		return COD_CCUS;
	}

	public void setCOD_CCUS(String cOD_CCUS) {
		COD_CCUS = cOD_CCUS;
	}

	public String getFUNC() {
		return FUNC;
	}

	public void setFUNC(String fUNC) {
		FUNC = fUNC;
	}

	public int getVIDA_UTIL() {
		return VIDA_UTIL;
	}

	public void setVIDA_UTIL(int vIDA_UTIL) {
		VIDA_UTIL = vIDA_UTIL;
	}
		
}	// R0305