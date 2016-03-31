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

import org.idempierelbr.sped.annotation.XMLFieldProperties;
import org.idempierelbr.sped.icmsipi.util.RegSped;


import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;
/**
 * 	REGISTRO 0110:
 * 		REGIMES DE APURAÇÃO DA CONTRIBUIÇÃO SOCIAL E DE APROPRIAÇÃO DE CRÉDITO
 * 
 * 	@author Rogério Feitosa (Kenos, www.kenos.com.br)
 *	@version $Id: R0110.java, v1.0 2013/02/02 11:39:22 AM, rfeitosa Exp $
 */
public class R0110 extends RegSped
{
	@XStreamAlias("Id")
	@XStreamAsAttribute
	@XMLFieldProperties(minSize=1, maxSize=1, id="COD_INC_TRIB", isNumber=true)
	private String COD_INC_TRIB;
	
	@XMLFieldProperties(minSize=1, maxSize=1, id="IND_APRO_CRED", isNumber=true)
	private String IND_APRO_CRED;
	
	@XMLFieldProperties(maxSize=1, id="COD_TIPO_CONT", isNumber=true, isMandatory=false)
	private String COD_TIPO_CONT;
	
	@XMLFieldProperties(maxSize=1, id="IND_REG_CUM", isNumber=true, isMandatory=false)
	private String IND_REG_CUM;

	public String getCOD_INC_TRIB()
	{
		return COD_INC_TRIB;
	}

	public void setCOD_INC_TRIB(String cOD_INC_TRIB)
	{
		COD_INC_TRIB = cOD_INC_TRIB;
	}

	public String getIND_APRO_CRED()
	{
		return IND_APRO_CRED;
	}

	public void setIND_APRO_CRED(String iND_APRO_CRED)
	{
		IND_APRO_CRED = iND_APRO_CRED;
	}

	public String getCOD_TIPO_CONT()
	{
		return COD_TIPO_CONT;
	}

	public void setCOD_TIPO_CONT(String cOD_TIPO_CONT)
	{
		COD_TIPO_CONT = cOD_TIPO_CONT;
	}

	public String getIND_REG_CUM()
	{
		return IND_REG_CUM;
	}

	public void setIND_REG_CUM(String iND_REG_CUM)
	{
		IND_REG_CUM = iND_REG_CUM;
	}
}	//	R0110
