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
import org.idempierelbr.sped.icmsipi.bean.I_R0200;
import org.idempierelbr.sped.icmsipi.util.RegSped;


import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;
/**
 * 	REGISTRO 0200:
 * 		TABELA DE IDENTIFICAÇÃO DO ITEM (PRODUTOS E SERVIÇOS)
 * 
 * 	@author Rogério Feitosa (Kenos, www.kenos.com.br)
 *	@version $Id: R0200.java, v1.0 2013/02/02 11:39:22 AM, rfeitosa Exp $
 */
public class R0200 extends RegSped implements I_R0200
{
	@XStreamAlias("Id")
	@XStreamAsAttribute
	@XMLFieldProperties(maxSize = 60, id = "COD_ITEM")
	private String COD_ITEM;
	
	@XMLFieldProperties(id = "DESCR_ITEM")
	private String DESCR_ITEM;
	
	@XMLFieldProperties(isMandatory = false, id = "COD_BARRA")
	private String COD_BARRA;
	
	@XMLFieldProperties(maxSize = 60, isMandatory = false, id = "COD_ANT_ITEM")
	private String COD_ANT_ITEM;
	
	@XMLFieldProperties(maxSize = 6, isMandatory = false, id = "UNID_INV")
	private String UNID_INV;
	
	@XMLFieldProperties(minSize = 2, maxSize = 2, id = "TIPO_ITEM", isNumber = true)
	private String TIPO_ITEM;
	
	@XMLFieldProperties( maxSize = 8, isMandatory = false, id = "COD_NCM")
	private String COD_NCM;
	
	@XMLFieldProperties( maxSize = 3, isMandatory = false, id = "EX_IPI")
	private String EX_IPI;
	
	@XMLFieldProperties( minSize=2, maxSize = 2, isMandatory = false, id = "COD_GEN", isNumber = true)
	private String COD_GEN;
	
	@XMLFieldProperties( maxSize = 4, isMandatory = false, id = "COD_LST", isNumber = true)
	private String COD_LST;
	
	@XMLFieldProperties( maxSize = 6, isMandatory = false, id = "ALIQ_ICMS")
	private BigDecimal ALIQ_ICMS;

	public String getCOD_ITEM()
	{
		return COD_ITEM;
	}

	public void setCOD_ITEM(String cOD_ITEM)
	{
		COD_ITEM = cOD_ITEM;
	}

	public String getDESCR_ITEM()
	{
		return DESCR_ITEM;
	}

	public void setDESCR_ITEM(String dESCR_ITEM)
	{
		DESCR_ITEM = dESCR_ITEM;
	}

	public String getCOD_BARRA()
	{
		return COD_BARRA;
	}

	public void setCOD_BARRA(String cOD_BARRA)
	{
		COD_BARRA = cOD_BARRA;
	}

	public String getCOD_ANT_ITEM()
	{
		return COD_ANT_ITEM;
	}

	public void setCOD_ANT_ITEM(String cOD_ANT_ITEM)
	{
		COD_ANT_ITEM = cOD_ANT_ITEM;
	}

	public String getUNID_INV()
	{
		return UNID_INV;
	}

	public void setUNID_INV(String uNID_INV)
	{
		UNID_INV = uNID_INV;
	}

	public String getTIPO_ITEM()
	{
		return TIPO_ITEM;
	}

	public void setTIPO_ITEM(String tIPO_ITEM)
	{
		TIPO_ITEM = tIPO_ITEM;
	}

	public String getCOD_NCM()
	{
		return COD_NCM;
	}

	public void setCOD_NCM(String cOD_NCM)
	{
		COD_NCM = cOD_NCM;
	}

	public String getEX_IPI()
	{
		return EX_IPI;
	}

	public void setEX_IPI(String eX_IPI)
	{
		EX_IPI = eX_IPI;
	}

	public String getCOD_GEN()
	{
		return COD_GEN;
	}

	public void setCOD_GEN(String cOD_GEN)
	{
		COD_GEN = cOD_GEN;
	}

	public String getCOD_LST()
	{
		return COD_LST;
	}

	public void setCOD_LST(String cOD_LST)
	{
		COD_LST = cOD_LST;
	}

	public BigDecimal getALIQ_ICMS()
	{
		return ALIQ_ICMS;
	}

	public void setALIQ_ICMS(BigDecimal aLIQ_ICMS)
	{
		ALIQ_ICMS = aLIQ_ICMS;
	}
}	//	R0200
