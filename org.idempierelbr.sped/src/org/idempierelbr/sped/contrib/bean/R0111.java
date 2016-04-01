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
 * 	REGISTRO 0111:
 * 		TABELA DE RECEITA BRUTA MENSAL PARA FINS DE RATEIO DE CRÉDITOS COMUNS
 * 
 * 	@author Rogério Feitosa (Kenos, www.kenos.com.br)
 *	@version $Id: R0111.java, v1.0 2013/02/02 11:39:22 AM, rfeitosa Exp $
 */
public class R0111 extends RegSped
{
	@XStreamAlias("Id")
	@XStreamAsAttribute
	@XMLFieldProperties(id="REC_BRU_NCUM_TRIB_MI")
	private BigDecimal REC_BRU_NCUM_TRIB_MI;
	
	@XMLFieldProperties(id="REC_BRU_NCUM_NT_MI")
	private BigDecimal REC_BRU_NCUM_NT_MI;
	
	@XMLFieldProperties(id="REC_BRU_NCUM_EXP")
	private BigDecimal REC_BRU_NCUM_EXP;
	
	@XMLFieldProperties(id="REC_BRU_CUM")
	private BigDecimal REC_BRU_CUM;
	
	@XMLFieldProperties(id="REC_BRU_TOTAL")
	private BigDecimal REC_BRU_TOTAL;

	public BigDecimal getREC_BRU_NCUM_TRIB_MI()
	{
		return REC_BRU_NCUM_TRIB_MI;
	}

	public void setREC_BRU_NCUM_TRIB_MI(BigDecimal rEC_BRU_NCUM_TRIB_MI)
	{
		REC_BRU_NCUM_TRIB_MI = rEC_BRU_NCUM_TRIB_MI;
	}

	public BigDecimal getREC_BRU_NCUM_NT_MI()
	{
		return REC_BRU_NCUM_NT_MI;
	}

	public void setREC_BRU_NCUM_NT_MI(BigDecimal rEC_BRU_NCUM_NT_MI)
	{
		REC_BRU_NCUM_NT_MI = rEC_BRU_NCUM_NT_MI;
	}

	public BigDecimal getREC_BRU_NCUM_EXP()
	{
		return REC_BRU_NCUM_EXP;
	}

	public void setREC_BRU_NCUM_EXP(BigDecimal rEC_BRU_NCUM_EXP)
	{
		REC_BRU_NCUM_EXP = rEC_BRU_NCUM_EXP;
	}

	public BigDecimal getREC_BRU_CUM()
	{
		return REC_BRU_CUM;
	}

	public void setREC_BRU_CUM(BigDecimal rEC_BRU_CUM)
	{
		REC_BRU_CUM = rEC_BRU_CUM;
	}

	public BigDecimal getREC_BRU_TOTAL()
	{
		return REC_BRU_TOTAL;
	}

	public void setREC_BRU_TOTAL(BigDecimal rEC_BRU_TOTAL)
	{
		REC_BRU_TOTAL = rEC_BRU_TOTAL;
	}
}	//	R0111
