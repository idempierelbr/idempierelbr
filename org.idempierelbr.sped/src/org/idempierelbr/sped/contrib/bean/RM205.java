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
 * 	REGISTRO M205: 
 * 		CONTRIBUIÇÃO PARA O PIS/PASEP A RECOLHER – DETALHAMENTO POR CÓDIGO DE RECEITA
 * 
 * 	@author Rogério Alves Feitosa (Kenos, www.kenos.com.br)
 *	@version $Id: RM205.java, v1.0 2015/MM/DD 14:29:07, rfeitosa Exp $
 */
public class RM205 extends RegSped
{

	@XStreamAlias("Id")
	@XStreamAsAttribute
	@XMLFieldProperties(minSize=2, maxSize=2, id = "NUM_CAMPO")
	private String NUM_CAMPO;
	
	@XMLFieldProperties(minSize=6, maxSize=6, id = "COD_REC")
	private String COD_REC;
	
	@XMLFieldProperties(isMandatory=true, id = "VL_DEBITO")
	private BigDecimal VL_DEBITO;

	@XMLFieldProperties (id = "RM200")
	private Set<RM200> _RM200 = new SPEDSet<RM200>();
	

	public String getNUM_CAMPO()
	{
		return NUM_CAMPO;
	}

	public void setNUM_CAMPO(String nUM_CAMPO)
	{
		NUM_CAMPO = nUM_CAMPO;
	}
	
	public String getCOD_REC()
	{
		return COD_REC;
	}

	public void setCOD_REC(String cOD_REC)
	{
		COD_REC = cOD_REC;
	}
	
	public BigDecimal getVL_DEBITO()
	{
		return VL_DEBITO;
	}
	
	public void setVL_DEBITO(BigDecimal vL_DEBITO)
	{
		VL_DEBITO = vL_DEBITO;
	}
	
	public Set<RM200> get_RM200()
	{
		return _RM200;
	}

	public void addRM200 (RM200 rM200)
	{
		_RM200.add(rM200);
	}
}	//	RM205