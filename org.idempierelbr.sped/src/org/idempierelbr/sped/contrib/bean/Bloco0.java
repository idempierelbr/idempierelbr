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

import java.util.Set;

import org.idempierelbr.sped.annotation.XMLFieldProperties;
import org.idempierelbr.sped.icmsipi.bean.I_R0150;
import org.idempierelbr.sped.icmsipi.bean.I_R0190;
import org.idempierelbr.sped.icmsipi.bean.I_R0200;
import org.idempierelbr.sped.icmsipi.bean.I_RX001;
import org.idempierelbr.sped.icmsipi.bean.I_RX990;
import org.idempierelbr.sped.utils.BlocoSPED;

/**
 * 		Registro hierárquico do SPED Contribuições
 * 
 *  @author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: Bloco0.java, v1.0 2013/MM/DD 2:51:51 PM, ralexsander Exp $
 */
public class Bloco0 extends BlocoSPED
{
    @XStreamAlias("Id")
    @XStreamAsAttribute
	@XMLFieldProperties(id = "R0000")
	private R0000 r0000;
	
	@XMLFieldProperties(id = "R0001")
	private I_RX001 r0001;
	
	@XMLFieldProperties(id = "R0100")
	private R0100 r0100;
	
	@XMLFieldProperties(id = "R0110")
	private R0110 r0110;
	
	@XMLFieldProperties(id = "R0111")
	private R0111 r0111;
	
	@XMLFieldProperties(id = "R0140")
	private Set<R0140> r0140;
	
	@XMLFieldProperties(id = "R0150")
	private Set<I_R0150> r0150;
	
	@XMLFieldProperties(id = "R0190")
	private Set<I_R0190> r0190;
	
	@XMLFieldProperties(id = "R0200")
	private Set<I_R0200> r0200;
	
	@XMLFieldProperties(id = "R0990")
	private I_RX990 r0990;
	
	public R0000 getR0000()
	{
		return r0000;
	}
	public void setR0000(R0000 r0000)
	{
		this.r0000 = r0000;
	}
	public I_RX001 getR0001()
	{
		return r0001;
	}
	public void setR0001(I_RX001 r0001)
	{
		this.r0001 = r0001;
	}
	public R0100 getR0100()
	{
		return r0100;
	}
	public void setR0100(R0100 r0100)
	{
		this.r0100 = r0100;
	}
	public R0110 getR0110()
	{
		return r0110;
	}
	public void setR0110(R0110 r0110)
	{
		this.r0110 = r0110;
	}
	public R0111 getR0111()
	{
		return r0111;
	}
	public void setR0111(R0111 r0111)
	{
		this.r0111 = r0111;
	}
	public Set<R0140> getR0140()
	{
		return r0140;
	}
	public void setR0140(Set<R0140> r0140)
	{
		this.r0140 = r0140;
	}
	public Set<I_R0150> getR0150()
	{
		return r0150;
	}
	public void setR0150(Set<I_R0150> r0150)
	{
		this.r0150 = r0150;
	}
	public Set<I_R0190> getR0190()
	{
		return r0190;
	}
	public void setR0190(Set<I_R0190> r0190)
	{
		this.r0190 = r0190;
	}
	public Set<I_R0200> getR0200()
	{
		return r0200;
	}
	public void setR0200(Set<I_R0200> r0200)
	{
		this.r0200 = r0200;
	}
	public I_RX990 getR0990()
	{
		return r0990;
	}
	public void setR0990(I_RX990 r0990)
	{
		this.r0990 = r0990;
	}
}	//	Bloco0
