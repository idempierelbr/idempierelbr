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
 * 	REGISTRO M211: 
 * 		DETALHAMENTO DA	CONTRIBUIÇÃO PARA	
 *      A SEGURIDADE SOCIAL - PIS DO PERÍODO
 * 
 * 	@author Priscila Pinheiro (Kenos, www.kenos.com.br)
 *	@version $Id: RM211.java, v1.0 2013/03/14 11:17:42 AM, ppinheiro Exp $
 */
public class RM211 extends RegSped
{
	@XStreamAlias("Id")
	@XStreamAsAttribute
	@XMLFieldProperties(minSize=2, maxSize=2, id = "IND_TIP_COOP")
	private String IND_TIP_COOP ;
	
	@XMLFieldProperties(isMandatory=true, id = "VL_BC_CONT_ANT_EXC_COOP")
	private BigDecimal VL_BC_CONT_ANT_EXC_COOP ;
	
	@XMLFieldProperties(isMandatory=false, id = "VL_EXC_COOP_GER")
	private BigDecimal VL_EXC_COOP_GER;
	
	@XMLFieldProperties(isMandatory=false, id = "VL_EXC_ESP_COOP")
	private BigDecimal VL_EXC_ESP_COOP;

	@XMLFieldProperties(isMandatory=true, id = "VL_BC_CONT")
	private BigDecimal VL_BC_CONT;

	public String getIND_TIP_COOP()
	{
		return IND_TIP_COOP;
	}

	public void setIND_TIP_COOP(String iND_TIP_COOP)
	{
		IND_TIP_COOP = iND_TIP_COOP;
	}
	
	public BigDecimal getVL_BC_CONT_ANT_EXC_COOP()
	{
		return VL_BC_CONT_ANT_EXC_COOP;
	}

	public void setVL_BC_CONT_ANT_EXC_COOP(BigDecimal vL_BC_CONT_ANT_EXC_COOP)
	{
		VL_BC_CONT_ANT_EXC_COOP = vL_BC_CONT_ANT_EXC_COOP;
	}
	
	public BigDecimal getVL_BC_CONT()
	{
		return VL_BC_CONT;
	}

	public void setVL_BC_CONT(BigDecimal vL_BC_CONT)
	{
		VL_BC_CONT = vL_BC_CONT;
	}
	
	public BigDecimal getVL_EXC_COOP_GER()
	{
		return VL_EXC_COOP_GER;
	}

	public void setVL_EXC_COOP_GER(BigDecimal vL_EXC_COOP_GER)
	{
		VL_EXC_COOP_GER = vL_EXC_COOP_GER;
	}
	
	public BigDecimal getVL_EXC_ESP_COOP()
	{
		return VL_EXC_ESP_COOP;
	}

	public void setVL_EXC_ESP_COOP(BigDecimal vL_EXC_ESP_COOP)
	{
		VL_EXC_ESP_COOP = vL_EXC_ESP_COOP;
	}
	
}	//	RM211
