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
 * REGISTRO 0005: DADOS COMPLEMENTARES DA ENTIDADE
 * 
 * @author Mario Grigioni, mgrigioni
 * @version $Id: R0005.java, 03/02/2011, 16:52:00, mgrigioni
 * 
 * @contributor Pablo Boff Pigozzo
 * @version $Id: R0005.java, 07/08/2012, 14:00, pablobp4
 */

public class R0005 extends RegSped  {

	@XStreamAlias("Id")
	@XStreamAsAttribute
	@XMLFieldProperties(maxSize = 60, id = "FANTASIA")
	private String FANTASIA;
	
	@XMLFieldProperties(minSize = 8, maxSize = 8, id = "CEP", isNumber = true)
	private String CEP;
	
	@XMLFieldProperties(maxSize = 60, id = "END")
	private String END;
	
	@XMLFieldProperties(maxSize = 10, isMandatory = false, id = "NUM")
	private String NUM;
	
	@XMLFieldProperties(maxSize = 60, isMandatory = false, id = "COMPL")
	private String COMPL;
	
	@XMLFieldProperties(maxSize = 60, id = "BAIRRO")
	private String BAIRRO;
	
	@XMLFieldProperties(maxSize = 11, isMandatory = false, id = "FONE", isNumber = true)
	private String FONE;
	
	@XMLFieldProperties(maxSize = 11, isMandatory = false, id = "FAX")
	private String FAX;
	
	@XMLFieldProperties(maxSize = 255, isMandatory = false, id = "EMAIL")
	private String EMAIL;

	
	/**
	 * Constructor
	 * 
	 * @param FANTASIA
	 * @param CEP
	 * @param END
	 * @param NUM
	 * @param COMPL
	 * @param BAIRRO
	 * @param FONE
	 * @param FAX
	 * @param EMAIL
	 */
	public R0005()
	{
		super();
	}

	
	public String getFANTASIA() {
		return FANTASIA;
	}

	public void setFANTASIA(String fANTASIA) {
		FANTASIA = fANTASIA;
	}

	public String getCEP() {
		return CEP;
	}

	public void setCEP(String cEP) {
		CEP = cEP;
	}

	public String getEND() {
		return END;
	}

	public void setEND(String eND) {
		END = eND;
	}

	public String getNUM() {
		return NUM;
	}

	public void setNUM(String nUM) {
		NUM = nUM;
	}

	public String getCOMPL() {
		return COMPL;
	}

	public void setCOMPL(String cOMPL) {
		COMPL = cOMPL;
	}

	public String getBAIRRO() {
		return BAIRRO;
	}

	public void setBAIRRO(String bAIRRO) {
		BAIRRO = bAIRRO;
	}

	public String getFONE() {
		return FONE;
	}

	public void setFONE(String fONE) {
		FONE = fONE;
	}

	public String getFAX() {
		return FAX;
	}

	public void setFAX(String fAX) {
		FAX = fAX;
	}

	public String getEMAIL() {
		return EMAIL;
	}

	public void setEMAIL(String eMAIL) {
		EMAIL = eMAIL;
	}


	@Override
	public int compareTo(Object arg0) 
	{
		// TODO Auto-generated method stub
		return 0;
	}

}	// R0005