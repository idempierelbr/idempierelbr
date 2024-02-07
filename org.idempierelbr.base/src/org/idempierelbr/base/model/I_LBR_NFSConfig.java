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

/** Generated Interface for LBR_NFSConfig
 *  @author iDempiere (generated) 
 *  @version Release 3.1
 */
@SuppressWarnings("all")
public interface I_LBR_NFSConfig 
{

    /** TableName=LBR_NFSConfig */
    public static final String Table_Name = "LBR_NFSConfig";

    /** AD_Table_ID=800041 */
    public static final int Table_ID = 800041;

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

    /** Column name LBR_NFSConfig_ID */
    public static final String COLUMNNAME_LBR_NFSConfig_ID = "LBR_NFSConfig_ID";

	/** Set Configuração de Nota Fiscal de Serviço	  */
	public void setLBR_NFSConfig_ID (int LBR_NFSConfig_ID);

	/** Get Configuração de Nota Fiscal de Serviço	  */
	public int getLBR_NFSConfig_ID();

    /** Column name LBR_NFSConfig_UU */
    public static final String COLUMNNAME_LBR_NFSConfig_UU = "LBR_NFSConfig_UU";

	/** Set LBR_NFSConfig_UU	  */
	public void setLBR_NFSConfig_UU (String LBR_NFSConfig_UU);

	/** Get LBR_NFSConfig_UU	  */
	public String getLBR_NFSConfig_UU();

    /** Column name LBR_NFSModel */
    public static final String COLUMNNAME_LBR_NFSModel = "LBR_NFSModel";

	/** Set Modelo de NFS	  */
	public void setLBR_NFSModel (String LBR_NFSModel);

	/** Get Modelo de NFS	  */
	public String getLBR_NFSModel();

    /** Column name LBR_NFSPlayer */
    public static final String COLUMNNAME_LBR_NFSPlayer = "LBR_NFSPlayer";

	/** Set Fornecedor de NFS-e para Prefeitura	  */
	public void setLBR_NFSPlayer (String LBR_NFSPlayer);

	/** Get Fornecedor de NFS-e para Prefeitura	  */
	public String getLBR_NFSPlayer();

    /** Column name LBR_ProcessingType */
    public static final String COLUMNNAME_LBR_ProcessingType = "LBR_ProcessingType";

	/** Set Processing Type	  */
	public void setLBR_ProcessingType (String LBR_ProcessingType);

	/** Get Processing Type	  */
	public String getLBR_ProcessingType();

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
