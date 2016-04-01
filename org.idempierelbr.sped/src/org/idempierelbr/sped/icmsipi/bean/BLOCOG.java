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
 * BLOCO G: CRÉDITO DE ICMS ATIVO PERMANENTE
 * 
 * 
 * @author Pablo Boff Pigozzo, pablobp4
 * @version $ 07/08/2012 11:03 $
 * 
 * @author Claudemir Todo Bom http://todobom.com
 * 
 */
public class BLOCOG {

	@XStreamAlias("Id")
	@XStreamAsAttribute
	@XMLFieldProperties(needsValidation = true, id = "RG001")
	private RG001 rG001;

	@XMLFieldProperties(needsValidation = true, id = "RG110")
	private RG110 rG110;
	
	@XMLFieldProperties(needsValidation = true, id = "RG990")
	private RG990 rG990;

	public RG001 getrG001() {
		return rG001;
	}

	public void setrG001(RG001 rG001) {
		this.rG001 = rG001;
	}

	public RG110 getrG110() {
		return rG110;
	}

	public void setrG110(RG110 rG110) {
		this.rG110 = rG110;
	}


	public RG990 getrG990() {
		return rG990;
	}

	public void setrG990(RG990 rG990) {
		this.rG990 = rG990;
	}

	/**
	 * To String
	 */
	@Override
	public String toString() {
		//
		StringBuilder result = new StringBuilder();

		// init
		result.append(rG001);

		// G110 e filhos
		if (rG110 != null ) {
			rG110.Update();
			result.append(rG110);
			// Itens do imobilizado
			for(RG125 aux_rg125 : rG110.getrG125()) {
				result.append(aux_rg125);
				// registro da baixa por fim da apropriação
				RG125 baixa_rg125 = aux_rg125.getrG125();
				if (baixa_rg125!=null)
					result.append(baixa_rg125);
				// registro do documento fiscal
				RG130 aux_rg130 = aux_rg125.getrG130();
				if (aux_rg130!=null) {
					result.append(aux_rg130);
					result.append(aux_rg125.getrG140());
				}
			}
		}

		// counter
		result.append(rG990);

		//
		return result.toString();
	}

} // R0000