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
import org.idempierelbr.sped.icmsipi.bean.I_RD500;
import org.idempierelbr.sped.icmsipi.util.RegSped;


import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;
/**
 * 	REGISTRO D500:
 * 		NOTA FISCAL DE SERVIÇO DE COMUNICAÇÃO (CÓDIGO 21) E
 * 		NOTA FISCAL DE SERVIÇO DE TELECOMUNICAÇÃO (CÓDIGO 22) –
 * 		DOCUMENTOS DE AQUISIÇÃO COM DIREITO A CRÉDITO
 * 
 * 	@author Rogério Feitosa (Kenos, www.kenos.com.br)
 *	@version $Id: RD500.java, v1.0 2013/02/02 11:39:22 AM, rfeitosa Exp $
 */
public class RD500 extends RegSped implements I_RD500
{
	@XStreamAlias("Id")
	@XStreamAsAttribute
	@XMLFieldProperties(minSize=1, maxSize = 1, id = "IND_OPER")
	private String IND_OPER;
		
	@XMLFieldProperties(minSize=1, maxSize = 1, id = "IND_EMIT")
	private String IND_EMIT;
	
	@XMLFieldProperties(maxSize = 60, id = "COD_PART")
	private String COD_PART;
		
	@XMLFieldProperties(minSize=2, maxSize = 2, id = "COD_MOD")
	private String COD_MOD;
	
	@XMLFieldProperties(minSize=2, maxSize = 2, id = "COD_SIT", isNumber=true)
	private String COD_SIT;
	
	@XMLFieldProperties(maxSize = 4, id = "SER", isMandatory=false)
	private String SER;
	
	@XMLFieldProperties(maxSize = 3, id = "SUB", isMandatory=false, isNumber=true)
	private String SUB;
	
	@XMLFieldProperties(minSize=1, maxSize = 9, id = "NUM_DOC", isNumber=true)
	private String NUM_DOC;
	
	@XMLFieldProperties(id = "DT_DOC")
	private Timestamp DT_DOC;
	
	@XMLFieldProperties(id = "DT_A_P")
	private Timestamp DT_A_P;
	
	@XMLFieldProperties(id = "VL_DOC")
	private BigDecimal VL_DOC;
	
	@XMLFieldProperties(id = "VL_DESC", isMandatory=false)
	private BigDecimal VL_DESC;
	
	@XMLFieldProperties(id = "VL_SERV")
	private BigDecimal VL_SERV;
	
	@XMLFieldProperties(id = "VL_SERV_NT", isMandatory=false)
	private BigDecimal VL_SERV_NT;
	
	@XMLFieldProperties(id = "VL_TERC", isMandatory=false)
	private BigDecimal VL_TERC;
	
	@XMLFieldProperties(id = "VL_DA", isMandatory=false)
	private BigDecimal VL_DA;
	
	@XMLFieldProperties(id = "VL_BC_ICMS", isMandatory=false)
	private BigDecimal VL_BC_ICMS;
	
	@XMLFieldProperties(id = "VL_ICMS", isMandatory=false)
	private BigDecimal VL_ICMS;
	
	@XMLFieldProperties(maxSize=6, id = "COD_INF", isMandatory=false)
	private String COD_INF;
	
	@XMLFieldProperties(id = "VL_PIS", isMandatory=false)
	private BigDecimal VL_PIS;	
	
	@XMLFieldProperties(id = "VL_COFINS", isMandatory=false)
	private BigDecimal VL_COFINS;
	
	@XMLFieldProperties (id = "RD501")
	private Set<RD501> _RD501 = new HashSet<RD501>();
	
	@XMLFieldProperties (id = "RD505")
	private Set<RD505> _RD505 = new HashSet<RD505>();

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

	public BigDecimal getVL_SERV()
	{
		return VL_SERV;
	}

	public void setVL_SERV(BigDecimal vL_SERV)
	{
		VL_SERV = vL_SERV;
	}

	public BigDecimal getVL_SERV_NT()
	{
		return VL_SERV_NT;
	}

	public void setVL_SERV_NT(BigDecimal vL_SERV_NT)
	{
		VL_SERV_NT = vL_SERV_NT;
	}

	public BigDecimal getVL_TERC()
	{
		return VL_TERC;
	}

	public void setVL_TERC(BigDecimal vL_TERC)
	{
		VL_TERC = vL_TERC;
	}

	public BigDecimal getVL_DA()
	{
		return VL_DA;
	}

	public void setVL_DA(BigDecimal vL_DA)
	{
		VL_DA = vL_DA;
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

	public String getCOD_INF()
	{
		return COD_INF;
	}

	public void setCOD_INF(String cOD_INF)
	{
		COD_INF = cOD_INF;
	}

	public BigDecimal getVL_PIS()
	{
		return VL_PIS;
	}

	public void setVL_PIS(BigDecimal vL_PIS)
	{
		VL_PIS = vL_PIS;
	}

	public BigDecimal getVL_COFINS()
	{
		return VL_COFINS;
	}

	public void setVL_COFINS(BigDecimal vL_COFINS)
	{
		VL_COFINS = vL_COFINS;
	}

	public Set<RD501> get_RD501()
	{
		return _RD501;
	}

	public Set<RD505> get_RD505()
	{
		return _RD505;
	}

	public void addD501(RD501 rD501)
	{
		_RD501.add(rD501);
	}

	public void addD505(RD505 reg)
	{
		_RD505.add (reg);
	}
}	//	RD500
