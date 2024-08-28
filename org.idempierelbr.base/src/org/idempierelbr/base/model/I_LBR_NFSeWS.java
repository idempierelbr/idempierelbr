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

/** Generated Interface for LBR_NFSeWS
 *  @author iDempiere (generated) 
 *  @version Release 11
 */
@SuppressWarnings("all")
public interface I_LBR_NFSeWS 
{

    /** TableName=LBR_NFSeWS */
    public static final String Table_Name = "LBR_NFSeWS";

    /** AD_Table_ID=800042 */
    public static final int Table_ID = 800042;

    KeyNamePair Model = new KeyNamePair(Table_ID, Table_Name);

    /** AccessLevel = 1 - Org 
     */
    BigDecimal accessLevel = BigDecimal.valueOf(1);

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

    /** Column name LBR_NFSConfig_ID */
    public static final String COLUMNNAME_LBR_NFSConfig_ID = "LBR_NFSConfig_ID";

	/** Set Configuração de Nota Fiscal de Serviço	  */
	public void setLBR_NFSConfig_ID (int LBR_NFSConfig_ID);

	/** Get Configuração de Nota Fiscal de Serviço	  */
	public int getLBR_NFSConfig_ID();

	public I_LBR_NFSConfig getLBR_NFSConfig() throws RuntimeException;

    /** Column name LBR_NFSPrintURL */
    public static final String COLUMNNAME_LBR_NFSPrintURL = "LBR_NFSPrintURL";

	/** Set URL de Impressão do DANFE	  */
	public void setLBR_NFSPrintURL (String LBR_NFSPrintURL);

	/** Get URL de Impressão do DANFE	  */
	public String getLBR_NFSPrintURL();

    /** Column name LBR_NFSeWS_ID */
    public static final String COLUMNNAME_LBR_NFSeWS_ID = "LBR_NFSeWS_ID";

	/** Set URL dos Web Services da NFS	  */
	public void setLBR_NFSeWS_ID (int LBR_NFSeWS_ID);

	/** Get URL dos Web Services da NFS	  */
	public int getLBR_NFSeWS_ID();

    /** Column name LBR_NFSeWS_UU */
    public static final String COLUMNNAME_LBR_NFSeWS_UU = "LBR_NFSeWS_UU";

	/** Set LBR_NFSeWS_UU	  */
	public void setLBR_NFSeWS_UU (String LBR_NFSeWS_UU);

	/** Get LBR_NFSeWS_UU	  */
	public String getLBR_NFSeWS_UU();

    /** Column name LBR_NFeEnv */
    public static final String COLUMNNAME_LBR_NFeEnv = "LBR_NFeEnv";

	/** Set Sefaz NF-e Environment	  */
	public void setLBR_NFeEnv (String LBR_NFeEnv);

	/** Get Sefaz NF-e Environment	  */
	public String getLBR_NFeEnv();

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

    /** Column name Password */
    public static final String COLUMNNAME_Password = "Password";

	/** Set Password.
	  * Password of any length (case sensitive)
	  */
	public void setPassword (String Password);

	/** Get Password.
	  * Password of any length (case sensitive)
	  */
	public String getPassword();

    /** Column name URL */
    public static final String COLUMNNAME_URL = "URL";

	/** Set URL.
	  * Full URL address - e.g. http://www.idempiere.org
	  */
	public void setURL (String URL);

	/** Get URL.
	  * Full URL address - e.g. http://www.idempiere.org
	  */
	public String getURL();

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

    /** Column name UserName */
    public static final String COLUMNNAME_UserName = "UserName";

	/** Set User Name	  */
	public void setUserName (String UserName);

	/** Get User Name	  */
	public String getUserName();

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
