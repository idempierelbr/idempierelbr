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
import org.idempierelbr.sped.icmsipi.bean.I_R0190;
import org.idempierelbr.sped.icmsipi.util.RegSped;


import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;
/**
 * 	REGISTRO 0190:
 * 		IDENTIFICAÇÃO DAS UNIDADES DE MEDIDA
 * 
 * 	@author Rogério Feitosa (Kenos, www.kenos.com.br)
 *	@version $Id: R0190.java, v1.0 2013/02/02 11:39:22 AM, rfeitosa Exp $
 */
public class R0190 extends RegSped implements I_R0190
{
	@XStreamAlias("Id")
	@XStreamAsAttribute
	@XMLFieldProperties(maxSize=6, id="UNID")
	private String UNID;
	
	@XMLFieldProperties(id="DESCR")
	private String DESCR;

	public String getUNID()
	{
		return UNID;
	}

	public void setUNID(String uNID)
	{
		UNID = uNID;
	}

	public String getDESCR()
	{
		return DESCR;
	}

	public void setDESCR(String dESCR)
	{
		DESCR = dESCR;
	}
}	//	R0190
