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
import java.math.MathContext;
import java.math.RoundingMode;

import org.compiere.util.Env;
import org.idempierelbr.sped.annotation.XMLFieldProperties;
import org.idempierelbr.sped.icmsipi.util.RegSped;


import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;

/**
 * REGISTRO C170: ITENS DO DOCUMENTO (CÓDIGO 01, 1B, 04 e 55).
 * 
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RC170.java, 07/02/2011, 09:39:00, mgrigioni
 */
public class RC170 extends RegSped {

	@XStreamAlias("Id")
	@XStreamAsAttribute
	@XMLFieldProperties(maxSize = 3, id = "NUM_ITEM")
	private Integer NUM_ITEM;

	@XMLFieldProperties(maxSize = 60, id = "COD_ITEM")
	private String COD_ITEM;

	@XMLFieldProperties(id = "DESCR_COMPL", isMandatory = false)
	private String DESCR_COMPL;

	@XMLFieldProperties(scale = 5, id = "QTD")
	private BigDecimal QTD;

	@XMLFieldProperties(maxSize = 6, id = "UNID")
	private String UNID;

	@XMLFieldProperties(id = "VL_ITEM")
	private BigDecimal VL_ITEM;

	@XMLFieldProperties(id = "VL_DESC", isMandatory = false)
	private BigDecimal VL_DESC;

	@XMLFieldProperties(maxSize = 1, minSize = 1, id = "IND_MOV")
	private String IND_MOV;

	@XMLFieldProperties(minSize = 3, maxSize = 3, id = "CST_ICMS", isNumber = true)
	private String CST_ICMS;

	@XMLFieldProperties(minSize = 4, maxSize = 4, id = "CFOP", isNumber = true)
	private String CFOP;

	@XMLFieldProperties(maxSize = 10, id = "COD_NAT", isMandatory = false)
	private String COD_NAT;

	@XMLFieldProperties(id = "VL_BC_ICMS", isMandatory = false)
	private BigDecimal VL_BC_ICMS;

	@XMLFieldProperties(id = "ALIQ_ICMS", maxSize = 6, isMandatory = false)
	private BigDecimal ALIQ_ICMS;

	@XMLFieldProperties(id = "VL_ICMS", isMandatory = false)
	private BigDecimal VL_ICMS;

	@XMLFieldProperties(id = "VL_BC_ICMS_ST", isMandatory = false)
	private BigDecimal VL_BC_ICMS_ST;

	@XMLFieldProperties(id = "ALIQ_ST", isMandatory = false)
	private BigDecimal ALIQ_ST;

	@XMLFieldProperties(id = "VL_ICMS_ST", isMandatory = false)
	private BigDecimal VL_ICMS_ST;

	@XMLFieldProperties(id = "IND_APUR", maxSize = 1, isMandatory = false)
	private String IND_APUR;

	@XMLFieldProperties(id = "CST_IPI", maxSize = 2, isMandatory = false)
	private String CST_IPI;

	@XMLFieldProperties(id = "COD_ENQ", maxSize = 3, isMandatory = false)
	private String COD_ENQ;

	@XMLFieldProperties(id = "VL_BC_IPI", isMandatory = false)
	private BigDecimal VL_BC_IPI;

	@XMLFieldProperties(id = "ALIQ_IPI", maxSize = 6, isMandatory = false)
	private BigDecimal ALIQ_IPI;

	@XMLFieldProperties(id = "VL_IPI", isMandatory = false)
	private BigDecimal VL_IPI;

	@XMLFieldProperties(id = "CST_PIS", maxSize = 2, isMandatory = false)
	private String CST_PIS;

	@XMLFieldProperties(id = "VL_BC_PIS", isMandatory = false)
	private BigDecimal VL_BC_PIS;

	@XMLFieldProperties(id = "ALIQ_PIS", maxSize = 8, isMandatory = false)
	private BigDecimal ALIQ_PIS;

