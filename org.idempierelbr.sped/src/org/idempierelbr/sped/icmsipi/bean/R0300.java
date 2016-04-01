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
 * REGISTRO 0300: CADASTRO DE BENS OU COMPONENTES DO ATIVO IMOBILIZADO
 * 
 * 
 * @author Mario Grigioni, mgrigioni
 * @version $Id: R0300.java, 04/02/2011, 10:02:00, mgrigioni
 * 
 * @contributor Pablo Boff Pigozzo
 * @version $Id: 07/08/2012, 14:00, pablobp4
 */
public class R0300 extends RegSped {

	@XStreamAlias("Id")
	@XStreamAsAttribute
	@XMLFieldProperties(minSize = 1, maxSize = 60, id = "COD_IND_BEM")
	private String COD_IND_BEM;

	@XMLFieldProperties(minSize = 1, maxSize = 1, id = "IDENT_MERC")
	private String IDENT_MERC;

	@XMLFieldProperties(minSize = 1, maxSize = 155, id = "DESCR_ITEM")
	private String DESCR_ITEM;

	@XMLFieldProperties(minSize = 0, maxSize = 60, isMandatory = false, id = "COD_PRNC")
	private String COD_PRNC;

	@XMLFieldProperties(minSize = 1, maxSize = 60, id = "COD_CTA")
	private String COD_CTA;

	@XMLFieldProperties(minSize = 0, maxSize = 60, isMandatory = false, id = "COD_PART")
	private int NR_PARC;

	/**
	 * Constructor
	 */
	public R0300() {
		super();
	}

	public String getCOD_IND_BEM() {
		return COD_IND_BEM;
	}

	public void setCOD_IND_BEM(String cOD_IND_BEM) {
		COD_IND_BEM = cOD_IND_BEM;
	}

	public String getIDENT_MERC() {
		return IDENT_MERC;
	}

	public void setIDENT_MERC(String iDENT_MERC) {
		IDENT_MERC = iDENT_MERC;
	}

	public String getDESCR_ITEM() {
		return DESCR_ITEM;
	}

	public void setDESCR_ITEM(String dESCR_ITEM) {
		DESCR_ITEM = dESCR_ITEM;
	}

	public String getCOD_PRNC() {
		return COD_PRNC;
	}

	public void setCOD_PRNC(String cOD_PRNC) {
		COD_PRNC = cOD_PRNC;
	}

	public String getCOD_CTA() {
		return COD_CTA;
	}

	public void setCOD_CTA(String cOD_CTA) {
		COD_CTA = cOD_CTA;
	}

	public int getNR_PARC() {
		return NR_PARC;
	}

	public void setNR_PARC(int nR_PARC) {
		NR_PARC = nR_PARC;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result
				+ ((COD_IND_BEM == null) ? 0 : COD_IND_BEM.hashCode());
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
		R0300 other = (R0300) obj;
		if (COD_IND_BEM == null) {
			if (other.COD_IND_BEM != null)
				return false;
		} else if (!COD_IND_BEM.equals(other.COD_IND_BEM))
			return false;
		return true;
	}

	@Override
	public int compareTo(Object arg0) {
		// TODO Auto-generated method stub
		return 0;
	}

} // R0300