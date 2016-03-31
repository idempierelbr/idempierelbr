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
import org.idempierelbr.sped.icmsipi.bean.I_RX990;
import org.idempierelbr.sped.icmsipi.util.RegSped;


import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;
/**
 * 	REGISTRO D990:
 * 		ENCERRAMENTO DO BLOCO D
 * 
 * 	@author Rogério Feitosa (Kenos, www.kenos.com.br)
 *	@version $Id: RD990.java, v1.0 2013/02/02 11:39:22 AM, rfeitosa Exp $
 */
public class RD990 extends RegSped implements I_RX990
{
	@XStreamAlias("Id")
	@XStreamAsAttribute
	@XMLFieldProperties(id="QTD_LIN_D",scale=0)
	private BigDecimal QTD_LIN_D;

	public BigDecimal getQTD_LIN_D()
	{
		return QTD_LIN_D;
	}

	public void setQTD_LIN_D(BigDecimal qTD_LIN_D)
	{
		QTD_LIN_D = qTD_LIN_D;
	}

	public void setQTD_LIN(BigDecimal qtd)
	{
		setQTD_LIN_D (qtd);
	}
}	//	RD990
