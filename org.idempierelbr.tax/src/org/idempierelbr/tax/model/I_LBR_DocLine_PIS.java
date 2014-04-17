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

/** Generated Interface for LBR_DocLine_PIS
 *  @author iDempiere (generated) 
 *  @version Release 2.0
 */
@SuppressWarnings("all")
public interface I_LBR_DocLine_PIS 
{

    /** TableName=LBR_DocLine_PIS */
    public static final String Table_Name = "LBR_DocLine_PIS";

    /** AD_Table_ID=1000029 */
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

    /** Column name LBR_DocLine_PIS_ID */
    public static final String COLUMNNAME_LBR_DocLine_PIS_ID = "LBR_DocLine_PIS_ID";

	/** Set Doc Line PIS.
	  * Doc Line PIS
	  */
	public void setLBR_DocLine_PIS_ID (int LBR_DocLine_PIS_ID);

	/** Get Doc Line PIS.
	  * Doc Line PIS
	  */
	public int getLBR_DocLine_PIS_ID();

    /** Column name LBR_DocLine_PIS_UU */
    public static final String COLUMNNAME_LBR_DocLine_PIS_UU = "LBR_DocLine_PIS_UU";

	/** Set Doc Line PIS.
	  * Doc Line PIS
	  */
	public void setLBR_DocLine_PIS_UU (String LBR_DocLine_PIS_UU);

	/** Get Doc Line PIS.
	  * Doc Line PIS
	  */
	public String getLBR_DocLine_PIS_UU();

    /** Column name LBR_PISST_CalcType */
    public static final String COLUMNNAME_LBR_PISST_CalcType = "LBR_PISST_CalcType";

	/** Set Calculation	  */
	public void setLBR_PISST_CalcType (String LBR_PISST_CalcType);

	/** Get Calculation	  */
	public String getLBR_PISST_CalcType();

    /** Column name LBR_PISST_TaxAmt */
    public static final String COLUMNNAME_LBR_PISST_TaxAmt = "LBR_PISST_TaxAmt";

	/** Set PIS-ST Tax Amount.
	  * Defines the PIS-ST Tax Amount
	  */
	public void setLBR_PISST_TaxAmt (BigDecimal LBR_PISST_TaxAmt);

	/** Get PIS-ST Tax Amount.
	  * Defines the PIS-ST Tax Amount
	  */
	public BigDecimal getLBR_PISST_TaxAmt();

    /** Column name LBR_PISST_TaxBaseAmt */
    public static final String COLUMNNAME_LBR_PISST_TaxBaseAmt = "LBR_PISST_TaxBaseAmt";

	/** Set PIS-ST Tax Base Amount.
	  * Defines the PIS-ST Tax Base Amount
	  */
	public void setLBR_PISST_TaxBaseAmt (BigDecimal LBR_PISST_TaxBaseAmt);

	/** Get PIS-ST Tax Base Amount.
	  * Defines the PIS-ST Tax Base Amount
	  */
	public BigDecimal getLBR_PISST_TaxBaseAmt();

    /** Column name LBR_PISST_TaxRate */
    public static final String COLUMNNAME_LBR_PISST_TaxRate = "LBR_PISST_TaxRate";

	/** Set PIS-ST Tax Rate.
	  * Indicates the PIS-ST Tax Rate
	  */
	public void setLBR_PISST_TaxRate (BigDecimal LBR_PISST_TaxRate);

	/** Get PIS-ST Tax Rate.
	  * Indicates the PIS-ST Tax Rate
	  */
	public BigDecimal getLBR_PISST_TaxRate();

    /** Column name LBR_PISST_TaxRateInAmt */
    public static final String COLUMNNAME_LBR_PISST_TaxRateInAmt = "LBR_PISST_TaxRateInAmt";

	/** Set PIS-ST Tax Rate in Amount.
	  * Indicates the PIS-ST Tax Rate in Amount
	  */
	public void setLBR_PISST_TaxRateInAmt (BigDecimal LBR_PISST_TaxRateInAmt);

	/** Get PIS-ST Tax Rate in Amount.
	  * Indicates the PIS-ST Tax Rate in Amount
	  */
	public BigDecimal getLBR_PISST_TaxRateInAmt();

    /** Column name LBR_PISST_TotalQty */
    public static final String COLUMNNAME_LBR_PISST_TotalQty = "LBR_PISST_TotalQty";

	/** Set PIS-ST Total Quantity.
	  * PIS-ST Total Quantity
	  */
	public void setLBR_PISST_TotalQty (BigDecimal LBR_PISST_TotalQty);

	/** Get PIS-ST Total Quantity.
	  * PIS-ST Total Quantity
	  */
	public BigDecimal getLBR_PISST_TotalQty();

    /** Column name LBR_PIS_TaxStatus */
    public static final String COLUMNNAME_LBR_PIS_TaxStatus = "LBR_PIS_TaxStatus";

	/** Set PIS Tax Status.
	  * Identifies a PIS Tax Status
	  */
	public void setLBR_PIS_TaxStatus (String LBR_PIS_TaxStatus);

	/** Get PIS Tax Status.
	  * Identifies a PIS Tax Status
	  */
	public String getLBR_PIS_TaxStatus();

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

    /** Column name LBR_TaxRateInAmt */
    public static final String COLUMNNAME_LBR_TaxRateInAmt = "LBR_TaxRateInAmt";

	/** Set Tax Rate in Amount.
	  * Indicates the Tax Rate in Amount
	  */
	public void setLBR_TaxRateInAmt (BigDecimal LBR_TaxRateInAmt);

	/** Get Tax Rate in Amount.
	  * Indicates the Tax Rate in Amount
	  */
	public BigDecimal getLBR_TaxRateInAmt();

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
}
