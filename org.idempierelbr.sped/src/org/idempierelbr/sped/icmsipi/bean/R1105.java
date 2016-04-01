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
 * REGISTRO 1105: DOCUMENTOS FISCAIS DE EXPORTAÇÃO.
 * 
 * 
 * @author Mario Grigioni, mgrigioni
 * @version $Id: R1105.java, 14/02/2011, 12:48:00, mgrigioni
 * 
 * @contributor Pablo Boff Pigozzo
 * @version $Id: R0005.java, 07/08/2012, 14:00, pablobp4
 */
public class R1105 extends RegSped {

	@XStreamAlias("Id")
	@XStreamAsAttribute
	@XMLFieldProperties(id = "COD_MOD", maxSize = 2, minSize = 2)
	String COD_MOD;
	
	@XMLFieldProperties(id = "SERIE", maxSize = 3, isMandatory = false)
	String SERIE;
	
	@XMLFieldProperties(id = "NUM_DOC", maxSize = 2)
	String NUM_DOC;

	@XMLFieldProperties(id = "CHV_NFE", maxSize = 44, minSize = 44, isNumber = true, isMandatory = false)
	String CHV_NFE;

	@XMLFieldProperties(id = "DT_DOC", maxSize = 8, minSize = 8, isNumber = true)
	Timestamp DT_DOC;
	
	@XMLFieldProperties(id = "COD_ITEM", maxSize = 60)
	String COD_ITEM;

	/**
	 * Constructor
	 * 
	 * @param COD_MOD
	 * @param SERIE
	 * @param NUM_DOC
	 * @param CHV_NFE
	 * @param DT_DOC
	 * @param COD_ITEM
	 */
	public R1105() {
		super();
	} // R1105

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

	public String getCHV_NFE() {
		return CHV_NFE;
	}

	public void setCHV_NFE(String cHV_NFE) {
		CHV_NFE = cHV_NFE;
	}

	public String getCOD_ITEM() {
		return COD_ITEM;
	}

	public void setCOD_ITEM(String cOD_ITEM) {
		COD_ITEM = cOD_ITEM;
	}

	public Timestamp getDT_DOC() {
		return DT_DOC;
	}

	public void setDT_DOC(Timestamp dT_DOC) {
		DT_DOC = dT_DOC;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result
				+ ((COD_ITEM == null) ? 0 : COD_ITEM.hashCode());
		result = prime * result + ((NUM_DOC == null) ? 0 : NUM_DOC.hashCode());
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
		R1105 other = (R1105) obj;
		if (COD_ITEM == null) {
			if (other.COD_ITEM != null)
				return false;
		} else if (!COD_ITEM.equals(other.COD_ITEM))
			return false;
		if (NUM_DOC == null) {
			if (other.NUM_DOC != null)
				return false;
		} else if (!NUM_DOC.equals(other.NUM_DOC))
			return false;
		return true;
	}

	@Override
	public int compareTo(Object arg0) {
		// TODO Auto-generated method stub
		return 0;
	}

} // R1105