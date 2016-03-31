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
 * 	REGISTRO M410: 
 * 		DETALHAMENTO DAS RECEITAS ISENTAS, NÃO ALCANÇADAS PELA INCIDÊNCIA DA CONTRIBUIÇÃO, 
 *      SUJEITAS A ALÍQUOTA ZERO OU DE VENDAS COM SUSPENSÃO – PIS/PASEP
 * 
 * 	@author Priscila Pinheiro (Kenos, www.kenos.com.br)
 *	@version $Id: RM410.java, v1.0 2013/03/14 11:17:42 AM, ppinheiro Exp $
 */
public class RM410 extends RegSped
{
	@XStreamAlias("Id")
	@XStreamAsAttribute
	@XMLFieldProperties(minSize=3, maxSize=3, id = "NAT_REC")
	private String NAT_REC;
	
	@XMLFieldProperties(isMandatory=false, id = "VL_REC")
	private BigDecimal VL_REC;
	
	@XMLFieldProperties(minSize=1, maxSize=60, id = "COD_CTA")
	private String COD_CTA;
	
	@XMLFieldProperties(minSize=1, maxSize=255, id = "DESC_COMPL")
	private String DESC_COMPL;

	public String getNAT_REC()
	{
		return NAT_REC;
	}

	public void setNAT_REC(String nAT_REC)
	{
		NAT_REC = nAT_REC;
	}

	public BigDecimal getVL_REC()
	{
		return VL_REC;
	}

	public void setVL_REC(BigDecimal vL_REC)
	{
		VL_REC = vL_REC;
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
}	//	RM410
