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
import java.util.ArrayList;
import java.util.List;

import org.idempierelbr.sped.annotation.XMLFieldProperties;
import org.idempierelbr.sped.icmsipi.util.RegSped;


import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;

/**
 * REGISTRO D500: NOTA FISCAL DE TELEFONIA
 * 
 * @author Priscila Pinheiro, ppinheiro
 * @version $Id: RD500.java, 10/02/2011, 16:03:00, Kenos
 */
public class RD500 extends RegSped implements Comparable<Object> {

	@XStreamAlias("Id")
	@XStreamAsAttribute
	@XMLFieldProperties(id = "IND_OPER", maxSize = 1)
	private String IND_OPER;
	
	@XMLFieldProperties(id = "IND_EMIT", maxSize = 1)
	private String IND_EMIT;
	
	@XMLFieldProperties(id = "COD_PART", maxSize = 60)
	private String COD_PART;
	
	@XMLFieldProperties(id = "COD_MOD", maxSize = 2, minSize = 2)
	private String COD_MOD;
	
	@XMLFieldProperties(id = "COD_SIT", maxSize = 2, minSize = 2)
	private String COD_SIT;
	
	@XMLFieldProperties(id = "SER", maxSize = 4, isMandatory = false)
	private String SER;
	
	@XMLFieldProperties(id = "SUB", maxSize = 3, isMandatory = false)
	private String SUB;
	
	@XMLFieldProperties(id = "NUM_DOC", maxSize = 9)
	private String NUM_DOC;
	
	@XMLFieldProperties(id = "DT_DOC", maxSize = 8, minSize = 8, isNumber = true)
	private Timestamp DT_DOC;
	
	@XMLFieldProperties(id = "DT_A_P", maxSize = 8, minSize = 8, isNumber = true, isMandatory = false)
	private Timestamp DT_A_P;
		
	@XMLFieldProperties(id = "VL_DOC")
	private BigDecimal VL_DOC;
	
	@XMLFieldProperties(id = "VL_DESC", isMandatory = false)
	private BigDecimal VL_DESC;
	
	@XMLFieldProperties(id = "VL_SERV")
	private BigDecimal VL_SERV;
	
	@XMLFieldProperties(id = "VL_SERV_NT")
	private BigDecimal VL_SERV_NT;
	
	@XMLFieldProperties(id = "VL_TERC")
	private BigDecimal VL_TERC;
	
	@XMLFieldProperties(id = "VL_DA")
	private BigDecimal VL_DA;
	
	@XMLFieldProperties(id = "VL_BC_ICMS", isMandatory = false)
	private BigDecimal VL_BC_ICMS;
	
	@XMLFieldProperties(id = "VL_ICMS", isMandatory = false)
	private BigDecimal VL_ICMS;
	
	@XMLFieldProperties(id = "COD_INF", isMandatory = false, maxSize = 6)
	private String COD_INF;
	
	@XMLFieldProperties(id = "VL_PIS", isMandatory = false)
	private BigDecimal VL_PIS;
	
	@XMLFieldProperties(id = "VL_COFINS", isMandatory = false)
	private BigDecimal VL_COFINS;
	
	@XMLFieldProperties(id = "COD_CTA", isMandatory = false)
	private String COD_CTA;
	
	@XMLFieldProperties(id = "TP_ASSINANTE", isMandatory = false)
	private String TP_ASSINANTE;

	@XMLFieldProperties(needsValidation = true, id = "RD590", isSPEDField = false)
	private List<RD590> rD590 = new ArrayList<RD590>();

	/**
	 * Constructor
	 */
	public RD500() {
		super();
	}

	public List<RD590> getrD590() {
		return rD590;
	}

	public void setrD590(List<RD590> rD590) {
		this.rD590 = rD590;
	}

	public String getIND_OPER() {
		return IND_OPER;
	}

	public void setIND_OPER(String iND_OPER) {
		IND_OPER = iND_OPER;
	}

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

	public String getCOD_SIT() {
		return COD_SIT;
	}

	public void setCOD_SIT(String cOD_SIT) {
		COD_SIT = cOD_SIT;
	}

	public String getSER() {
		return SER;
	}

	public void setSER(String sER) {
		SER = sER;
	}

	public String getSUB() {
		return SUB;
	}

	public void setSUB(String sUB) {
		SUB = sUB;
	}

	public String getNUM_DOC() {
		return NUM_DOC;
	}

	public void setNUM_DOC(String nUM_DOC) {
		NUM_DOC = nUM_DOC;
	}

	public Timestamp getDT_DOC() {
		return DT_DOC;
	}

	public void setDT_DOC(Timestamp dT_DOC) {
		DT_DOC = dT_DOC;
	}

	public Timestamp getDT_A_P() {
		return DT_A_P;
	}

	public void setDT_A_P(Timestamp dT_A_P) {
		DT_A_P = dT_A_P;
	}

	public BigDecimal getVL_DOC() {
		return VL_DOC;
	}

	public void setVL_DOC(BigDecimal vL_DOC) {
		VL_DOC = vL_DOC;
	}

	public BigDecimal getVL_DESC() {
		return VL_DESC;
	}

	public void setVL_DESC(BigDecimal vL_DESC) {
		VL_DESC = vL_DESC;
	}

