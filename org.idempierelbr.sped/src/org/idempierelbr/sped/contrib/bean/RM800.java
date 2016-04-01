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
import java.util.Set;

import org.idempierelbr.sped.annotation.XMLFieldProperties;
import org.idempierelbr.sped.icmsipi.util.RegSped;
import org.idempierelbr.sped.utils.SPEDSet;


import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;
/**
 * 	REGISTRO M800: 
 * 		RECEITAS ISENTAS, NÃO ALCANÇADAS PELA INCIDÊNCIA DA CONTRIBUIÇÃO, 
 *      SUJEITAS A ALÍQUOTA ZERO OU DE VENDAS COM SUSPENSÃO – COFINS
 * 
 * 	@author Priscila Pinheiro (Kenos, www.kenos.com.br)
 *	@version $Id: RM800.java, v1.0 2013/03/14 11:17:42 AM, ppinheiro Exp $
 */
public class RM800 extends RegSped
{
	@XStreamAlias("Id")
	@XStreamAsAttribute
	@XMLFieldProperties(minSize=2, maxSize=4, id = "CST_COFINS")
	private String CST_COFINS;
	
	@XMLFieldProperties(isMandatory=false, id = "VL_TOT_REC")
	private BigDecimal VL_TOT_REC;
	
	@XMLFieldProperties(minSize=1, maxSize=60, id = "COD_CTA")
	private String COD_CTA;
	
	@XMLFieldProperties(minSize=1, maxSize=255, id = "DESC_COMPL")
	private String DESC_COMPL;
	
	@XMLFieldProperties (id = "RM810")
	private Set<RM810> _RM810 = new SPEDSet<RM810>();
	

	public String getCST_COFINS()
	{
		return CST_COFINS;
	}

	public void setCST_COFINS(String cST_COFINS)
	{
		CST_COFINS = cST_COFINS;
	}

	public BigDecimal getVL_TOT_REC()
	{
		return VL_TOT_REC;
	}

	public void setVL_TOT_REC(BigDecimal vL_TOT_REC)
	{
		VL_TOT_REC = vL_TOT_REC;
	}

	public String getCOD_CTA()
	{
		return COD_CTA;
	}

	public void setCOD_CTA(String cOD_CTA)
	{
		COD_CTA = cOD_CTA;
	}

	public String getDESC_COMPL()
	{
		return DESC_COMPL;
	}

	public void setDESC_COMPL(String dESC_COMPL)
	{
		DESC_COMPL = dESC_COMPL;
	}
	
	public Set<RM810> get_RM810()
	{
		return _RM810;
	}

	public void addRM810 (RM810 rM810)
	{
		_RM810.add(rM810);
	}
}	//	RM800
