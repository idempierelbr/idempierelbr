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

/** Generated Interface for LBR_DocLine_ICMS
 *  @author iDempiere (generated) 
 *  @version Release 2.0
 */
@SuppressWarnings("all")
public interface I_LBR_DocLine_ICMS 
{

    /** TableName=LBR_DocLine_ICMS */
    public static final String Table_Name = "LBR_DocLine_ICMS";

    /** AD_Table_ID=1000027 */
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

    /** Column name LBR_DocLine_ICMS_ID */
    public static final String COLUMNNAME_LBR_DocLine_ICMS_ID = "LBR_DocLine_ICMS_ID";

	/** Set Doc Line ICMS.
	  * Doc Line ICMS
	  */
	public void setLBR_DocLine_ICMS_ID (int LBR_DocLine_ICMS_ID);

	/** Get Doc Line ICMS.
	  * Doc Line ICMS
	  */
	public int getLBR_DocLine_ICMS_ID();

    /** Column name LBR_DocLine_ICMS_UU */
    public static final String COLUMNNAME_LBR_DocLine_ICMS_UU = "LBR_DocLine_ICMS_UU";

	/** Set Doc Line ICMS.
	  * Doc Line ICMS
	  */
	public void setLBR_DocLine_ICMS_UU (String LBR_DocLine_ICMS_UU);

	/** Get Doc Line ICMS.
	  * Doc Line ICMS
	  */
	public String getLBR_DocLine_ICMS_UU();

    /** Column name LBR_ICMSRegime */
    public static final String COLUMNNAME_LBR_ICMSRegime = "LBR_ICMSRegime";

	/** Set ICMS Regime.
	  * Identifies a ICMS Regime for taxes
	  */
	public void setLBR_ICMSRegime (String LBR_ICMSRegime);

	/** Get ICMS Regime.
	  * Identifies a ICMS Regime for taxes
	  */
	public String getLBR_ICMSRegime();

    /** Column name LBR_ICMSST_TaxAdded */
    public static final String COLUMNNAME_LBR_ICMSST_TaxAdded = "LBR_ICMSST_TaxAdded";

	/** Set ICMS-ST Added Amount Margin (%).
	  * Identifies the ICMS-ST Added Amount Margin in percentage
	  */
	public void setLBR_ICMSST_TaxAdded (BigDecimal LBR_ICMSST_TaxAdded);

	/** Get ICMS-ST Added Amount Margin (%).
	  * Identifies the ICMS-ST Added Amount Margin in percentage
	  */
	public BigDecimal getLBR_ICMSST_TaxAdded();

    /** Column name LBR_ICMSST_TaxAmt */
    public static final String COLUMNNAME_LBR_ICMSST_TaxAmt = "LBR_ICMSST_TaxAmt";

	/** Set ICMS-ST Tax Amount.
	  * Defines the ICMS-ST Tax Amount
	  */
	public void setLBR_ICMSST_TaxAmt (BigDecimal LBR_ICMSST_TaxAmt);

	/** Get ICMS-ST Tax Amount.
	  * Defines the ICMS-ST Tax Amount
	  */
	public BigDecimal getLBR_ICMSST_TaxAmt();

    /** Column name LBR_ICMSST_TaxAmtUFDes */
    public static final String COLUMNNAME_LBR_ICMSST_TaxAmtUFDes = "LBR_ICMSST_TaxAmtUFDes";

	/** Set ICMS-ST Amount in Receiver UF.
	  * Identifies the ICMS-ST Amount in Receiver UF
	  */
	public void setLBR_ICMSST_TaxAmtUFDes (BigDecimal LBR_ICMSST_TaxAmtUFDes);

	/** Get ICMS-ST Amount in Receiver UF.
	  * Identifies the ICMS-ST Amount in Receiver UF
	  */
	public BigDecimal getLBR_ICMSST_TaxAmtUFDes();

    /** Column name LBR_ICMSST_TaxAmtUFSen */
    public static final String COLUMNNAME_LBR_ICMSST_TaxAmtUFSen = "LBR_ICMSST_TaxAmtUFSen";

