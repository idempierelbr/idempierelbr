package org.idempierelbr.sped.icmsipi.util;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;

import org.compiere.util.CLogger;

/**
 *		Contador SPED
 *
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 * 		<li> Classe original de Janeiro de 2010 CounterSPED
 * 
 * 	@author Mario Grigioni
 * 		<li> Alterou a classe, mudando também o nome para CounterSped em Novembro de 2010
 * 
 * 	@version $Id: SPEDCounter.java, v1.0 2010/01/31 3:33:23 PM, ralexsander Exp $
 */
@Deprecated
public class CounterSped
{
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(CounterSped.class);
	
	/**	Contador de Registros	*/
	private static Map<String, Integer> regs = new HashMap<String, Integer>();

	//Limpa o contador de registros
	public static void clear(){
		regs = new HashMap<String, Integer>();
	}
	
	/**
	 * 	Adiciona o registro no contador
	 * 
	 * 	@param regName
	 */
	public static void register (String regName)
	{
		if (regs.containsKey(regName))
		{
			Integer count = regs.get(regName);
			regs.remove(regName);
			regs.put(regName, count+1);
		}
		else
			regs.put(regName, 1);
	}	//	register
	
	/**
	 * 	Remove o registro no contador
	 * 
	 * 	@param regName
	 */
	public static void unregister (String regName)
	{
		if (regs.containsKey(regName))
		{
			Integer count = regs.get(regName);
			regs.remove(regName);
			regs.put(regName, count-1);
		}
	}	//	unregister
		
	/**
	 * Retorna todos os registros do arquivo
	 * @return String[] registros
	 */
	public static String[] getRegsSped(){
		
		ArrayList<String> list = new ArrayList<String>(); 
		Object[] keys = regs.keySet().toArray();
		Arrays.sort(keys, SPEDComparator.get());
		//
		for (Object key : keys)
		{
			if (key instanceof String)
				list.add((String)key);
		}
		
		return list.toArray(new String[list.size()]);
	} // getRegsSacred
	
	/**
	 * 	Retorna o contador do registro especificado
	 * 	@return int
	 */
	public static int getCounter (String regName)
	{
		if (regs.containsKey(regName)){
			return regs.get(regName);
		}
		else
			log.log(Level.WARNING, "Registro não encontrado: " + regName);
			
		return 0;
	}	//	getCounter
			
	/**
	 * 	Retorna o contador do bloco especificado
	 * 	@return int
	 */
	public static int getBlockCounter (String bloco) {
		
		if (bloco == null || bloco.isEmpty()){
			log.log(Level.WARNING, "Bloco inválido: " + bloco);
			return 0;
		}
		
		if (bloco.length() > 1)
			bloco = bloco.substring(0, 1); //SE PASSAR O REGISTRO, RETORNA O CONTADOR DO BLOCO
		
		int counter = 0;
		Object[] keys = regs.keySet().toArray();
		//
		for (Object key : keys)
		{
			if (bloco == null || 
					(key instanceof String && ((String) key).charAt(0) == bloco.charAt(0)))
				counter += regs.get(key);
		}
		//
		return counter;
	}	//	getBlockCounter
	
	/**
	 * 	Retorna o contador total do arquivo
	 * 	@return int
	 */
	public static long getTotalCounter ()
	{
		int counter = 0;
		
		String[] regs = CounterSped.getRegsSped();
		for(int i=0; i<regs.length; i++){
			String reg = regs[i];
			int    qtd = CounterSped.getCounter(reg);
		
			counter += qtd;
		}
		
		return counter;
	} // getTotalCounter
	
}	// CounterSped