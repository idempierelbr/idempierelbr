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
 * REGISTRO H010: INVENTÁRIO
 * 
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RH0/10.java, 28/03/2011, 14:41:00, mgrigioni
 */
public class RH010 extends RegSped 
{
	
	@XStreamAlias("Id")
	@XStreamAsAttribute
	@XMLFieldProperties( maxSize = 60, id = "COD_ITEM")
	private String COD_ITEM;
	
	@XMLFieldProperties( maxSize = 6, id = "UNID")
	private String UNID;
	
	@XMLFieldProperties( id = "QTD")
	private BigDecimal QTD;
	
	@XMLFieldProperties(id = "VL_UNIT")
	private BigDecimal VL_UNIT;
	
	@XMLFieldProperties(id = "VL_ITEM")
	private BigDecimal VL_ITEM;
	
	@XMLFieldProperties(maxSize = 1, id = "IND_PROP")
	private String IND_PROP;
	
	@XMLFieldProperties(maxSize = 60, id = "COD_PART")
	private String COD_PART;
	
	@XMLFieldProperties(id = "TXT_COMPL")
	private String TXT_COMPL;
	
	@XMLFieldProperties(id = "COD_CTA")
	private String COD_CTA;
	
	@XMLFieldProperties(id = "VL_ITEM_IR")
	private BigDecimal VL_ITEM_IR;

	public RH010() {
		super();
	} // RH010

	public String getCOD_ITEM() {
		return COD_ITEM;
	}

	public void setCOD_ITEM(String cOD_ITEM) {
		COD_ITEM = cOD_ITEM;
	}

	public String getUNID() {
		return UNID;
	}

	public void setUNID(String uNID) {
		UNID = uNID;
	}

	public String getIND_PROP() {
		return IND_PROP;
	}

	public void setIND_PROP(String iND_PROP) {
		IND_PROP = iND_PROP;
	}

	public String getCOD_PART() {
		return COD_PART;
	}

	public void setCOD_PART(String cOD_PART) {
		COD_PART = cOD_PART;
	}

	public String getTXT_COMPL() {
		return TXT_COMPL;
	}

	public void setTXT_COMPL(String tXT_COMPL) {
		TXT_COMPL = tXT_COMPL;
	}

	public String getCOD_CTA() {
		return COD_CTA;
	}

	public void setCOD_CTA(String cOD_CTA) {
		COD_CTA = cOD_CTA;
	}
	
	public BigDecimal getVL_ITEM_IR() {
		return VL_ITEM_IR;
	}

	public void setVL_ITEM_IR(BigDecimal vL_ITEM_IR) {
		VL_ITEM_IR = vL_ITEM_IR;
	}

	public BigDecimal getQTD() {
		return QTD;
	}

	public void setQTD(BigDecimal qTD) {
		QTD = qTD;
	}

	public BigDecimal getVL_UNIT() {
		return VL_UNIT;
	}

	public void setVL_UNIT(BigDecimal vL_UNIT) {
		VL_UNIT = vL_UNIT;
	}

	public BigDecimal getVL_ITEM() {
		return VL_ITEM;
	}

	public void setVL_ITEM(BigDecimal vL_ITEM) {
		VL_ITEM = vL_ITEM;
	}

	
	@Override
	public int compareTo(Object o) {
		// TODO Auto-generated method stub
		return 0;
	}

} // RH010