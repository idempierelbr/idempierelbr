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
package org.idempierelbr.sped.icmsipi.util;

import java.util.Comparator;

/**
 * 		Comparator
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: SPEDComparator.java, v1.0 2013/02/26 12:05:33 PM, ralexsander Exp $
 */
public class SPEDComparator implements Comparator<Object>
{
	/**
	 * 	Comparator para ordenar os Arrays
	 */
	public int compare (Object o1, Object o2)
	{
		if (o1 == null || o2 == null)
			return 0;
		
		/*
		 * FIXME: desdecessária ordenação específica do I_R0200 por enquanto 
		 *
		if (o1 instanceof I_R0200 && o2 instanceof I_R0200
				&& ((I_R0200) o1).getCOD_ITEM() != null)
		{
			return ((I_R0200) o1).getCOD_ITEM().compareTo(((I_R0200) o2).getCOD_ITEM());
		}
		/**/

		//
		return o1.toString().replace("|", "0").compareTo (o2.toString().replace("|", "0"));
	}	//	compare

	/**
	 * 	Get new Comparator
	 *
	 * 	@return SPEDComparator
	 */
	public static SPEDComparator get ()
	{
		return new SPEDComparator ();
	}	//	get	
}	//	SPEDComparator