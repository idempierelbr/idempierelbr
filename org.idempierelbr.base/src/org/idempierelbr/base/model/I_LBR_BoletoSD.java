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

/** Generated Interface for LBR_BoletoSD
 *  @author iDempiere (generated) 
 *  @version Release 2.0
 */
@SuppressWarnings("all")
public interface I_LBR_BoletoSD 
{

    /** TableName=LBR_BoletoSD */
    public static final String Table_Name = "LBR_BoletoSD";

    /** AD_Table_ID=1000055 */
    public static final int Table_ID = MTable.getTable_ID(Table_Name);

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

    /** Column name Address1 */
    public static final String COLUMNNAME_Address1 = "Address1";

	/** Set Address 1.
	  * Address line 1 for this location
	  */
	public void setAddress1 (String Address1);

	/** Get Address 1.
	  * Address line 1 for this location
	  */
	public String getAddress1();

    /** Column name Address2 */
    public static final String COLUMNNAME_Address2 = "Address2";

	/** Set Address 2.
	  * Address line 2 for this location
	  */
	public void setAddress2 (String Address2);

	/** Get Address 2.
	  * Address line 2 for this location
	  */
	public String getAddress2();

    /** Column name Address3 */
    public static final String COLUMNNAME_Address3 = "Address3";

	/** Set Address 3.
	  * Address Line 3 for the location
	  */
	public void setAddress3 (String Address3);

	/** Get Address 3.
	  * Address Line 3 for the location
	  */
	public String getAddress3();

    /** Column name Address4 */
    public static final String COLUMNNAME_Address4 = "Address4";

	/** Set Address 4.
	  * Address Line 4 for the location
	  */
	public void setAddress4 (String Address4);

	/** Get Address 4.
	  * Address Line 4 for the location
	  */
	public String getAddress4();

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

    /** Column name City */
    public static final String COLUMNNAME_City = "City";

	/** Set City.
	  * Identifies a City
	  */
	public void setCity (String City);

	/** Get City.
	  * Identifies a City
	  */
	public String getCity();

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

    /** Column name LBR_Boleto_ID */
    public static final String COLUMNNAME_LBR_Boleto_ID = "LBR_Boleto_ID";

	/** Set Brazilian Bank Collection (Boleto).
	  * Brazilian Bank Collection (Boleto) Identifier
	  */
	public void setLBR_Boleto_ID (int LBR_Boleto_ID);

	/** Get Brazilian Bank Collection (Boleto).
	  * Brazilian Bank Collection (Boleto) Identifier
	  */
	public int getLBR_Boleto_ID();

	public I_LBR_Boleto getLBR_Boleto() throws RuntimeException;

    /** Column name LBR_BoletoSD_ID */
    public static final String COLUMNNAME_LBR_BoletoSD_ID = "LBR_BoletoSD_ID";

	/** Set Boleto Static Data.
	  * Boleto Static Data Identifier
	  */
	public void setLBR_BoletoSD_ID (int LBR_BoletoSD_ID);

	/** Get Boleto Static Data.
	  * Boleto Static Data Identifier
	  */
	public int getLBR_BoletoSD_ID();

    /** Column name LBR_BoletoSD_UU */
    public static final String COLUMNNAME_LBR_BoletoSD_UU = "LBR_BoletoSD_UU";

	/** Set Boleto Static Data.
	  * Boleto Static Data Identifier
	  */
	public void setLBR_BoletoSD_UU (String LBR_BoletoSD_UU);

	/** Get Boleto Static Data.
	  * Boleto Static Data Identifier
	  */
	public String getLBR_BoletoSD_UU();

    /** Column name LBR_CNABInscEmpNo */
    public static final String COLUMNNAME_LBR_CNABInscEmpNo = "LBR_CNABInscEmpNo";

	/** Set Company Number	  */
	public void setLBR_CNABInscEmpNo (String LBR_CNABInscEmpNo);

	/** Get Company Number	  */
	public String getLBR_CNABInscEmpNo();

    /** Column name LBR_CNABInscEmpType */
    public static final String COLUMNNAME_LBR_CNABInscEmpType = "LBR_CNABInscEmpType";

	/** Set Company Number Type	  */
	public void setLBR_CNABInscEmpType (String LBR_CNABInscEmpType);

	/** Get Company Number Type	  */
	public String getLBR_CNABInscEmpType();

    /** Column name LBR_StaticDataType */
    public static final String COLUMNNAME_LBR_StaticDataType = "LBR_StaticDataType";

	/** Set Static Data Type	  */
	public void setLBR_StaticDataType (String LBR_StaticDataType);

	/** Get Static Data Type	  */
	public String getLBR_StaticDataType();

    /** Column name Name */
    public static final String COLUMNNAME_Name = "Name";

	/** Set Name.
	  * Alphanumeric identifier of the entity
	  */
	public void setName (String Name);

	/** Get Name.
	  * Alphanumeric identifier of the entity
	  */
	public String getName();

    /** Column name Postal */
    public static final String COLUMNNAME_Postal = "Postal";

	/** Set ZIP.
	  * Postal code
	  */
	public void setPostal (String Postal);

	/** Get ZIP.
	  * Postal code
	  */
	public String getPostal();

    /** Column name RegionName */
    public static final String COLUMNNAME_RegionName = "RegionName";

	/** Set Region.
	  * Name of the Region
	  */
	public void setRegionName (String RegionName);

	/** Get Region.
	  * Name of the Region
	  */
	public String getRegionName();

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
