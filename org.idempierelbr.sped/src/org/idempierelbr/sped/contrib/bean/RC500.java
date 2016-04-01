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
import org.idempierelbr.sped.icmsipi.bean.I_RC500;
import org.idempierelbr.sped.icmsipi.util.RegSped;


import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;
/**
 * 	REGISTRO C500:
 * 		NOTA FISCAL/CONTA DE ENERGIA ELÉTRICA (CÓDIGO 06), NOTA 
 * 		FISCAL/CONTA DE FORNECIMENTO D'ÁGUA CANALIZADA (CÓDIGO 29) E NOTA FISCAL
 * 		CONSUMO FORNECIMENTO DE GÁS (CÓDIGO 28) E NF-e (CÓDIGO 55)– DOCUMENTOS DE
 * 		ENTRADA/AQUISIÇÃO COM CRÉDITO
 * 
 * 	@author Rogério Feitosa (Kenos, www.kenos.com.br)
 *	@version $Id: RC500.java, v1.0 2013/02/02 11:39:22 AM, rfeitosa Exp $
 */
public class RC500 extends RegSped implements I_RC500
{
	@XStreamAlias("Id")
	@XStreamAsAttribute
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
	
	@XMLFieldProperties(id = "DT_ENT", isMandatory=false)
	private Timestamp DT_ENT;
	
	@XMLFieldProperties(id = "VL_DOC")
	private BigDecimal VL_DOC;
	
	@XMLFieldProperties(id = "VL_ICMS", isMandatory=false)
	private BigDecimal VL_ICMS;
	
	@XMLFieldProperties(maxSize=6, id = "COD_INF", isMandatory=false)
	private String COD_INF;
	
	@XMLFieldProperties(id = "VL_PIS", isMandatory=false)
	private BigDecimal VL_PIS;	
	
	@XMLFieldProperties(id = "VL_COFINS", isMandatory=false)
	private BigDecimal VL_COFINS;
	
	@XMLFieldProperties (id = "RC501")
	private Set<RC501> _RC501 = new HashSet<RC501>();
	
	@XMLFieldProperties (id = "RC505")
	private Set<RC505> _RC505 = new HashSet<RC505>();

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

	public Timestamp getDT_ENT()
	{
		return DT_ENT;
	}

	public void setDT_ENT(Timestamp dT_ENT)
	{
		DT_ENT = dT_ENT;
	}

	public BigDecimal getVL_DOC()
	{
		return VL_DOC;
	}

	public void setVL_DOC(BigDecimal vL_DOC)
	{
		VL_DOC = vL_DOC;
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

	public Set<RC501> get_RC501()
	{
		return _RC501;
	}

	public Set<RC505> get_RC505()
	{
		return _RC505;
	}

	public void addC501 (RC501 rC501)
	{
		_RC501.add (rC501);
	}

	public void addC505 (RC505 rC505)
	{
		_RC505.add (rC505);
	}	
}	//	RC500
