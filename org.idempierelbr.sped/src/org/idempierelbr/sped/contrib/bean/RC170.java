/******************************************************************************
 * Copyright (C) 2011 Kenos Assessoria e Consultoria de Sistemas Ltda         *
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
package org.idempierelbr.sped.contrib.bean;

import java.math.BigDecimal;

import org.idempierelbr.sped.annotation.XMLFieldProperties;
import org.idempierelbr.sped.icmsipi.util.RegSped;


import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;
/**
 * 	REGISTRO C170:
 * 		COMPLEMENTO DO DOCUMENTO - ITENS DO DOCUMENTO (CÓDIGOS 01, 1B, 04 e 55)
 * 
 * 	@author Rogério Feitosa (Kenos, www.kenos.com.br)
 *	@version $Id: RC170.java, v1.0 2013/02/02 11:39:22 AM, rfeitosa Exp $
 */
public class RC170 extends RegSped
{
	@XStreamAlias("Id")
	@XStreamAsAttribute
	@XMLFieldProperties(minSize=1, maxSize = 3, id = "NUM_ITEM", isNumber=true)
	private Integer NUM_ITEM;
		
	@XMLFieldProperties(minSize=1, maxSize = 10, id = "COD_ITEM")
	private String COD_ITEM;
	
	@XMLFieldProperties(id = "DESCR_COMPL", isMandatory=false)
	private String DESCR_COMPL;
	
	@XMLFieldProperties(id = "QTD", isMandatory=false, scale=5)
	private BigDecimal QTD;
	
	@XMLFieldProperties(maxSize = 6, id = "UNID", isMandatory=false)
	private String UNID;
	
	@XMLFieldProperties(id = "VL_ITEM")
	private BigDecimal VL_ITEM;
	
	@XMLFieldProperties(id = "VL_DESC", isMandatory=false)
	private BigDecimal VL_DESC;
	
	@XMLFieldProperties(maxSize=1, id = "IND_MOV", isMandatory=false)
	private String IND_MOV;
	
	@XMLFieldProperties(minSize=3, maxSize=3, id = "CST_ICMS", isMandatory=false, isNumber=true)
	private String CST_ICMS;
	
	@XMLFieldProperties(minSize=4, maxSize=4, id = "CFOP", isNumber=true)
	private String CFOP;
	
	@XMLFieldProperties(maxSize=10, id = "COD_NAT", isMandatory=false, isNumber = true)
	private String COD_NAT;
	
	@XMLFieldProperties(id = "VL_BC_ICMS", isMandatory=false)
	private BigDecimal VL_BC_ICMS;
	
	@XMLFieldProperties(id = "ALIQ_ICMS", isMandatory=false)
	private BigDecimal ALIQ_ICMS;
	
	@XMLFieldProperties(id = "VL_ICMS", isMandatory=false)
	private BigDecimal VL_ICMS;
	
	@XMLFieldProperties(id = "VL_BC_ICMS_ST", isMandatory=false)
	private BigDecimal VL_BC_ICMS_ST;
	
	@XMLFieldProperties(id = "ALIQ_ST", isMandatory=false)
	private BigDecimal ALIQ_ST;
	
	@XMLFieldProperties(id = "VL_ICMS_ST", isMandatory=false)
	private BigDecimal VL_ICMS_ST;
	
	@XMLFieldProperties(minSize=1, maxSize=1, id = "IND_APUR", isMandatory=false)
	private String IND_APUR;
	
	@XMLFieldProperties(minSize=2, maxSize=2, id = "CST_IPI", isMandatory=false)
	private String CST_IPI;
	
	@XMLFieldProperties(minSize=3, maxSize=3, id = "COD_ENQ", isMandatory=false)
	private String COD_ENQ;
	
	@XMLFieldProperties(id = "VL_BC_IPI", isMandatory=false)
	private BigDecimal VL_BC_IPI;
	
	@XMLFieldProperties(id = "ALIQ_IPI", isMandatory=false)
	private BigDecimal ALIQ_IPI;
	
	@XMLFieldProperties(id = "VL_IPI", isMandatory=false)
	private BigDecimal VL_IPI;
	
	@XMLFieldProperties(minSize=2, maxSize=2, id = "CST_PIS", isNumber=true)
	private String CST_PIS;
	
	@XMLFieldProperties(id = "VL_BC_PIS", isMandatory=false)
	private BigDecimal VL_BC_PIS;
	
	@XMLFieldProperties(id = "ALIQ_PIS", scale=4, isMandatory=false)
	private BigDecimal ALIQ_PIS;
	
	@XMLFieldProperties(id = "QUANT_BC_PIS", scale=3, isMandatory=false)
	private String QUANT_BC_PIS;
	
