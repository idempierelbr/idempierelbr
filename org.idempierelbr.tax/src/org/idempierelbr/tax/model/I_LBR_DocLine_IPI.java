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
package org.idempierelbr.tax.model;

import java.math.BigDecimal;
import java.sql.Timestamp;
import org.compiere.model.*;
import org.compiere.util.KeyNamePair;

/** Generated Interface for LBR_DocLine_IPI
 *  @author iDempiere (generated) 
 *  @version Release 3.1
 */
@SuppressWarnings("all")
public interface I_LBR_DocLine_IPI 
{

    /** TableName=LBR_DocLine_IPI */
    public static final String Table_Name = "LBR_DocLine_IPI";

    /** AD_Table_ID=1000028 */
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

    /** Column name CalculationType */
    public static final String COLUMNNAME_CalculationType = "CalculationType";

	/** Set Calculation	  */
	public void setCalculationType (String CalculationType);

	/** Get Calculation	  */
	public String getCalculationType();

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

    /** Column name IsTaxIncluded */
    public static final String COLUMNNAME_IsTaxIncluded = "IsTaxIncluded";

	/** Set Price includes Tax.
	  * Tax is included in the price 
	  */
	public void setIsTaxIncluded (boolean IsTaxIncluded);

	/** Get Price includes Tax.
	  * Tax is included in the price 
	  */
	public boolean isTaxIncluded();

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

    /** Column name LBR_DocLine_Details_ID */
    public static final String COLUMNNAME_LBR_DocLine_Details_ID = "LBR_DocLine_Details_ID";

	/** Set Doc Line Details.
	  * Doc Line Details
	  */
	public void setLBR_DocLine_Details_ID (int LBR_DocLine_Details_ID);

	/** Get Doc Line Details.
	  * Doc Line Details
	  */
	public int getLBR_DocLine_Details_ID();

	public I_LBR_DocLine_Details getLBR_DocLine_Details() throws RuntimeException;

    /** Column name LBR_DocLine_IPI_ID */
    public static final String COLUMNNAME_LBR_DocLine_IPI_ID = "LBR_DocLine_IPI_ID";

	/** Set Doc Line IPI.
	  * Doc Line IPI
	  */
	public void setLBR_DocLine_IPI_ID (int LBR_DocLine_IPI_ID);

	/** Get Doc Line IPI.
	  * Doc Line IPI
	  */
	public int getLBR_DocLine_IPI_ID();

    /** Column name LBR_DocLine_IPI_UU */
    public static final String COLUMNNAME_LBR_DocLine_IPI_UU = "LBR_DocLine_IPI_UU";

	/** Set Doc Line IPI.
	  * Doc Line IPI
	  */
	public void setLBR_DocLine_IPI_UU (String LBR_DocLine_IPI_UU);

	/** Get Doc Line IPI.
	  * Doc Line IPI
	  */
	public String getLBR_DocLine_IPI_UU();

    /** Column name LBR_IPI_OwnTaxStatus */
    public static final String COLUMNNAME_LBR_IPI_OwnTaxStatus = "LBR_IPI_OwnTaxStatus";

	/** Set Declarant IPI Tax Status.
	  * IPI tax status from the point of view of the declarant
	  */
	public void setLBR_IPI_OwnTaxStatus (String LBR_IPI_OwnTaxStatus);

	/** Get Declarant IPI Tax Status.
	  * IPI tax status from the point of view of the declarant
	  */
	public String getLBR_IPI_OwnTaxStatus();

    /** Column name LBR_IPI_RegardingClass */
    public static final String COLUMNNAME_LBR_IPI_RegardingClass = "LBR_IPI_RegardingClass";

	/** Set IPI Tax Regarding Class.
	  * Identifies the IPI Tax Regarding Class
	  */
	public void setLBR_IPI_RegardingClass (String LBR_IPI_RegardingClass);

	/** Get IPI Tax Regarding Class.
	  * Identifies the IPI Tax Regarding Class
	  */
	public String getLBR_IPI_RegardingClass();

