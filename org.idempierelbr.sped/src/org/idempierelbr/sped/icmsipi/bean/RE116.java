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
import java.sql.Timestamp;

import org.idempierelbr.sped.annotation.XMLFieldProperties;
import org.idempierelbr.sped.icmsipi.util.RegSped;


import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;

/**
 * REGISTRO E250: OBRIGAÇÕES DO ICMS A RECOLHER – SUBSTITUIÇÃO TRIBUTÁRIA.
 * 
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RE250.java, 14/06/2011, 11:13:00, mgrigioni
 */
public class RE116 extends RegSped {

	@XStreamAlias("Id")
	@XStreamAsAttribute
	@XMLFieldProperties(id = "COD_OR", maxSize = 3, minSize = 3)
	private String COD_OR;

	@XMLFieldProperties(id = "VL_OR")
	private BigDecimal VL_OR;

	@XMLFieldProperties(id = "DT_VCTO", maxSize = 8, minSize = 8)
	private Timestamp DT_VCTO;

	@XMLFieldProperties(id = "COD_REC")
	private String COD_REC;

	@XMLFieldProperties(id = "NUM_PROC", maxSize = 15)
	private String NUM_PROC;

	@XMLFieldProperties(id = "IND_PROC", maxSize = 1, minSize = 1)
	private String IND_PROC;

	@XMLFieldProperties(id = "PROC")
	private String PROC;

	@XMLFieldProperties(id = "TXT_COMPL")
	private String TXT_COMPL;

	@XMLFieldProperties(id = "MES_REF", maxSize = 6, minSize = 6)
	private String MES_REF;

	/**
	 * Constructor
	 */
	public RE116() {
		super();
	} // RE250

	public String getCOD_OR() {
		return COD_OR;
	}

	public void setCOD_OR(String cOD_OR) {
		COD_OR = cOD_OR;
	}

	public BigDecimal getVL_OR() {
		return VL_OR;
	}

	public void setVL_OR(BigDecimal vL_OR) {
		VL_OR = vL_OR;
	}

	public Timestamp getDT_VCTO() {
		return DT_VCTO;
	}

	public void setDT_VCTO(Timestamp dT_VCTO) {
		DT_VCTO = dT_VCTO;
	}

	public String getCOD_REC() {
		return COD_REC;
	}

	public void setCOD_REC(String cOD_REC) {
		COD_REC = cOD_REC;
	}

	public String getNUM_PROC() {
		return NUM_PROC;
	}

	public void setNUM_PROC(String nUM_PROC) {
		NUM_PROC = nUM_PROC;
	}

	public String getIND_PROC() {
		return IND_PROC;
	}

	public void setIND_PROC(String iND_PROC) {
		IND_PROC = iND_PROC;
	}

	public String getPROC() {
		return PROC;
	}

	public void setPROC(String pROC) {
		PROC = pROC;
	}

	public String getTXT_COMPL() {
		return TXT_COMPL;
	}

	public void setTXT_COMPL(String tXT_COMPL) {
		TXT_COMPL = tXT_COMPL;
	}

	public String getMES_REF() {
		return MES_REF;
	}

	public void setMES_REF(String mES_REF) {
		MES_REF = mES_REF;
	}

	@Override
	public int compareTo(Object o) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int hashCode() 
	{
		final int prime = 31;
		int result = super.hashCode();
		
		result = prime * result	+ ((DT_VCTO == null) ? 0 : DT_VCTO.hashCode());
		result = prime * result	+ ((TXT_COMPL == null) ? 0 : TXT_COMPL.hashCode());
		
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
		
		
		RE116 other = (RE116) obj;
		
		if (DT_VCTO == null && other.DT_VCTO != null) 
				return false;
		
		else if (TXT_COMPL == null && other.TXT_COMPL != null) 
			return false;
		
		else if (DT_VCTO.compareTo(other.DT_VCTO) != 0)
			return false;
		
		else if (TXT_COMPL.compareTo(other.TXT_COMPL) != 0)
			return false;
				
		return true;
	}
	
	
} // RE250