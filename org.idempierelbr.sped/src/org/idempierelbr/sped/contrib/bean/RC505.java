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
 * 	REGISTRO C505:
 * 		COMPLEMENTO DA OPERAÇÃO (CÓDIGOS 06, 28 e 29) – PIS/PASEP
 * 
 * 	@author Rogério Feitosa (Kenos, www.kenos.com.br)
 *	@version $Id: RC505.java, v1.0 2013/02/02 11:39:22 AM, rfeitosa Exp $
 */
public class RC505 extends RegSped
{
	@XStreamAlias("Id")
	@XStreamAsAttribute
	@XMLFieldProperties(minSize=2, maxSize = 2, id = "CST_COFINS", isNumber=true)
	private String CST_COFINS;
		
	@XMLFieldProperties(id = "VL_ITEM")
	private BigDecimal VL_ITEM;
	
	@XMLFieldProperties(minSize=2, maxSize = 2, id = "NAT_BC_CRED", isNumber=true, isMandatory=false)
	private String NAT_BC_CRED;
	
	@XMLFieldProperties(id = "VL_BC_COFINS")
	private BigDecimal VL_BC_COFINS;
	
	@XMLFieldProperties(id = "ALIQ_COFINS", scale=4)
	private BigDecimal ALIQ_COFINS;
	
	@XMLFieldProperties(id = "VL_COFINS")
	private BigDecimal VL_COFINS;
	
	@XMLFieldProperties(maxSize = 60, id = "COD_CTA", isMandatory=false)
	private String COD_CTA;

	public String getCST_COFINS()
	{
		return CST_COFINS;
	}

	public void setCST_COFINS(String cST_COFINS)
	{
		CST_COFINS = cST_COFINS;
	}

	public BigDecimal getVL_ITEM()
	{
		return VL_ITEM;
	}

	public void setVL_ITEM(BigDecimal vL_ITEM)
	{
		VL_ITEM = vL_ITEM;
	}

	public String getNAT_BC_CRED()
	{
		return NAT_BC_CRED;
	}

	public void setNAT_BC_CRED(String nAT_BC_CRED)
	{
		NAT_BC_CRED = nAT_BC_CRED;
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
}	//	RC505
