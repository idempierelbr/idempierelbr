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
import java.util.Set;

import org.idempierelbr.sped.annotation.XMLFieldProperties;
import org.idempierelbr.sped.icmsipi.util.RegSped;
import org.idempierelbr.sped.utils.SPEDSet;


import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;
/**
 * 	REGISTRO M500: 
 * 		CRÉDITO DE COFINS RELATIVO AO PERÍODO
 * 
 * 	@author Priscila Pinheiro (Kenos, www.kenos.com.br)
 *	@version $Id: RM500.java, v1.0 2013/03/14 11:17:42 AM, ppinheiro Exp $
 */
public class RM500 extends RegSped
{
	@XStreamAlias("Id")
	@XStreamAsAttribute
	@XMLFieldProperties(minSize=3, maxSize=3, id = "COD_CRED")
	private String COD_CRED;
	
	@XMLFieldProperties(minSize=1, maxSize=1, id = "IND_CRED_ORI")
	private String IND_CRED_ORI;

	@XMLFieldProperties(isMandatory=false, id = "VL_BC_COFINS")
	private BigDecimal VL_BC_COFINS;
	
	@XMLFieldProperties(isMandatory=false, id = "ALIQ_COFINS")
	private BigDecimal ALIQ_COFINS;
	
	@XMLFieldProperties(isMandatory=false, id = "QUANT_BC_COFINS")
	private BigDecimal QUANT_BC_COFINS;
	
	@XMLFieldProperties(isMandatory=false, id = "ALIQ_COFINS_QUANT")
	private BigDecimal ALIQ_COFINS_QUANT;
	
	@XMLFieldProperties(isMandatory=false, id = "VL_CRED")
	private BigDecimal VL_CRED;
	
	@XMLFieldProperties(isMandatory=false, id = "VL_AJUS_ACRES")
	private BigDecimal VL_AJUS_ACRES;
	
	@XMLFieldProperties(isMandatory=false, id = "VL_AJUS_REDUC")
	private BigDecimal VL_AJUS_REDUC;
	
	@XMLFieldProperties(isMandatory=false, id = "VL_CRED_DIFER")
	private BigDecimal VL_CRED_DIFER;
	
	@XMLFieldProperties(isMandatory=false, id = "VL_CRED_DISP")
	private BigDecimal VL_CRED_DISP;
	
	@XMLFieldProperties(minSize=1, maxSize=1, id = "IND_DESC_CRED")
	private String IND_DESC_CRED;

	@XMLFieldProperties(isMandatory=false, id = "VL_CRED_DESC")
	private BigDecimal VL_CRED_DESC;
	
	@XMLFieldProperties(isMandatory=false, id = "SLD_CRED")
	private BigDecimal SLD_CRED;
	
	@XMLFieldProperties (id = "RM505")
	private Set<RM505> _RM505 = new SPEDSet<RM505>();
	
	@XMLFieldProperties (id = "RM510")
	private Set<RM510> _RM510 = new SPEDSet<RM510>();
	
	public String getCOD_CRED()
	{
		return COD_CRED;
	}

	public void setCOD_CRED(String cOD_CRED)
	{
		COD_CRED = cOD_CRED;
	}

	public String getIND_CRED_ORI()
	{
		return IND_CRED_ORI;
	}

	public void setIND_CRED_ORI(String iND_CRED_ORI)
	{
		IND_CRED_ORI = iND_CRED_ORI;
	}
	

	public BigDecimal getVL_BC_COFINS()
	{
		return VL_BC_COFINS;
	}

	public void setVL_BC_COFINS(BigDecimal vL_BC_COFINS)
	{
		VL_BC_COFINS = vL_BC_COFINS;
	}
	

	public BigDecimal getALIQ_COFINS()
	{
		return ALIQ_COFINS;
	}

	public void setALIQ_COFINS(BigDecimal aLIQ_COFINS)
	{
		ALIQ_COFINS = aLIQ_COFINS;
	}
	

	public BigDecimal getQUANT_BC_COFINS()
	{
		return QUANT_BC_COFINS;
	}

	public void setQUANT_BC_COFINS(BigDecimal qUANT_BC_COFINS)
	{
		QUANT_BC_COFINS = qUANT_BC_COFINS;
	}
	

	public BigDecimal getALIQ_COFINS_QUANT()
	{
		return ALIQ_COFINS_QUANT;
	}

	public void setALIQ_COFINS_QUANT(BigDecimal aLIQ_COFINS_QUANT)
	{
		ALIQ_COFINS_QUANT = aLIQ_COFINS_QUANT;
	}
	

	public BigDecimal getVL_CRED()
	{
		return VL_CRED;
	}

	public void setVL_CRED(BigDecimal vL_CRED)
	{
		VL_CRED = vL_CRED;
	}
	

	public BigDecimal getVL_AJUS_ACRES()
	{
		return VL_AJUS_ACRES;
	}

	public void setVL_AJUS_ACRES(BigDecimal vL_AJUS_ACRES)
	{
		VL_AJUS_ACRES = vL_AJUS_ACRES;
	}
	

	public BigDecimal getVL_AJUS_REDUC()
	{
		return VL_AJUS_REDUC;
	}

	public void setVL_AJUS_REDUC(BigDecimal vL_AJUS_REDUC)
	{
		VL_AJUS_REDUC = vL_AJUS_REDUC;
	}
	

	public BigDecimal getVL_CRED_DIFER()
	{
		return VL_CRED_DIFER;
	}

	public void setVL_CRED_DIFER(BigDecimal vL_CRED_DIFER)
	{
		VL_CRED_DIFER = vL_CRED_DIFER;
	}
	

	public BigDecimal getVL_CRED_DISP()
	{
		return VL_CRED_DISP;
	}

	public void setVL_CRED_DISP(BigDecimal vL_CRED_DISP)
	{
		VL_CRED_DISP = vL_CRED_DISP;
	}

	public String getIND_DESC_CRED()
	{
		return IND_DESC_CRED;
	}

	public void setIND_DESC_CRED(String iND_DESC_CRED)
	{
		IND_DESC_CRED = iND_DESC_CRED;
	}
	
	public BigDecimal getVL_CRED_DESC()
	{
		return VL_CRED_DESC;
	}

	public void setVL_CRED_DESC(BigDecimal vL_CRED_DESC)
	{
		VL_CRED_DESC = vL_CRED_DESC;
	}
	
	public BigDecimal getSLD_CRED()
	{
		return SLD_CRED;
	}

	public void setSLD_CRED(BigDecimal sLD_CRED)
	{
		SLD_CRED = sLD_CRED;
	}
	
	public Set<RM505> get_RM505()
	{
		return _RM505;
	}

	public void addRM505 (RM505 rM505)
	{
		_RM505.add(rM505);
	}
	
	public Set<RM510> get_RM510()
	{
		return _RM510;
	}

	public void addRM510 (RM510 rM510)
	{
		_RM510.add(rM510);
	}
}	//	RM500
