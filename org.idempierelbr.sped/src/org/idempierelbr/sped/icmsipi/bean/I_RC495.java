/******************************************************************************
 * Copyright (C) 2015 RoundIT Desenvolvimento de Sistemas Ltda                *
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
 * 	INTERFACE C495
 * 
 * 	@author Arthur Oliveira de Melo (aomelo@live.com)
 *	@version $Id: I_RC495.java, v1.0 2016/02/12 arthurmelo $
 */
public interface I_RC495
{
	public void setCOD_ITEM (String str);
	public void setCST_COFINS (String str);
	public void setCFOP (String str);
	public void setVL_ITEM (BigDecimal bd);
	public void setVL_BC_COFINS (BigDecimal bd);
	public void setALIQ_COFINS (BigDecimal bd);
	public void setQUANT_BC_COFINS (BigDecimal bd);
	public void setALIQ_COFINS_QUANT (BigDecimal bd);
	public void setVL_COFINS (BigDecimal bd);
	public void setCOD_CTA (String str);
	
}	//	I_RC495