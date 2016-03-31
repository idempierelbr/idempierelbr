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
package org.idempierelbr.sped.utils;

import java.math.BigDecimal;
import java.util.Map;
import java.util.TreeSet;

import org.idempierelbr.sped.icmsipi.bean.I_FiscalDocItem;
import org.idempierelbr.sped.icmsipi.util.SPEDComparator;


/**
 * 		Set para manter o arquivo ordenado e impedir adição de NULL
 * 		
 * 		TODO: Teste de performance, caso necessário mudar para HashSet e ordenar apenar no final
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 * 	@version $Id: SPEDSet.java, v1.0 2013/02/27 1:41:50 AM, ralexsander Exp $
 * 	@param <E>
 */
public class SPEDSet<E> extends TreeSet<E>
{
	/**
	 * 	Serial
	 */
	private static final long serialVersionUID = 1L;
	
	/**		M400		*/
	private Map<String, BigDecimal> mapM400 = new TreeSumMap<String, BigDecimal> ();
	
	/**		M800		*/
	private Map<String, BigDecimal> mapM800 = new TreeSumMap<String, BigDecimal> ();
	
	/**
	 * 		Map for M400
	 * 	@return Map for M400
	 */
	public Map<String, BigDecimal> getMapM400()
	{
		return mapM400;
	}

	/**
	 * 		Map for M800
	 * 	@return Map for M800
	 */
	public Map<String, BigDecimal> getMapM800()
	{
		return mapM800;
	}

	/**
	 * 	Constructor
	 */
	public SPEDSet ()
	{
		super (SPEDComparator.get ());
	}	//	SPEDSet
	
	/**
	 * 	Impede a adição de NULL
	 */
	@Override
	public boolean add (E e)
	{
		if (e == null)
			return false;
		//
		if (super.add (e))
		{
			if (e instanceof I_FiscalDocItem)
			{
				SPEDUtil.processRM400 ((I_FiscalDocItem) e, mapM400);
				SPEDUtil.processRM800 ((I_FiscalDocItem) e, mapM800);
			}
			//
			return true;
		}
		//
		return false;
	}	//	add
}	//	SPEDSet
