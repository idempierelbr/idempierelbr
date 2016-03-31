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
public class BLOCOH {

	@XStreamAlias("Id")
	@XStreamAsAttribute
	@XMLFieldProperties(needsValidation = true, id = "RH001")
	private RH001 rH001;

	@XMLFieldProperties(needsValidation = true, id = "RH005")
	private RH005 rH005;

	@XMLFieldProperties(needsValidation = true, id = "RH990")
	private RH990 rH990;

	public RH001 getrH001() {
		return rH001;
	}

	public void setrH001(RH001 rH001) {
		this.rH001 = rH001;
	}

	public RH005 getrH005() {
		return rH005;
	}

	public void setrH005(RH005 rH005) {
		this.rH005 = rH005;
	}

	public RH990 getrH990() {
		return rH990;
	}

	public void setrH990(RH990 rH990) {
		this.rH990 = rH990;
	}

	
	
	
	
	/**
	 * To String
	 */
	@Override
	public String toString() {
		//
		StringBuilder result = new StringBuilder();

		// init
		result.append(rH001);

		// itens, qtdes e valores
		if(getrH005() != null)
		{

			// H005
			result.append(getrH005());

			// H010
			for (RH010 reg : getrH005().getrH010())
				result.append(reg);
			
		}

		// counter
		result.append(rH990);

		//
		return result.toString();
	}

} // R0000