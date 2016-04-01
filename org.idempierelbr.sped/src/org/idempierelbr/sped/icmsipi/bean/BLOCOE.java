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
 * BLOCO E: APURAÇÃO DO ICMS E DO IPI
 * 
 * 
 * @author Pablo Boff Pigozzo, pablobp4
 * @version $ 07/08/2012 11:03 $
 */
public class BLOCOE {

	@XStreamAlias("Id")
	@XStreamAsAttribute
	@XMLFieldProperties(needsValidation = true, id = "RE001")
	private RE001 rE001;

	@XMLFieldProperties(needsValidation = true, id = "RE100")
	private RE100 rE100;

	@XMLFieldProperties(needsValidation = true, id = "RE200")
	private List<RE200> rE200 = new ArrayList<RE200>();

	@XMLFieldProperties(needsValidation = true, id = "RE500")
	private RE500 rE500;

	@XMLFieldProperties(needsValidation = true, id = "RE990")
	private RE990 rE990;

	public RE001 getrE001() {
		return rE001;
	}

	public void setrE001(RE001 rE001) {
		this.rE001 = rE001;
	}

	public RE100 getrE100() {
		return rE100;
	}

	public void setrE100(RE100 rE100) {
		this.rE100 = rE100;
	}

	public List<RE200> getrE200() {
		return rE200;
	}

	public void setrE200(List<RE200> rE200) {
		this.rE200 = rE200;
	}

	public RE500 getrE500() {
		return rE500;
	}

	public void setrE500(RE500 rE500) {
		this.rE500 = rE500;
	}

	public RE990 getrE990() {
		return rE990;
	}

	public void setrE990(RE990 rE990) {
		this.rE990 = rE990;
	}
	
	/**
	 * Subtrair devoluções dos registros RE250, filhos do RE210
	 */
	public void subtractReversalRE250()
	{
		// 
		for(RE200 aux_re200 : getrE200())
		{
			// 
			if(aux_re200.getrE210() == null)
				continue;
			
			// 
			aux_re200.getrE210().subtractReversalRE250();
		}
			
	}
	

	/**
	 * To String
	 */
	@Override
	public String toString() 
	{
	
		//
		StringBuilder result = new StringBuilder();

		
		// init
		result.append(rE001);

		/*
		 * E100 e filhos
		 */
		if(rE100 != null)
		{
			// E100
			result.append(rE100);
			
			// E110
			result.append(rE100.getrE110() == null ? "" : rE100.getrE110());
		
			// E111
			for (RE111 aux_rE111 : rE100.getrE111())
				result.append(aux_rE111);
			
			// E116
			result.append(rE100.getrE116() == null ? "" : rE100.getrE116());
		}

		
		/*
		 * E200 e filhos
		 */
		for(RE200 aux_re200 : rE200)
		{
			// E200
			result.append(aux_re200);
			
			// 
			if(aux_re200.getrE210() != null)
			{
				// E210
				result.append(aux_re200.getrE210());
			
				// E250
				for (RE250 aux_rE250 : aux_re200.getrE210().getrE250())
					result.append(aux_rE250);
			}
		}

		/*
		 * E500 e filhos
		 */
		if(rE500 != null)
		{
			// E500
			result.append(rE500);
			
			// E510
			for (RE510 aux_rE510 : rE500.getrE510())
				result.append(aux_rE510);
			
			// E520
			RE520 rE520 = rE500.getrE520();
			if ( rE520 != null ) {
				result.append( rE520 );
				
				// E530
				for ( RE530 aux_rE530 : rE520.getrE530())
					result.append(aux_rE530);
			}
		}			

		// counter
		result.append(rE990);

		//
		return result.toString();
	}

} // R0000