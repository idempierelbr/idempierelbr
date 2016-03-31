/******************************************************************************
 * Product: ADempiereLBR - ADempiere Localization Brazil                      *
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

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.compiere.util.CLogger;
import org.idempierelbr.core.util.TextUtil;
import org.idempierelbr.sped.annotation.Validate;
import org.idempierelbr.sped.annotation.XMLFieldProperties;
import org.idempierelbr.sped.utils.SPEDUtil;


/**
 * Interface de Registro do Projeto SPED
 * 
 * Sistema Público de Escrituração Digital
 * http://www1.receita.fazenda.gov.br/
 * 
 * @author Ricardo Santana (Kenos, www.kenos.com.br)
 * 		<li>Classe original Registro_SPED de Novembro de 2009
 * 
 * @contributor Mario Grigioni
 * 		<li>Modificação do nome para RegSped, Remoção dos créditos do 
 * 				autor e melhorias em geral
 * 
 * @contributor Pablo Boff Pigozzo
 * 		<li>Adicionado parte da validação das anottations
 * @version $Id: RegSped.java, v1.0 2013/02/27 7:48:59 PM, ralexsander Exp $
 */
public abstract class RegSped implements Comparable<Object>
{
	/**	
	 * 	Logger			
	 */
	public CLogger log = CLogger.getCLogger (RegSped.class);
	
	/**
	 * 	String PIPE
	 */
	public static final String PIPE = "|";
	
	/**
	 * 	String EOL
	 */
	public static final String EOL  = TextUtil.EOL_WIN32;
	
	/**
	 * 	Nome do Registro
	 */
	protected String REG = getClassName();
		
	private String errorMsg;
	
	/**
	 * 		Contador do Bloco Atual
	 * 	@return Contador do bloco
	 */
	public int getCount ()
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
	 * 	Verifica se as informações são válidas de acordo com as Annotations
	 * 
	 * 	@return true if is valid
	 */
	public boolean isValid ()
	{
		boolean isValid = true;
		errorMsg = Validate.doIt (this);
		
		if (errorMsg != null && errorMsg.length() > 0)
			return false;
		
		return isValid;
	}	//	isValid
	
	@Deprecated
	public int compareTo (Object arg0) 
	{
		return 0;
	}	//	compareTo
	
	/**
	 * Retornar a mensagem de erro
	 * 
	 * @return errorMsg
	 */
	public String getErrorMsg()
	{
		return errorMsg;
	}
	
	/**
	 * Constructor
	 * 	Usar o novo contador dinâmico, conforme SPED Contribuições
	 */
	@Deprecated
	public RegSped () 
	{
		addCounter ();
	}	//	RegSped
	
	/**
	 * 	Hash para evitar duplicidade nos Sets
	 */
	@Override
	public int hashCode ()
	{
		return toString().hashCode();
	}	//	hashCode

	/**
	 * 	Usar o SPEDComparator
	 */
	@Override
	@Deprecated
	public boolean equals(Object obj) 
	{
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		RegSped other = (RegSped) obj;
		if (REG == null) {
			if (other.REG != null)
				return false;
		} else if (!REG.equals(other.REG))
			return false;
		return true;
	}

	/**
	 * 	Método para retornar o nome do registro
	 * 	@return Registro Atual
	 */
	public String getReg ()
	{
		return REG;
	}	//	getReg
	
	/**
	 * 	Método para adicionar registro ao contador
	 */
	@Deprecated
	public void addCounter()
	{
		CounterSped.register(getReg());
	}
	
	/**
	 * Método para subtrair registro ao contador
	 */
	@Deprecated
	public void subtractCounter()
	{
		CounterSped.unregister(getReg());
	}
	
	/**
	 * Método para pegar o className e retornar o registro
	 */
	private String getClassName ()
	{
		String FQClassName = this.getClass().getName();
		//
		int firstChar = FQClassName.lastIndexOf ('.') + 1;
		if (firstChar > 0) 
			FQClassName = FQClassName.substring (firstChar);
		//
		return FQClassName.substring(1);
	}	//	getClassName
	
