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
 * 		Interface Produto
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: I_R0200.java, v1.0 2013/02/07 16:40:57 PM, ralexsander Exp $
 */
public interface I_R0200
{
	public void setALIQ_ICMS (BigDecimal str);
	public void setCOD_ANT_ITEM (String str);
	public void setCOD_BARRA (String str);
	public void setCOD_GEN (String str);
	public void setCOD_ITEM (String str);
	public String getCOD_ITEM ();
	public void setCOD_LST (String str);
	public void setCOD_NCM (String str);
	public void setDESCR_ITEM (String str);
	public void setEX_IPI (String str);
	public void setTIPO_ITEM (String str);
	public void setUNID_INV (String str);
}	//	I_R0150