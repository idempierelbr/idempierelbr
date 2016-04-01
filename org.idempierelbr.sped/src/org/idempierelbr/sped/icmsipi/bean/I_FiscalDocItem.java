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
package org.idempierelbr.sped.icmsipi.bean;

import java.math.BigDecimal;

/**
 * 		Interface Linha Documento Fiscal
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: I_FiscalDocItem.java, v1.0 2013/03/14 16:40:57 PM, ralexsander Exp $
 */
public interface I_FiscalDocItem
{
	public void setVL_ITEM ( BigDecimal valor);
	public void setCST_PIS (String cstPis);
	public void setCST_COFINS (String cstCofins);
	public void setALIQ_COFINS(BigDecimal aliq);
	public void setALIQ_PIS(BigDecimal aliq);
	public void setVL_PIS(BigDecimal vL_PIS);
	public void setVL_COFINS(BigDecimal vL_COFINS);
	public void setVL_BC_PIS(BigDecimal vL_PIS);
	public void setVL_BC_COFINS(BigDecimal vL_COFINS);
	public BigDecimal getVL_ITEM ();
	public String getCST_PIS ();
	public String getCST_COFINS ();
	public BigDecimal getALIQ_COFINS();
	public BigDecimal getALIQ_PIS();
	public BigDecimal getVL_PIS();
	public BigDecimal getVL_COFINS();
	public BigDecimal getVL_BC_PIS();
	public BigDecimal getVL_BC_COFINS();
	
}	//	I_FiscalDocItem