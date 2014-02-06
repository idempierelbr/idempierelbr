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

/** Generated Interface for LBR_CFOPLine
 *  @author iDempiere (generated) 
 *  @version Release 2.0
 */
@SuppressWarnings("all")
public interface I_LBR_CFOPLine 
{

    /** TableName=LBR_CFOPLine */
    public static final String Table_Name = "LBR_CFOPLine";

    /** AD_Table_ID=1000025 */
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

    /** Column name C_DocType_ID */
    public static final String COLUMNNAME_C_DocType_ID = "C_DocType_ID";

	/** Set Document Type.
	  * Document type or rules
	  */
	public void setC_DocType_ID (int C_DocType_ID);

	/** Get Document Type.
	  * Document type or rules
	  */
	public int getC_DocType_ID();

	public org.compiere.model.I_C_DocType getC_DocType() throws RuntimeException;

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

    /** Column name IsManufactured */
    public static final String COLUMNNAME_IsManufactured = "IsManufactured";

	/** Set Manufactured.
	  * This product is manufactured
	  */
	public void setIsManufactured (String IsManufactured);

	/** Get Manufactured.
	  * This product is manufactured
	  */
	public String getIsManufactured();

    /** Column name LBR_BPartnerCategory_ID */
    public static final String COLUMNNAME_LBR_BPartnerCategory_ID = "LBR_BPartnerCategory_ID";

	/** Set CFOP Business Partner Category.
	  * Identifies a CFOP Business Partner Category
	  */
	public void setLBR_BPartnerCategory_ID (int LBR_BPartnerCategory_ID);

	/** Get CFOP Business Partner Category.
	  * Identifies a CFOP Business Partner Category
	  */
	public int getLBR_BPartnerCategory_ID();

	public I_LBR_BPartnerCategory getLBR_BPartnerCategory() throws RuntimeException;

    /** Column name LBR_CFOP_ID */
    public static final String COLUMNNAME_LBR_CFOP_ID = "LBR_CFOP_ID";

	/** Set CFOP.
	  * Indentifies the CFOP
	  */
	public void setLBR_CFOP_ID (int LBR_CFOP_ID);

	/** Get CFOP.
	  * Indentifies the CFOP
	  */
	public int getLBR_CFOP_ID();

	public I_LBR_CFOP getLBR_CFOP() throws RuntimeException;

    /** Column name LBR_CFOPLine_ID */
    public static final String COLUMNNAME_LBR_CFOPLine_ID = "LBR_CFOPLine_ID";

	/** Set CFOP Line.
	  * Identifies the CFOP Line
	  */
	public void setLBR_CFOPLine_ID (int LBR_CFOPLine_ID);

	/** Get CFOP Line.
	  * Identifies the CFOP Line
	  */
	public int getLBR_CFOPLine_ID();

    /** Column name LBR_CFOPLine_UU */
    public static final String COLUMNNAME_LBR_CFOPLine_UU = "LBR_CFOPLine_UU";

	/** Set LBR_CFOPLine_UU	  */
	public void setLBR_CFOPLine_UU (String LBR_CFOPLine_UU);

	/** Get LBR_CFOPLine_UU	  */
	public String getLBR_CFOPLine_UU();

    /** Column name LBR_DestionationType */
    public static final String COLUMNNAME_LBR_DestionationType = "LBR_DestionationType";

	/** Set Destination Type.
	  * Defines the Destination Type
	  */
	public void setLBR_DestionationType (String LBR_DestionationType);

	/** Get Destination Type.
	  * Defines the Destination Type
	  */
	public String getLBR_DestionationType();

    /** Column name LBR_IsSubTributaria */
    public static final String COLUMNNAME_LBR_IsSubTributaria = "LBR_IsSubTributaria";

	/** Set Is Substituicao Tributaria.
	  * Defines the Is Substituicao Tributaria Status
	  */
	public void setLBR_IsSubTributaria (String LBR_IsSubTributaria);

	/** Get Is Substituicao Tributaria.
	  * Defines the Is Substituicao Tributaria Status
	  */
	public String getLBR_IsSubTributaria();

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

	public I_LBR_ProductCategory getLBR_ProductCategory() throws RuntimeException;

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

    /** Column name LBR_TaxStatus */
    public static final String COLUMNNAME_LBR_TaxStatus = "LBR_TaxStatus";

	/** Set Tax Status.
	  * Defines the Tax Status
	  */
	public void setLBR_TaxStatus (String LBR_TaxStatus);

	/** Get Tax Status.
	  * Defines the Tax Status
	  */
	public String getLBR_TaxStatus();

    /** Column name LBR_TransactionType */
    public static final String COLUMNNAME_LBR_TransactionType = "LBR_TransactionType";

	/** Set Transaction Type.
	  * Identifies a Transaction Type
	  */
	public void setLBR_TransactionType (String LBR_TransactionType);

	/** Get Transaction Type.
	  * Identifies a Transaction Type
	  */
	public String getLBR_TransactionType();

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