	public BigDecimal getVL_SERV() {
		return VL_SERV;
	}

	public void setVL_SERV(BigDecimal vL_SERV) {
		VL_SERV = vL_SERV;
	}
	
	public BigDecimal getVL_SERV_NT() {
		return VL_SERV_NT;
	}

	public void setVL_SERV_NT(BigDecimal vL_SERV_NT) {
		VL_SERV_NT = vL_SERV_NT;
	}
	
	public BigDecimal getVL_TERC() {
		return VL_TERC;
	}

	public void setVL_TERC(BigDecimal vL_TERC) {
		VL_TERC = vL_TERC;
	}
	
	public BigDecimal getVL_DA() {
		return VL_DA;
	}

	public void setVL_DA(BigDecimal vL_DA) {
		VL_DA = vL_DA;
	}

	public BigDecimal getVL_BC_ICMS() {
		return VL_BC_ICMS;
	}

	public void setVL_BC_ICMS(BigDecimal vL_BC_ICMS) {
		VL_BC_ICMS = vL_BC_ICMS;
	}

	public BigDecimal getVL_ICMS() {
		return VL_ICMS;
	}

	public void setVL_ICMS(BigDecimal vL_ICMS) {
		VL_ICMS = vL_ICMS;
	}

	public String getCOD_INF() {
		return COD_INF;
	}

	public void setCOD_INF(String cOD_INF) {
		COD_INF = cOD_INF;
	}
	
	public BigDecimal getVL_PIS() {
		return VL_PIS;
	}

	public void setVL_PIS(BigDecimal vL_PIS) {
		VL_PIS = vL_PIS;
	}
	
	public BigDecimal getVL_COFINS() {
		return VL_COFINS;
	}

	public void setVL_COFINS(BigDecimal vL_COFINS) {
		VL_COFINS = vL_COFINS;
	}

	public String getCOD_CTA() {
		return COD_CTA;
	}

	public void setCOD_CTA(String cOD_CTA) {
		COD_CTA = cOD_CTA;
	}
	
	public String getTP_ASSINANTE() {
		return TP_ASSINANTE;
	}

	public void setTP_ASSINANTE(String tP_ASSINANTE) {
		TP_ASSINANTE = tP_ASSINANTE;
	}

	public void addrD590(RD590 rD590) {
		// add linha
		this.rD590.add(rD590);
	}
						
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result + ((COD_MOD == null) ? 0 : COD_MOD.hashCode());
		result = prime * result
				+ ((COD_PART == null) ? 0 : COD_PART.hashCode());
		result = prime * result + ((COD_SIT == null) ? 0 : COD_SIT.hashCode());
		result = prime * result
				+ ((IND_EMIT == null) ? 0 : IND_EMIT.hashCode());
		result = prime * result
				+ ((IND_OPER == null) ? 0 : IND_OPER.hashCode());
		result = prime * result + ((NUM_DOC == null) ? 0 : NUM_DOC.hashCode());
		result = prime * result + ((SER == null) ? 0 : SER.hashCode());
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
		RD500 other = (RD500) obj;
		if (COD_MOD == null) {
			if (other.COD_MOD != null)
				return false;
		} else if (!COD_MOD.equals(other.COD_MOD))
			return false;
		if (COD_PART == null) {
			if (other.COD_PART != null)
				return false;
		} else if (!COD_PART.equals(other.COD_PART))
			return false;
		if (COD_SIT == null) {
			if (other.COD_SIT != null)
				return false;
		} else if (!COD_SIT.equals(other.COD_SIT))
			return false;
		if (IND_EMIT == null) {
			if (other.IND_EMIT != null)
				return false;
		} else if (!IND_EMIT.equals(other.IND_EMIT))
			return false;
		if (IND_OPER == null) {
			if (other.IND_OPER != null)
				return false;
		} else if (!IND_OPER.equals(other.IND_OPER))
			return false;
		if (NUM_DOC == null) {
			if (other.NUM_DOC != null)
				return false;
		} else if (!NUM_DOC.equals(other.NUM_DOC))
			return false;
		if (SER == null) {
			if (other.SER != null)
				return false;
		} else if (!SER.equals(other.SER))
			return false;
		return true;
	}

	/**
	 * Comparador para Collection
	 * 
	 * @see java.util.Comparator#compare(java.lang.Object, java.lang.Object)
	 */
	public int compare(Object o1, Object o2) {
		if (o1 == null) // Depois
			return 1;
		else if (o2 == null)
			return -1; // Antes
		else if (o1 instanceof RD500 && o2 instanceof RD500) {
			RD500 e1 = (RD500) o1;
			RD500 e2 = (RD500) o2;
			//
			if (e1.DT_A_P == null) // Depois
				return 1;
			else if (e2.DT_A_P == null) // Antes
				return -1;

			int compare = e1.DT_A_P.compareTo(e2.DT_A_P);

			if (compare == 0)
				return e1.NUM_DOC.compareTo(e2.NUM_DOC); // Comparar
			else
				return compare;
		} else
			return 0; //
	}

	/**
	 * Comparador para Collection
	 */
	public int compareTo(Object o) {
		return compare(this, o);
	}

} // RD500