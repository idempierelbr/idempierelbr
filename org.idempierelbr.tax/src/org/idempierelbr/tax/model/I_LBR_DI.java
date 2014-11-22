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

/** Generated Interface for LBR_DI
 *  @author iDempiere (generated) 
 *  @version Release 2.0
 */
@SuppressWarnings("all")
public interface I_LBR_DI 
{

    /** TableName=LBR_DI */
    public static final String Table_Name = "LBR_DI";

    /** AD_Table_ID=800000 */
    public static final int Table_ID = 800000;

    KeyNamePair Model = new KeyNamePair(Table_ID, Table_Name);

    /** AccessLevel = 1 - Org 
     */
    BigDecimal accessLevel = BigDecimal.valueOf(1);

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

    /** Column name C_City_ID */
    public static final String COLUMNNAME_C_City_ID = "C_City_ID";

	/** Set City.
	  * City
	  */
	public void setC_City_ID (int C_City_ID);

	/** Get City.
	  * City
	  */
	public int getC_City_ID();

	public org.compiere.model.I_C_City getC_City() throws RuntimeException;

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

    /** Column name DateDoc */
    public static final String COLUMNNAME_DateDoc = "DateDoc";

	/** Set Document Date.
	  * Date of the Document
	  */
	public void setDateDoc (Timestamp DateDoc);

	/** Get Document Date.
	  * Date of the Document
	  */
	public Timestamp getDateDoc();

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

    /** Column name LBR_BP_Buyer_ID */
    public static final String COLUMNNAME_LBR_BP_Buyer_ID = "LBR_BP_Buyer_ID";

	/** Set Business Partner (Buyer).
	  * Identifies a Business Partner
	  */
	public void setLBR_BP_Buyer_ID (int LBR_BP_Buyer_ID);

	/** Get Business Partner (Buyer).
	  * Identifies a Business Partner
	  */
	public int getLBR_BP_Buyer_ID();

	public org.compiere.model.I_C_BPartner getLBR_BP_Buyer() throws RuntimeException;

    /** Column name LBR_BP_Importer_ID */
    public static final String COLUMNNAME_LBR_BP_Importer_ID = "LBR_BP_Importer_ID";

	/** Set Business Partner (Importer).
	  * Identifies a Business Partner
	  */
	public void setLBR_BP_Importer_ID (int LBR_BP_Importer_ID);

	/** Get Business Partner (Importer).
	  * Identifies a Business Partner
	  */
	public int getLBR_BP_Importer_ID();

	public org.compiere.model.I_C_BPartner getLBR_BP_Importer() throws RuntimeException;

    /** Column name LBR_ClearanceDate */
    public static final String COLUMNNAME_LBR_ClearanceDate = "LBR_ClearanceDate";

	/** Set Clearance Date.
	  * Date of the clearance
	  */
	public void setLBR_ClearanceDate (Timestamp LBR_ClearanceDate);

	/** Get Clearance Date.
	  * Date of the clearance
	  */
	public Timestamp getLBR_ClearanceDate();

    /** Column name LBR_DI_ID */
    public static final String COLUMNNAME_LBR_DI_ID = "LBR_DI_ID";

	/** Set Import Declaration (DI).
	  * Identifies an Import Declaration (DI)
	  */
	public void setLBR_DI_ID (int LBR_DI_ID);

	/** Get Import Declaration (DI).
	  * Identifies an Import Declaration (DI)
	  */
	public int getLBR_DI_ID();

    /** Column name LBR_DI_MediationImpType */
    public static final String COLUMNNAME_LBR_DI_MediationImpType = "LBR_DI_MediationImpType";

	/** Set Mediation Type.
	  * Type of mediation
	  */
	public void setLBR_DI_MediationImpType (String LBR_DI_MediationImpType);

	/** Get Mediation Type.
	  * Type of mediation
	  */
	public String getLBR_DI_MediationImpType();

    /** Column name LBR_DI_No */
    public static final String COLUMNNAME_LBR_DI_No = "LBR_DI_No";

	/** Set Import Declaration (DI) No.
	  * Document sequence number of the document
	  */
	public void setLBR_DI_No (String LBR_DI_No);

	/** Get Import Declaration (DI) No.
	  * Document sequence number of the document
	  */
	public String getLBR_DI_No();

    /** Column name LBR_DI_TranspType */
    public static final String COLUMNNAME_LBR_DI_TranspType = "LBR_DI_TranspType";

	/** Set Transportation Type.
	  * Type of transportation
	  */
	public void setLBR_DI_TranspType (String LBR_DI_TranspType);

	/** Get Transportation Type.
	  * Type of transportation
	  */
	public String getLBR_DI_TranspType();

    /** Column name LBR_DI_UU */
    public static final String COLUMNNAME_LBR_DI_UU = "LBR_DI_UU";

	/** Set Import Declaration (DI).
	  * Identifies an Import Declaration (DI)
	  */
	public void setLBR_DI_UU (String LBR_DI_UU);

	/** Get Import Declaration (DI).
	  * Identifies an Import Declaration (DI)
	  */
	public String getLBR_DI_UU();

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
