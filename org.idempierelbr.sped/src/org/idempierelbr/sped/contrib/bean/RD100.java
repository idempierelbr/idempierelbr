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
import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

import org.idempierelbr.sped.annotation.XMLFieldProperties;
import org.idempierelbr.sped.icmsipi.bean.I_RD100;
import org.idempierelbr.sped.icmsipi.util.RegSped;


import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;
/**
 * 	REGISTRO D100:
 * 		AQUISIÇÃO DE SERVIÇOS DE TRANSPORTE - NOTA FISCAL DE SERVIÇO
 * 		DE TRANSPORTE (CÓDIGO 07) E CONHECIMENTOS DE TRANSPORTE RODOVIÁRIO DE
 * 		CARGAS (CÓDIGO 08), CONHECIMENTO DE TRANSPORTE DE CARGAS AVULSO (CÓDIGO8B),
 * 		AQUAVIÁRIO DE CARGAS (CÓDIGO 09), AÉREO (CÓDIGO 10), FERROVIÁRIO DE
 * 		CARGAS (CÓDIGO 11), MULTIMODAL DE CARGAS (CÓDIGO 26), NOTA FISCAL DE
 * 		TRANSPORTE FERROVIÁRIO DE CARGA (CÓDIGO 27) E CONHECIMENTO DE
 * 		TRANSPORTE ELETRÔNICO – CT-e (CÓDIGO 57)
 * 
 * 	@author Rogério Feitosa (Kenos, www.kenos.com.br)
 *	@version $Id: RD100.java, v1.0 2013/02/02 11:39:22 AM, rfeitosa Exp $
 */
public class RD100 extends RegSped implements I_RD100
{
	@XStreamAlias("Id")
	@XStreamAsAttribute
	@XMLFieldProperties(minSize=1, maxSize = 1, id = "IND_OPER")
	private String IND_OPER;
		
	@XMLFieldProperties(minSize=1, maxSize = 1, id = "IND_EMIT")
	private String IND_EMIT;
	
	@XMLFieldProperties(minSize=1, maxSize = 60, id = "COD_PART")
	private String COD_PART;
	
	@XMLFieldProperties(minSize=2, maxSize = 2, id = "COD_MOD")
	private String COD_MOD;
	
	@XMLFieldProperties(minSize=2, maxSize = 2, id = "COD_SIT", isNumber=true)
	private String COD_SIT;
	
	@XMLFieldProperties(maxSize = 4, id = "SER", isMandatory=false)
	private String SER;
	
	@XMLFieldProperties(maxSize = 3, id = "SUB", isMandatory=false)
	private String SUB;
	
	@XMLFieldProperties(minSize=1, maxSize = 9, id = "NUM_DOC", isNumber=true)
	private String NUM_DOC;
	
	@XMLFieldProperties(minSize=44, maxSize = 44, id = "CHV_CTE", isMandatory=false, isNumber=true)
	private String CHV_CTE;
	
	@XMLFieldProperties(id = "DT_DOC")
	private Timestamp DT_DOC;
	
	@XMLFieldProperties(id = "DT_A_P", isMandatory=false)
	private Timestamp DT_A_P;
	
	@XMLFieldProperties(minSize=1, maxSize = 1, id = "TP_CT_e", isMandatory=false, isNumber=true)
	private String TP_CT_e;
	
	@XMLFieldProperties(minSize=44, maxSize = 44, id = "CHV_CTE_REF", isMandatory=false, isNumber=true)
	private String CHV_CTE_REF;
	
	@XMLFieldProperties(id = "VL_DOC")
	private BigDecimal VL_DOC;
	
	@XMLFieldProperties(id = "VL_DESC", isMandatory=false)
	private BigDecimal VL_DESC;
	
	@XMLFieldProperties(minSize=1, maxSize=1, id = "IND_FRT")
	private String IND_FRT;
	
	@XMLFieldProperties(id = "VL_SERV"	)
	private BigDecimal VL_SERV;
	
	@XMLFieldProperties(id = "VL_BC_ICMS", isMandatory=false)
	private BigDecimal VL_BC_ICMS;
	
	@XMLFieldProperties(id = "VL_ICMS", isMandatory=false)
	private BigDecimal VL_ICMS;
	
	@XMLFieldProperties(id = "VL_NT", isMandatory=false)
	private BigDecimal VL_NT;
	
	@XMLFieldProperties(maxSize = 6, id = "COD_INF", isMandatory=false)
	private String COD_INF;
	
	@XMLFieldProperties(maxSize = 60, id = "COD_CTA", isMandatory=false)
	private String COD_CTA;
	
	@XMLFieldProperties (id = "RD101")
	private Set<RD101> _RD101 = new HashSet<RD101>();
	
