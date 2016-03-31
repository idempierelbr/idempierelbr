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
 * REGISTRO 0100: DADOS DO CONTABILISTA
 * 
 * @author Mario Grigioni, mgrigioni
 * @version $Id: R0100.java, 03/02/2011, 17:01:00, mgrigioni
 * 
 * @contributor Pablo Boff Pigozzo
 * @version $Id: 07/08/2012, 14:00, pablobp4
 */
public class R0100 extends RegSped {

	@XStreamAlias("Id")
	@XStreamAsAttribute
	@XMLFieldProperties(maxSize = 100, id = "NOME")
	private String NOME;
	
	@XMLFieldProperties(minSize = 11, maxSize = 11, id = "CPF", isNumber = true)
	private String CPF;
	
	@XMLFieldProperties(maxSize = 15, id = "CRC")
	private String CRC;
	
	@XMLFieldProperties(maxSize = 14, id = "CNPJ", isNumber = true)
	private String CNPJ;
	
	@XMLFieldProperties(maxSize = 8, id = "CEP", isMandatory = false, isNumber = true)
	private String CEP;
	
	@XMLFieldProperties(maxSize = 60, id = "END", isMandatory = false)
	private String END;
	
	@XMLFieldProperties(maxSize = 10, id = "NUM", isMandatory = false)
	private String NUM;
	
	@XMLFieldProperties(maxSize = 60, id = "COMPL", isMandatory = false)
	private String COMPL;
	
	@XMLFieldProperties(maxSize = 60, id = "BAIRRO", isMandatory = false)
	private String BAIRRO;
	
	@XMLFieldProperties(maxSize = 11, id = "FONE", isMandatory = false, isNumber = true)
	private String FONE;
	
	@XMLFieldProperties(maxSize = 11, id = "FAX", isMandatory = false, isNumber = true)
	private String FAX;
	
	@XMLFieldProperties(maxSize = 255, id = "EMAIL", isMandatory = false)
	private String EMAIL;
	
	@XMLFieldProperties(maxSize = 7, id = "COD_MUN", isMandatory = false, isNumber = true)
	private String COD_MUN;

	/**
	 * Constructor
	 */
	public R0100() {
		super();
	}

	public String getNOME() {
		return NOME;
	}

	public void setNOME(String nOME) {
		NOME = nOME;
	}

	public String getCPF() {
		return CPF;
	}

	public void setCPF(String cPF) {
		CPF = cPF;
	}

	public String getCRC() {
		return CRC;
	}

	public void setCRC(String cRC) {
		CRC = cRC;
	}

	public String getCNPJ() {
		return CNPJ;
	}

	public void setCNPJ(String cNPJ) {
		CNPJ = cNPJ;
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

	public String getCOD_MUN() {
		return COD_MUN;
	}

	public void setCOD_MUN(String cOD_MUN) {
		COD_MUN = cOD_MUN;
	}

	@Override
	public int compareTo(Object arg0) {

		// TODO Auto-generated method stub
		return 0;
	}

} // R0100