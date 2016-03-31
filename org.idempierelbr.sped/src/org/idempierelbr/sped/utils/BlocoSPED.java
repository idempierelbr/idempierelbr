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

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.math.BigDecimal;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.idempierelbr.sped.annotation.XMLFieldProperties;
import org.idempierelbr.sped.icmsipi.bean.I_RX001;
import org.idempierelbr.sped.icmsipi.bean.I_RX990;


/**
 * 		Bloco SPED
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: BlocoSPED.java, v1.0 2013/02/21 9:54:44 AM, ralexsander Exp $
 */
public abstract class BlocoSPED
{
	/**
	 * 	Get complete block
	 * 	@return block
	 * 	@throws Exception 
	 */
	public BlocoSPED get (int type) throws Exception
	{
		String blockCode = getBlockCode ();
		int counter = getCount ();

		//	Monta a Abertura
		I_RX001 x001 = (I_RX001) SPEDUtil.getReg ("R" + blockCode + "001", type);
		x001.setIND_MOV (counter <= 0 ? SPEDUtil.IND_MOV_SEM_DADOS : SPEDUtil.IND_MOV_COM_DADOS);
		//
		Method method = this.getClass().getDeclaredMethod ("setR" + blockCode + "001", I_RX001.class);
		method.invoke (this, x001);
		
		//	Monta o Encerramento
		I_RX990 x990 = (I_RX990) SPEDUtil.getReg ("R" + blockCode + "990", type);
		x990.setQTD_LIN (new BigDecimal (counter + 2));	//	+ 001 + 990
		//
		method = this.getClass().getDeclaredMethod ("setR" + blockCode + "990", I_RX990.class);
		method.invoke (this, x990);
		//
		return this;
	}	//	get

	/**
	 * 		Contador do Bloco Atual
	 * 	@return Contador do bloco
	 */
	private int getCount ()
	{
		return getCount (null);
	}	//	getCount
	
	/**
	 * 		Contador do Bloco Atual
	 * 	@return Contador do bloco
	 */
	public int getCount (Map<String, Integer> map)
	{
		return SPEDUtil.count (this, map);
	}	//	getCount

	/**
	 * 	Block Code
	 * 	@return Block Code e.g. for Bloco0 returns 0
	 */
	private String getBlockCode ()
	{
		return this.getClass().getName().substring (this.getClass().getName().length() - 1);
	}	//	getBlockCode
	
	/**
	 * 	FIXME: Mudar para um método específico, pois toString 
	 * 		pode ficar muito grande e lento para debugar
	 */
	public String toString()
	{
		try
		{
			Class<?> clazz = getClass();
			
			if (!clazz.getSuperclass().equals (BlocoSPED.class))
				return "";

			Field[] fields = clazz.getDeclaredFields();
			StringBuilder result = new StringBuilder();
						
			for (Field field : fields) 
			{
				if (!field.isAnnotationPresent (XMLFieldProperties.class))
					continue;

				XMLFieldProperties annotation = field.getAnnotation (XMLFieldProperties.class);
				
				if(!annotation.isSPEDField())
					continue;

				String fieldName = field.getName().substring(0, 1).toUpperCase() + field.getName().substring(1);;
				
				Class<?> noparams[] = {};
				Object[] noargs = null;
				
				Method method = clazz.getDeclaredMethod ("get" + fieldName, noparams);
				Object content = method.invoke (this, noargs);
				
				//	Do Nothing
				if (content == null)
					;
				
				//	List
				else if (content instanceof List)
				{
					for (Object item : (List<?>) content)
					{
						result.append (item.toString());
						//
						if (!result.toString().endsWith(SPEDUtil.EOL))
							result.append (SPEDUtil.EOL);
					}
				}
				
				//	Set
				else if (content instanceof Set)
				{
					for (Object item : (Set<?>) content)
					{
						result.append (item.toString());
						//
						if (!result.toString().endsWith(SPEDUtil.EOL))
							result.append (SPEDUtil.EOL);
					}
				}
				
				//	Outros
				else 
				{
					result.append (content.toString());
					//
					if (!result.toString().endsWith(SPEDUtil.EOL))
						result.append (SPEDUtil.EOL);
				}
			}
			//
			return result.toString();
		}
		catch (Exception e)
		{
			e.printStackTrace();
			
			return "";
		}
	}	//	toString
}	//	BlocoSPED
