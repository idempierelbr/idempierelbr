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

import java.sql.Timestamp;

/**
 * 		Interface da Abertura do Arquivo
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: I_R0000.java, v1.0 2013/02/02 16:40:57 PM, ralexsander Exp $
 */
public interface I_R0000
{
	public void setCNPJ(String str);
	public void setCOD_MUN(String str);
	public void setCOD_VER(String str);
	public void setDT_FIN(Timestamp ts);
	public void setDT_INI(Timestamp ts);
	public void setIND_ATIV(String str);
	public void setNOME(String str);
	public void setSUFRAMA(String str);
	public void setUF(String str);
}	//	I_R0000
