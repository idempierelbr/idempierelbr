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
 * REGISTRO 0150: TABELA DE CADASTRO DO PARTICIPANTE
 * 
 * @author Mario Grigioni, mgrigioni
 * @version $Id: R0150.java, 04/02/2011, 09:19:00, mgrigioni
 * 
 * @contributor Pablo Boff Pigozzo
 * @version $Id: R0005.java, 07/08/2012, 14:00, pablobp4
 */
public class R0150 extends RegSped {
	
	@XStreamAlias("Id")
	@XStreamAsAttribute
	@XMLFieldProperties(maxSize = 60, id = "COD_PART")
	private String COD_PART;
	
	@XMLFieldProperties(maxSize = 100, id = "NOME")
	private String NOME;
	
	@XMLFieldProperties(minSize = 5, maxSize = 5, id = "COD_PAIS", isNumber = true)
	private String COD_PAIS;
	
	@XMLFieldProperties(isMandatory = false, maxSize = 14, id = "CNPJ", isNumber = true)
	private String CNPJ;
	
	@XMLFieldProperties(isMandatory = false, maxSize = 11, id = "CPF", isNumber = true)
	private String CPF;
	
	@XMLFieldProperties(isMandatory = false, maxSize = 14, id = "IE", isNumber = true)
	private String IE;
	
	@XMLFieldProperties(isMandatory = false, minSize = 7, maxSize = 7, id = "COD_MUN")
	private String COD_MUN;
	
	@XMLFieldProperties(isMandatory = false, maxSize = 9, id = "SUFRAMA", isNumber = true)
	private String SUFRAMA;
	
	@XMLFieldProperties(maxSize = 60, id = "END")
	private String END;
	
	@XMLFieldProperties(isMandatory = false, maxSize = 10, id = "NUM")
	private String NUM;
	
	@XMLFieldProperties(isMandatory = false, maxSize = 60, id = "COMPL")
	private String COMPL;
	
	@XMLFieldProperties(isMandatory = false, maxSize = 60, id = "BAIRRO")
	private String BAIRRO;
	
	/**
	 * Constructor
	 */
	public R0150()
	{
		super();
	}	//	R0150


	public String getCOD_PART() {
		return COD_PART;
	}

	public void setCOD_PART(String cOD_PART) {
		COD_PART = cOD_PART;
	}

	public String getNOME() {
		return NOME;
	}

	public void setNOME(String nOME) {
		NOME = nOME;
	}

	public String getCOD_PAIS() {
		return COD_PAIS;
	}

	public void setCOD_PAIS(String cOD_PAIS) {
		COD_PAIS = cOD_PAIS;
	}

	public String getCNPJ() {
		return CNPJ;
	}

	public void setCNPJ(String cNPJ) {
		CNPJ = cNPJ;
	}

	public String getCPF() {
		return CPF;
	}

	public void setCPF(String cPF) {
		CPF = cPF;
	}

	public String getIE() {
		return IE;
	}

	public void setIE(String iE) {
		IE = iE;
	}

	public String getCOD_MUN() {
		return COD_MUN;
	}

	public void setCOD_MUN(String cOD_MUN) {
		COD_MUN = cOD_MUN;
	}

	public String getSUFRAMA() {
		return SUFRAMA;
	}

	public void setSUFRAMA(String sUFRAMA) {
		SUFRAMA = sUFRAMA;
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

	
	@Override
	public int hashCode() 
	{
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result
				+ ((COD_PART == null) ? 0 : COD_PART.hashCode());
		return result;
	}

	
	@Override
	public boolean equals(Object obj) 
	{
		if (this == obj)
			return true;
		if (!super.equals(obj))
			return false;
		if (getClass() != obj.getClass())
			return false;
		
		
		R0150 other = (R0150) obj;
		if (COD_PART == null) 
		{
			if (other.COD_PART != null)
				return false;
		} 
		else if (!COD_PART.equals(other.COD_PART))
			return false;
		
		return true;
	}


	@Override
	public int compareTo(Object arg0) {
	
		if (arg0 == null)
			return -1;

		
		
		return 0;
	}

} // R0150