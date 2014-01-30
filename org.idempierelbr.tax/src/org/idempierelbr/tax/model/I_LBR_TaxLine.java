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

/** Generated Interface for LBR_TaxLine
 *  @author iDempiere (generated) 
 *  @version Release 2.0
 */
@SuppressWarnings("all")
public interface I_LBR_TaxLine 
{

    /** TableName=LBR_TaxLine */
    public static final String Table_Name = "LBR_TaxLine";

    /** AD_Table_ID=1000013 */
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

    /** Column name LBR_LegalMessage_ID */
    public static final String COLUMNNAME_LBR_LegalMessage_ID = "LBR_LegalMessage_ID";

	/** Set Legal Message.
	  * Identifies a Legal Message
	  */
	public void setLBR_LegalMessage_ID (int LBR_LegalMessage_ID);

	/** Get Legal Message.
	  * Identifies a Legal Message
	  */
	public int getLBR_LegalMessage_ID();

	public I_LBR_LegalMessage getLBR_LegalMessage() throws RuntimeException;

    /** Column name LBR_PostTax */
    public static final String COLUMNNAME_LBR_PostTax = "LBR_PostTax";

	/** Set Post Tax.
	  * Indicates if the Tax should be Posted (Account)
	  */
	public void setLBR_PostTax (boolean LBR_PostTax);

	/** Get Post Tax.
	  * Indicates if the Tax should be Posted (Account)
	  */
	public boolean isLBR_PostTax();

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

    /** Column name LBR_TaxBase */
    public static final String COLUMNNAME_LBR_TaxBase = "LBR_TaxBase";

	/** Set Tax Base.
	  * Indicates the Tax Base
	  */
	public void setLBR_TaxBase (BigDecimal LBR_TaxBase);

	/** Get Tax Base.
	  * Indicates the Tax Base
	  */
	public BigDecimal getLBR_TaxBase();

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

    /** Column name LBR_TaxBaseType_ID */
    public static final String COLUMNNAME_LBR_TaxBaseType_ID = "LBR_TaxBaseType_ID";

	/** Set Tax Base Type	  */
	public void setLBR_TaxBaseType_ID (int LBR_TaxBaseType_ID);

	/** Get Tax Base Type	  */
	public int getLBR_TaxBaseType_ID();

	public I_LBR_TaxBaseType getLBR_TaxBaseType() throws RuntimeException;

    /** Column name LBR_Tax_ID */
    public static final String COLUMNNAME_LBR_Tax_ID = "LBR_Tax_ID";

	/** Set Transaction Tax.
	  * Identifies a transaction tax (document/line)
	  */
	public void setLBR_Tax_ID (int LBR_Tax_ID);

	/** Get Transaction Tax.
	  * Identifies a transaction tax (document/line)
	  */
	public int getLBR_Tax_ID();

	public I_LBR_Tax getLBR_Tax() throws RuntimeException;

    /** Column name LBR_TaxLine_ID */
    public static final String COLUMNNAME_LBR_TaxLine_ID = "LBR_TaxLine_ID";

	/** Set Transaction Tax Line.
	  * Tax Line for the Transaction Tax
	  */
	public void setLBR_TaxLine_ID (int LBR_TaxLine_ID);

	/** Get Transaction Tax Line.
	  * Tax Line for the Transaction Tax
	  */
	public int getLBR_TaxLine_ID();

    /** Column name LBR_TaxLine_UU */
    public static final String COLUMNNAME_LBR_TaxLine_UU = "LBR_TaxLine_UU";

	/** Set LBR_TaxLine_UU	  */
	public void setLBR_TaxLine_UU (String LBR_TaxLine_UU);

	/** Get LBR_TaxLine_UU	  */
	public String getLBR_TaxLine_UU();

    /** Column name LBR_TaxListAmt */
    public static final String COLUMNNAME_LBR_TaxListAmt = "LBR_TaxListAmt";

	/** Set Tax List Amount (Flat Rate).
	  * Tax List Amount (Flat Rate) stated by law
	  */
	public void setLBR_TaxListAmt (BigDecimal LBR_TaxListAmt);

	/** Get Tax List Amount (Flat Rate).
	  * Tax List Amount (Flat Rate) stated by law
	  */
	public BigDecimal getLBR_TaxListAmt();

    /** Column name LBR_TaxName_ID */
    public static final String COLUMNNAME_LBR_TaxName_ID = "LBR_TaxName_ID";

	/** Set Tax Name.
	  * Primary key table LBR_TaxName
	  */
	public void setLBR_TaxName_ID (int LBR_TaxName_ID);

	/** Get Tax Name.
	  * Primary key table LBR_TaxName
	  */
	public int getLBR_TaxName_ID();

	public I_LBR_TaxName getLBR_TaxName() throws RuntimeException;

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

    /** Column name LBR_TaxStatus_ID */
    public static final String COLUMNNAME_LBR_TaxStatus_ID = "LBR_TaxStatus_ID";

	/** Set Tax Status.
	  * Brazilian Tax Status
	  */
	public void setLBR_TaxStatus_ID (int LBR_TaxStatus_ID);

	/** Get Tax Status.
	  * Brazilian Tax Status
	  */
	public int getLBR_TaxStatus_ID();

	public I_LBR_TaxStatus getLBR_TaxStatus() throws RuntimeException;

    /** Column name Qty */
    public static final String COLUMNNAME_Qty = "Qty";

	/** Set Quantity.
	  * Quantity
	  */
	public void setQty (BigDecimal Qty);

	/** Get Quantity.
	  * Quantity
	  */
	public BigDecimal getQty();

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
