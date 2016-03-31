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
 * 	REGISTRO M100: 
 * 		CRÉDITO DE PIS/PASEP RELATIVO AO PERÍODO
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: RM100.java, v1.0 2013/02/02 11:17:42 AM, ralexsander Exp $
 */
public class RM100 extends RegSped
{
	@XStreamAlias("Id")
	@XStreamAsAttribute
	@XMLFieldProperties(minSize=3, maxSize=3, id = "COD_CRED")
	private String COD_CRED;
	
	@XMLFieldProperties(minSize=1, maxSize=1, id = "IND_CRED_ORI", isNumber=true)
	private String IND_CRED_ORI;
	
	@XMLFieldProperties(isMandatory=false, id = "VL_BC_PIS")
	private BigDecimal VL_BC_PIS;
	
	@XMLFieldProperties(isMandatory=false, id = "ALIQ_PIS", scale=4)
	private BigDecimal ALIQ_PIS;
	
	@XMLFieldProperties(isMandatory=false, id = "QUANT_BC_PIS", scale=3)
	private BigDecimal QUANT_BC_PIS;
	
	@XMLFieldProperties(isMandatory=false, id = "ALIQ_PIS_QUANT")
	private BigDecimal ALIQ_PIS_QUANT;
	
	@XMLFieldProperties(id = "VL_CRED")
	private BigDecimal VL_CRED;
	
	@XMLFieldProperties(id = "VL_AJUS_ACRES")
	private BigDecimal VL_AJUS_ACRES;
	
	@XMLFieldProperties(id = "VL_AJUS_REDUC")
	private BigDecimal VL_AJUS_REDUC;
	
	@XMLFieldProperties(id = "VL_CRED_DIF")
	private BigDecimal VL_CRED_DIF;
	
	@XMLFieldProperties(id = "VL_CRED_DISP")
	private BigDecimal VL_CRED_DISP;
	
	@XMLFieldProperties(minSize=1, maxSize=1, id = "IND_DESC_CRED")
	private String IND_DESC_CRED;
	
	@XMLFieldProperties(isMandatory=false, id = "VL_CRED_DESC")
	private BigDecimal VL_CRED_DESC;
	
	@XMLFieldProperties(id = "SLD_CRED")
	private BigDecimal SLD_CRED;
	
	@XMLFieldProperties (id = "RM105")
	private Set<RM105> _RM105 = new SPEDSet<RM105>();
	
	@XMLFieldProperties (id = "RM110")
	private Set<RM110> _RM110 = new SPEDSet<RM110>();
	

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

	public BigDecimal getVL_BC_PIS()
	{
		return VL_BC_PIS;
	}

	public void setVL_BC_PIS(BigDecimal vL_BC_PIS)
	{
		VL_BC_PIS = vL_BC_PIS;
	}

	public BigDecimal getALIQ_PIS()
	{
		return ALIQ_PIS;
	}

	public void setALIQ_PIS(BigDecimal aLIQ_PIS)
	{
		ALIQ_PIS = aLIQ_PIS;
	}

	public BigDecimal getQUANT_BC_PIS()
	{
		return QUANT_BC_PIS;
	}

	public void setQUANT_BC_PIS(BigDecimal qUANT_BC_PIS)
	{
		QUANT_BC_PIS = qUANT_BC_PIS;
	}

	public BigDecimal getALIQ_PIS_QUANT()
	{
		return ALIQ_PIS_QUANT;
	}

	public void setALIQ_PIS_QUANT(BigDecimal aLIQ_PIS_QUANT)
	{
		ALIQ_PIS_QUANT = aLIQ_PIS_QUANT;
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

	public BigDecimal getVL_CRED_DIF()
	{
		return VL_CRED_DIF;
	}

	public void setVL_CRED_DIF(BigDecimal vL_CRED_DIF)
	{
		VL_CRED_DIF = vL_CRED_DIF;
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
	

	public Set<RM105> get_RM105()
	{
		return _RM105;
	}

	public void addRM105 (RM105 rM105)
	{
		_RM105.add(rM105);
	}
	
	public Set<RM110> get_RM110()
	{
		return _RM110;
	}

	public void addRM110 (RM110 rM110)
	{
		_RM110.add(rM110);
	}
}	//	RM100
