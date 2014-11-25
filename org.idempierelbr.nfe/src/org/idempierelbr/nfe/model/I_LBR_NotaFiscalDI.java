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
import org.idempierelbr.tax.model.I_LBR_DI_Addition;
import org.idempierelbr.tax.model.I_LBR_DI_AdditionProd;

/** Generated Interface for LBR_NotaFiscalDI
 *  @author iDempiere (generated) 
 *  @version Release 2.1
 */
@SuppressWarnings("all")
public interface I_LBR_NotaFiscalDI 
{

    /** TableName=LBR_NotaFiscalDI */
    public static final String Table_Name = "LBR_NotaFiscalDI";

    /** AD_Table_ID=800003 */
    public static final int Table_ID = 800003;

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

    /** Column name LBR_AfrmmAmt */
    public static final String COLUMNNAME_LBR_AfrmmAmt = "LBR_AfrmmAmt";

	/** Set AFRMM Amount	  */
	public void setLBR_AfrmmAmt (BigDecimal LBR_AfrmmAmt);

	/** Get AFRMM Amount	  */
	public BigDecimal getLBR_AfrmmAmt();

    /** Column name LBR_DI_Addition_ID */
    public static final String COLUMNNAME_LBR_DI_Addition_ID = "LBR_DI_Addition_ID";

	/** Set Import Declaration (DI) Addition.
	  * Identifies an Import Declaration (DI) Addiction
	  */
	public void setLBR_DI_Addition_ID (int LBR_DI_Addition_ID);

	/** Get Import Declaration (DI) Addition.
	  * Identifies an Import Declaration (DI) Addiction
	  */
	public int getLBR_DI_Addition_ID();

	public I_LBR_DI_Addition getLBR_DI_Addition() throws RuntimeException;

    /** Column name LBR_DI_AdditionProd_ID */
    public static final String COLUMNNAME_LBR_DI_AdditionProd_ID = "LBR_DI_AdditionProd_ID";

	/** Set DI Addition Product.
	  * Identifies an Import Declaration (DI) Addiction Product
	  */
	public void setLBR_DI_AdditionProd_ID (int LBR_DI_AdditionProd_ID);

	/** Get DI Addition Product.
	  * Identifies an Import Declaration (DI) Addiction Product
	  */
	public int getLBR_DI_AdditionProd_ID();

	public I_LBR_DI_AdditionProd getLBR_DI_AdditionProd() throws RuntimeException;

    /** Column name LBR_NotaFiscalDI_ID */
    public static final String COLUMNNAME_LBR_NotaFiscalDI_ID = "LBR_NotaFiscalDI_ID";

	/** Set Brazilian Fiscal Invoice (Nota Fiscal) DI.
	  * Identifies a Brazilian Fiscal Invoice (Nota Fiscal) DI
	  */
	public void setLBR_NotaFiscalDI_ID (int LBR_NotaFiscalDI_ID);

	/** Get Brazilian Fiscal Invoice (Nota Fiscal) DI.
	  * Identifies a Brazilian Fiscal Invoice (Nota Fiscal) DI
	  */
	public int getLBR_NotaFiscalDI_ID();

    /** Column name LBR_NotaFiscalDI_UU */
    public static final String COLUMNNAME_LBR_NotaFiscalDI_UU = "LBR_NotaFiscalDI_UU";

	/** Set Brazilian Fiscal Invoice (Nota Fiscal) DI.
	  * Identifies a Brazilian Fiscal Invoice (Nota Fiscal) DI
	  */
	public void setLBR_NotaFiscalDI_UU (String LBR_NotaFiscalDI_UU);

	/** Get Brazilian Fiscal Invoice (Nota Fiscal) DI.
	  * Identifies a Brazilian Fiscal Invoice (Nota Fiscal) DI
	  */
	public String getLBR_NotaFiscalDI_UU();

    /** Column name LBR_NotaFiscalLine_ID */
    public static final String COLUMNNAME_LBR_NotaFiscalLine_ID = "LBR_NotaFiscalLine_ID";

	/** Set Brazilian Fiscal Invoice (Nota Fiscal) Line.
	  * Brazilian Fiscal Invoice (Nota Fiscal) Line Identifier
	  */
	public void setLBR_NotaFiscalLine_ID (int LBR_NotaFiscalLine_ID);

	/** Get Brazilian Fiscal Invoice (Nota Fiscal) Line.
	  * Brazilian Fiscal Invoice (Nota Fiscal) Line Identifier
	  */
	public int getLBR_NotaFiscalLine_ID();

	public I_LBR_NotaFiscalLine getLBR_NotaFiscalLine() throws RuntimeException;

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