	@XMLFieldProperties(id = "QUANT_BC_PIS", isMandatory = false)
	private BigDecimal QUANT_BC_PIS;

	@XMLFieldProperties(id = "ALIQ_PIS_REAIS", isMandatory = false)
	private BigDecimal ALIQ_PIS_REAIS;

	@XMLFieldProperties(id = "VL_PIS", isMandatory = false)
	private BigDecimal VL_PIS;

	@XMLFieldProperties(id = "CST_COFINS", maxSize = 2, isMandatory = false)
	private String CST_COFINS;

	@XMLFieldProperties(id = "VL_BC_COFINS", isMandatory = false)
	private BigDecimal VL_BC_COFINS;

	@XMLFieldProperties(id = "ALIQ_COFINS", maxSize = 8, isMandatory = false)
	private BigDecimal ALIQ_COFINS;

	@XMLFieldProperties(id = "QUANT_BC_COFINS", isMandatory = false)
	private BigDecimal QUANT_BC_COFINS;

	@XMLFieldProperties(id = "ALIQ_COFINS_REAIS", isMandatory = false)
	private BigDecimal ALIQ_COFINS_REAIS;

	@XMLFieldProperties(id = "VL_COFINS", isMandatory = false)
	private BigDecimal VL_COFINS;

	@XMLFieldProperties(id = "COD_CTA", isMandatory = false)
	private String COD_CTA;

	/*
	 * Variável auxiliar usada para fazer os somatórios do Registro C190.
	 * 
	 * OBS.: Não validar e usar neste registro
	 */
	@XMLFieldProperties(needsValidation = false, id = "VL_OPER", isSPEDField = false)
	private BigDecimal VL_OPER = Env.ZERO;

	@XMLFieldProperties(needsValidation = false, id = "PERCENT_REDUCAO_BC", isSPEDField = false)
	private BigDecimal PERCENT_REDUCAO_BC = Env.ZERO;

	/**
	 * Constructor
	 */
	public RC170() {
		super();
	}

	public BigDecimal getPERCENT_REDUCAO_BC() {
		return PERCENT_REDUCAO_BC;
	}

	public void setPERCENT_REDUCAO_BC(BigDecimal pERCENT_REDUCAO_BC) {
		PERCENT_REDUCAO_BC = pERCENT_REDUCAO_BC;
	}

	public BigDecimal getVL_OPER() {
		return VL_OPER;
	}

	public void setVL_OPR(BigDecimal vL_OPER) {
		VL_OPER = vL_OPER;
	}

	public Integer getNUM_ITEM() {
		return NUM_ITEM;
	}

	public void setNUM_ITEM(Integer nUM_ITEM) {
		NUM_ITEM = nUM_ITEM;
	}

	public String getCOD_ITEM() {
		return COD_ITEM;
	}

	public void setCOD_ITEM(String cOD_ITEM) {
		COD_ITEM = cOD_ITEM;
	}

	public String getDESCR_COMPL() {
		return DESCR_COMPL;
	}

	public void setDESCR_COMPL(String dESCR_COMPL) {
		DESCR_COMPL = dESCR_COMPL;
	}

	public BigDecimal getQTD() {
		return QTD;
	}

	public void setQTD(BigDecimal qTD) {
		QTD = qTD;
	}

	public String getUNID() {
		return UNID;
	}

	public void setUNID(String uNID) {
		UNID = uNID;
	}

	public BigDecimal getVL_ITEM() {
		return VL_ITEM;
	}

	public void setVL_ITEM(BigDecimal vL_ITEM) {
		VL_ITEM = vL_ITEM;
	}

	public BigDecimal getVL_DESC() {
		return VL_DESC;
	}

	public void setVL_DESC(BigDecimal vL_DESC) {
		VL_DESC = vL_DESC;
	}

	public String getIND_MOV() {
		return IND_MOV;
	}

	public void setIND_MOV(String iND_MOV) {
		IND_MOV = iND_MOV;
	}

