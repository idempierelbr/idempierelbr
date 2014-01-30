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
package org.idempierelbr.tax.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Properties;
import java.util.logging.Level;

import org.compiere.model.Lookup;
import org.compiere.util.DisplayType;
import org.compiere.util.KeyNamePair;
import org.compiere.util.NamePair;

/**
 *		Taxes Lookup
 *	
 *	@author Mario Grigioni (Kenos, www.kenos.com.br)
 *	@contributor Ricardo Santana (Kenos, www.kenos.com.br)
 *		<li>	Reforma no módulo de impostos
 *	@version $Id: MLBRTaxesLookup.java, v1.0 2007/11/14 13:48:41 AM, mgrigioni Exp $
 */
public final class MLBRTaxesLookup extends Lookup
	implements Serializable
{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 *	Constructor
	 *  @param ctx context
	 *  @param WindowNo window no (to derive AD_Client/Org for new records)
	 */
	public MLBRTaxesLookup (Properties ctx, int WindowNo)
	{
		super (DisplayType.TableDir, WindowNo);
		m_ctx = ctx;
	}	//	MLBRTaxesLookup

	/**	Context					*/
	private Properties 		m_ctx;

	/**
	 *	Get Display for Value (not cached)
	 *  @param value Location_ID
	 *  @return String Value
	 */
	public String getDisplay (Object value)
	{
		if (value == null)
			return null;
		MLBRTax tax = getTax(value, null);
		if (tax == null)
			return "<" + value.toString() + ">";
		return tax.getDescription();
	}	//	getDisplay

	/**
	 *	Get Object of Key Value
	 *  @param value value
	 *  @return Object or null
	 */
	public NamePair get (Object value)
	{
		if (value == null)
			return null;
		MLBRTax tax = getTax (value, null);
		if (tax == null)
			return null;
		return new KeyNamePair (tax.getLBR_Tax_ID(), tax.getDescription());
	}	//	get

	/**
	 *  The Lookup contains the key 
	 *  @param key Location_ID
	 *  @return true if key known
	 */
	public boolean containsKey (Object key)
	{
		return getTax(key, null) == null;
	}   //  containsKey

	/**************************************************************************
	 * 	Get Tax
	 * 	@param key ID as string or integer
	 *	@param trxName transaction
	 * 	@return X_LBR_Tax
	 */
	public MLBRTax getTax (Object key, String trxName)
	{
		if (key == null)
			return null;
		int LBR_Tax_ID = 0;
		if (key instanceof Integer)
			LBR_Tax_ID = ((Integer)key).intValue();
		else if (key != null)
			LBR_Tax_ID = Integer.parseInt(key.toString());
		//
		return getTax(LBR_Tax_ID, trxName);
	}	//	getTax
	
	/**
	 * 	Get Tax
	 * 	@param LBR_Tax_ID id
	 *	@param trxName transaction
	 * 	@return X_LBR_Tax
	 */
	public MLBRTax getTax (int LBR_Tax_ID, String trxName)
	{
		return new MLBRTax(m_ctx, LBR_Tax_ID, trxName);
	}	//	getTax

	/**
	 *	Get underlying fully qualified Table.Column Name.
	 *	Used for VLookup.actionButton (Zoom)
	 *  @return column name
	 */
	public String getColumnName ()
	{
		return "LBR_Tax_ID";
	}   //  getColumnName

	/**
	 *	Return data as sorted Array - not implemented
	 *  @param mandatory mandatory
	 *  @param onlyValidated only validated
	 *  @param onlyActive only active
	 * 	@param temporary force load for temporary display
	 *  @return null
	 */
	public ArrayList<Object> getData (boolean mandatory, boolean onlyValidated, boolean onlyActive, boolean temporary, boolean shortlist) // IDEMPIERE 90
	{
		log.log(Level.SEVERE, "not implemented");
		return null;
	}   //  getArray
}	//	MLBRTaxesLookup