	@XMLFieldProperties (id = "RD105")
	private Set<RD105> _RD105 = new HashSet<RD105>();

	public String getIND_OPER()
	{
		return IND_OPER;
	}

	public void setIND_OPER(String iND_OPER)
	{
		IND_OPER = iND_OPER;
	}

	public String getIND_EMIT()
	{
		return IND_EMIT;
	}

	public void setIND_EMIT(String iND_EMIT)
	{
		IND_EMIT = iND_EMIT;
	}

	public String getCOD_PART()
	{
		return COD_PART;
	}

	public void setCOD_PART(String cOD_PART)
	{
		COD_PART = cOD_PART;
	}

	public String getCOD_MOD()
	{
		return COD_MOD;
	}

	public void setCOD_MOD(String cOD_MOD)
	{
		COD_MOD = cOD_MOD;
	}

	public String getCOD_SIT()
	{
		return COD_SIT;
	}

	public void setCOD_SIT(String cOD_SIT)
	{
		COD_SIT = cOD_SIT;
	}

	public String getSER()
	{
		return SER;
	}

	public void setSER(String sER)
	{
		SER = sER;
	}

	public String getSUB()
	{
		return SUB;
	}

	public void setSUB(String sUB)
	{
		SUB = sUB;
	}

	public String getNUM_DOC()
	{
		return NUM_DOC;
	}

	public void setNUM_DOC(String nUM_DOC)
	{
		NUM_DOC = nUM_DOC;
	}

	public String getCHV_CTE()
	{
		return CHV_CTE;
	}

	public void setCHV_CTE(String cHV_CTE)
	{
		CHV_CTE = cHV_CTE;
	}

	public Timestamp getDT_DOC()
	{
		return DT_DOC;
	}

	public void setDT_DOC(Timestamp dT_DOC)
	{
		DT_DOC = dT_DOC;
	}

	public Timestamp getDT_A_P()
	{
		return DT_A_P;
	}

	public void setDT_A_P(Timestamp dT_A_P)
	{
		DT_A_P = dT_A_P;
	}

	public String getTP_CT_e()
	{
		return TP_CT_e;
	}

	public void setTP_CT_e(String tP_CT_e)
	{
		TP_CT_e = tP_CT_e;
	}

	public String getCHV_CTE_REF()
	{
		return CHV_CTE_REF;
	}

	public void setCHV_CTE_REF(String cHV_CTE_REF)
	{
		CHV_CTE_REF = cHV_CTE_REF;
	}

	public BigDecimal getVL_DOC()
	{
		return VL_DOC;
	}

	public void setVL_DOC(BigDecimal vL_DOC)
	{
		VL_DOC = vL_DOC;
	}

	public BigDecimal getVL_DESC()
	{
		return VL_DESC;
	}

	public void setVL_DESC(BigDecimal vL_DESC)
	{
		VL_DESC = vL_DESC;
	}

	public String getIND_FRT()
	{
		return IND_FRT;
	}

	public void setIND_FRT(String iND_FRT)
	{
		IND_FRT = iND_FRT;
	}

	public BigDecimal getVL_SERV()
	{
		return VL_SERV;
	}

	public void setVL_SERV(BigDecimal vL_SERV)
	{
		VL_SERV = vL_SERV;
	}

	public BigDecimal getVL_BC_ICMS()
	{
		return VL_BC_ICMS;
	}

	public void setVL_BC_ICMS(BigDecimal vL_BC_ICMS)
	{
		VL_BC_ICMS = vL_BC_ICMS;
	}

	public BigDecimal getVL_ICMS()
	{
		return VL_ICMS;
	}

	public void setVL_ICMS(BigDecimal vL_ICMS)
	{
		VL_ICMS = vL_ICMS;
	}

	public BigDecimal getVL_NT()
	{
		return VL_NT;
	}

	public void setVL_NT(BigDecimal vL_NT)
	{
		VL_NT = vL_NT;
	}

	public String getCOD_INF()
	{
		return COD_INF;
	}

	public void setCOD_INF(String cOD_INF)
	{
		COD_INF = cOD_INF;
	}

	public String getCOD_CTA()
	{
		return COD_CTA;
	}

	public void setCOD_CTA(String cOD_CTA)
	{
		COD_CTA = cOD_CTA;
	}

	public Set<RD101> get_RD101()
	{
		return _RD101;
	}

	public Set<RD105> get_RD105()
	{
		return _RD105;
	}

	public void addD101(RD101 reg)
	{
		_RD101.add (reg);		
	}

	public void addD105(RD105 reg)
	{
		_RD105.add (reg);		
	}
}	//	RD100
