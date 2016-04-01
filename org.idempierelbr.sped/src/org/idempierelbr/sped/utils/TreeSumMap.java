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
import java.util.TreeMap;

import org.compiere.util.Env;
import org.idempierelbr.sped.icmsipi.util.SPEDComparator;


/**
 * 		Set para manter o arquivo ordenado e impedir adição de NULL
 * 		
 * 		TODO: Teste de performance, caso necessário mudar para HashSet e ordenar apenar no final
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 * 	@version $Id: SPEDSet.java, v1.0 2013/03/14 1:41:50 AM, ralexsander Exp $
 * 	@param <E>
 */
public class TreeSumMap<E, F> extends TreeMap<E, F>
{
	/**
	 * 	Serial
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * 	Constructor
	 */
	public TreeSumMap ()
	{
		super (SPEDComparator.get ());
	}	//	SPEDSet
	
	/**
	 * 	Soma os valores na mesma chave do mapa
	 */
	@SuppressWarnings("unchecked")
	public F put (E e, F f)
	{
		if (f instanceof BigDecimal)
		{
			BigDecimal actual = Env.ZERO;
			//
			if (super.containsKey (e))
				actual = (BigDecimal) super.remove (e);
			//
			F total = (F) actual.add ((BigDecimal) f);
			super.put (e, total);
			//
			return total;
		}
		return null;
	}	//	add
}	//	SPEDSet
