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

import java.sql.Timestamp;
/**
 * 	INTERFACE C490
 * 
 * 	@author Arthur Oliveira de Melo (aomelo@live.com)
 *	@version $Id: I_RC490.java, v1.0 2016/02/12 arthurmelo $
 */
public interface I_RC490
{
	public void setDT_DOC_INI (Timestamp ts);
	public void setDT_DOC_FIN (Timestamp ts);
	public void setCOD_MOD (String str);
		
}	//	I_RC490