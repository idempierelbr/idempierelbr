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

import org.idempierelbr.sped.contrib.bean.RC501;
import org.idempierelbr.sped.contrib.bean.RC505;


/**
 * 		Interface Produto
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: I_RC100.java, v1.0 2013/02/14 16:40:57 PM, ralexsander Exp $
 */
public interface I_RC500
{
	public void setCOD_MOD (String str);
	public void setCOD_PART (String str);
	public void setCOD_SIT (String str);
	public void setDT_DOC (Timestamp ts);
	public void setNUM_DOC (String str);
	public void setSER (String str);
	public void setSUB (String str);
	public void setCOD_INF (String str);
	public void setVL_COFINS (BigDecimal bd);
	public void setVL_DOC (BigDecimal bd);
	public void setVL_ICMS (BigDecimal bd);
	public void setVL_PIS (BigDecimal bd);
	
	public void addC501 (RC501 rC501);	//	FIXME Mudar para Interface
	public void addC505 (RC505 rC505);
}	//	I_RC100