    /** Column name LBR_IPI_RegardingCode */
    public static final String COLUMNNAME_LBR_IPI_RegardingCode = "LBR_IPI_RegardingCode";

	/** Set IPI Tax Regarding Code.
	  * Identifies the IPI Tax Regarding Code
	  */
	public void setLBR_IPI_RegardingCode (int LBR_IPI_RegardingCode);

	/** Get IPI Tax Regarding Code.
	  * Identifies the IPI Tax Regarding Code
	  */
	public int getLBR_IPI_RegardingCode();

    /** Column name LBR_IPI_SealCode */
    public static final String COLUMNNAME_LBR_IPI_SealCode = "LBR_IPI_SealCode";

	/** Set IPI Tax Seal Code.
	  * Identifies the IPI Tax Seal Code
	  */
	public void setLBR_IPI_SealCode (String LBR_IPI_SealCode);

	/** Get IPI Tax Seal Code.
	  * Identifies the IPI Tax Seal Code
	  */
	public String getLBR_IPI_SealCode();

    /** Column name LBR_IPI_SealQty */
    public static final String COLUMNNAME_LBR_IPI_SealQty = "LBR_IPI_SealQty";

	/** Set IPI Tax Seal Qty.
	  * Identifies the IPI Tax Seal Qty
	  */
	public void setLBR_IPI_SealQty (int LBR_IPI_SealQty);

	/** Get IPI Tax Seal Qty.
	  * Identifies the IPI Tax Seal Qty
	  */
	public int getLBR_IPI_SealQty();

    /** Column name LBR_IPI_TaxStatus */
    public static final String COLUMNNAME_LBR_IPI_TaxStatus = "LBR_IPI_TaxStatus";

	/** Set IPI Tax Status.
	  * Identifies a IPI Tax Status
	  */
	public void setLBR_IPI_TaxStatus (String LBR_IPI_TaxStatus);

	/** Get IPI Tax Status.
	  * Identifies a IPI Tax Status
	  */
	public String getLBR_IPI_TaxStatus();

    /** Column name LBR_TaxAmt */
    public static final String COLUMNNAME_LBR_TaxAmt = "LBR_TaxAmt";

	/** Set Tax Amount.
	  * Defines the Tax Amount
	  */
	public void setLBR_TaxAmt (BigDecimal LBR_TaxAmt);

	/** Get Tax Amount.
	  * Defines the Tax Amount
	  */
	public BigDecimal getLBR_TaxAmt();

    /** Column name LBR_TaxBaseAmt */
    public static final String COLUMNNAME_LBR_TaxBaseAmt = "LBR_TaxBaseAmt";

	/** Set Tax Base Amount.
	  * Defines the Tax Base Amount
	  */
	public void setLBR_TaxBaseAmt (BigDecimal LBR_TaxBaseAmt);

	/** Get Tax Base Amount.
	  * Defines the Tax Base Amount
	  */
	public BigDecimal getLBR_TaxBaseAmt();

    /** Column name LBR_TaxRate */
    public static final String COLUMNNAME_LBR_TaxRate = "LBR_TaxRate";

	/** Set Tax Rate.
	  * Indicates the Tax Rate
	  */
	public void setLBR_TaxRate (BigDecimal LBR_TaxRate);

	/** Get Tax Rate.
	  * Indicates the Tax Rate
	  */
	public BigDecimal getLBR_TaxRate();

    /** Column name PriceActual */
    public static final String COLUMNNAME_PriceActual = "PriceActual";

	/** Set Unit Price.
	  * Actual Price 
	  */
	public void setPriceActual (BigDecimal PriceActual);

	/** Get Unit Price.
	  * Actual Price 
	  */
	public BigDecimal getPriceActual();

    /** Column name TotalQty */
    public static final String COLUMNNAME_TotalQty = "TotalQty";

	/** Set Total Quantity.
	  * Total Quantity
	  */
	public void setTotalQty (BigDecimal TotalQty);

	/** Get Total Quantity.
	  * Total Quantity
	  */
	public BigDecimal getTotalQty();

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