	/** Set ICMS-ST Amount withheld in Sender UF.
	  * Identifies the ICMS-ST Amount withheld in Sender UF
	  */
	public void setLBR_ICMSST_TaxAmtUFSen (BigDecimal LBR_ICMSST_TaxAmtUFSen);

	/** Get ICMS-ST Amount withheld in Sender UF.
	  * Identifies the ICMS-ST Amount withheld in Sender UF
	  */
	public BigDecimal getLBR_ICMSST_TaxAmtUFSen();

    /** Column name LBR_ICMSST_TaxAmtWhd */
    public static final String COLUMNNAME_LBR_ICMSST_TaxAmtWhd = "LBR_ICMSST_TaxAmtWhd";

	/** Set ICMS-ST Withheld Amount.
	  * Identifies the ICMS-ST Withheld Amount
	  */
	public void setLBR_ICMSST_TaxAmtWhd (BigDecimal LBR_ICMSST_TaxAmtWhd);

	/** Get ICMS-ST Withheld Amount.
	  * Identifies the ICMS-ST Withheld Amount
	  */
	public BigDecimal getLBR_ICMSST_TaxAmtWhd();

    /** Column name LBR_ICMSST_TaxBAmtUFDes */
    public static final String COLUMNNAME_LBR_ICMSST_TaxBAmtUFDes = "LBR_ICMSST_TaxBAmtUFDes";

	/** Set ICMS-ST Base Amount in Receiver UF.
	  * Identifies the ICMS-ST Base Amount in Receiver UF
	  */
	public void setLBR_ICMSST_TaxBAmtUFDes (BigDecimal LBR_ICMSST_TaxBAmtUFDes);

	/** Get ICMS-ST Base Amount in Receiver UF.
	  * Identifies the ICMS-ST Base Amount in Receiver UF
	  */
	public BigDecimal getLBR_ICMSST_TaxBAmtUFDes();

    /** Column name LBR_ICMSST_TaxBAmtUFSen */
    public static final String COLUMNNAME_LBR_ICMSST_TaxBAmtUFSen = "LBR_ICMSST_TaxBAmtUFSen";

	/** Set ICMS-ST Base Amount withheld in Sender UF.
	  * Identifies the ICMS-ST Base Amount withheld in Sender UF
	  */
	public void setLBR_ICMSST_TaxBAmtUFSen (BigDecimal LBR_ICMSST_TaxBAmtUFSen);

	/** Get ICMS-ST Base Amount withheld in Sender UF.
	  * Identifies the ICMS-ST Base Amount withheld in Sender UF
	  */
	public BigDecimal getLBR_ICMSST_TaxBAmtUFSen();

    /** Column name LBR_ICMSST_TaxBAmtWhd */
    public static final String COLUMNNAME_LBR_ICMSST_TaxBAmtWhd = "LBR_ICMSST_TaxBAmtWhd";

	/** Set ICMS-ST Withheld Base Amount.
	  * Identifies the ICMS-ST Withheld Base Amount
	  */
	public void setLBR_ICMSST_TaxBAmtWhd (BigDecimal LBR_ICMSST_TaxBAmtWhd);

	/** Get ICMS-ST Withheld Base Amount.
	  * Identifies the ICMS-ST Withheld Base Amount
	  */
	public BigDecimal getLBR_ICMSST_TaxBAmtWhd();

    /** Column name LBR_ICMSST_TaxBase */
    public static final String COLUMNNAME_LBR_ICMSST_TaxBase = "LBR_ICMSST_TaxBase";

	/** Set ICMS-ST Tax Base.
	  * Indicates the ICMS-ST Tax Base
	  */
	public void setLBR_ICMSST_TaxBase (BigDecimal LBR_ICMSST_TaxBase);

	/** Get ICMS-ST Tax Base.
	  * Indicates the ICMS-ST Tax Base
	  */
	public BigDecimal getLBR_ICMSST_TaxBase();

    /** Column name LBR_ICMSST_TaxBaseAmt */
    public static final String COLUMNNAME_LBR_ICMSST_TaxBaseAmt = "LBR_ICMSST_TaxBaseAmt";

	/** Set ICMS-ST Tax Base Amount.
	  * Defines the ICMS-ST Tax Base Amount
	  */
	public void setLBR_ICMSST_TaxBaseAmt (BigDecimal LBR_ICMSST_TaxBaseAmt);

