/******************************************************************************
 * Copyright (C) 2013 Kenos Assessoria e Consultoria de Sistemas Ltda         *
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
import org.idempierelbr.sped.utils.BlocoSPED;


import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;
/**
 * 		SPED Contribuições
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 * 	@version $Id: SPEDContrib.java, v1.0 2013/02/22 4:27:07 PM, ralexsander Exp $
 */
public class SPEDContrib extends BlocoSPED
{
	@XStreamAlias("Id")
	@XStreamAsAttribute
	@XMLFieldProperties (id = "Bloco0")
	private Bloco0 b0;
	
	@XMLFieldProperties (id = "BlocoA")
	private BlocoA bA;
	
	@XMLFieldProperties (id = "BlocoC")
	private BlocoC bC;
	
	@XMLFieldProperties (id = "BlocoD")
	private BlocoD bD;
	
	@XMLFieldProperties (id = "BlocoF")
	private BlocoF bF;

	//	private BlocoI bI;
	@XMLFieldProperties (id = "BlocoM")
	private BlocoM bM;

	//	private BlocoP bP;
	@XMLFieldProperties (id = "Bloco1")
	private Bloco1 b1;
	
	@XMLFieldProperties (id = "Bloco9")
	private Bloco9 b9;
	
	public Bloco0 getB0()
	{
		return b0;
	}
	public void setB0(Bloco0 b0)
	{
		this.b0 = b0;
	}
	public BlocoA getBA()
	{
		return bA;
	}
	public void setBA(BlocoA bA)
	{
		this.bA = bA;
	}
	public BlocoC getBC()
	{
		return bC;
	}
	public void setBC(BlocoC bC)
	{
		this.bC = bC;
	}
	public BlocoD getBD()
	{
		return bD;
	}
	public void setBD(BlocoD bD)
	{
		this.bD = bD;
	}
	public BlocoF getBF()
	{
		return bF;
	}
	public void setBF(BlocoF bF)
	{
		this.bF = bF;
	}
	public BlocoM getBM()
	{
		return bM;
	}
	public void setBM(BlocoM bM)
	{
		this.bM = bM;
	}
	public Bloco1 getB1()
	{
		return b1;
	}
	public void setB1(Bloco1 b1)
	{
		this.b1 = b1;
	}
	public Bloco9 getB9()
	{
		return b9;
	}
	public void setB9(Bloco9 b9)
	{
		this.b9 = b9;
	}
}	//	SPEDContrib