	/**
	 * 	To String
	 */
	public String toString()
	{
		try
		{
			// carregar class
			Class<?> clazz = getClass();
			
			// verificar superclass
			if (!clazz.getSuperclass().equals (RegSped.class))
				return "";

			// campos 
			Field[] fields = clazz.getDeclaredFields();
			StringBuilder result = new StringBuilder(PIPE);
			
			// registro
			result.append(clazz.getSimpleName().substring(1, 5));			
			result.append(PIPE);
			
			for (Field field : fields) 
			{
				
				// só gerar dos campos que tem annotation
				if (!field.isAnnotationPresent (XMLFieldProperties.class))
					continue;

				// 
				XMLFieldProperties annotation = field.getAnnotation (XMLFieldProperties.class);
				
				// verificar se é um SPED Field
				if(!annotation.isSPEDField())
					continue;
	
				// 
				String fieldName = field.getName().substring(0, 1).toUpperCase() + field.getName().substring(1);;
				
				//
				Class<?> noparams[] = {};
				Object[] noargs = null;
				
				//
				Method method = clazz.getDeclaredMethod ("get" + fieldName, noparams);
				Object content = method.invoke (this, noargs);
				
				//	Do Nothing
				if (content == null)
					;
				
				//	BigDecimal
				else if (content instanceof BigDecimal)
				{
					/*
					 * 100.00 >> 10000
					 * 0.1023 >> 01023
					 */
					BigDecimal contentBD = (BigDecimal) content;
					result.append(TextUtil.toNumeric(contentBD, annotation.scale()));
				}
				
				//	Timestamp
				else if (content instanceof Timestamp)
				{
					//
					Timestamp contentTS = (Timestamp) content;
					result.append (TextUtil.timeToString (contentTS, "ddMMyyyy"));
				}
				
				//	String
				else if (content instanceof String)
				{
					String contentSTR;
					
					// remover especiais e não permitir espaços em branco, antes e depois do conteúdo
					if (annotation.id() != null && annotation.id().toUpperCase().equals("EMAIL"))
						contentSTR = (String) content;
					else
						contentSTR = TextUtil.retiraEspecial((String) content).trim();
					
					// preencher, se for número, converter para tal. Ex.: CPF: 111.111.111-11 >> 11111111111
					if(annotation.isNumber())
						contentSTR = TextUtil.toNumeric(contentSTR);
					
					// ajustar tamanho máximo
					if(annotation.maxSize() > 0 && contentSTR.length() > annotation.maxSize())
						contentSTR = contentSTR.substring(0, annotation.maxSize());
					
					// preencher o tamanho mínimo com zeros a esquerda quando o campo não nulo
					if(annotation.minSize() > contentSTR.length() && contentSTR.length() > 1)
						contentSTR = TextUtil.lPad(contentSTR, annotation.minSize());
					
					// trim novamente
					result.append(TextUtil.removeEOL (contentSTR.trim()));
				}
				
				//	List
				else if (content instanceof List)
				{
					for (Object item : (List<?>) content)
					{
						if (!result.toString().endsWith(SPEDUtil.EOL))
							result.append (SPEDUtil.EOL);
						result.append (item.toString());
					}
					//
					continue;
				}
				
				//	Set
				else if (content instanceof Set)
				{
					for (Object item : (Set<?>) content)
					{
						if (!result.toString().endsWith(SPEDUtil.EOL))
							result.append (SPEDUtil.EOL);
						result.append (item.toString());
					}
					//
					continue;
				}
				
				//	RegSped
				else if (content instanceof RegSped)
				{
					if (!result.toString().endsWith(SPEDUtil.EOL))
						result.append (SPEDUtil.EOL);
					result.append (content.toString());
					//
					continue;
				}
				
				//	Outros
				else 
					result.append (TextUtil.removeEOL (content.toString()));
				
				//	Commons
				result.append(PIPE);
			}
			
			// adicionar o fim de linha correto
			if (!result.toString().endsWith(SPEDUtil.EOL))
				result.append(EOL);
			
			// retornar linha formatada
			return result.toString();
		}
		catch (Exception e)
		{
			e.printStackTrace();
			
			log.severe("Falha no método toString() na Classe RegSped. Erro: " + 
					e.getMessage() + "/ linha: " + e.getStackTrace()[0].getLineNumber());
			
			return "";
		}
	}	//	toString
}	//	RegSped