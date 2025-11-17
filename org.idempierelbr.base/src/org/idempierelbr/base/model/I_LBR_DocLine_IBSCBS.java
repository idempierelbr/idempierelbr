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

/** Generated Interface for LBR_DocLine_IBSCBS
 *  @author iDempiere (generated) 
 *  @version Release 12
 */
@SuppressWarnings("all")
public interface I_LBR_DocLine_IBSCBS 
{

    /** TableName=LBR_DocLine_IBSCBS */
    public static final String Table_Name = "LBR_DocLine_IBSCBS";

    /** AD_Table_ID=800065 */
    public static final int Table_ID = 800065;

    KeyNamePair Model = new KeyNamePair(Table_ID, Table_Name);

    /** AccessLevel = 3 - Client - Org 
     */
    BigDecimal accessLevel = BigDecimal.valueOf(3);

    /** Load Meta Data */

    /** Column name AD_Client_ID */
    public static final String COLUMNNAME_AD_Client_ID = "AD_Client_ID";

	/** Get Tenant.
	  * Tenant for this installation.
	  */
	public int getAD_Client_ID();

    /** Column name AD_Org_ID */
    public static final String COLUMNNAME_AD_Org_ID = "AD_Org_ID";

	/** Set Organization.
	  * Organizational entity within tenant
	  */
	public void setAD_Org_ID (int AD_Org_ID);

	/** Get Organization.
	  * Organizational entity within tenant
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

    /** Column name LBR_CBS_IsTaxIncluded */
    public static final String COLUMNNAME_LBR_CBS_IsTaxIncluded = "LBR_CBS_IsTaxIncluded";

	/** Set Price includes Tax.
	  * Tax is included in the price 
	  */
	public void setLBR_CBS_IsTaxIncluded (boolean LBR_CBS_IsTaxIncluded);

	/** Get Price includes Tax.
	  * Tax is included in the price 
	  */
	public boolean isLBR_CBS_IsTaxIncluded();

    /** Column name LBR_CBS_TaxAmt */
    public static final String COLUMNNAME_LBR_CBS_TaxAmt = "LBR_CBS_TaxAmt";

	/** Set CBS Tax Amt.
	  * Indicates the CBS Tax Amt
	  */
	public void setLBR_CBS_TaxAmt (BigDecimal LBR_CBS_TaxAmt);

	/** Get CBS Tax Amt.
	  * Indicates the CBS Tax Amt
	  */
	public BigDecimal getLBR_CBS_TaxAmt();

    /** Column name LBR_CBS_TaxDeferralAmt */
    public static final String COLUMNNAME_LBR_CBS_TaxDeferralAmt = "LBR_CBS_TaxDeferralAmt";

	/** Set CBS Tax Deferral Amt.
	  * Indicates the CBS Tax Deferral Amt
	  */
	public void setLBR_CBS_TaxDeferralAmt (BigDecimal LBR_CBS_TaxDeferralAmt);

	/** Get CBS Tax Deferral Amt.
	  * Indicates the CBS Tax Deferral Amt
	  */
	public BigDecimal getLBR_CBS_TaxDeferralAmt();

    /** Column name LBR_CBS_TaxDeferralRate */
    public static final String COLUMNNAME_LBR_CBS_TaxDeferralRate = "LBR_CBS_TaxDeferralRate";

	/** Set CBS Tax Deferral Rate.
	  * Indicates the CBS Tax Deferral Rate
	  */
	public void setLBR_CBS_TaxDeferralRate (BigDecimal LBR_CBS_TaxDeferralRate);

	/** Get CBS Tax Deferral Rate.
	  * Indicates the CBS Tax Deferral Rate
	  */
	public BigDecimal getLBR_CBS_TaxDeferralRate();

    /** Column name LBR_CBS_TaxDevAmt */
    public static final String COLUMNNAME_LBR_CBS_TaxDevAmt = "LBR_CBS_TaxDevAmt";

	/** Set CBS Tax Dev. Amt.
	  * Indicates the CBS Tax Dev. Amt
	  */
	public void setLBR_CBS_TaxDevAmt (BigDecimal LBR_CBS_TaxDevAmt);

	/** Get CBS Tax Dev. Amt.
	  * Indicates the CBS Tax Dev. Amt
	  */
	public BigDecimal getLBR_CBS_TaxDevAmt();

    /** Column name LBR_CBS_TaxRate */
    public static final String COLUMNNAME_LBR_CBS_TaxRate = "LBR_CBS_TaxRate";

	/** Set CBS Tax Rate.
	  * Indicates the CBS Tax Rate
	  */
	public void setLBR_CBS_TaxRate (BigDecimal LBR_CBS_TaxRate);

