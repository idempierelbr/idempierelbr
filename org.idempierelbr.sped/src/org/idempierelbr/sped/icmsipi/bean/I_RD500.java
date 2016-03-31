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
import java.sql.Timestamp;

import org.idempierelbr.sped.contrib.bean.RD501;
import org.idempierelbr.sped.contrib.bean.RD505;


/**
 * 		Interface NF
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: I_RD100.java, v1.0 2013/02/18 16:40:57 PM, ralexsander Exp $
 */
public interface I_RD500
{
	public void setIND_OPER (String str);
	public void setIND_EMIT (String str);
	public void setCOD_PART (String str);
	public void setCOD_MOD (String str);
	public void setCOD_SIT (String str);
	public void setSER (String str);
	public void setSUB (String str);
	public void setNUM_DOC (String str);
	public void setDT_DOC (Timestamp ts);
	public void setDT_A_P (Timestamp ts);
	public void setVL_DOC (BigDecimal bd);
	public void setVL_DESC (BigDecimal bd);
	public void setVL_SERV (BigDecimal bd);
	public void setVL_SERV_NT (BigDecimal bd);
	public void setVL_TERC (BigDecimal bd);
	public void setVL_DA (BigDecimal bd);
	public void setVL_BC_ICMS (BigDecimal bd);
	public void setVL_ICMS (BigDecimal bd);
	public void setCOD_INF (String str);
	public void setVL_PIS (BigDecimal bd);
	public void setVL_COFINS (BigDecimal bd);
	
	public void addD501 (RD501 reg);
	public void addD505 (RD505 reg);
}	//	I_RD100