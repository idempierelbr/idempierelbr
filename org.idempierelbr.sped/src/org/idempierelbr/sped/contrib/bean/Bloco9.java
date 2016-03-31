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


import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;

import java.util.List;

import org.idempierelbr.sped.annotation.XMLFieldProperties;
import org.idempierelbr.sped.icmsipi.bean.I_R9900;
import org.idempierelbr.sped.icmsipi.bean.I_R9999;
import org.idempierelbr.sped.icmsipi.bean.I_RX001;
import org.idempierelbr.sped.icmsipi.bean.I_RX990;
import org.idempierelbr.sped.utils.BlocoSPED;

/**
 * 		Registro hierárquico do SPED Contribuições
 * 
 *  @author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: Bloco9.java, v1.0 2013/MM/DD 2:51:51 PM, ralexsander Exp $
 */
public class Bloco9 extends BlocoSPED
{
    @XStreamAlias("Id")
    @XStreamAsAttribute
	@XMLFieldProperties (id = "R9001")
	private I_RX001 r9001;
	
	@XMLFieldProperties (id = "R9900")
	private List<I_R9900> r9900;
	
	@XMLFieldProperties (id = "R9990")
	private I_RX990 r9990;
	
	@XMLFieldProperties (id = "R9999")
	private I_R9999 r9999;

	public I_RX001 getR9001()
	{
		return r9001;
	}

	public void setR9001(I_RX001 r9001)
	{
		this.r9001 = r9001;
	}

	public List<I_R9900> getR9900()
	{
		return r9900;
	}

	public void setR9900(List<I_R9900> r9900)
	{
		this.r9900 = r9900;
	}

	public I_RX990 getR9990()
	{
		return r9990;
	}

	public void setR9990(I_RX990 r9990)
	{
		this.r9990 = r9990;
	}
	
	public I_R9999 getR9999()
	{
		return r9999;
	}

	public void setR9999(I_R9999 r9999)
	{
		this.r9999 = r9999;
	}
}	//	Bloco9