	/** Get CBS Tax Rate.
	  * Indicates the CBS Tax Rate
	  */
	public BigDecimal getLBR_CBS_TaxRate();

    /** Column name LBR_CBS_TaxRedEfetRate */
    public static final String COLUMNNAME_LBR_CBS_TaxRedEfetRate = "LBR_CBS_TaxRedEfetRate";

	/** Set CBS Tax Red. Efet. Rate.
	  * Indicates the CBS Tax Red. Efet. Rate
	  */
	public void setLBR_CBS_TaxRedEfetRate (BigDecimal LBR_CBS_TaxRedEfetRate);

	/** Get CBS Tax Red. Efet. Rate.
	  * Indicates the CBS Tax Red. Efet. Rate
	  */
	public BigDecimal getLBR_CBS_TaxRedEfetRate();

    /** Column name LBR_CBS_TaxRedRate */
    public static final String COLUMNNAME_LBR_CBS_TaxRedRate = "LBR_CBS_TaxRedRate";

	/** Set CBS Tax Red. Rate.
	  * Indicates the CBS Tax Red. Rate
	  */
	public void setLBR_CBS_TaxRedRate (BigDecimal LBR_CBS_TaxRedRate);

	/** Get CBS Tax Red. Rate.
	  * Indicates the CBS Tax Red. Rate
	  */
	public BigDecimal getLBR_CBS_TaxRedRate();

    /** Column name LBR_CST_IBSCBS_ID */
    public static final String COLUMNNAME_LBR_CST_IBSCBS_ID = "LBR_CST_IBSCBS_ID";

	/** Set CST IBS / CBS	  */
	public void setLBR_CST_IBSCBS_ID (int LBR_CST_IBSCBS_ID);

	/** Get CST IBS / CBS	  */
	public int getLBR_CST_IBSCBS_ID();

	public I_LBR_CST_IBSCBS getLBR_CST_IBSCBS() throws RuntimeException;

    /** Column name LBR_ClassTrib_IBSCBS_ID */
    public static final String COLUMNNAME_LBR_ClassTrib_IBSCBS_ID = "LBR_ClassTrib_IBSCBS_ID";

	/** Set ClassTrib IBS / CBS	  */
	public void setLBR_ClassTrib_IBSCBS_ID (int LBR_ClassTrib_IBSCBS_ID);

	/** Get ClassTrib IBS / CBS	  */
	public int getLBR_ClassTrib_IBSCBS_ID();

	public I_LBR_ClassTrib_IBSCBS getLBR_ClassTrib_IBSCBS() throws RuntimeException;

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

    /** Column name LBR_DocLine_IBSCBS_ID */
    public static final String COLUMNNAME_LBR_DocLine_IBSCBS_ID = "LBR_DocLine_IBSCBS_ID";

	/** Set Doc Line IBS / CBS	  */
	public void setLBR_DocLine_IBSCBS_ID (int LBR_DocLine_IBSCBS_ID);

	/** Get Doc Line IBS / CBS	  */
	public int getLBR_DocLine_IBSCBS_ID();

    /** Column name LBR_DocLine_IBSCBS_UU */
    public static final String COLUMNNAME_LBR_DocLine_IBSCBS_UU = "LBR_DocLine_IBSCBS_UU";

	/** Set Doc Line IBS / CBS	  */
	public void setLBR_DocLine_IBSCBS_UU (String LBR_DocLine_IBSCBS_UU);

	/** Get Doc Line IBS / CBS	  */
	public String getLBR_DocLine_IBSCBS_UU();

    /** Column name LBR_IBS_Mun_IsTaxIncluded */
    public static final String COLUMNNAME_LBR_IBS_Mun_IsTaxIncluded = "LBR_IBS_Mun_IsTaxIncluded";

	/** Set Price includes Tax.
	  * Tax is included in the price 
	  */
	public void setLBR_IBS_Mun_IsTaxIncluded (boolean LBR_IBS_Mun_IsTaxIncluded);

	/** Get Price includes Tax.
	  * Tax is included in the price 
	  */
	public boolean isLBR_IBS_Mun_IsTaxIncluded();

    /** Column name LBR_IBS_Mun_TaxAmt */
    public static final String COLUMNNAME_LBR_IBS_Mun_TaxAmt = "LBR_IBS_Mun_TaxAmt";

	/** Set IBS Mun. Tax Amt.
	  * Indicates the IBS Mun. Tax Amt
	  */
	public void setLBR_IBS_Mun_TaxAmt (BigDecimal LBR_IBS_Mun_TaxAmt);

	/** Get IBS Mun. Tax Amt.
	  * Indicates the IBS Mun. Tax Amt
	  */
	public BigDecimal getLBR_IBS_Mun_TaxAmt();