	@XMLFieldProperties(id = "ALIQ_PIS_QUANT", scale=4, isMandatory=false)
	private BigDecimal ALIQ_PIS_QUANT;
	
	@XMLFieldProperties(id = "VL_PIS", isMandatory=false)
	private BigDecimal VL_PIS;
	
	@XMLFieldProperties(minSize=2, maxSize=2, id = "CST_COFINS", isNumber=true)
	private String CST_COFINS;
	
	@XMLFieldProperties(id = "VL_BC_COFINS", isMandatory=false)
	private BigDecimal VL_BC_COFINS;
	
	@XMLFieldProperties(id = "ALIQ_COFINS", isMandatory=false, scale=4)
	private BigDecimal ALIQ_COFINS;
	
	@XMLFieldProperties(minSize=3, maxSize=3, id = "QUANT_BC_COFINS", scale=3, isMandatory=false, isNumber=true)
	private BigDecimal QUANT_BC_COFINS;
	
	@XMLFieldProperties(id = "ALIQ_COFINS_QUANT", scale=4, isMandatory=false)
	private BigDecimal ALIQ_COFINS_QUANT;
	
	@XMLFieldProperties(id = "VL_COFINS", isMandatory=false)
	private BigDecimal VL_COFINS;
	
	@XMLFieldProperties(maxSize=60, id = "COD_CTA", isMandatory=false)
	private String COD_CTA;

	public Integer getNUM_ITEM()
	{
		return NUM_ITEM;
	}

	public void setNUM_ITEM(Integer nUM_ITEM)
	{
		NUM_ITEM = nUM_ITEM;
	}

	public String getCOD_ITEM()
	{
		return COD_ITEM;
	}

	public void setCOD_ITEM(String cOD_ITEM)
	{
		COD_ITEM = cOD_ITEM;
	}

	public String getDESCR_COMPL()
	{
		return DESCR_COMPL;
	}

	public void setDESCR_COMPL(String dESCR_COMPL)
	{
		DESCR_COMPL = dESCR_COMPL;
	}

	public BigDecimal getQTD()
	{
		return QTD;
	}

	public void setQTD(BigDecimal qTD)
	{
		QTD = qTD;
	}

	public String getUNID()
	{
		return UNID;
	}

	public void setUNID(String uNID)
	{
		UNID = uNID;
	}

	public BigDecimal getVL_ITEM()
	{
		return VL_ITEM;
	}

	public void setVL_ITEM(BigDecimal vL_ITEM)
	{
		VL_ITEM = vL_ITEM;
	}

	public BigDecimal getVL_DESC()
	{
		return VL_DESC;
	}

	public void setVL_DESC(BigDecimal vL_DESC)
	{
		VL_DESC = vL_DESC;
	}

	public String getIND_MOV()
	{
		return IND_MOV;
	}

	public void setIND_MOV(String iND_MOV)
	{
		IND_MOV = iND_MOV;
	}

	public String getCST_ICMS()
	{
		return CST_ICMS;
	}

	public void setCST_ICMS(String cST_ICMS)
	{
		CST_ICMS = cST_ICMS;
	}

	public String getCFOP()
	{
		return CFOP;
	}

	public void setCFOP(String cFOP)
	{
		CFOP = cFOP;
	}

	public String getCOD_NAT()
	{
		return COD_NAT;
	}

	public void setCOD_NAT(String cOD_NAT)
	{
		COD_NAT = cOD_NAT;
	}

	public BigDecimal getVL_BC_ICMS()
	{
		return VL_BC_ICMS;
	}

	public void setVL_BC_ICMS(BigDecimal vL_BC_ICMS)
	{
		VL_BC_ICMS = vL_BC_ICMS;
	}

	public BigDecimal getALIQ_ICMS()
	{
		return ALIQ_ICMS;
	}

	public void setALIQ_ICMS(BigDecimal aLIQ_ICMS)
	{
		ALIQ_ICMS = aLIQ_ICMS;
	}

	public BigDecimal getVL_ICMS()
	{
		return VL_ICMS;
	}

	public void setVL_ICMS(BigDecimal vL_ICMS)
	{
		VL_ICMS = vL_ICMS;
	}

	public BigDecimal getVL_BC_ICMS_ST()
	{
		return VL_BC_ICMS_ST;
	}

	public void setVL_BC_ICMS_ST(BigDecimal vL_BC_ICMS_ST)
	{
		VL_BC_ICMS_ST = vL_BC_ICMS_ST;
	}

	public BigDecimal getALIQ_ST()
	{
		return ALIQ_ST;
	}

	public void setALIQ_ST(BigDecimal aLIQ_ST)
	{
		ALIQ_ST = aLIQ_ST;
	}

