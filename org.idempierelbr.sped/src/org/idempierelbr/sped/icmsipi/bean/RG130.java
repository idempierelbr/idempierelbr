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


/**
 * REGISTRO G130 – IDENTIFICAÇÃO DO DOCUMENTO FISCAL
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RG130.java, 24/03/2011, 10:51:00, mgrigioni
 * 
 * @author Claudemir Todo Bom http://todobom.com
 * @version $ 15/02/2013 11:12 $
 */
public class RG130 extends RegSped
{

	@XMLFieldProperties(id = "IND_EMIT")
	private String IND_EMIT;

	@XMLFieldProperties(id = "COD_PART")
	private String COD_PART;
	
	@XMLFieldProperties(id = "COD_MOD")
	private String COD_MOD;
	
	@XMLFieldProperties(id = "SERIE")
	private String SERIE;

	@XMLFieldProperties(id = "NUM_DOC")
	private String NUM_DOC;

	@XMLFieldProperties(id = "CHV_NFE_CTE")
	private String CHV_NFE_CTE;
	
	@XMLFieldProperties(id = "DT_DOC")
	private Timestamp DT_DOC;

	public String getIND_EMIT() {
		return IND_EMIT;
	}

	public void setIND_EMIT(String iND_EMIT) {
		IND_EMIT = iND_EMIT;
	}

	public String getCOD_PART() {
		return COD_PART;
	}

	public void setCOD_PART(String cOD_PART) {
		COD_PART = cOD_PART;
	}

	public String getCOD_MOD() {
		return COD_MOD;
	}

	public void setCOD_MOD(String cOD_MOD) {
		COD_MOD = cOD_MOD;
	}

	public String getSERIE() {
		return SERIE;
	}

	public void setSERIE(String sERIE) {
		SERIE = sERIE;
	}

	public String getNUM_DOC() {
		return NUM_DOC;
	}

	public void setNUM_DOC(String nUM_DOC) {
		NUM_DOC = nUM_DOC;
	}

	public String getCHV_NFE_CTE() {
		return CHV_NFE_CTE;
	}

	public void setCHV_NFE_CTE(String cHV_NFE_CTE) {
		CHV_NFE_CTE = cHV_NFE_CTE;
	}

	public Timestamp getDT_DOC() {
		return DT_DOC;
	}

	public void setDT_DOC(Timestamp dT_DOC) {
		DT_DOC = dT_DOC;
	}
	
	
	
} //RG130