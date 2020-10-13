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
package org.idempierelbr.nfe.model;

import java.math.BigDecimal;
import java.sql.Timestamp;
import org.compiere.model.*;
import org.compiere.util.KeyNamePair;

/** Generated Interface for LBR_NFeXML
 *  @author iDempiere (generated) 
 *  @version Release 7.1
 */
@SuppressWarnings("all")
public interface I_LBR_NFeXML 
{

    /** TableName=LBR_NFeXML */
    public static final String Table_Name = "LBR_NFeXML";

    /** AD_Table_ID=800064 */
    public static final int Table_ID = 800064;

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

    /** Column name LBR_NFeID */
    public static final String COLUMNNAME_LBR_NFeID = "LBR_NFeID";

	/** Set NFe ID	  */
	public void setLBR_NFeID (String LBR_NFeID);

	/** Get NFe ID	  */
	public String getLBR_NFeID();

    /** Column name LBR_NFeXML_ID */
    public static final String COLUMNNAME_LBR_NFeXML_ID = "LBR_NFeXML_ID";

	/** Set NFe XML	  */
	public void setLBR_NFeXML_ID (int LBR_NFeXML_ID);

	/** Get NFe XML	  */
	public int getLBR_NFeXML_ID();

    /** Column name LBR_NFeXML_UU */
    public static final String COLUMNNAME_LBR_NFeXML_UU = "LBR_NFeXML_UU";

	/** Set NFe XML	  */
	public void setLBR_NFeXML_UU (String LBR_NFeXML_UU);

	/** Get NFe XML	  */
	public String getLBR_NFeXML_UU();

    /** Column name LBR_NSU */
    public static final String COLUMNNAME_LBR_NSU = "LBR_NSU";

	/** Set NSU	  */
	public void setLBR_NSU (String LBR_NSU);

	/** Get NSU	  */
	public String getLBR_NSU();

    /** Column name LBR_SchemaName */
    public static final String COLUMNNAME_LBR_SchemaName = "LBR_SchemaName";

	/** Set Schema Name	  */
	public void setLBR_SchemaName (String LBR_SchemaName);

	/** Get Schema Name	  */
	public String getLBR_SchemaName();

    /** Column name LBR_UltimaManifestacao */
    public static final String COLUMNNAME_LBR_UltimaManifestacao = "LBR_UltimaManifestacao";

	/** Set Ultima Manifestacao	  */
	public void setLBR_UltimaManifestacao (String LBR_UltimaManifestacao);

	/** Get Ultima Manifestacao	  */
	public String getLBR_UltimaManifestacao();

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
