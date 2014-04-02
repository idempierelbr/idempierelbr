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

/** Generated Interface for LBR_DocLine_COFINS
 *  @author iDempiere (generated) 
 *  @version Release 2.0
 */
@SuppressWarnings("all")
public interface I_LBR_DocLine_COFINS 
{

    /** TableName=LBR_DocLine_COFINS */
    public static final String Table_Name = "LBR_DocLine_COFINS";

    /** AD_Table_ID=1000030 */
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

    /** Column name LBR_COFST_CalcType */
    public static final String COLUMNNAME_LBR_COFST_CalcType = "LBR_COFST_CalcType";

	/** Set Calculation	  */
	public void setLBR_COFST_CalcType (String LBR_COFST_CalcType);

	/** Get Calculation	  */
	public String getLBR_COFST_CalcType();

    /** Column name LBR_COFST_TaxAmt */
    public static final String COLUMNNAME_LBR_COFST_TaxAmt = "LBR_COFST_TaxAmt";

	/** Set COFINS-ST Tax Amount.
	  * Defines the COFINS-ST Tax Amount
	  */
	public void setLBR_COFST_TaxAmt (BigDecimal LBR_COFST_TaxAmt);

	/** Get COFINS-ST Tax Amount.
	  * Defines the COFINS-ST Tax Amount
	  */
	public BigDecimal getLBR_COFST_TaxAmt();

    /** Column name LBR_COFST_TaxBaseAmt */
    public static final String COLUMNNAME_LBR_COFST_TaxBaseAmt = "LBR_COFST_TaxBaseAmt";

	/** Set COFINS-ST Tax Base Amount.
	  * Defines the COFINS-ST Tax Base Amount
	  */
	public void setLBR_COFST_TaxBaseAmt (BigDecimal LBR_COFST_TaxBaseAmt);

	/** Get COFINS-ST Tax Base Amount.
	  * Defines the COFINS-ST Tax Base Amount
	  */
	public BigDecimal getLBR_COFST_TaxBaseAmt();

    /** Column name LBR_COFST_TaxRate */
    public static final String COLUMNNAME_LBR_COFST_TaxRate = "LBR_COFST_TaxRate";

	/** Set COFINS-ST Tax Rate.
	  * Indicates the COFINS-ST Tax Rate
	  */
	public void setLBR_COFST_TaxRate (BigDecimal LBR_COFST_TaxRate);

	/** Get COFINS-ST Tax Rate.
	  * Indicates the COFINS-ST Tax Rate
	  */
	public BigDecimal getLBR_COFST_TaxRate();

    /** Column name LBR_COFST_TaxRateInAmt */
    public static final String COLUMNNAME_LBR_COFST_TaxRateInAmt = "LBR_COFST_TaxRateInAmt";

	/** Set COFINS-ST Tax Rate in Amount.
	  * Indicates the COFINS-ST Tax Rate in Amount
	  */
	public void setLBR_COFST_TaxRateInAmt (BigDecimal LBR_COFST_TaxRateInAmt);

	/** Get COFINS-ST Tax Rate in Amount.
	  * Indicates the COFINS-ST Tax Rate in Amount
	  */
	public BigDecimal getLBR_COFST_TaxRateInAmt();

    /** Column name LBR_COFST_TotalQty */
    public static final String COLUMNNAME_LBR_COFST_TotalQty = "LBR_COFST_TotalQty";

	/** Set COFINS-ST Total Quantity.
	  * COFINS-ST Total Quantity
	  */
	public void setLBR_COFST_TotalQty (BigDecimal LBR_COFST_TotalQty);

	/** Get COFINS-ST Total Quantity.
	  * COFINS-ST Total Quantity
	  */
	public BigDecimal getLBR_COFST_TotalQty();

    /** Column name LBR_COF_TaxStatus */
    public static final String COLUMNNAME_LBR_COF_TaxStatus = "LBR_COF_TaxStatus";

	/** Set COFINS Tax Status.
	  * Identifies a COFINS Tax Status
	  */
	public void setLBR_COF_TaxStatus (String LBR_COF_TaxStatus);

	/** Get COFINS Tax Status.
	  * Identifies a COFINS Tax Status
	  */
	public String getLBR_COF_TaxStatus();

    /** Column name LBR_DocLine_COFINS_ID */
    public static final String COLUMNNAME_LBR_DocLine_COFINS_ID = "LBR_DocLine_COFINS_ID";

	/** Set Doc Line COFINS.
	  * Doc Line COFINS
	  */
	public void setLBR_DocLine_COFINS_ID (int LBR_DocLine_COFINS_ID);

	/** Get Doc Line COFINS.
	  * Doc Line COFINS
	  */
	public int getLBR_DocLine_COFINS_ID();

    /** Column name LBR_DocLine_COFINS_UU */
    public static final String COLUMNNAME_LBR_DocLine_COFINS_UU = "LBR_DocLine_COFINS_UU";

	/** Set Doc Line COFINS.
	  * Doc Line COFINS
	  */
	public void setLBR_DocLine_COFINS_UU (String LBR_DocLine_COFINS_UU);

	/** Get Doc Line COFINS.
	  * Doc Line COFINS
	  */
	public String getLBR_DocLine_COFINS_UU();

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
}
