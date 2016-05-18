/******************************************************************************
 * Product: iDempiere ERP & CRM Smart Business Solution                       *
 * Copyright (C) 1999-2012 ComPiere, Inc. All Rights Reserved.                *
 * This program is free software, you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY, without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program, if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 * For the text or an alternative of this public license, you may reach us    *
 * ComPiere, Inc., 2620 Augustine Dr. #245, Santa Clara, CA 95054, USA        *
 * or via info@compiere.org or http://www.compiere.org/license.html           *
 *****************************************************************************/
package org.idempierelbr.core.wrapper;

import java.math.BigDecimal;
import java.sql.Timestamp;

import org.compiere.model.*;
import org.compiere.util.KeyNamePair;

/** Generated Interface for C_BPartner_Location
 *  @author iDempiere (generated) 
 *  @version Release 2.0
 */
@SuppressWarnings("all")
public interface I_W_C_BPartner_Location 
{
    /** Column name LBR_BPTypeBRIsValid */
    public static final String COLUMNNAME_LBR_BPTypeBRIsValid = "LBR_BPTypeBRIsValid";

	/** Set Brazilian BP Valid.
	  * Brazilian BP is Valid
	  */
	public void setLBR_BPTypeBRIsValid (boolean LBR_BPTypeBRIsValid);

	/** Get Brazilian BP Valid.
	  * Brazilian BP is Valid
	  */
	public boolean isLBR_BPTypeBRIsValid();

    /** Column name LBR_CCM */
    public static final String COLUMNNAME_LBR_CCM = "LBR_CCM";

	/** Set CCM.
	  * City Identification Code used in Brazil (City Tax ID)
	  */
	public void setLBR_CCM (String LBR_CCM);

	/** Get CCM.
	  * City Identification Code used in Brazil (City Tax ID)
	  */
	public String getLBR_CCM();

    /** Column name LBR_CNPJ */
    public static final String COLUMNNAME_LBR_CNPJ = "LBR_CNPJ";

	/** Set CNPJ.
	  * Used to identify Legal Entities in Brazil
	  */
	public void setLBR_CNPJ (String LBR_CNPJ);

	/** Get CNPJ.
	  * Used to identify Legal Entities in Brazil
	  */
	public String getLBR_CNPJ();

    /** Column name LBR_IE */
    public static final String COLUMNNAME_LBR_IE = "LBR_IE";

	/** Set IE.
	  * Used to identify the IE (State Tax ID)
	  */
	public void setLBR_IE (String LBR_IE);

	/** Get IE.
	  * Used to identify the IE (State Tax ID)
	  */
	public String getLBR_IE();

	/** Contribuinte = 1 */
	public static final String LBR_TYPEIE_Contribuinte = "1";
	/** Isento = 2 */
	public static final String LBR_TYPEIE_Isento = "2";
	/** Não Contribuinte = 9 */
	public static final String LBR_TYPEIE_NãoContribuinte = "9";

	/** Column name LBR_TypeIE */
	public static final String COLUMNNAME_LBR_TypeIE = "LBR_TypeIE";

	/** Set IE Inscription Type */
	public void setLBR_TypeIE(String LBR_TypeIE);

	/** Get IE Inscription Type */
	public String getLBR_TypeIE();

    /** Column name LBR_Suframa */
    public static final String COLUMNNAME_LBR_Suframa = "LBR_Suframa";

	/** Set Suframa.
	  * Brazilian SUFRAMA Identification Number
	  */
	public void setLBR_Suframa (String LBR_Suframa);

	/** Get Suframa.
	  * Brazilian SUFRAMA Identification Number
	  */
	public String getLBR_Suframa();

 }
