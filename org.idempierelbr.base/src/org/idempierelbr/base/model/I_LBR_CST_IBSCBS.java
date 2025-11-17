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

/** Generated Interface for LBR_CST_IBSCBS
 *  @author iDempiere (generated) 
 *  @version Release 12
 */
@SuppressWarnings("all")
public interface I_LBR_CST_IBSCBS 
{

    /** TableName=LBR_CST_IBSCBS */
    public static final String Table_Name = "LBR_CST_IBSCBS";

    /** AD_Table_ID=800067 */
    public static final int Table_ID = 800067;

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

    /** Column name LBR_CST_IBSCBS_ID */
    public static final String COLUMNNAME_LBR_CST_IBSCBS_ID = "LBR_CST_IBSCBS_ID";

	/** Set CST IBS / CBS	  */
	public void setLBR_CST_IBSCBS_ID (int LBR_CST_IBSCBS_ID);

	/** Get CST IBS / CBS	  */
	public int getLBR_CST_IBSCBS_ID();

    /** Column name LBR_CST_IBSCBS_UU */
    public static final String COLUMNNAME_LBR_CST_IBSCBS_UU = "LBR_CST_IBSCBS_UU";

	/** Set CST IBS / CBS	  */
	public void setLBR_CST_IBSCBS_UU (String LBR_CST_IBSCBS_UU);

	/** Get CST IBS / CBS	  */
	public String getLBR_CST_IBSCBS_UU();

    /** Column name LBR_IBSCBSIndBPe */
    public static final String COLUMNNAME_LBR_IBSCBSIndBPe = "LBR_IBSCBSIndBPe";

	/** Set IBS/CBS BPe Indicator	  */
	public void setLBR_IBSCBSIndBPe (String LBR_IBSCBSIndBPe);

	/** Get IBS/CBS BPe Indicator	  */
	public String getLBR_IBSCBSIndBPe();

    /** Column name LBR_IBSCBSIndBPeTM */
    public static final String COLUMNNAME_LBR_IBSCBSIndBPeTM = "LBR_IBSCBSIndBPeTM";

	/** Set IBS/CBS BPeTM Indicator	  */
	public void setLBR_IBSCBSIndBPeTM (String LBR_IBSCBSIndBPeTM);

	/** Get IBS/CBS BPeTM Indicator	  */
	public String getLBR_IBSCBSIndBPeTM();

    /** Column name LBR_IBSCBSIndCTe */
    public static final String COLUMNNAME_LBR_IBSCBSIndCTe = "LBR_IBSCBSIndCTe";

	/** Set IBS/CBS CTe Indicator	  */
	public void setLBR_IBSCBSIndCTe (String LBR_IBSCBSIndCTe);

	/** Get IBS/CBS CTe Indicator	  */
	public String getLBR_IBSCBSIndCTe();

    /** Column name LBR_IBSCBSIndCteOS */
    public static final String COLUMNNAME_LBR_IBSCBSIndCteOS = "LBR_IBSCBSIndCteOS";

	/** Set IBS/CBS CteOS Indicator	  */
	public void setLBR_IBSCBSIndCteOS (String LBR_IBSCBSIndCteOS);

	/** Get IBS/CBS CteOS Indicator	  */
	public String getLBR_IBSCBSIndCteOS();

    /** Column name LBR_IBSCBSIndNF3e */
    public static final String COLUMNNAME_LBR_IBSCBSIndNF3e = "LBR_IBSCBSIndNF3e";

	/** Set IBS/CBS NF3e Indicator	  */
	public void setLBR_IBSCBSIndNF3e (String LBR_IBSCBSIndNF3e);

	/** Get IBS/CBS NF3e Indicator	  */
	public String getLBR_IBSCBSIndNF3e();

    /** Column name LBR_IBSCBSIndNFCe */
    public static final String COLUMNNAME_LBR_IBSCBSIndNFCe = "LBR_IBSCBSIndNFCe";

	/** Set IBS/CBS NFCe Indicator	  */
	public void setLBR_IBSCBSIndNFCe (String LBR_IBSCBSIndNFCe);

