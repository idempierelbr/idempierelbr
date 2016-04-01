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
import java.util.Set;

import org.idempierelbr.sped.contrib.bean.RC120;


/**
 * 		Interface Produto
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: I_RC100.java, v1.0 2013/02/14 16:40:57 PM, ralexsander Exp $
 */
public interface I_RC100
{
	public void setCHV_NFE (String str);
	public void setCOD_MOD (String str);
	public void setCOD_PART (String str);
	public void setCOD_SIT (String str);
	public void setDT_DOC (Timestamp ts);
	public void setDT_E_S (Timestamp ts);
	public void setIND_EMIT (String str);
	public void setIND_FRT (String str);
	public void setIND_OPER (String str);
	public void setIND_PGTO (String str);
	public void setNUM_DOC (String str);
	public String getNUM_DOC ();
	public void setSER (String str);
	public void setVL_ABAT_NT (BigDecimal bd);
	public void setVL_BC_ICMS (BigDecimal bd);
	public void setVL_BC_ICMS_ST (BigDecimal bd);
	public void setVL_COFINS (BigDecimal bd);
	public void setVL_COFINS_ST (BigDecimal bd);
	public void setVL_DESC (BigDecimal bd);
	public void setVL_DOC (BigDecimal bd);
	public void setVL_FRT (BigDecimal bd);
	public void setVL_ICMS (BigDecimal bd);
	public void setVL_ICMS_ST (BigDecimal bd);
	public void setVL_IPI (BigDecimal bd);
	public void setVL_MERC (BigDecimal bd);
	public void setVL_OUT_DA (BigDecimal bd);
	public void setVL_PIS (BigDecimal bd);
	public void setVL_PIS_ST (BigDecimal bd);
	public void setVL_SEG (BigDecimal bd);
	
	
	public void addRC120(RC120 rC120);	//	FIXME Mudar para Interface
	public Set<RC120> getRC120 ();
	public void addRC170(RC170 rC170);
	public Set<RC170> getRC170 ();
}	//	I_RC100