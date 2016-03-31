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
 * REGISTRO 1001: ABERTURA DO BLOCO 1
 * 
 * 
 * @author Pablo Boff Pigozzo, pablobp4
 * @version $ 07/08/2012 11:03 $
 */
public class BLOCO1 {

	@XStreamAlias("Id")
	@XStreamAsAttribute
	@XMLFieldProperties(needsValidation = true, id = "R1001")
	private R1001 r1001;
	
	@XMLFieldProperties(needsValidation = true, id = "R1010")
	private R1010 r1010;
	
	@XMLFieldProperties(needsValidation = true, id = "R1600")
	private List<R1600> r1600 = new ArrayList<R1600>();

	@XMLFieldProperties(needsValidation = true, id = "R1990")
	private R1990 r1990;

	public R1001 getR1001() {
		return r1001;
	}

	public void setR1001(R1001 r1001) {
		this.r1001 = r1001;
	}
	
	public R1010 getR1010() {
		return r1010;
	}

	public void setR1010(R1010 r1010) {
		this.r1010 = r1010;
	}
	
	public void addR1600(R1600 r1600) {
		this.r1600.add(r1600);
	}
	
	public List<R1600> getR1600() {
		return r1600;
	}

	public R1990 getR1990() {
		return r1990;
	}

	public void setR1990(R1990 r1990) {
		this.r1990 = r1990;
	}

	/**
	 * To String
	 */
	@Override
	public String toString() {
		//
		StringBuilder result = new StringBuilder();

		// init
		result.append(r1001);
		result.append(r1010);
		
		for (R1600 r1600s : r1600)
			result.append(r1600s);

		// encerramento do arquivo
		result.append(r1990);

		//
		return result.toString();
	}

} // R0000