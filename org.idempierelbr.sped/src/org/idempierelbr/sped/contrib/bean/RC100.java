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
import java.util.Set;

import org.idempierelbr.sped.annotation.XMLFieldProperties;
import org.idempierelbr.sped.icmsipi.bean.I_RC100;
import org.idempierelbr.sped.icmsipi.bean.RC170;
import org.idempierelbr.sped.icmsipi.util.RegSped;
import org.idempierelbr.sped.utils.SPEDSet;


import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;
/**
 * 	REGISTRO C100:
 * 		DOCUMENTO - NOTA FISCAL (CÓDIGO 01), 
 * 		NOTA FISCAL AVULSA (CÓDIGO 1B), NOTA FISCAL DE PRODUTOR (CÓDIGO 04) e NF-e (CÓDIGO 55)
 * 
 * 	@author Rogério Feitosa (Kenos, www.kenos.com.br)
 *	@version $Id: RC100.java, v1.0 2013/02/02 11:39:22 AM, rfeitosa Exp $
 */
public class RC100 extends RegSped implements I_RC100
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
	
	@XMLFieldProperties(maxSize = 3, id = "SER", isMandatory=false)
	private String SER;
	
	@XMLFieldProperties(minSize=1, maxSize = 9, id = "NUM_DOC", isNumber=true)
	private String NUM_DOC;
	
	@XMLFieldProperties(minSize=44, maxSize = 44, id = "CHV_NFE", isMandatory=false, isNumber=true)
	private String CHV_NFE;
	
	@XMLFieldProperties(id = "DT_DOC")
	private Timestamp DT_DOC;
	
	@XMLFieldProperties(id = "DT_E_S", isMandatory=false)
	private Timestamp DT_E_S;
	
	@XMLFieldProperties(id = "VL_DOC")
	private BigDecimal VL_DOC;
	
	@XMLFieldProperties(minSize=1, maxSize = 1, id = "IND_PGTO")
	private String IND_PGTO;
	
	@XMLFieldProperties(id = "VL_DESC", isMandatory=false)
	private BigDecimal VL_DESC;
	
	@XMLFieldProperties(id = "VL_ABAT_NT", isMandatory=false)
	private BigDecimal VL_ABAT_NT;
	
	@XMLFieldProperties(id = "VL_MERC", isMandatory=false)
	private BigDecimal VL_MERC;
	
	@XMLFieldProperties(minSize=1, maxSize=1, id = "IND_FRT")
	private String IND_FRT;
	
	@XMLFieldProperties(id = "VL_FRT", isMandatory=false)
	private BigDecimal VL_FRT;
	
	@XMLFieldProperties(id = "VL_SEG", isMandatory=false)
	private BigDecimal VL_SEG;
	
	@XMLFieldProperties(id = "VL_OUT_DA", isMandatory=false)
	private BigDecimal VL_OUT_DA;
	
	@XMLFieldProperties(id = "VL_BC_ICMS", isMandatory=false)
	private BigDecimal VL_BC_ICMS;
	
	@XMLFieldProperties(id = "VL_ICMS", isMandatory=false)
	private BigDecimal VL_ICMS;
	
	@XMLFieldProperties(id = "VL_BC_ICMS_ST", isMandatory=false)
	private BigDecimal VL_BC_ICMS_ST;
	
	@XMLFieldProperties(id = "VL_ICMS_ST", isMandatory=false)
	private BigDecimal VL_ICMS_ST;
	
	@XMLFieldProperties(id = "VL_IPI", isMandatory=false)
	private BigDecimal VL_IPI;
	
	@XMLFieldProperties(id = "VL_PIS", isMandatory=false)
	private BigDecimal VL_PIS;
	
	@XMLFieldProperties(id = "VL_COFINS", isMandatory=false)
	private BigDecimal VL_COFINS;
	
	@XMLFieldProperties(id = "VL_PIS_ST", isMandatory=false)
	private BigDecimal VL_PIS_ST;
	
	@XMLFieldProperties(id = "VL_COFINS_ST", isMandatory=false)
	private BigDecimal VL_COFINS_ST;
	
	@XMLFieldProperties (id = "RC120")
	private Set<RC120> _RC120 = new SPEDSet<RC120>();
	
	@XMLFieldProperties (id = "RC170")
	private Set<RC170> _RC170 = new SPEDSet<RC170>();

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

	public String getNUM_DOC()
	{
		return NUM_DOC;
	}

	public void setNUM_DOC(String nUM_DOC)
	{
		NUM_DOC = nUM_DOC;
	}

	public String getCHV_NFE()
	{
		return CHV_NFE;
	}

	public void setCHV_NFE(String cHV_NFE)
	{
		CHV_NFE = cHV_NFE;
	}

	public Timestamp getDT_DOC()
	{
		return DT_DOC;
	}

	public void setDT_DOC(Timestamp dT_DOC)
	{
		DT_DOC = dT_DOC;
	}

	public Timestamp getDT_E_S()
	{
		return DT_E_S;
	}

	public void setDT_E_S(Timestamp dT_E_S)
	{
		DT_E_S = dT_E_S;
	}

	public BigDecimal getVL_DOC()
	{
		return VL_DOC;
	}

	public void setVL_DOC(BigDecimal vL_DOC)
	{
		VL_DOC = vL_DOC;
	}

	public String getIND_PGTO()
	{
		return IND_PGTO;
	}

	public void setIND_PGTO(String iND_PGTO)
	{
		IND_PGTO = iND_PGTO;
	}

	public BigDecimal getVL_DESC()
	{
		return VL_DESC;
	}

	public void setVL_DESC(BigDecimal vL_DESC)
	{
		VL_DESC = vL_DESC;
	}

	public BigDecimal getVL_ABAT_NT()
	{
		return VL_ABAT_NT;
	}

	public void setVL_ABAT_NT(BigDecimal vL_ABAT_NT)
	{
		VL_ABAT_NT = vL_ABAT_NT;
	}

	public BigDecimal getVL_MERC()
	{
		return VL_MERC;
	}

	public void setVL_MERC(BigDecimal vL_MERC)
	{
		VL_MERC = vL_MERC;
	}

	public String getIND_FRT()
	{
		return IND_FRT;
	}

	public void setIND_FRT(String iND_FRT)
	{
		IND_FRT = iND_FRT;
	}

	public BigDecimal getVL_FRT()
	{
		return VL_FRT;
	}

	public void setVL_FRT(BigDecimal vL_FRT)
	{
		VL_FRT = vL_FRT;
	}

	public BigDecimal getVL_SEG()
	{
		return VL_SEG;
	}

	public void setVL_SEG(BigDecimal vL_SEG)
	{
		VL_SEG = vL_SEG;
	}

	public BigDecimal getVL_OUT_DA()
	{
		return VL_OUT_DA;
	}

	public void setVL_OUT_DA(BigDecimal vL_OUT_DA)
	{
		VL_OUT_DA = vL_OUT_DA;
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

	public BigDecimal getVL_BC_ICMS_ST()
	{
		return VL_BC_ICMS_ST;
	}

	public void setVL_BC_ICMS_ST(BigDecimal vL_BC_ICMS_ST)
	{
		VL_BC_ICMS_ST = vL_BC_ICMS_ST;
	}

	public BigDecimal getVL_ICMS_ST()
	{
		return VL_ICMS_ST;
	}

	public void setVL_ICMS_ST(BigDecimal vL_ICMS_ST)
	{
		VL_ICMS_ST = vL_ICMS_ST;
	}

	public BigDecimal getVL_IPI()
	{
		return VL_IPI;
	}

	public void setVL_IPI(BigDecimal vL_IPI)
	{
		VL_IPI = vL_IPI;
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

	public BigDecimal getVL_PIS_ST()
	{
		return VL_PIS_ST;
	}

	public void setVL_PIS_ST(BigDecimal vL_PIS_ST)
	{
		VL_PIS_ST = vL_PIS_ST;
	}

	public BigDecimal getVL_COFINS_ST()
	{
		return VL_COFINS_ST;
	}

	public void setVL_COFINS_ST(BigDecimal vL_COFINS_ST)
	{
		VL_COFINS_ST = vL_COFINS_ST;
	}

	public Set<RC120> get_RC120()
	{
		return _RC120;
	}

	public Set<RC170> get_RC170()
	{
		return _RC170;
	}

	public void addRC120 (RC120 rC120)
	{
		_RC120.add(rC120);
	}
	
	public void addRC170 (RC170 rC170)
	{
		_RC170.add(rC170);
	}
	
	public Set<RC120> getRC120 ()
	{
		return _RC120;
	}
	
	public Set<RC170> getRC170 ()
	{
		return _RC170;
	}

}	//	RC100