	/** Get ICMS-ST Tax Base Amount.
	  * Defines the ICMS-ST Tax Base Amount
	  */
	public BigDecimal getLBR_ICMSST_TaxBaseAmt();

    /** Column name LBR_ICMSST_TaxBaseType */
    public static final String COLUMNNAME_LBR_ICMSST_TaxBaseType = "LBR_ICMSST_TaxBaseType";

	/** Set ICMS-ST Tax Base Type.
	  * Identifies a ICMS-ST Tax Base Type
	  */
	public void setLBR_ICMSST_TaxBaseType (String LBR_ICMSST_TaxBaseType);

	/** Get ICMS-ST Tax Base Type.
	  * Identifies a ICMS-ST Tax Base Type
	  */
	public String getLBR_ICMSST_TaxBaseType();

    /** Column name LBR_ICMSST_TaxRate */
    public static final String COLUMNNAME_LBR_ICMSST_TaxRate = "LBR_ICMSST_TaxRate";

	/** Set ICMS-ST Tax Rate.
	  * Indicates the ICMS-ST Tax Rate
	  */
	public void setLBR_ICMSST_TaxRate (BigDecimal LBR_ICMSST_TaxRate);

	/** Get ICMS-ST Tax Rate.
	  * Indicates the ICMS-ST Tax Rate
	  */
	public BigDecimal getLBR_ICMSST_TaxRate();

    /** Column name LBR_ICMSST_TaxUFDue_ID */
    public static final String COLUMNNAME_LBR_ICMSST_TaxUFDue_ID = "LBR_ICMSST_TaxUFDue_ID";

	/** Set ICMS-ST UF Due.
	  * Identifies the ICMS-ST UF Due
	  */
	public void setLBR_ICMSST_TaxUFDue_ID (int LBR_ICMSST_TaxUFDue_ID);

	/** Get ICMS-ST UF Due.
	  * Identifies the ICMS-ST UF Due
	  */
	public int getLBR_ICMSST_TaxUFDue_ID();

	public org.compiere.model.I_C_Region getLBR_ICMSST_TaxUFDue() throws RuntimeException;

    /** Column name LBR_ICMS_TaxAmtOp */
    public static final String COLUMNNAME_LBR_ICMS_TaxAmtOp = "LBR_ICMS_TaxAmtOp";

	/** Set ICMS Tax Operation Amount.
	  * Identifies the ICMS Tax Operation Amount
	  */
	public void setLBR_ICMS_TaxAmtOp (BigDecimal LBR_ICMS_TaxAmtOp);

	/** Get ICMS Tax Operation Amount.
	  * Identifies the ICMS Tax Operation Amount
	  */
	public BigDecimal getLBR_ICMS_TaxAmtOp();

    /** Column name LBR_ICMS_TaxBaseType */
    public static final String COLUMNNAME_LBR_ICMS_TaxBaseType = "LBR_ICMS_TaxBaseType";

	/** Set ICMS Tax Base Type.
	  * Identifies a ICMS Tax Base Type
	  */
	public void setLBR_ICMS_TaxBaseType (String LBR_ICMS_TaxBaseType);

	/** Get ICMS Tax Base Type.
	  * Identifies a ICMS Tax Base Type
	  */
	public String getLBR_ICMS_TaxBaseType();

    /** Column name LBR_ICMS_TaxReliefType */
    public static final String COLUMNNAME_LBR_ICMS_TaxReliefType = "LBR_ICMS_TaxReliefType";

	/** Set ICMS Tax Relief Type.
	  * Identifies the ICMS Tax Relief Type
	  */
	public void setLBR_ICMS_TaxReliefType (String LBR_ICMS_TaxReliefType);

	/** Get ICMS Tax Relief Type.
	  * Identifies the ICMS Tax Relief Type
	  */
	public String getLBR_ICMS_TaxReliefType();

    /** Column name LBR_ICMS_TaxStatusSN */
    public static final String COLUMNNAME_LBR_ICMS_TaxStatusSN = "LBR_ICMS_TaxStatusSN";

