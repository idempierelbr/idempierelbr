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

/** Generated Interface for LBR_ClassTrib_IBSCBS
 *  @author iDempiere (generated) 
 *  @version Release 12
 */
@SuppressWarnings("all")
public interface I_LBR_ClassTrib_IBSCBS 
{

    /** TableName=LBR_ClassTrib_IBSCBS */
    public static final String Table_Name = "LBR_ClassTrib_IBSCBS";

    /** AD_Table_ID=800066 */
    public static final int Table_ID = 800066;

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

    /** Column name DateFrom */
    public static final String COLUMNNAME_DateFrom = "DateFrom";

	/** Set Date From.
	  * Starting date for a range
	  */
	public void setDateFrom (Timestamp DateFrom);

	/** Get Date From.
	  * Starting date for a range
	  */
	public Timestamp getDateFrom();

    /** Column name DateTo */
    public static final String COLUMNNAME_DateTo = "DateTo";

	/** Set Date To.
	  * End date of a date range
	  */
	public void setDateTo (Timestamp DateTo);

	/** Get Date To.
	  * End date of a date range
	  */
	public Timestamp getDateTo();

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

	public I_LBR_CST_IBSCBS getLBR_CST_IBSCBS() throws RuntimeException;

    /** Column name LBR_ClassTrib_IBSCBS_ID */
    public static final String COLUMNNAME_LBR_ClassTrib_IBSCBS_ID = "LBR_ClassTrib_IBSCBS_ID";

	/** Set ClassTrib IBS / CBS	  */
	public void setLBR_ClassTrib_IBSCBS_ID (int LBR_ClassTrib_IBSCBS_ID);

	/** Get ClassTrib IBS / CBS	  */
	public int getLBR_ClassTrib_IBSCBS_ID();

    /** Column name LBR_ClassTrib_IBSCBS_UU */
    public static final String COLUMNNAME_LBR_ClassTrib_IBSCBS_UU = "LBR_ClassTrib_IBSCBS_UU";

	/** Set ClassTrib IBS / CBS	  */
	public void setLBR_ClassTrib_IBSCBS_UU (String LBR_ClassTrib_IBSCBS_UU);

	/** Get ClassTrib IBS / CBS	  */
	public String getLBR_ClassTrib_IBSCBS_UU();

    /** Column name LBR_IndIBSCBSRedBC */
    public static final String COLUMNNAME_LBR_IndIBSCBSRedBC = "LBR_IndIBSCBSRedBC";

	/** Set IBS/CBS Red BC Indicator	  */
	public void setLBR_IndIBSCBSRedBC (String LBR_IndIBSCBSRedBC);

	/** Get IBS/CBS Red BC Indicator	  */
	public String getLBR_IndIBSCBSRedBC();

    /** Column name LBR_IndgIBSCBSCredPres */
    public static final String COLUMNNAME_LBR_IndgIBSCBSCredPres = "LBR_IndgIBSCBSCredPres";

	/** Set IBS/CBS CredPres Group Indicator	  */
	public void setLBR_IndgIBSCBSCredPres (String LBR_IndgIBSCBSCredPres);

	/** Get IBS/CBS CredPres Group Indicator	  */
	public String getLBR_IndgIBSCBSCredPres();

    /** Column name LBR_IndgIBSCBSMono */
    public static final String COLUMNNAME_LBR_IndgIBSCBSMono = "LBR_IndgIBSCBSMono";

	/** Set IBS/CBS Mono Group Indicator	  */
	public void setLBR_IndgIBSCBSMono (String LBR_IndgIBSCBSMono);

	/** Get IBS/CBS Mono Group Indicator	  */
	public String getLBR_IndgIBSCBSMono();

    /** Column name LBR_IndgIBSCBSMonoDif */
    public static final String COLUMNNAME_LBR_IndgIBSCBSMonoDif = "LBR_IndgIBSCBSMonoDif";

	/** Set IBS/CBS MonoDig Group Indicator	  */
	public void setLBR_IndgIBSCBSMonoDif (String LBR_IndgIBSCBSMonoDif);

	/** Get IBS/CBS MonoDig Group Indicator	  */
	public String getLBR_IndgIBSCBSMonoDif();

    /** Column name LBR_IndgIBSCBSMonoRet */
    public static final String COLUMNNAME_LBR_IndgIBSCBSMonoRet = "LBR_IndgIBSCBSMonoRet";

	/** Set IBS/CBS MonoRet Group Indicator	  */
	public void setLBR_IndgIBSCBSMonoRet (String LBR_IndgIBSCBSMonoRet);

	/** Get IBS/CBS MonoRet Group Indicator	  */
	public String getLBR_IndgIBSCBSMonoRet();

    /** Column name LBR_IndgIBSCBSMonoReten */
    public static final String COLUMNNAME_LBR_IndgIBSCBSMonoReten = "LBR_IndgIBSCBSMonoReten";

	/** Set IBS/CBS MonoReten Group Indicator	  */
	public void setLBR_IndgIBSCBSMonoReten (String LBR_IndgIBSCBSMonoReten);

	/** Get IBS/CBS MonoReten Group Indicator	  */
	public String getLBR_IndgIBSCBSMonoReten();

    /** Column name LBR_IndgIBSCBSTribRegular */
    public static final String COLUMNNAME_LBR_IndgIBSCBSTribRegular = "LBR_IndgIBSCBSTribRegular";

	/** Set IBS/CBS TribRegular Group Indicator	  */
	public void setLBR_IndgIBSCBSTribRegular (String LBR_IndgIBSCBSTribRegular);

	/** Get IBS/CBS TribRegular Group Indicator	  */
	public String getLBR_IndgIBSCBSTribRegular();

    /** Column name LBR_PRedCBS */
    public static final String COLUMNNAME_LBR_PRedCBS = "LBR_PRedCBS";

	/** Set Red. CBS (%)	  */
	public void setLBR_PRedCBS (BigDecimal LBR_PRedCBS);

	/** Get Red. CBS (%)	  */
	public BigDecimal getLBR_PRedCBS();

    /** Column name LBR_PRedIBS */
    public static final String COLUMNNAME_LBR_PRedIBS = "LBR_PRedIBS";

	/** Set Red. IBS (%)	  */
	public void setLBR_PRedIBS (BigDecimal LBR_PRedIBS);

	/** Get Red. IBS (%)	  */
	public BigDecimal getLBR_PRedIBS();

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

    /** Column name UpdatedDate */
    public static final String COLUMNNAME_UpdatedDate = "UpdatedDate";

	/** Set Updated Date	  */
	public void setUpdatedDate (Timestamp UpdatedDate);

	/** Get Updated Date	  */
	public Timestamp getUpdatedDate();

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