	public BigDecimal getVL_ICMS_ST()
	{
		return VL_ICMS_ST;
	}

	public void setVL_ICMS_ST(BigDecimal vL_ICMS_ST)
	{
		VL_ICMS_ST = vL_ICMS_ST;
	}

	public String getIND_APUR()
	{
		return IND_APUR;
	}

	public void setIND_APUR(String iND_APUR)
	{
		IND_APUR = iND_APUR;
	}

	public String getCST_IPI()
	{
		return CST_IPI;
	}

	public void setCST_IPI(String cST_IPI)
	{
		CST_IPI = cST_IPI;
	}

	public String getCOD_ENQ()
	{
		return COD_ENQ;
	}

	public void setCOD_ENQ(String cOD_ENQ)
	{
		COD_ENQ = cOD_ENQ;
	}

	public BigDecimal getVL_BC_IPI()
	{
		return VL_BC_IPI;
	}

	public void setVL_BC_IPI(BigDecimal vL_BC_IPI)
	{
		VL_BC_IPI = vL_BC_IPI;
	}

	public BigDecimal getALIQ_IPI()
	{
		return ALIQ_IPI;
	}

	public void setALIQ_IPI(BigDecimal aLIQ_IPI)
	{
		ALIQ_IPI = aLIQ_IPI;
	}

	public BigDecimal getVL_IPI()
	{
		return VL_IPI;
	}

	public void setVL_IPI(BigDecimal vL_IPI)
	{
		VL_IPI = vL_IPI;
	}

	public String getCST_PIS()
	{
		return CST_PIS;
	}

	public void setCST_PIS(String cST_PIS)
	{
		CST_PIS = cST_PIS;
	}

	public BigDecimal getVL_BC_PIS()
	{
		return VL_BC_PIS;
	}

	public void setVL_BC_PIS(BigDecimal vL_BC_PIS)
	{
		VL_BC_PIS = vL_BC_PIS;
	}

	public BigDecimal getALIQ_PIS()
	{
		return ALIQ_PIS;
	}

	public void setALIQ_PIS(BigDecimal aLIQ_PIS)
	{
		ALIQ_PIS = aLIQ_PIS;
	}

	public String getQUANT_BC_PIS()
	{
		return QUANT_BC_PIS;
	}

	public void setQUANT_BC_PIS(String qUANT_BC_PIS)
	{
		QUANT_BC_PIS = qUANT_BC_PIS;
	}

	public BigDecimal getALIQ_PIS_QUANT()
	{
		return ALIQ_PIS_QUANT;
	}

	public void setALIQ_PIS_QUANT(BigDecimal aLIQ_PIS_QUANT)
	{
		ALIQ_PIS_QUANT = aLIQ_PIS_QUANT;
	}

	public BigDecimal getVL_PIS()
	{
		return VL_PIS;
	}

	public void setVL_PIS(BigDecimal vL_PIS)
	{
		VL_PIS = vL_PIS;
	}

	public String getCST_COFINS()
	{
		return CST_COFINS;
	}

	public void setCST_COFINS(String cST_COFINS)
	{
		CST_COFINS = cST_COFINS;
	}

	public BigDecimal getVL_BC_COFINS()
	{
		return VL_BC_COFINS;
	}

	public void setVL_BC_COFINS(BigDecimal vL_BC_COFINS)
	{
		VL_BC_COFINS = vL_BC_COFINS;
	}

	public BigDecimal getALIQ_COFINS()
	{
		return ALIQ_COFINS;
	}

	public void setALIQ_COFINS(BigDecimal aLIQ_COFINS)
	{
		ALIQ_COFINS = aLIQ_COFINS;
	}

	public BigDecimal getQUANT_BC_COFINS()
	{
		return QUANT_BC_COFINS;
	}

	public void setQUANT_BC_COFINS(BigDecimal qUANT_BC_COFINS)
	{
		QUANT_BC_COFINS = qUANT_BC_COFINS;
	}

	public BigDecimal getALIQ_COFINS_QUANT()
	{
		return ALIQ_COFINS_QUANT;
	}

	public void setALIQ_COFINS_QUANT(BigDecimal aLIQ_COFINS_QUANT)
	{
		ALIQ_COFINS_QUANT = aLIQ_COFINS_QUANT;
	}

	public BigDecimal getVL_COFINS()
	{
		return VL_COFINS;
	}

	public void setVL_COFINS(BigDecimal vL_COFINS)
	{
		VL_COFINS = vL_COFINS;
	}

	public String getCOD_CTA()
	{
		return COD_CTA;
	}

	public void setCOD_CTA(String cOD_CTA)
	{
		COD_CTA = cOD_CTA;
	}
}	//	RC170
