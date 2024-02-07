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

/** Generated Interface for LBR_NotaFiscalLotLine
 *  @author iDempiere (generated) 
 *  @version Release 2.0
 */
@SuppressWarnings("all")
public interface I_LBR_NotaFiscalLotLine 
{

    /** TableName=LBR_NotaFiscalLotLine */
    public static final String Table_Name = "LBR_NotaFiscalLotLine";

    /** AD_Table_ID=1000047 */
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

    /** Column name LBR_DigestValue */
    public static final String COLUMNNAME_LBR_DigestValue = "LBR_DigestValue";

	/** Set DigestValue.
	  * Identifies a DigestValue
	  */
	public void setLBR_DigestValue (String LBR_DigestValue);

	/** Get DigestValue.
	  * Identifies a DigestValue
	  */
	public String getLBR_DigestValue();

    /** Column name LBR_LotSendingProt */
    public static final String COLUMNNAME_LBR_LotSendingProt = "LBR_LotSendingProt";

	/** Set NF-e Lot Sending Protocol.
	  * Indicates the protocol of the sending process to Sefaz
	  */
	public void setLBR_LotSendingProt (String LBR_LotSendingProt);

	/** Get NF-e Lot Sending Protocol.
	  * Indicates the protocol of the sending process to Sefaz
	  */
	public String getLBR_LotSendingProt();

    /** Column name LBR_NFeID */
    public static final String COLUMNNAME_LBR_NFeID = "LBR_NFeID";

	/** Set NFe ID	  */
	public void setLBR_NFeID (String LBR_NFeID);

	/** Get NFe ID	  */
	public String getLBR_NFeID();

    /** Column name LBR_NFeStatus */
    public static final String COLUMNNAME_LBR_NFeStatus = "LBR_NFeStatus";

	/** Set NFe Status	  */
	public void setLBR_NFeStatus (String LBR_NFeStatus);

	/** Get NFe Status	  */
	public String getLBR_NFeStatus();

    /** Column name LBR_NotaFiscal_ID */
    public static final String COLUMNNAME_LBR_NotaFiscal_ID = "LBR_NotaFiscal_ID";

	/** Set Brazilian Fiscal Invoice (Nota Fiscal).
	  * Brazilian Fiscal Invoice (Nota Fiscal) Identifier
	  */
	public void setLBR_NotaFiscal_ID (int LBR_NotaFiscal_ID);

	/** Get Brazilian Fiscal Invoice (Nota Fiscal).
	  * Brazilian Fiscal Invoice (Nota Fiscal) Identifier
	  */
	public int getLBR_NotaFiscal_ID();

	public I_LBR_NotaFiscal getLBR_NotaFiscal() throws RuntimeException;

    /** Column name LBR_NotaFiscalLot_ID */
    public static final String COLUMNNAME_LBR_NotaFiscalLot_ID = "LBR_NotaFiscalLot_ID";

	/** Set NF-e Lot.
	  * Identifies a NF-e Lot
	  */
	public void setLBR_NotaFiscalLot_ID (int LBR_NotaFiscalLot_ID);

	/** Get NF-e Lot.
	  * Identifies a NF-e Lot
	  */
	public int getLBR_NotaFiscalLot_ID();

	public I_LBR_NotaFiscalLot getLBR_NotaFiscalLot() throws RuntimeException;

    /** Column name LBR_NotaFiscalLotLine_ID */
    public static final String COLUMNNAME_LBR_NotaFiscalLotLine_ID = "LBR_NotaFiscalLotLine_ID";

	/** Set NF-e Lot Line.
	  * Identifies a NF-e Lot Line
	  */
	public void setLBR_NotaFiscalLotLine_ID (int LBR_NotaFiscalLotLine_ID);

	/** Get NF-e Lot Line.
	  * Identifies a NF-e Lot Line
	  */
	public int getLBR_NotaFiscalLotLine_ID();

    /** Column name LBR_NotaFiscalLotLine_UU */
    public static final String COLUMNNAME_LBR_NotaFiscalLotLine_UU = "LBR_NotaFiscalLotLine_UU";

	/** Set NF-e Lot Line.
	  * Identifies a NF-e Lot Line
	  */
	public void setLBR_NotaFiscalLotLine_UU (String LBR_NotaFiscalLotLine_UU);

	/** Get NF-e Lot Line.
	  * Identifies a NF-e Lot Line
	  */
	public String getLBR_NotaFiscalLotLine_UU();

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