    /** Column name LBR_IBS_Mun_TaxDeferralAmt */
    public static final String COLUMNNAME_LBR_IBS_Mun_TaxDeferralAmt = "LBR_IBS_Mun_TaxDeferralAmt";

	/** Set IBS Mun. Tax Deferral Amt.
	  * Indicates the IBS Mun. Tax Deferral Amt
	  */
	public void setLBR_IBS_Mun_TaxDeferralAmt (BigDecimal LBR_IBS_Mun_TaxDeferralAmt);

	/** Get IBS Mun. Tax Deferral Amt.
	  * Indicates the IBS Mun. Tax Deferral Amt
	  */
	public BigDecimal getLBR_IBS_Mun_TaxDeferralAmt();

    /** Column name LBR_IBS_Mun_TaxDeferralRate */
    public static final String COLUMNNAME_LBR_IBS_Mun_TaxDeferralRate = "LBR_IBS_Mun_TaxDeferralRate";

	/** Set IBS Mun. Tax Deferral Rate.
	  * Indicates the IBS Mun. Tax Deferral Rate
	  */
	public void setLBR_IBS_Mun_TaxDeferralRate (BigDecimal LBR_IBS_Mun_TaxDeferralRate);

	/** Get IBS Mun. Tax Deferral Rate.
	  * Indicates the IBS Mun. Tax Deferral Rate
	  */
	public BigDecimal getLBR_IBS_Mun_TaxDeferralRate();

    /** Column name LBR_IBS_Mun_TaxDevAmt */
    public static final String COLUMNNAME_LBR_IBS_Mun_TaxDevAmt = "LBR_IBS_Mun_TaxDevAmt";

	/** Set IBS Mun. Tax Dev. Amt.
	  * Indicates the IBS Mun. Tax Dev. Amt
	  */
	public void setLBR_IBS_Mun_TaxDevAmt (BigDecimal LBR_IBS_Mun_TaxDevAmt);

	/** Get IBS Mun. Tax Dev. Amt.
	  * Indicates the IBS Mun. Tax Dev. Amt
	  */
	public BigDecimal getLBR_IBS_Mun_TaxDevAmt();

    /** Column name LBR_IBS_Mun_TaxRate */
    public static final String COLUMNNAME_LBR_IBS_Mun_TaxRate = "LBR_IBS_Mun_TaxRate";

	/** Set IBS Mun. Tax Rate.
	  * Indicates the IBS Mun. Tax Rate
	  */
	public void setLBR_IBS_Mun_TaxRate (BigDecimal LBR_IBS_Mun_TaxRate);

	/** Get IBS Mun. Tax Rate.
	  * Indicates the IBS Mun. Tax Rate
	  */
	public BigDecimal getLBR_IBS_Mun_TaxRate();

    /** Column name LBR_IBS_Mun_TaxRedEfetRate */
    public static final String COLUMNNAME_LBR_IBS_Mun_TaxRedEfetRate = "LBR_IBS_Mun_TaxRedEfetRate";

	/** Set IBS Mun. Tax Red. Efet. Rate.
	  * Indicates the IBS Mun. Tax Red. Efet. Rate
	  */
	public void setLBR_IBS_Mun_TaxRedEfetRate (BigDecimal LBR_IBS_Mun_TaxRedEfetRate);

	/** Get IBS Mun. Tax Red. Efet. Rate.
	  * Indicates the IBS Mun. Tax Red. Efet. Rate
	  */
	public BigDecimal getLBR_IBS_Mun_TaxRedEfetRate();

    /** Column name LBR_IBS_Mun_TaxRedRate */
    public static final String COLUMNNAME_LBR_IBS_Mun_TaxRedRate = "LBR_IBS_Mun_TaxRedRate";

	/** Set IBS Mun. Tax Red. Rate.
	  * Indicates the IBS Mun. Tax Red. Rate
	  */
	public void setLBR_IBS_Mun_TaxRedRate (BigDecimal LBR_IBS_Mun_TaxRedRate);

	/** Get IBS Mun. Tax Red. Rate.
	  * Indicates the IBS Mun. Tax Red. Rate
	  */
	public BigDecimal getLBR_IBS_Mun_TaxRedRate();

    /** Column name LBR_IBS_UF_IsTaxIncluded */
    public static final String COLUMNNAME_LBR_IBS_UF_IsTaxIncluded = "LBR_IBS_UF_IsTaxIncluded";

	/** Set Price includes Tax.
	  * Tax is included in the price 
	  */
	public void setLBR_IBS_UF_IsTaxIncluded (boolean LBR_IBS_UF_IsTaxIncluded);

