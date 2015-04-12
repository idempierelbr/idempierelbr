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

/** Generated Interface for LBR_IBPTax
 *  @author iDempiere (generated) 
 *  @version Release 2.1
 */
@SuppressWarnings("all")
public interface I_LBR_IBPTax 
{

    /** TableName=LBR_IBPTax */
    public static final String Table_Name = "LBR_IBPTax";

    /** AD_Table_ID=800007 */
    public static final int Table_ID = 800007;

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

    /** Column name C_Region_ID */
    public static final String COLUMNNAME_C_Region_ID = "C_Region_ID";

	/** Set Region.
	  * Identifies a geographical Region
	  */
	public void setC_Region_ID (int C_Region_ID);

	/** Get Region.
	  * Identifies a geographical Region
	  */
	public int getC_Region_ID();

	public org.compiere.model.I_C_Region getC_Region() throws RuntimeException;

    /** Column name Code */
    public static final String COLUMNNAME_Code = "Code";

	/** Set Validation code.
	  * Validation Code
	  */
	public void setCode (String Code);

	/** Get Validation code.
	  * Validation Code
	  */
	public String getCode();

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

    /** Column name Description */
    public static final String COLUMNNAME_Description = "Description";

	/** Set Description.
	  * Optional short description of the record
	  */
	public void setDescription (String Description);

	/** Get Description.
	  * Optional short description of the record
	  */
	public String getDescription();

    /** Column name EndDate */
    public static final String COLUMNNAME_EndDate = "EndDate";

	/** Set End Date.
	  * Last effective date (inclusive)
	  */
	public void setEndDate (Timestamp EndDate);

	/** Get End Date.
	  * Last effective date (inclusive)
	  */
	public Timestamp getEndDate();

    /** Column name LBR_DomesticFederalTax */
    public static final String COLUMNNAME_LBR_DomesticFederalTax = "LBR_DomesticFederalTax";

	/** Set Federal Tax (Domestic Products)	  */
	public void setLBR_DomesticFederalTax (BigDecimal LBR_DomesticFederalTax);

	/** Get Federal Tax (Domestic Products)	  */
	public BigDecimal getLBR_DomesticFederalTax();

    /** Column name LBR_Exception */
    public static final String COLUMNNAME_LBR_Exception = "LBR_Exception";

	/** Set Exception	  */
	public void setLBR_Exception (String LBR_Exception);

	/** Get Exception	  */
	public String getLBR_Exception();

    /** Column name LBR_IBPTaxKey */
    public static final String COLUMNNAME_LBR_IBPTaxKey = "LBR_IBPTaxKey";

	/** Set IBPTax Key	  */
	public void setLBR_IBPTaxKey (String LBR_IBPTaxKey);

	/** Get IBPTax Key	  */
	public String getLBR_IBPTaxKey();

    /** Column name LBR_IBPTax_ID */
    public static final String COLUMNNAME_LBR_IBPTax_ID = "LBR_IBPTax_ID";

	/** Set IBPTax	  */
	public void setLBR_IBPTax_ID (int LBR_IBPTax_ID);

	/** Get IBPTax	  */
	public int getLBR_IBPTax_ID();

    /** Column name LBR_IBPTax_UU */
    public static final String COLUMNNAME_LBR_IBPTax_UU = "LBR_IBPTax_UU";

	/** Set IBPTax	  */
	public void setLBR_IBPTax_UU (String LBR_IBPTax_UU);

	/** Get IBPTax	  */
	public String getLBR_IBPTax_UU();

    /** Column name LBR_ImportedFederalTax */
    public static final String COLUMNNAME_LBR_ImportedFederalTax = "LBR_ImportedFederalTax";

	/** Set Federal Tax (Imported Products)	  */
	public void setLBR_ImportedFederalTax (BigDecimal LBR_ImportedFederalTax);

	/** Get Federal Tax (Imported Products)	  */
	public BigDecimal getLBR_ImportedFederalTax();

    /** Column name LBR_MunicipalTax */
    public static final String COLUMNNAME_LBR_MunicipalTax = "LBR_MunicipalTax";

	/** Set Municipal Tax	  */
	public void setLBR_MunicipalTax (BigDecimal LBR_MunicipalTax);

	/** Get Municipal Tax	  */
	public BigDecimal getLBR_MunicipalTax();

    /** Column name LBR_Source */
    public static final String COLUMNNAME_LBR_Source = "LBR_Source";

	/** Set Source	  */
	public void setLBR_Source (String LBR_Source);

	/** Get Source	  */
	public String getLBR_Source();

    /** Column name LBR_StateTax */
    public static final String COLUMNNAME_LBR_StateTax = "LBR_StateTax";

	/** Set State Tax	  */
	public void setLBR_StateTax (BigDecimal LBR_StateTax);

	/** Get State Tax	  */
	public BigDecimal getLBR_StateTax();

    /** Column name StartDate */
    public static final String COLUMNNAME_StartDate = "StartDate";

	/** Set Start Date.
	  * First effective day (inclusive)
	  */
	public void setStartDate (Timestamp StartDate);

	/** Get Start Date.
	  * First effective day (inclusive)
	  */
	public Timestamp getStartDate();

    /** Column name Type */
    public static final String COLUMNNAME_Type = "Type";

	/** Set Type.
	  * Type of Validation (SQL, Java Script, Java Language)
	  */
	public void setType (String Type);

	/** Get Type.
	  * Type of Validation (SQL, Java Script, Java Language)
	  */
	public String getType();

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

    /** Column name VersionNo */
    public static final String COLUMNNAME_VersionNo = "VersionNo";

	/** Set Version No.
	  * Version Number
	  */
	public void setVersionNo (String VersionNo);

	/** Get Version No.
	  * Version Number
	  */
	public String getVersionNo();
}