	/** Get IBS/CBS NFCe Indicator	  */
	public String getLBR_IBSCBSIndNFCe();

    /** Column name LBR_IBSCBSIndNFCom */
    public static final String COLUMNNAME_LBR_IBSCBSIndNFCom = "LBR_IBSCBSIndNFCom";

	/** Set IBS/CBS NFCom Indicator	  */
	public void setLBR_IBSCBSIndNFCom (String LBR_IBSCBSIndNFCom);

	/** Get IBS/CBS NFCom Indicator	  */
	public String getLBR_IBSCBSIndNFCom();

    /** Column name LBR_IBSCBSIndNFSe */
    public static final String COLUMNNAME_LBR_IBSCBSIndNFSe = "LBR_IBSCBSIndNFSe";

	/** Set IBS/CBS NFSe Indicator	  */
	public void setLBR_IBSCBSIndNFSe (String LBR_IBSCBSIndNFSe);

	/** Get IBS/CBS NFSe Indicator	  */
	public String getLBR_IBSCBSIndNFSe();

    /** Column name LBR_IBSCBSIndNFe */
    public static final String COLUMNNAME_LBR_IBSCBSIndNFe = "LBR_IBSCBSIndNFe";

	/** Set IBS/CBS NFe Indicator	  */
	public void setLBR_IBSCBSIndNFe (String LBR_IBSCBSIndNFe);

	/** Get IBS/CBS NFe Indicator	  */
	public String getLBR_IBSCBSIndNFe();

    /** Column name LBR_IndgIBSCBS */
    public static final String COLUMNNAME_LBR_IndgIBSCBS = "LBR_IndgIBSCBS";

	/** Set IBS/CBS Group Indicator	  */
	public void setLBR_IndgIBSCBS (String LBR_IndgIBSCBS);

	/** Get IBS/CBS Group Indicator	  */
	public String getLBR_IndgIBSCBS();

    /** Column name LBR_IndgIBSCBSDif */
    public static final String COLUMNNAME_LBR_IndgIBSCBSDif = "LBR_IndgIBSCBSDif";

	/** Set IBS/CBS Dif Group Indicator	  */
	public void setLBR_IndgIBSCBSDif (String LBR_IndgIBSCBSDif);

	/** Get IBS/CBS Dif Group Indicator	  */
	public String getLBR_IndgIBSCBSDif();

    /** Column name LBR_IndgIBSCBSMono */
    public static final String COLUMNNAME_LBR_IndgIBSCBSMono = "LBR_IndgIBSCBSMono";

	/** Set IBS/CBS Mono Group Indicator	  */
	public void setLBR_IndgIBSCBSMono (String LBR_IndgIBSCBSMono);

	/** Get IBS/CBS Mono Group Indicator	  */
	public String getLBR_IndgIBSCBSMono();

    /** Column name LBR_IndgIBSCBSRed */
    public static final String COLUMNNAME_LBR_IndgIBSCBSRed = "LBR_IndgIBSCBSRed";

	/** Set IBS/CBS Red Group Indicator	  */
	public void setLBR_IndgIBSCBSRed (String LBR_IndgIBSCBSRed);

	/** Get IBS/CBS Red Group Indicator	  */
	public String getLBR_IndgIBSCBSRed();

    /** Column name LBR_IndgIBSCBSTransfCred */
    public static final String COLUMNNAME_LBR_IndgIBSCBSTransfCred = "LBR_IndgIBSCBSTransfCred";

	/** Set IBS/CBS TransfCred Group Indicator	  */
	public void setLBR_IndgIBSCBSTransfCred (String LBR_IndgIBSCBSTransfCred);

	/** Get IBS/CBS TransfCred Group Indicator	  */
	public String getLBR_IndgIBSCBSTransfCred();

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

    /** Column name Value */
    public static final String COLUMNNAME_Value = "Value";

	/** Set Search Key.
	  * Search key for the record in the format required - must be unique
	  */
	public void setValue (String Value);

	/** Get Search Key.
	  * Search key for the record in the format required - must be unique
	  */
	public String getValue();
}
