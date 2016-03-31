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

import java.util.Set;

import org.idempierelbr.sped.annotation.XMLFieldProperties;
import org.idempierelbr.sped.icmsipi.bean.I_RD100;
import org.idempierelbr.sped.icmsipi.bean.I_RD500;
import org.idempierelbr.sped.icmsipi.bean.I_RX001;
import org.idempierelbr.sped.icmsipi.bean.I_RX990;
import org.idempierelbr.sped.utils.BlocoSPED;


import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;

/**
 * 		Registro hierárquico do SPED Contribuições
 * 
 *  @author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: BlocoD.java, v1.0 2013/MM/DD 2:51:51 PM, ralexsander Exp $
 */
public class BlocoD extends BlocoSPED
{
    @XStreamAlias("Id")
    @XStreamAsAttribute
	@XMLFieldProperties (id = "RD001")
	private I_RX001 rD001;
	
	@XMLFieldProperties (id = "RD010")
	private Set<RD010> rD010;
	
	@XMLFieldProperties (id = "RD100")
	private Set<I_RD100> rD100;
	
	@XMLFieldProperties (id = "RD500")
	private Set<I_RD500> rD500;
	
	@XMLFieldProperties (id = "RD990")
	private I_RX990 rD990;

	public I_RX001 getRD001()
	{
		return rD001;
	}

	public void setRD001(I_RX001 rD001)
	{
		this.rD001 = rD001;
	}

	public Set<RD010> getRD010()
	{
		return rD010;
	}

	public void setRD010(Set<RD010> rD010)
	{
		this.rD010 = rD010;
	}

	public Set<I_RD100> getRD100()
	{
		return rD100;
	}

	public void setRD100(Set<I_RD100> rD100)
	{
		this.rD100 = rD100;
	}

	public Set<I_RD500> getRD500()
	{
		return rD500;
	}

	public void setRD500(Set<I_RD500> rD500)
	{
		this.rD500 = rD500;
	}

	public I_RX990 getRD990()
	{
		return rD990;
	}

	public void setRD990(I_RX990 rD990)
	{
		this.rD990 = rD990;
	}
}	//	BlocoD
