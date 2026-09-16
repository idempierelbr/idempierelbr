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

/** Generated Interface for LBR_DFeControl
 *  @author iDempiere (generated) 
 *  @version Release 13
 */
@SuppressWarnings("all")
public interface I_LBR_DFeControl 
{

    /** TableName=LBR_DFeControl */
    public static final String Table_Name = "LBR_DFeControl";

    /** AD_Table_ID=800087 */
    public static final int Table_ID = 800087;

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

    /** Column name LBR_BlockedUntil */
    public static final String COLUMNNAME_LBR_BlockedUntil = "LBR_BlockedUntil";

	/** Set Fim do Bloqueio	  */
	public void setLBR_BlockedUntil (Timestamp LBR_BlockedUntil);

	/** Get Fim do Bloqueio	  */
	public Timestamp getLBR_BlockedUntil();

    /** Column name LBR_DFeControl_ID */
    public static final String COLUMNNAME_LBR_DFeControl_ID = "LBR_DFeControl_ID";

	/** Set Controle de DF-e	  */
	public void setLBR_DFeControl_ID (int LBR_DFeControl_ID);

	/** Get Controle de DF-e	  */
	public int getLBR_DFeControl_ID();

    /** Column name LBR_DFeControl_UU */
    public static final String COLUMNNAME_LBR_DFeControl_UU = "LBR_DFeControl_UU";

	/** Set LBR_DFeControl_UU	  */
	public void setLBR_DFeControl_UU (String LBR_DFeControl_UU);

	/** Get LBR_DFeControl_UU	  */
	public String getLBR_DFeControl_UU();

    /** Column name LBR_LastNSU */
    public static final String COLUMNNAME_LBR_LastNSU = "LBR_LastNSU";

	/** Set Last NSU	  */
	public void setLBR_LastNSU (String LBR_LastNSU);

	/** Get Last NSU	  */
	public String getLBR_LastNSU();

    /** Column name LBR_LastRequest */
    public static final String COLUMNNAME_LBR_LastRequest = "LBR_LastRequest";

	/** Set Último Request	  */
	public void setLBR_LastRequest (Timestamp LBR_LastRequest);

	/** Get Último Request	  */
	public Timestamp getLBR_LastRequest();

    /** Column name LBR_LastcStat */
    public static final String COLUMNNAME_LBR_LastcStat = "LBR_LastcStat";

	/** Set Último Response	  */
	public void setLBR_LastcStat (String LBR_LastcStat);

	/** Get Último Response	  */
	public String getLBR_LastcStat();

    /** Column name LBR_MaxNSU */
    public static final String COLUMNNAME_LBR_MaxNSU = "LBR_MaxNSU";

	/** Set Último NSU Conhecido	  */
	public void setLBR_MaxNSU (String LBR_MaxNSU);

	/** Get Último NSU Conhecido	  */
	public String getLBR_MaxNSU();

    /** Column name LBR_NFeEnv */
    public static final String COLUMNNAME_LBR_NFeEnv = "LBR_NFeEnv";

	/** Set Sefaz NF-e Environment	  */
	public void setLBR_NFeEnv (String LBR_NFeEnv);

	/** Get Sefaz NF-e Environment	  */
	public String getLBR_NFeEnv();

    /** Column name LBR_QueryCount */
    public static final String COLUMNNAME_LBR_QueryCount = "LBR_QueryCount";

	/** Set Qtd. de Consultas (na Hora Corrente)	  */
	public void setLBR_QueryCount (int LBR_QueryCount);

	/** Get Qtd. de Consultas (na Hora Corrente)	  */
	public int getLBR_QueryCount();

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
