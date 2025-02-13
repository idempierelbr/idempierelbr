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
package org.idempierelbr.nfe.util;

import org.compiere.model.MSysConfig;
import org.compiere.util.CLogger;
import org.compiere.util.Env;

import br.gov.sp.fazenda.dsge.brazilutils.uf.UF;
import br.gov.sp.fazenda.dsge.brazilutils.uf.ie.InscricaoEstadual;

/**
 *		Utility class for ADempiereLBR BPartner
 *
 *	@author Mario Grigioni (Kenos, www.kenos.com.br)
 *	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: BPartnerUtil.java, v1.0 2009/12/18 10:23:29 PM, mgrigioni Exp $
 */
public abstract class BPartnerUtilNfe
{
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(BPartnerUtilNfe.class);
	
	/**
	 * validaIE
	 * @param ie
	 * @param uf
	 * @return NULL if Invalid OR IE with onlynumbers
	 */
	public static String validaIE(String ie, UF uf)
	{
		if (ie == null || uf == null)
			return  "";
		
		else if (!ie.toUpperCase().contains("ISENT"))
		{
			InscricaoEstadual iEstadual = uf.getInscricaoEstadual();
			iEstadual.setNumber(ie);
			
			boolean skipValidation = MSysConfig.getBooleanValue("LBR_SKIP_IE_VALIDATION", false, Env.getAD_Client_ID(Env.getCtx()));
			if (skipValidation)
				return iEstadual.getNumber();
			
			//
			if (!iEstadual.isValid()){
				if (iEstadual.getInvalidCause() != null)
					return null;
				else
					return iEstadual.getNumber();
			}
			else
				return iEstadual.getNumber();
		}

		return ie;
	} //validaIE

} 	//	BPartnerUtilNfe
