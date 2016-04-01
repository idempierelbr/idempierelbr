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

import org.idempierelbr.sped.annotation.XMLFieldProperties;
import org.idempierelbr.sped.icmsipi.util.RegSped;


import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;
/**
 * 	REGISTRO M110: 
 * 		AJUSTES DO CRÉDITO DE PIS APURADO
 * 
 * 	@author Priscila Pinheiro (Kenos, www.kenos.com.br)
 *	@version $Id: RM110.java, v1.0 2013/03/14 11:17:42 AM, ppinheiro Exp $
 */
public class RM110 extends RegSped
{
	@XStreamAlias("Id")
	@XStreamAsAttribute
	@XMLFieldProperties(minSize=1, maxSize=1, id = "IND_AJ")
	private String IND_AJ;

	@XMLFieldProperties(isMandatory=false, id = "VL_AJ")
	private BigDecimal VL_AJ;
	
	@XMLFieldProperties(minSize=2, maxSize=2, id = "COD_AJ")
	private String COD_AJ;
	
	@XMLFieldProperties(minSize=1, maxSize=60, id = "NUM_DOC")
	private String NUM_DOC;
	
	@XMLFieldProperties(minSize=1, maxSize=255, id = "DESCR_AJ")
	private String DESCR_AJ;
	
	@XMLFieldProperties(id = "DT_REF", isMandatory=false)
	private Timestamp DT_REF;
	
	public String getIND_AJ()
	{
		return IND_AJ;
	}

	public void setIND_AJ(String iND_AJ)
	{
		IND_AJ = iND_AJ;
	}

	public BigDecimal getVL_AJ()
	{
		return VL_AJ;
	}

	public void setVL_AJ(BigDecimal vL_AJ)
	{
		VL_AJ = vL_AJ;
	}
	
	public String getCOD_AJ()
	{
		return COD_AJ;
	}

	public void setCOD_AJ(String cOD_AJ)
	{
		COD_AJ = cOD_AJ;
	}
	
	public String getNUM_DOC()
	{
		return NUM_DOC;
	}

	public void setNUM_DOC(String nUM_DOC)
	{
		NUM_DOC = nUM_DOC;
	}
	
	public String getDESCR_AJ()
	{
		return DESCR_AJ;
	}

	public void setDESCR_AJ(String dESCR_AJ)
	{
		DESCR_AJ = dESCR_AJ;
	}
	
	public Timestamp getDT_REF()
	{
		return DT_REF;
	}

	public void setDT_REF(Timestamp dT_REF)
	{
		DT_REF = dT_REF;
	}
	

}	//	RM110
