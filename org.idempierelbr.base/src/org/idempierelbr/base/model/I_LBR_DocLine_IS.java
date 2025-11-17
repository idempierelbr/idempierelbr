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

/** Generated Interface for LBR_DocLine_IS
 *  @author iDempiere (generated) 
 *  @version Release 12
 */
@SuppressWarnings("all")
public interface I_LBR_DocLine_IS 
{

    /** TableName=LBR_DocLine_IS */
    public static final String Table_Name = "LBR_DocLine_IS";

    /** AD_Table_ID=800068 */
    public static final int Table_ID = 800068;

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

    /** Column name LBR_CST_IS_ID */
    public static final String COLUMNNAME_LBR_CST_IS_ID = "LBR_CST_IS_ID";

	/** Set CST IS	  */
	public void setLBR_CST_IS_ID (int LBR_CST_IS_ID);

	/** Get CST IS	  */
	public int getLBR_CST_IS_ID();

	public I_LBR_CST_IS getLBR_CST_IS() throws RuntimeException;

    /** Column name LBR_ClassTrib_IS_ID */
    public static final String COLUMNNAME_LBR_ClassTrib_IS_ID = "LBR_ClassTrib_IS_ID";

	/** Set ClassTrib IS	  */
	public void setLBR_ClassTrib_IS_ID (int LBR_ClassTrib_IS_ID);

	/** Get ClassTrib IS	  */
	public int getLBR_ClassTrib_IS_ID();

	public I_LBR_ClassTrib_IS getLBR_ClassTrib_IS() throws RuntimeException;

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

    /** Column name LBR_DocLine_IS_ID */
    public static final String COLUMNNAME_LBR_DocLine_IS_ID = "LBR_DocLine_IS_ID";

	/** Set Doc Line IS	  */
	public void setLBR_DocLine_IS_ID (int LBR_DocLine_IS_ID);

	/** Get Doc Line IS	  */
	public int getLBR_DocLine_IS_ID();

    /** Column name LBR_DocLine_IS_UU */
    public static final String COLUMNNAME_LBR_DocLine_IS_UU = "LBR_DocLine_IS_UU";

	/** Set Doc Line IS	  */
	public void setLBR_DocLine_IS_UU (String LBR_DocLine_IS_UU);

	/** Get Doc Line IS	  */
	public String getLBR_DocLine_IS_UU();

    /** Column name LBR_QtyTax */
    public static final String COLUMNNAME_LBR_QtyTax = "LBR_QtyTax";

	/** Set Taxable Quantity.
	  * Taxable Quantity
	  */
	public void setLBR_QtyTax (BigDecimal LBR_QtyTax);

	/** Get Taxable Quantity.
	  * Taxable Quantity
	  */
	public BigDecimal getLBR_QtyTax();

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

    /** Column name LBR_TaxRateEspec */
    public static final String COLUMNNAME_LBR_TaxRateEspec = "LBR_TaxRateEspec";

	/** Set Tax Rate Espec..
	  * Indicates the Tax Rate Espec.
	  */
	public void setLBR_TaxRateEspec (BigDecimal LBR_TaxRateEspec);

	/** Get Tax Rate Espec..
	  * Indicates the Tax Rate Espec.
	  */
	public BigDecimal getLBR_TaxRateEspec();

    /** Column name LBR_UOMTax_ID */
    public static final String COLUMNNAME_LBR_UOMTax_ID = "LBR_UOMTax_ID";

	/** Set Taxable UOM.
	  * Taxable Unit of Measure
	  */
	public void setLBR_UOMTax_ID (int LBR_UOMTax_ID);

	/** Get Taxable UOM.
	  * Taxable Unit of Measure
	  */
	public int getLBR_UOMTax_ID();

	public org.compiere.model.I_C_UOM getLBR_UOMTax() throws RuntimeException;

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
