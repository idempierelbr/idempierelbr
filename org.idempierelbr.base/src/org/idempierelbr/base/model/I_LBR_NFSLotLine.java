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

/** Generated Interface for LBR_NFSLotLine
 *  @author iDempiere (generated) 
 *  @version Release 11
 */
@SuppressWarnings("all")
public interface I_LBR_NFSLotLine 
{

    /** TableName=LBR_NFSLotLine */
    public static final String Table_Name = "LBR_NFSLotLine";

    /** AD_Table_ID=800039 */
    public static final int Table_ID = 800039;

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

    /** Column name LBR_NFSLotLine_ID */
    public static final String COLUMNNAME_LBR_NFSLotLine_ID = "LBR_NFSLotLine_ID";

	/** Set Linha do Lote de RPS	  */
	public void setLBR_NFSLotLine_ID (int LBR_NFSLotLine_ID);

	/** Get Linha do Lote de RPS	  */
	public int getLBR_NFSLotLine_ID();

    /** Column name LBR_NFSLotLine_UU */
    public static final String COLUMNNAME_LBR_NFSLotLine_UU = "LBR_NFSLotLine_UU";

	/** Set LBR_NFSLotLine_UU	  */
	public void setLBR_NFSLotLine_UU (String LBR_NFSLotLine_UU);

	/** Get LBR_NFSLotLine_UU	  */
	public String getLBR_NFSLotLine_UU();

    /** Column name LBR_NFSLot_ID */
    public static final String COLUMNNAME_LBR_NFSLot_ID = "LBR_NFSLot_ID";

	/** Set Lote de RPS	  */
	public void setLBR_NFSLot_ID (int LBR_NFSLot_ID);

	/** Get Lote de RPS	  */
	public int getLBR_NFSLot_ID();

	public I_LBR_NFSLot getLBR_NFSLot() throws RuntimeException;

    /** Column name LBR_NFS_ID */
    public static final String COLUMNNAME_LBR_NFS_ID = "LBR_NFS_ID";

	/** Set Nota Fiscal de Serviço	  */
	public void setLBR_NFS_ID (int LBR_NFS_ID);

	/** Get Nota Fiscal de Serviço	  */
	public int getLBR_NFS_ID();

	public I_LBR_NFS getLBR_NFS() throws RuntimeException;

    /** Column name LBR_NFSeStatusCode */
    public static final String COLUMNNAME_LBR_NFSeStatusCode = "LBR_NFSeStatusCode";

	/** Set Código de Retorno	  */
	public void setLBR_NFSeStatusCode (String LBR_NFSeStatusCode);

	/** Get Código de Retorno	  */
	public String getLBR_NFSeStatusCode();

    /** Column name LBR_NFSeStatusDescr */
    public static final String COLUMNNAME_LBR_NFSeStatusDescr = "LBR_NFSeStatusDescr";

	/** Set Descrição do Retorno	  */
	public void setLBR_NFSeStatusDescr (String LBR_NFSeStatusDescr);

	/** Get Descrição do Retorno	  */
	public String getLBR_NFSeStatusDescr();

    /** Column name LBR_RPSNumero */
    public static final String COLUMNNAME_LBR_RPSNumero = "LBR_RPSNumero";

	/** Set Número da RPS	  */
	public void setLBR_RPSNumero (String LBR_RPSNumero);

	/** Get Número da RPS	  */
	public String getLBR_RPSNumero();

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
