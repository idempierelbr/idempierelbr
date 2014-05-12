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
package org.idempierelbr.core.util;

/**
 * 		Remover acento
 * 
 * 	@author Unkown
 *	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *		<li> Melhoria na chamada dos métodos
 */
public abstract class RemoverAcentos 
{
	static String acentuado = "çÇáéíóúıÁÉÍÓÚİàèìòùÀÈÌÒÙãõñäëïöüÿÄËÏÖÜÃÕÑâêîôûÂÊÎÔÛ¹²³ªº";
	static String semAcento = "cCaeiouyAEIOUYaeiouAEIOUaonaeiouyAEIOUAONaeiouAEIOU123ao";
	static char[] tabela;
	static 
	{
		tabela = new char[256];
		for (int i = 0; i < tabela.length; ++i) 
		{
			tabela[i] = (char) i;
		}
		for (int i = 0; i < acentuado.length(); ++i) 
		{
			tabela[acentuado.charAt(i)] = semAcento.charAt(i);
		}
	}	//	static

	/**
	 * 		Remove acentos de uma string
	 * 
	 * 	@param s
	 * 	@return
	 */
	public static String remover (final String str)
	{
		return remover (str, true);
	}	//	remover
	
	/**
	 * 		Remove acentos de uma string
	 * 
	 * 	@param s
	 * 	@return
	 */
	public static StringBuffer remover (final StringBuffer str, boolean special)
	{
		return new StringBuffer (RemoverAcentos.remover (str.toString(), special));
	}	//	remover

	/**
	 * 		Remove acentos de uma string
	 * 	@param str
	 * 	@param retiraEspecial
	 * 	@return
	 */
	public static String remover (final String str, boolean retiraEspecial) 
	{
		StringBuffer sb = new StringBuffer();
		if (str == null)
			return "";
		
		for (int i = 0; i < str.length(); ++i) 
		{
			char ch = str.charAt(i);
			if (ch < 256) 
			{
				sb.append(tabela[ch]);
			}
			else 
			{
				sb.append(ch);
			}
		}
		
		if (!retiraEspecial)
			return sb.toString().trim();
		
		String retorno = sb.toString();
		//
		retorno = retorno.replaceAll("½", "1/2").replaceAll("¼", "1/4").replaceAll("¾", "3/4");
		retorno = retorno.replaceAll("[^A-Za-z0-9 ]", " ").replaceAll(" +", " ");
		//
		return retorno.trim();
	}	//	remover
}	//	RemoverAcentos