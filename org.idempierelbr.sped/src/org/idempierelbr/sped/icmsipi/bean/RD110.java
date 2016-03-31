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
 * REGISTRO D110: ITENS DO DOCUMENTO - NOTA FISCAL DE SERVIÇOS DE TRANSPORTE
 * (CÓDIGO 07)
 * 
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RD110.java, 10/02/2011, 17:04:00, mgrigioni
 */
public class RD110 extends RegSped {

	@XStreamAlias("Id")
	@XStreamAsAttribute
	@XMLFieldProperties(id = "NUM_ITEM", maxSize = 3)
	private Integer NUM_ITEM;
	
	@XMLFieldProperties(id = "COD_ITEM", maxSize = 60)
	private String COD_ITEM;
	
	@XMLFieldProperties(id = "VL_SERV")
	private BigDecimal VL_SERV;
	
	@XMLFieldProperties(id = "VL_OUT", isMandatory = false)
	private BigDecimal VL_OUT;

	/*
	 * Valores para apuração no D190
	 * 
	 * Obs.: Não devem ser validados pelo annotation
	 */
	@XMLFieldProperties(needsValidation = false, isSPEDField = false, id = "CST_ICMS", isNumber = true)
	private String CST_ICMS;

	@XMLFieldProperties(needsValidation = false, isSPEDField = false, id = "CFOP", isNumber = true)
	private String CFOP;

	@XMLFieldProperties(needsValidation = false, isSPEDField = false, id = "VL_BC_ICMS")
	private BigDecimal ALIQ_ICMS;

	@XMLFieldProperties(needsValidation = false, isSPEDField = false, id = "VL_BC_ICMS")
	private BigDecimal VL_BC_ICMS;

	@XMLFieldProperties(needsValidation = false, isSPEDField = false, id = "VL_ICMS")
	private BigDecimal VL_ICMS;

	@XMLFieldProperties(needsValidation = false, isSPEDField = false, id = "PERCENT_REDUCAO_BC")
	private BigDecimal PERCENT_REDUCAO_BC = Env.ZERO;

	@XMLFieldProperties(needsValidation = false, isSPEDField = false, id = "VL_OPR")
	private BigDecimal VL_OPR = Env.ZERO;

	/**
	 * Constructor
	 */
	public RD110() {
		super();
	}// RD110

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

	public BigDecimal getALIQ_ICMS() {
		return ALIQ_ICMS;
	}

	public void setALIQ_ICMS(BigDecimal aLIQ_ICMS) {
		ALIQ_ICMS = aLIQ_ICMS;
	}

	public BigDecimal getVL_OPR() {
		return VL_OPR;
	}

	public void setVL_OPR(BigDecimal vL_OPR) {
		VL_OPR = vL_OPR;
	}

	public BigDecimal getPERCENT_REDUCAO_BC() {
		return PERCENT_REDUCAO_BC;
	}

	public void setPERCENT_REDUCAO_BC(BigDecimal pERCENT_REDUCAO_BC) {
		PERCENT_REDUCAO_BC = pERCENT_REDUCAO_BC;
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

	public BigDecimal getVL_SERV() {
		return VL_SERV;
	}

	public void setVL_SERV(BigDecimal vL_SERV) {
		VL_SERV = vL_SERV;
	}

	public BigDecimal getVL_OUT() {
		return VL_OUT;
	}

	public void setVL_OUT(BigDecimal vL_OUT) {
		VL_OUT = vL_OUT;
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

		// mc
		MathContext mc = new MathContext(12);
		
		// valor da base
		BigDecimal baseICMS = getVL_BC_ICMS();

		// redução = 1-(PERC_BC_ICMS/100)
		BigDecimal reduction = Env.ONE.subtract(getPERCENT_REDUCAO_BC().divide(Env.ONEHUNDRED, mc));

		// se for negativa ou zero, usar 1
		if (reduction.signum() != 1)
			reduction = Env.ONE;

		// BC/REDUCAO = VALOR DA BASE SEM REDUCAO
		return ((baseICMS.divide(reduction, mc)).subtract(baseICMS)).setScale(2, RoundingMode.HALF_UP);
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
		RD110 other = (RD110) obj;
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
		else if (o1 instanceof RD110 && o2 instanceof RD110) {
			RD110 e1 = (RD110) o1;
			RD110 e2 = (RD110) o2;
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

}// RD110