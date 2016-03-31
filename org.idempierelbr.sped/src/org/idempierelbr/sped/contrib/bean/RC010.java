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
 * 	REGISTRO C010:
 * 		IDENTIFICAÇÃO DO ESTABELECIMENTO
 * 
 * 	@author Rogério Feitosa (Kenos, www.kenos.com.br)
 *	@version $Id: RC010.java, v1.0 2013/02/02 11:39:22 AM, rfeitosa Exp $
 */
public class RC010 extends RegSped
{
	@XStreamAlias("Id")
	@XStreamAsAttribute
	@XMLFieldProperties(minSize=14, maxSize = 14, id = "CNPJ", isNumber=true)
	private String CNPJ;
	
	@XMLFieldProperties(minSize=1, maxSize = 1, id = "IND_ESCRI", isMandatory=false)
	private String IND_ESCRI;

	public String getCNPJ()
	{
		return CNPJ;
	}

	public void setCNPJ(String cNPJ)
	{
		CNPJ = cNPJ;
	}

	public String getIND_ESCRI()
	{
		return IND_ESCRI;
	}

	public void setIND_ESCRI(String iND_ESCRI)
	{
		IND_ESCRI = iND_ESCRI;
	}
}	//	RC010
