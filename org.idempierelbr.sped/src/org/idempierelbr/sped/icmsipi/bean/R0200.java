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

import java.math.BigDecimal;

import org.idempierelbr.sped.annotation.XMLFieldProperties;
import org.idempierelbr.sped.icmsipi.util.RegSped;


import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;

/**
 * REGISTRO 0200: TABELA DE IDENTIFICAÇÃO DO ITEM (PRODUTOS E SERVIÇOS)
 * 
 * @author Mario Grigioni, mgrigioni
 * @version $Id: R0200.java, 04/02/2011, 09:30:00, mgrigioni
 * 
 * @contributor Pablo Boff Pigozzo
 * @version $Id: R0005.java, 07/08/2012, 14:00, pablobp4
 */
public class R0200 extends RegSped {
	
	@XStreamAlias("Id")
	@XStreamAsAttribute
	@XMLFieldProperties(maxSize = 60, id = "COD_ITEM")
	private String COD_ITEM;
	
	@XMLFieldProperties(maxSize = 255, id = "DESCR_ITEM")
	private String DESCR_ITEM;
	
	@XMLFieldProperties(maxSize = 14, isMandatory = false, id = "COD_BARRA", isNumber = true)
	private String COD_BARRA;
	
	@XMLFieldProperties(maxSize = 60, isMandatory = false, id = "COD_ANT_ITEM")
	private String COD_ANT_ITEM;
	
	@XMLFieldProperties(maxSize = 6, id = "UNID_INV")
	private String UNID_INV;
	
	@XMLFieldProperties(minSize = 2, maxSize = 2, id = "TIPO_ITEM")
	private String TIPO_ITEM;
	
	@XMLFieldProperties( maxSize = 8, isMandatory = false, id = "COD_NCM", isNumber = true)
	private String COD_NCM;
	
	@XMLFieldProperties( maxSize = 3, isMandatory = false, id = "EX_IPI")
	private String EX_IPI;
	
	@XMLFieldProperties( maxSize = 2, isMandatory = false, id = "COD_GEN")
	private String COD_GEN;
	
	@XMLFieldProperties( maxSize = 4, isMandatory = false, id = "COD_LST")
	private String COD_LST;
	
	@XMLFieldProperties( maxSize = 4, isMandatory = false, id = "ALIQ_ICMS")
	private BigDecimal ALIQ_ICMS;
	
	/**
	 * Constructor
	 */
	public R0200()
	{
		super();
	}
	
	
	public String getCOD_ITEM() {
		return COD_ITEM;
	}

	public void setCOD_ITEM(String cOD_ITEM) {
		COD_ITEM = cOD_ITEM;
	}

	public String getDESCR_ITEM() {
		return DESCR_ITEM;
	}

	public void setDESCR_ITEM(String dESCR_ITEM) {
		DESCR_ITEM = dESCR_ITEM;
	}

	public String getCOD_BARRA() {
		return COD_BARRA;
	}

	public void setCOD_BARRA(String cOD_BARRA) {
		COD_BARRA = cOD_BARRA;
	}

	public String getCOD_ANT_ITEM() {
		return COD_ANT_ITEM;
	}

	public void setCOD_ANT_ITEM(String cOD_ANT_ITEM) {
		COD_ANT_ITEM = cOD_ANT_ITEM;
	}

	public String getUNID_INV() {
		return UNID_INV;
	}

	public void setUNID_INV(String uNID_INV) {
		UNID_INV = uNID_INV;
	}

	public String getTIPO_ITEM() {
		return TIPO_ITEM;
	}

	public void setTIPO_ITEM(String tIPO_ITEM) {
		TIPO_ITEM = tIPO_ITEM;
	}

	public String getCOD_NCM() {
		return COD_NCM;
	}

	public void setCOD_NCM(String cOD_NCM) {
		COD_NCM = cOD_NCM;
	}

	public String getEX_IPI() {
		return EX_IPI;
	}

	public void setEX_IPI(String eX_IPI) {
		EX_IPI = eX_IPI;
	}

	public String getCOD_GEN() {
		return COD_GEN;
	}

	public void setCOD_GEN(String cOD_GEN) {
		COD_GEN = cOD_GEN;
	}

	public String getCOD_LST() {
		return COD_LST;
	}

	public void setCOD_LST(String cOD_LST) {
		COD_LST = cOD_LST;
	}

	public BigDecimal getALIQ_ICMS() {
		return ALIQ_ICMS;
	}

	public void setALIQ_ICMS(BigDecimal aLIQ_ICMS) {
		ALIQ_ICMS = aLIQ_ICMS;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result
				+ ((COD_ITEM == null) ? 0 : COD_ITEM.hashCode());
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
		R0200 other = (R0200) obj;
		if (COD_ITEM == null) {
			if (other.COD_ITEM != null)
				return false;
		} else if (!COD_ITEM.equals(other.COD_ITEM))
			return false;
		return true;
	}

	@Override
	public int compareTo(Object obj) 
	{
		return 0;
	}
} // R0200