	public String getCST_ICMS() {
		return CST_ICMS;
	}

	public void setCST_ICMS(String cST_ICMS) {
		CST_ICMS = cST_ICMS;
	}

	public String getCFOP() {
		return CFOP;
	}

	public void setCFOP(String cFOP) {
		CFOP = cFOP;
	}

	public String getCOD_NAT() {
		return COD_NAT;
	}

	public void setCOD_NAT(String cOD_NAT) {
		COD_NAT = cOD_NAT;
	}

	public BigDecimal getVL_BC_ICMS() {
		return VL_BC_ICMS;
	}

	public void setVL_BC_ICMS(BigDecimal vL_BC_ICMS) {
		VL_BC_ICMS = vL_BC_ICMS;
	}

	public BigDecimal getALIQ_ICMS() {
		return ALIQ_ICMS;
	}

	public void setALIQ_ICMS(BigDecimal aLIQ_ICMS) {
		ALIQ_ICMS = aLIQ_ICMS;
	}

	public BigDecimal getVL_ICMS() {
		return VL_ICMS;
	}

	public void setVL_ICMS(BigDecimal vL_ICMS) {
		VL_ICMS = vL_ICMS;
	}

	public BigDecimal getVL_BC_ICMS_ST() {
		return VL_BC_ICMS_ST;
	}

	public void setVL_BC_ICMS_ST(BigDecimal vL_BC_ICMS_ST) {
		VL_BC_ICMS_ST = vL_BC_ICMS_ST;
	}

	public BigDecimal getALIQ_ST() {
		return ALIQ_ST;
	}

	public void setALIQ_ST(BigDecimal aLIQ_ST) {
		ALIQ_ST = aLIQ_ST;
	}

	public BigDecimal getVL_ICMS_ST() {
		return VL_ICMS_ST;
	}

	public void setVL_ICMS_ST(BigDecimal vL_ICMS_ST) {
		VL_ICMS_ST = vL_ICMS_ST;
	}

	public String getIND_APUR() {
		return IND_APUR;
	}

	public void setIND_APUR(String iND_APUR) {
		IND_APUR = iND_APUR;
	}

	public String getCST_IPI() {
		return CST_IPI;
	}

	public void setCST_IPI(String cST_IPI) {
		CST_IPI = cST_IPI;
	}

	public String getCOD_ENQ() {
		return COD_ENQ;
	}

	public void setCOD_ENQ(String cOD_ENQ) {
		COD_ENQ = cOD_ENQ;
	}

	public BigDecimal getVL_BC_IPI() {
		return VL_BC_IPI;
	}

	public void setVL_BC_IPI(BigDecimal vL_BC_IPI) {
		VL_BC_IPI = vL_BC_IPI;
	}

	public BigDecimal getALIQ_IPI() {
		return ALIQ_IPI;
	}

	public void setALIQ_IPI(BigDecimal aLIQ_IPI) {
		ALIQ_IPI = aLIQ_IPI;
	}

	public BigDecimal getVL_IPI() {
		return VL_IPI;
	}

	public void setVL_IPI(BigDecimal vL_IPI) {
		VL_IPI = vL_IPI;
	}

	public String getCST_PIS() {
		return CST_PIS;
	}

	public void setCST_PIS(String cST_PIS) {
		CST_PIS = cST_PIS;
	}

	public BigDecimal getVL_BC_PIS() {
		return VL_BC_PIS;
	}

	public void setVL_BC_PIS(BigDecimal vL_BC_PIS) {
		VL_BC_PIS = vL_BC_PIS;
	}

	public BigDecimal getALIQ_PIS() {
		return ALIQ_PIS;
	}

	public void setALIQ_PIS(BigDecimal aLIQ_PIS) {
		ALIQ_PIS = aLIQ_PIS;
	}

	public BigDecimal getQUANT_BC_PIS() {
		return QUANT_BC_PIS;
	}

