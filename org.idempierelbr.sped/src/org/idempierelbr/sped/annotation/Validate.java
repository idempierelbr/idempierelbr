/******************************************************************************
 * Copyright (C) 2011 Kenos Assessoria e Consultoria de Sistemas Ltda         *
 * Copyright (C) 2011 Ricardo Santana                                         *
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
package org.idempierelbr.sped.annotation;

import java.lang.reflect.Field;
import java.lang.reflect.Method;

import org.compiere.util.CLogger;

/**
 * 		Faz as validações necessárias, baseando nas anotações
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: Validate.java, v1.0 2012/05/13 3:03:09 PM, ralexsander Exp $
 */
public class Validate
{
	/**
	 * 	Logger
	 */
	private static CLogger log = CLogger.getCLogger (Validate.class);
	
	/**
	 * 		Perform the validation
	 * 
	 * 	@param obj
	 * 	@return
	 * 	@throws Exception
	 */
	public static String doIt (Object obj) 
	{
		if (obj == null)
			return "";
		
		StringBuffer error = new StringBuffer ("");

		try
		{
			Class<?> clazz = obj.getClass();
			Field[] fields = clazz.getDeclaredFields();
		
			for (Field field : fields) 
			{
				log.finer ("Processing Field: " + field);
				//
				if (!field.isAnnotationPresent (XMLFieldProperties.class))
					continue;
				
				XMLFieldProperties annotation = field.getAnnotation (XMLFieldProperties.class);				
				String fieldName = field.getName().substring(0, 1).toUpperCase() + field.getName().substring(1);;
				
				Class<?> noparams[] = {};
				Object[] noargs = null;
				//
				Method method = clazz.getDeclaredMethod ("get" + fieldName, noparams);
				Object content = method.invoke (obj, noargs);
				
				//	Validações Gerais
				if (annotation.isMandatory() && content == null)
					error.append("Erro: Campo vazio. ").append("\n")
							.append("Objeto=").append(obj.getClass().getName().substring(1+obj.getClass().getName().lastIndexOf("."))) 
							.append(", Nome=").append(annotation.name ())
							.append(", ID=").append(annotation.id ()).append("\n\n");
				
				//	Validações para String
				else if (content instanceof String)
				{
					String str = (String) content;
					
					// 	Verifica se o campo é nulo
					if (annotation.isMandatory() && str.isEmpty())
						error.append("Erro: Campo vazio. ").append("\n")
								.append("Objeto=").append(obj.getClass().getName().substring(1+obj.getClass().getName().lastIndexOf("."))) 
								.append(", Nome=").append(annotation.name ())
								.append(", ID=").append(annotation.id ()).append("\n\n");
					
					//	Verifica se o tamanho está correto
					else if (str != null && (str.length() < annotation.minSize() || (str.length() > annotation.maxSize() && annotation.maxSize() > 0)))
						error.append("Erro: Campo não corresponde aos padrõs exigidos. ").append("\n")
								.append("Objeto=").append(obj.getClass().getName().substring(1+obj.getClass().getName().lastIndexOf("."))) 
								.append(", Nome=").append(annotation.name ())
								.append(", ID=").append(annotation.id ())
								.append(", Tamanho Mínimo=").append(annotation.minSize ())
								.append(", Tamanho Máximo=").append(annotation.maxSize ())
								.append(", Conteúdo=").append(str).append("\n\n");
				}
				
				//	Validação recursiva
				if (annotation.needsValidation())
					error.append (doIt (content));
			}
		}
		catch (Exception e)
		{
			e.printStackTrace();
			return "Erro ao processar a validação.\n" + error.toString() + "\n" + e.getLocalizedMessage();
		}
		//
		return error.toString();
	}	//	doIt
}	//	Validate