	/** Set ICMS Tax Status (Simple).
	  * Identifies a ICMS Tax Status in a simple taxation
	  */
	public void setLBR_ICMS_TaxStatusSN (String LBR_ICMS_TaxStatusSN);

	/** Get ICMS Tax Status (Simple).
	  * Identifies a ICMS Tax Status in a simple taxation
	  */
	public String getLBR_ICMS_TaxStatusSN();

    /** Column name LBR_ICMS_TaxStatusTN */
    public static final String COLUMNNAME_LBR_ICMS_TaxStatusTN = "LBR_ICMS_TaxStatusTN";

	/** Set ICMS Tax Status (Standard Taxation).
	  * Identifies a ICMS Tax Status in a standard taxation
	  */
	public void setLBR_ICMS_TaxStatusTN (String LBR_ICMS_TaxStatusTN);

	/** Get ICMS Tax Status (Standard Taxation).
	  * Identifies a ICMS Tax Status in a standard taxation
	  */
	public String getLBR_ICMS_TaxStatusTN();

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

    /** Column name LBR_TaxAmtCredit */
    public static final String COLUMNNAME_LBR_TaxAmtCredit = "LBR_TaxAmtCredit";

	/** Set Tax Amount Credit.
	  * Identifies the Tax Amount Credit
	  */
	public void setLBR_TaxAmtCredit (BigDecimal LBR_TaxAmtCredit);

	/** Get Tax Amount Credit.
	  * Identifies the Tax Amount Credit
	  */
	public BigDecimal getLBR_TaxAmtCredit();

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

    /** Column name LBR_TaxBaseOwnOperation */
    public static final String COLUMNNAME_LBR_TaxBaseOwnOperation = "LBR_TaxBaseOwnOperation";

	/** Set Tax Base Own Operation (%).
	  * Identifies the Tax Base Own Operation in percentage
	  */
	public void setLBR_TaxBaseOwnOperation (BigDecimal LBR_TaxBaseOwnOperation);

	/** Get Tax Base Own Operation (%).
	  * Identifies the Tax Base Own Operation in percentage
	  */
	public BigDecimal getLBR_TaxBaseOwnOperation();

    /** Column name LBR_TaxDeferralAmt */
    public static final String COLUMNNAME_LBR_TaxDeferralAmt = "LBR_TaxDeferralAmt";

	/** Set Tax Deferral Amount.
	  * Identifies the Tax Deferral Amount
	  */
	public void setLBR_TaxDeferralAmt (BigDecimal LBR_TaxDeferralAmt);

	/** Get Tax Deferral Amount.
	  * Identifies the Tax Deferral Amount
	  */
	public BigDecimal getLBR_TaxDeferralAmt();

    /** Column name LBR_TaxDeferralRate */
    public static final String COLUMNNAME_LBR_TaxDeferralRate = "LBR_TaxDeferralRate";

	/** Set Tax Deferral Rate (%).
	  * Identifies the Tax Deferral Rate (%)
	  */
	public void setLBR_TaxDeferralRate (BigDecimal LBR_TaxDeferralRate);

	/** Get Tax Deferral Rate (%).
	  * Identifies the Tax Deferral Rate (%)
	  */
	public BigDecimal getLBR_TaxDeferralRate();

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

    /** Column name LBR_TaxRateCredit */
    public static final String COLUMNNAME_LBR_TaxRateCredit = "LBR_TaxRateCredit";

	/** Set Tax Rate Credit (%).
	  * Identifies the Tax Rate Credit in percentage
	  */
	public void setLBR_TaxRateCredit (BigDecimal LBR_TaxRateCredit);

	/** Get Tax Rate Credit (%).
	  * Identifies the Tax Rate Credit in percentage
	  */
	public BigDecimal getLBR_TaxRateCredit();

    /** Column name LBR_TaxReliefAmt */
    public static final String COLUMNNAME_LBR_TaxReliefAmt = "LBR_TaxReliefAmt";

	/** Set Tax Relief Amount.
	  * Identifies the Tax Relief Amount
	  */
	public void setLBR_TaxReliefAmt (BigDecimal LBR_TaxReliefAmt);

	/** Get Tax Relief Amount.
	  * Identifies the Tax Relief Amount
	  */
	public BigDecimal getLBR_TaxReliefAmt();

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
