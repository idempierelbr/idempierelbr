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
 * 	REGISTRO M610: 
 * 		DETALHAMENTO DA	CONTRIBUIÇÃO PARA	
 *      A SEGURIDADE SOCIAL - COFINS DO PERÍODO
 * 
 * 	@author Priscila Pinheiro (Kenos, www.kenos.com.br)
 *	@version $Id: RM610.java, v1.0 2013/03/14 11:17:42 AM, ppinheiro Exp $
 */
public class RM610 extends RegSped
{
	@XStreamAlias("Id")
	@XStreamAsAttribute
	@XMLFieldProperties(minSize=2, maxSize=2, id = "COD_CONT")
	private String COD_CONT;
	
	@XMLFieldProperties(isMandatory=false, id = "VL_REC_BRT")
	private BigDecimal VL_REC_BRT;
	
	@XMLFieldProperties(isMandatory=false, id = "VL_BC_CONT")
	private BigDecimal VL_BC_CONT;
	
	@XMLFieldProperties(isMandatory=false, id = "ALIQ_COFINS")
	private BigDecimal ALIQ_COFINS;

	@XMLFieldProperties(isMandatory=false, id = "QUANT_BC_COFINS")
	private BigDecimal QUANT_BC_COFINS;

	@XMLFieldProperties(isMandatory=false, id = "ALIQ_COFINS_QUANT")
	private BigDecimal ALIQ_COFINS_QUANT;

	@XMLFieldProperties(isMandatory=false, id = "VL_CONT_APUR")
	private BigDecimal VL_CONT_APUR;

	@XMLFieldProperties(isMandatory=false, id = "VL_AJUS_ACRES")
	private BigDecimal VL_AJUS_ACRES;

	@XMLFieldProperties(isMandatory=false, id = "VL_AJUS_REDUC")
	private BigDecimal VL_AJUS_REDUC;

	@XMLFieldProperties(isMandatory=false, id = "VL_CONT_DIFER")
	private BigDecimal VL_CONT_DIFER;

	@XMLFieldProperties(isMandatory=false, id = "VL_CONT_DIFER_ANT")
	private BigDecimal VL_CONT_DIFER_ANT;

	@XMLFieldProperties(isMandatory=false, id = "VL_CONT_PER")
	private BigDecimal VL_CONT_PER;
	
	@XMLFieldProperties (id = "RM611")
	private RM611 _RM611 = new RM611();

	public String getCOD_CONT()
	{
		return COD_CONT;
	}

	public void setCOD_CONT(String cOD_CONT)
	{
		COD_CONT = cOD_CONT;
	}
	
	public BigDecimal getVL_REC_BRT()
	{
		return VL_REC_BRT;
	}

	public void setVL_REC_BRT(BigDecimal vL_REC_BRT)
	{
		VL_REC_BRT = vL_REC_BRT;
	}
	
	public BigDecimal getVL_BC_CONT()
	{
		return VL_BC_CONT;
	}

	public void setVL_BC_CONT(BigDecimal vL_BC_CONT)
	{
		VL_BC_CONT = vL_BC_CONT;
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
	
	public BigDecimal getVL_CONT_APUR()
	{
		return VL_CONT_APUR;
	}

	public void setVL_CONT_APUR(BigDecimal vL_CONT_APUR)
	{
		VL_CONT_APUR = vL_CONT_APUR;
	}
	
	public BigDecimal getVL_AJUS_ACRES()
	{
		return VL_AJUS_ACRES;
	}

	public void setVL_AJUS_ACRES(BigDecimal vL_AJUS_ACRES)
	{
		VL_AJUS_ACRES = vL_AJUS_ACRES;
	}
	
	public BigDecimal getVL_AJUS_REDUC()
	{
		return VL_AJUS_REDUC;
	}

	public void setVL_AJUS_REDUC(BigDecimal vL_AJUS_REDUC)
	{
		VL_AJUS_REDUC = vL_AJUS_REDUC;
	}
	
	public BigDecimal getVL_CONT_DIFER()
	{
		return VL_CONT_DIFER;
	}

	public void setVL_CONT_DIFER(BigDecimal vL_CONT_DIFER)
	{
		VL_CONT_DIFER = vL_CONT_DIFER;
	}
	
	public BigDecimal getVL_CONT_DIFER_ANT()
	{
		return VL_CONT_DIFER_ANT;
	}

	public void setVL_CONT_DIFER_ANT(BigDecimal vL_CONT_DIFER_ANT)
	{
		VL_CONT_DIFER_ANT = vL_CONT_DIFER_ANT;
	}
	
	public BigDecimal getVL_CONT_PER()
	{
		return VL_CONT_PER;
	}

	public void setVL_CONT_PER(BigDecimal vL_CONT_PER)
	{
		VL_CONT_PER = vL_CONT_PER;
	}
	
	public RM611 get_RM611()
	{
		return _RM611;
	}

	public void addRM611 (RM611 rM611)
	{
		_RM611 = rM611;
	}
}	//	RM610
