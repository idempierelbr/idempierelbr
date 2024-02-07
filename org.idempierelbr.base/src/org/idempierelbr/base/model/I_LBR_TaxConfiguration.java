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
package org.idempierelbr.base.model;

import java.math.BigDecimal;
import java.sql.Timestamp;
import org.compiere.model.*;
import org.compiere.util.KeyNamePair;

/** Generated Interface for LBR_TaxConfiguration
 *  @author iDempiere (generated) 
 *  @version Release 2.0
 */
@SuppressWarnings("all")
public interface I_LBR_TaxConfiguration 
{

    /** TableName=LBR_TaxConfiguration */
    public static final String Table_Name = "LBR_TaxConfiguration";

    /** AD_Table_ID=1000018 */
    public static final int Table_ID = MTable.getTable_ID(Table_Name);

    KeyNamePair Model = new KeyNamePair(Table_ID, Table_Name);

    /** AccessLevel = 3 - Client - Org 
     */
    BigDecimal accessLevel = BigDecimal.valueOf(3);

    /** Load Meta Data */

    /** Column name AD_Client_ID */
    public static final String COLUMNNAME_AD_Client_ID = "AD_Client_ID";

	/** Get Client.
	  * Client/Tenant for this installation.
	  */
	public int getAD_Client_ID();

    /** Column name AD_Org_ID */
    public static final String COLUMNNAME_AD_Org_ID = "AD_Org_ID";

	/** Set Organization.
	  * Organizational entity within client
	  */
	public void setAD_Org_ID (int AD_Org_ID);

	/** Get Organization.
	  * Organizational entity within client
	  */
	public int getAD_Org_ID();

    /** Column name Created */
    public static final String COLUMNNAME_Created = "Created";

	/** Get Created.
	  * Date this record was created
	  */
	public Timestamp getCreated();

    /** Column name CreatedBy */
    public static final String COLUMNNAME_CreatedBy = "CreatedBy";

	/** Get Created By.
	  * User who created this records
	  */
	public int getCreatedBy();

    /** Column name IsActive */
    public static final String COLUMNNAME_IsActive = "IsActive";

	/** Set Active.
	  * The record is active in the system
	  */
	public void setIsActive (boolean IsActive);

	/** Get Active.
	  * The record is active in the system
	  */
	public boolean isActive();

    /** Column name IsSOTrx */
    public static final String COLUMNNAME_IsSOTrx = "IsSOTrx";

	/** Set Sales Transaction.
	  * This is a Sales Transaction
	  */
	public void setIsSOTrx (boolean IsSOTrx);

	/** Get Sales Transaction.
	  * This is a Sales Transaction
	  */
	public boolean isSOTrx();

    /** Column name LBR_ExceptionType */
    public static final String COLUMNNAME_LBR_ExceptionType = "LBR_ExceptionType";

	/** Set Tax Exception Type.
	  * Defines the Tax Exception Type
	  */
	public void setLBR_ExceptionType (String LBR_ExceptionType);

	/** Get Tax Exception Type.
	  * Defines the Tax Exception Type
	  */
	public String getLBR_ExceptionType();

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

	public I_LBR_FiscalGroup_Product getLBR_FiscalGroup_Product() throws RuntimeException;

    /** Column name LBR_IsPOTrx */
    public static final String COLUMNNAME_LBR_IsPOTrx = "LBR_IsPOTrx";

	/** Set Purchase Transaction.
	  * This is a Purchase Transaction
	  */
	public void setLBR_IsPOTrx (boolean LBR_IsPOTrx);

	/** Get Purchase Transaction.
	  * This is a Purchase Transaction
	  */
	public boolean isLBR_IsPOTrx();

    /** Column name LBR_TaxConfiguration_ID */
    public static final String COLUMNNAME_LBR_TaxConfiguration_ID = "LBR_TaxConfiguration_ID";

	/** Set Tax Configuration.
	  * Tax Configuration Used
	  */
	public void setLBR_TaxConfiguration_ID (int LBR_TaxConfiguration_ID);

	/** Get Tax Configuration.
	  * Tax Configuration Used
	  */
	public int getLBR_TaxConfiguration_ID();

    /** Column name LBR_TaxConfiguration_UU */
    public static final String COLUMNNAME_LBR_TaxConfiguration_UU = "LBR_TaxConfiguration_UU";

	/** Set LBR_TaxConfiguration_UU	  */
	public void setLBR_TaxConfiguration_UU (String LBR_TaxConfiguration_UU);

	/** Get LBR_TaxConfiguration_UU	  */
	public String getLBR_TaxConfiguration_UU();

    /** Column name M_Product_ID */
    public static final String COLUMNNAME_M_Product_ID = "M_Product_ID";

	/** Set Product.
	  * Product, Service, Item
	  */
	public void setM_Product_ID (int M_Product_ID);

	/** Get Product.
	  * Product, Service, Item
	  */
	public int getM_Product_ID();

	public org.compiere.model.I_M_Product getM_Product() throws RuntimeException;

    /** Column name Updated */
    public static final String COLUMNNAME_Updated = "Updated";

	/** Get Updated.
	  * Date this record was updated
	  */
	public Timestamp getUpdated();

    /** Column name UpdatedBy */
    public static final String COLUMNNAME_UpdatedBy = "UpdatedBy";

	/** Get Updated By.
	  * User who updated this records
	  */
	public int getUpdatedBy();
}
