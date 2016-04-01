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
 * BLOCO H: INVENTÁRIO FÍSICO
 * 
 * 
 * @author Pablo Boff Pigozzo, pablobp4
 * @version $ 07/08/2012 11:03 $
 */
public class BLOCO9 {

	@XStreamAlias("Id")
	@XStreamAsAttribute
	@XMLFieldProperties(needsValidation = true, id = "R9001")
	private R9001 r9001;

	@XMLFieldProperties(needsValidation = true, id = "R9900")
	private List<R9900> r9900 = new ArrayList<R9900>();

	@XMLFieldProperties(needsValidation = true, id = "R9990")
	private R9990 r9990;

	@XMLFieldProperties(needsValidation = true, id = "R9999")
	private R9999 r9999;

	public R9001 getR9001() {
		return r9001;
	}

	public void setR9001(R9001 r9001) {
		this.r9001 = r9001;
	}

	public List<R9900> getR9900() {
		return r9900;
	}

	public void setR9900(List<R9900> r9900) {
		this.r9900 = r9900;
	}

	public R9990 getR9990() {
		return r9990;
	}

	public void setR9990(R9990 r9990) {
		this.r9990 = r9990;
	}

	public R9999 getR9999() {
		return r9999;
	}

	public void setR9999(R9999 r9999) {
		this.r9999 = r9999;
	}

	/**
	 * To String
	 */
	@Override
	public String toString() {
		//
		StringBuilder result = new StringBuilder();

		// init
		result.append(r9001);

		// counters de todos os registros
		for (R9900 aux_r9900 : getR9900())
			result.append(aux_r9900);

		// encerramento do bloco 9
		result.append(r9990);

		// encerramento do arquivo 
		result.append(r9999);

		
		//
		return result.toString();
	}

} // R0000