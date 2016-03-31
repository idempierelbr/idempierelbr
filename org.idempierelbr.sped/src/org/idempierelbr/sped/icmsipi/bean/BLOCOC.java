/******************************************************************************
 * Product: ADempiereLBR - ADempiere Localization Brazil * This program is free
 * software; you can redistribute it and/or modify it * under the terms version
 * 2 of the GNU General Public License as published * by the Free Software
 * Foundation. This program is distributed in the hope * that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied * warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. * See the GNU General
 * Public License for more details. * You should have received a copy of the GNU
 * General Public License along * with this program; if not, write to the Free
 * Software Foundation, Inc., * 59 Temple Place, Suite 330, Boston, MA
 * 02111-1307 USA. *
 *****************************************************************************/
package org.idempierelbr.sped.icmsipi.bean;

import java.util.ArrayList;
import java.util.List;

import org.idempierelbr.sped.annotation.XMLFieldProperties;


import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;

/**
 * BLOCO C: DOCUMENTOS FISCAIS I - MERCADORIAS (ICMS/IPI)
 * 
 * 
 * @author Pablo Boff Pigozzo, pablobp4
 * @version $Id: Bloco0.java, 07/08/2012 11:03
 */
public class BLOCOC {

	@XStreamAlias("Id")
	@XStreamAsAttribute
	@XMLFieldProperties(needsValidation = true, id = "RC001")
	private RC001 rC001;

	@XMLFieldProperties(needsValidation = true, id = "RC100")
	private List<RC100> rC100 = new ArrayList<RC100>();
	
	@XMLFieldProperties(needsValidation = true, id = "RC500")
	private List<RC500> rC500 = new ArrayList<RC500>();

	@XMLFieldProperties(needsValidation = true, id = "RC990")
	private RC990 rC990;

	public RC001 getrC001() {
		return rC001;
	}

	public void setrC001(RC001 rC001) {
		this.rC001 = rC001;
	}

	public List<RC100> getrC100() {
		return rC100;
	}

	public void setrC100(List<RC100> rC100) {
		this.rC100 = rC100;
	}
	
	public List<RC500> getrC500() {
		return rC500;
	}

	public void setrC500(List<RC500> rC500) {
		this.rC500 = rC500;
	}
	
	public void addrC500(RC500 rC500) {
		this.rC500.add(rC500);
	}

	public RC990 getrC990() {
		return rC990;
	}

	public void setrC990(RC990 rC990) {
		this.rC990 = rC990;
	}

	/**
	 * Adicionar registo RC100 ao bloco C
	 * 
	 * @param rc100
	 */
	public void addrC100(RC100 rc100) 
	{
		// adicionar rc100
		this.rC100.add(rc100);
		
	}
	
	/**
	 * Verificar exceções dos registro C100 deste bloco
	 */
	public void checkException() throws Exception
	{
		// 
		for(RC100 reg : getrC100())
			reg.checkExceptions();
	}
	
	
	
	/**
	 * 	To String
	 */
	@Override
	public String toString ()
	{
		//
		StringBuilder result = new StringBuilder();

		// init
		result.append(rC001.toString());
		
		// C100 e filhos
		for(RC100 aux_rc100 : rC100)
		{
			// NF
			result.append(aux_rc100.toString());
		
			// DI
			if(aux_rc100.getrC120() != null)
				result.append(aux_rc100.getrC120().toString());
			
			// ISS, ISSQN... 
			for(RC130 aux_rc130 : aux_rc100.getrC130())
				result.append(aux_rc130.toString());
	
			// Dados da Fatura
			if(aux_rc100.getrC140() != null)
				result.append(aux_rc100.getrC140().toString());
	
			// Itens da NF
			for(RC170 aux_rc170 : aux_rc100.getrC170())
				result.append(aux_rc170.toString());
	
			// Apuração pos CST, CFOP, ALIQ. ICMS
			for(RC190 aux_rc190 : aux_rc100.getrC190())
				result.append(aux_rc190.toString());

		}
		
		for (RC500 c500 : rC500)
		{
			result.append(c500);
			for (RC590 c590 : c500.getrC590())
				result.append(c590);
		}
		
		// counter
		result.append(rC990.toString());

		//
		return result.toString();
	}

} // R0000