	public void setQUANT_BC_PIS(BigDecimal qUANT_BC_PIS) {
		QUANT_BC_PIS = qUANT_BC_PIS;
	}

	public BigDecimal getALIQ_PIS_REAIS() {
		return ALIQ_PIS_REAIS;
	}

	public void setALIQ_PIS_REAIS(BigDecimal aLIQ_PIS_REAIS) {
		ALIQ_PIS_REAIS = aLIQ_PIS_REAIS;
	}

	public BigDecimal getVL_PIS() {
		return VL_PIS;
	}

	public void setVL_PIS(BigDecimal vL_PIS) {
		VL_PIS = vL_PIS;
	}

	public String getCST_COFINS() {
		return CST_COFINS;
	}

	public void setCST_COFINS(String cST_COFINS) {
		CST_COFINS = cST_COFINS;
	}

	public BigDecimal getVL_BC_COFINS() {
		return VL_BC_COFINS;
	}

	public void setVL_BC_COFINS(BigDecimal vL_BC_COFINS) {
		VL_BC_COFINS = vL_BC_COFINS;
	}

	public BigDecimal getALIQ_COFINS() {
		return ALIQ_COFINS;
	}

	public void setALIQ_COFINS(BigDecimal aLIQ_COFINS) {
		ALIQ_COFINS = aLIQ_COFINS;
	}

	public BigDecimal getQUANT_BC_COFINS() {
		return QUANT_BC_COFINS;
	}

	public void setQUANT_BC_COFINS(BigDecimal qUANT_BC_COFINS) {
		QUANT_BC_COFINS = qUANT_BC_COFINS;
	}

	public BigDecimal getALIQ_COFINS_REAIS() {
		return ALIQ_COFINS_REAIS;
	}

	public void setALIQ_COFINS_REAIS(BigDecimal aLIQ_COFINS_REAIS) {
		ALIQ_COFINS_REAIS = aLIQ_COFINS_REAIS;
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

	/**
	 * Valor da redução da Base de Cálculo do ICMS
	 * 
	 * Valor da Linha - Valor da Base de Cálculo do ICMS
	 * 
	 * Obs.: Somente cálcular se houver redução no campo
	 * 
	 * @return
	 */
	public BigDecimal getVL_RED_BC_ICMS() {

		// MathCtx
		MathContext mc = new MathContext(12);

		// valor da base
		BigDecimal baseICMS = getVL_BC_ICMS();

		// redução = 1-(PERC_BC_ICMS/100)
		BigDecimal reduction = Env.ONE.subtract(getPERCENT_REDUCAO_BC().divide(
				Env.ONEHUNDRED, mc), mc);

		// se for negativa ou zero, usar 1
		if (reduction.signum() != 1)
			reduction = Env.ONE;

		// BC/REDUCAO = VALOR DA BASE SEM REDUCAO
		return ((baseICMS.divide(reduction, mc)).subtract(baseICMS, mc)).setScale(
				2, RoundingMode.HALF_UP);
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result
				+ ((NUM_ITEM == null) ? 0 : NUM_ITEM.hashCode());
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
		RC170 other = (RC170) obj;
		if (NUM_ITEM == null) {
			if (other.NUM_ITEM != null)
				return false;
		} else if (!NUM_ITEM.equals(other.NUM_ITEM))
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
		else if (o1 instanceof RC170 && o2 instanceof RC170) {
			RC170 e1 = (RC170) o1;
			RC170 e2 = (RC170) o2;
			//
			if (e1.NUM_ITEM == null) // Depois
				return 1;
			else if (e2.NUM_ITEM == null) // Antes
				return -1;
			else
				return e1.NUM_ITEM.compareTo(e2.NUM_ITEM); // Comparar
		} else
			return 0; //
	}

	/**
	 * Comparador para Collection
	 */
	public int compareTo(Object o) {
		return compare(this, o);
	}

}// RC170