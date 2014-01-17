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
package org.idempierelbr.tax.wrapper;

import java.math.BigDecimal;
import java.sql.Timestamp;
import org.compiere.model.*;
import org.compiere.util.KeyNamePair;

/** Generated Interface for M_Product
 *  @author iDempiere (generated) 
 *  @version Release 2.0
 */
@SuppressWarnings("all")
public interface I_W_M_Product extends org.idempierelbr.core.wrapper.I_W_M_Product
{
	/** 0 - Domestic = 0 */
	public static final String LBR_PRODUCTSOURCE_0_Domestic = "0";
	/** 1 - Imported = 1 */
	public static final String LBR_PRODUCTSOURCE_1_Imported = "1";
	/** 2 - Imported - Acquired from a domestic distributor = 2 */
	public static final String LBR_PRODUCTSOURCE_2_Imported_AcquiredFromADomesticDistributor = "2";
	/** 3 - Domestic with more than 40 percent Imported = 3 */
	public static final String LBR_PRODUCTSOURCE_3_DomesticWithMoreThan40PercentImported = "3";
	/** 4 - Domestic according to adjustments = 4 */
	public static final String LBR_PRODUCTSOURCE_4_DomesticAccordingToAdjustments = "4";
	/** 5 - Domestic until 40 percent Imported = 5 */
	public static final String LBR_PRODUCTSOURCE_5_DomesticUntil40PercentImported = "5";
	/** 6 - Foreign - Direct import no domestic similar = 6 */
	public static final String LBR_PRODUCTSOURCE_6_Foreign_DirectImportNoDomesticSimilar = "6";
	/** 7 - Foreign - Acquired from domestic distributor no similar = 7 */
	public static final String LBR_PRODUCTSOURCE_7_Foreign_AcquiredFromDomesticDistributorNoSimilar = "7";
	/** 8 - Domestic with more than 70 percent Imported = 8 */
	public static final String LBR_PRODUCTSOURCE_8_DomesticWithMoreThan70PercentImported = "8";
	
    /** Column name LBR_FiscalGroup_Product_ID */
    public static final String COLUMNNAME_LBR_FiscalGroup_Product_ID = "LBR_FiscalGroup_Product_ID";

	/** Set Product Fiscal Group.
	  * Identifies a Product Fiscal Group
	  */
	public void setLBR_FiscalGroup_Product_ID (int LBR_FiscalGroup_Product_ID);

	/** Get Product Fiscal Group.
	  * Identifies a Product Fiscal Group
	  */
	public int getLBR_FiscalGroup_Product_ID();

    /** Column name LBR_ProductCategory_ID */
    public static final String COLUMNNAME_LBR_ProductCategory_ID = "LBR_ProductCategory_ID";

	/** Set CFOP Product Category.
	  * Identifies a CFOP Product Category
	  */
	public void setLBR_ProductCategory_ID (int LBR_ProductCategory_ID);

	/** Get CFOP Product Category.
	  * Identifies a CFOP Product Category
	  */
	public int getLBR_ProductCategory_ID();

    /** Column name LBR_ProductSource */
    public static final String COLUMNNAME_LBR_ProductSource = "LBR_ProductSource";

	/** Set Product Source.
	  * Identifies a Product Source
	  */
	public void setLBR_ProductSource (String LBR_ProductSource);

	/** Get Product Source.
	  * Identifies a Product Source
	  */
	public String getLBR_ProductSource();
}