	/** Get Price includes Tax.
	  * Tax is included in the price 
	  */
	public boolean isLBR_IBS_UF_IsTaxIncluded();

    /** Column name LBR_IBS_UF_TaxAmt */
    public static final String COLUMNNAME_LBR_IBS_UF_TaxAmt = "LBR_IBS_UF_TaxAmt";

	/** Set IBS UF Tax Amt.
	  * Indicates the IBS UF Tax Amt
	  */
	public void setLBR_IBS_UF_TaxAmt (BigDecimal LBR_IBS_UF_TaxAmt);

	/** Get IBS UF Tax Amt.
	  * Indicates the IBS UF Tax Amt
	  */
	public BigDecimal getLBR_IBS_UF_TaxAmt();

    /** Column name LBR_IBS_UF_TaxDeferralAmt */
    public static final String COLUMNNAME_LBR_IBS_UF_TaxDeferralAmt = "LBR_IBS_UF_TaxDeferralAmt";

	/** Set IBS UF Tax Deferral Amt.
	  * Indicates the IBS UF Tax Deferral Amt
	  */
	public void setLBR_IBS_UF_TaxDeferralAmt (BigDecimal LBR_IBS_UF_TaxDeferralAmt);

	/** Get IBS UF Tax Deferral Amt.
	  * Indicates the IBS UF Tax Deferral Amt
	  */
	public BigDecimal getLBR_IBS_UF_TaxDeferralAmt();

    /** Column name LBR_IBS_UF_TaxDeferralRate */
    public static final String COLUMNNAME_LBR_IBS_UF_TaxDeferralRate = "LBR_IBS_UF_TaxDeferralRate";

	/** Set IBS UF Tax Deferral Rate.
	  * Indicates the IBS UF Tax Deferral Rate
	  */
	public void setLBR_IBS_UF_TaxDeferralRate (BigDecimal LBR_IBS_UF_TaxDeferralRate);

	/** Get IBS UF Tax Deferral Rate.
	  * Indicates the IBS UF Tax Deferral Rate
	  */
	public BigDecimal getLBR_IBS_UF_TaxDeferralRate();

    /** Column name LBR_IBS_UF_TaxDevAmt */
    public static final String COLUMNNAME_LBR_IBS_UF_TaxDevAmt = "LBR_IBS_UF_TaxDevAmt";

	/** Set IBS UF Tax Dev. Amt.
	  * Indicates the IBS UF Tax Dev. Amt
	  */
	public void setLBR_IBS_UF_TaxDevAmt (BigDecimal LBR_IBS_UF_TaxDevAmt);

	/** Get IBS UF Tax Dev. Amt.
	  * Indicates the IBS UF Tax Dev. Amt
	  */
	public BigDecimal getLBR_IBS_UF_TaxDevAmt();

    /** Column name LBR_IBS_UF_TaxRate */
    public static final String COLUMNNAME_LBR_IBS_UF_TaxRate = "LBR_IBS_UF_TaxRate";

	/** Set IBS UF Tax Rate.
	  * Indicates the IBS UF Tax Rate
	  */
	public void setLBR_IBS_UF_TaxRate (BigDecimal LBR_IBS_UF_TaxRate);

	/** Get IBS UF Tax Rate.
	  * Indicates the IBS UF Tax Rate
	  */
	public BigDecimal getLBR_IBS_UF_TaxRate();

    /** Column name LBR_IBS_UF_TaxRedEfetRate */
    public static final String COLUMNNAME_LBR_IBS_UF_TaxRedEfetRate = "LBR_IBS_UF_TaxRedEfetRate";

	/** Set IBS UF Tax Red. Efet. Rate.
	  * Indicates the IBS UF Tax Red. Efet. Rate
	  */
	public void setLBR_IBS_UF_TaxRedEfetRate (BigDecimal LBR_IBS_UF_TaxRedEfetRate);

	/** Get IBS UF Tax Red. Efet. Rate.
	  * Indicates the IBS UF Tax Red. Efet. Rate
	  */
	public BigDecimal getLBR_IBS_UF_TaxRedEfetRate();

    /** Column name LBR_IBS_UF_TaxRedRate */
    public static final String COLUMNNAME_LBR_IBS_UF_TaxRedRate = "LBR_IBS_UF_TaxRedRate";

	/** Set IBS UF Tax Red. Rate.
	  * Indicates the IBS UF Tax Red. Rate
	  */
	public void setLBR_IBS_UF_TaxRedRate (BigDecimal LBR_IBS_UF_TaxRedRate);

	/** Get IBS UF Tax Red. Rate.
	  * Indicates the IBS UF Tax Red. Rate
	  */
	public BigDecimal getLBR_IBS_UF_TaxRedRate();

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
