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

/** Generated Interface for LBR_ClassTribNCMExcl
 *  @author iDempiere (generated) 
 *  @version Release 13
 */
@SuppressWarnings("all")
public interface I_LBR_ClassTribNCMExcl 
{

    /** TableName=LBR_ClassTribNCMExcl */
    public static final String Table_Name = "LBR_ClassTribNCMExcl";

    /** AD_Table_ID=800132 */
    public static final int Table_ID = 800132;

    KeyNamePair Model = new KeyNamePair(Table_ID, Table_Name);

    /** AccessLevel = 6 - System - Client 
     */
    BigDecimal accessLevel = BigDecimal.valueOf(6);

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

    /** Column name LBR_ClassTribNCMExcl_ID */
    public static final String COLUMNNAME_LBR_ClassTribNCMExcl_ID = "LBR_ClassTribNCMExcl_ID";

	/** Set Exceção de NCM.
	  * NCM excluído do NCM aplicável da classificação tributária.
	  */
	public void setLBR_ClassTribNCMExcl_ID (int LBR_ClassTribNCMExcl_ID);

	/** Get Exceção de NCM.
	  * NCM excluído do NCM aplicável da classificação tributária.
	  */
	public int getLBR_ClassTribNCMExcl_ID();

    /** Column name LBR_ClassTribNCMExcl_UU */
    public static final String COLUMNNAME_LBR_ClassTribNCMExcl_UU = "LBR_ClassTribNCMExcl_UU";

	/** Set LBR_ClassTribNCMExcl_UU	  */
	public void setLBR_ClassTribNCMExcl_UU (String LBR_ClassTribNCMExcl_UU);

	/** Get LBR_ClassTribNCMExcl_UU	  */
	public String getLBR_ClassTribNCMExcl_UU();

    /** Column name LBR_ClassTribNCM_ID */
    public static final String COLUMNNAME_LBR_ClassTribNCM_ID = "LBR_ClassTribNCM_ID";

	/** Set NCM Aplicável.
	  * NCM ou prefixo de NCM a que a classificação tributária se aplica (anexos da LC 214/2025).
	  */
	public void setLBR_ClassTribNCM_ID (int LBR_ClassTribNCM_ID);

	/** Get NCM Aplicável.
	  * NCM ou prefixo de NCM a que a classificação tributária se aplica (anexos da LC 214/2025).
	  */
	public int getLBR_ClassTribNCM_ID();

	@Deprecated(since="13") // use better methods with cache
	public I_LBR_ClassTribNCM getLBR_ClassTribNCM() throws RuntimeException;

    /** Column name LBR_NCMCode */
    public static final String COLUMNNAME_LBR_NCMCode = "LBR_NCMCode";

	/** Set Código NCM.
	  * NCM completo ou prefixo (capítulo, posição ou subposição), só dígitos.
	  */
	public void setLBR_NCMCode (String LBR_NCMCode);

	/** Get Código NCM.
	  * NCM completo ou prefixo (capítulo, posição ou subposição), só dígitos.
	  */
	public String getLBR_NCMCode();

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

    /** Column name ValidFrom */
    public static final String COLUMNNAME_ValidFrom = "ValidFrom";

	/** Set Valid from.
	  * Valid from including this date (first day)
	  */
	public void setValidFrom (Timestamp ValidFrom);

	/** Get Valid from.
	  * Valid from including this date (first day)
	  */
	public Timestamp getValidFrom();

    /** Column name ValidTo */
    public static final String COLUMNNAME_ValidTo = "ValidTo";

	/** Set Valid to.
	  * Valid to including this date (last day)
	  */
	public void setValidTo (Timestamp ValidTo);

	/** Get Valid to.
	  * Valid to including this date (last day)
	  */
	public Timestamp getValidTo();
}
