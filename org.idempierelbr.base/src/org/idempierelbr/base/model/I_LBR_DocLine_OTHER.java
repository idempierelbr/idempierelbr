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

/** Generated Interface for LBR_DocLine_OTHER
 *  @author iDempiere (generated) 
 *  @version Release 11
 */
@SuppressWarnings("all")
public interface I_LBR_DocLine_OTHER 
{

    /** TableName=LBR_DocLine_OTHER */
    public static final String Table_Name = "LBR_DocLine_OTHER";

    /** AD_Table_ID=800061 */
    public static final int Table_ID = 800061;

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

    /** Column name LBR_CSLL_IsTaxIncluded */
    public static final String COLUMNNAME_LBR_CSLL_IsTaxIncluded = "LBR_CSLL_IsTaxIncluded";

	/** Set CSLL Incluso no Preço	  */
	public void setLBR_CSLL_IsTaxIncluded (boolean LBR_CSLL_IsTaxIncluded);

	/** Get CSLL Incluso no Preço	  */
	public boolean isLBR_CSLL_IsTaxIncluded();

    /** Column name LBR_CSLL_TaxAmt */
    public static final String COLUMNNAME_LBR_CSLL_TaxAmt = "LBR_CSLL_TaxAmt";

	/** Set Valor da CSLL	  */
	public void setLBR_CSLL_TaxAmt (BigDecimal LBR_CSLL_TaxAmt);

	/** Get Valor da CSLL	  */
	public BigDecimal getLBR_CSLL_TaxAmt();

    /** Column name LBR_CSLL_TaxBaseAmt */
    public static final String COLUMNNAME_LBR_CSLL_TaxBaseAmt = "LBR_CSLL_TaxBaseAmt";

	/** Set Base de Cálculo da CSLL	  */
	public void setLBR_CSLL_TaxBaseAmt (BigDecimal LBR_CSLL_TaxBaseAmt);

	/** Get Base de Cálculo da CSLL	  */
	public BigDecimal getLBR_CSLL_TaxBaseAmt();

    /** Column name LBR_CSLL_TaxRate */
    public static final String COLUMNNAME_LBR_CSLL_TaxRate = "LBR_CSLL_TaxRate";

	/** Set Alíquota da CSLL	  */
	public void setLBR_CSLL_TaxRate (BigDecimal LBR_CSLL_TaxRate);

	/** Get Alíquota da CSLL	  */
	public BigDecimal getLBR_CSLL_TaxRate();

    /** Column name LBR_DocLine_Details_ID */
    public static final String COLUMNNAME_LBR_DocLine_Details_ID = "LBR_DocLine_Details_ID";

	/** Set Doc Line Details.
	  * Doc Line Details
	  */
	public void setLBR_DocLine_Details_ID (int LBR_DocLine_Details_ID);

	/** Get Doc Line Details.
	  * Doc Line Details
	  */
	public int getLBR_DocLine_Details_ID();

	public I_LBR_DocLine_Details getLBR_DocLine_Details() throws RuntimeException;

    /** Column name LBR_DocLine_OTHER_ID */
    public static final String COLUMNNAME_LBR_DocLine_OTHER_ID = "LBR_DocLine_OTHER_ID";

	/** Set Outros Impostos	  */
	public void setLBR_DocLine_OTHER_ID (int LBR_DocLine_OTHER_ID);

	/** Get Outros Impostos	  */
	public int getLBR_DocLine_OTHER_ID();

    /** Column name LBR_DocLine_OTHER_UU */
    public static final String COLUMNNAME_LBR_DocLine_OTHER_UU = "LBR_DocLine_OTHER_UU";

	/** Set LBR_DocLine_OTHER_UU	  */
	public void setLBR_DocLine_OTHER_UU (String LBR_DocLine_OTHER_UU);

	/** Get LBR_DocLine_OTHER_UU	  */
	public String getLBR_DocLine_OTHER_UU();

    /** Column name LBR_INSS_IsTaxIncluded */
    public static final String COLUMNNAME_LBR_INSS_IsTaxIncluded = "LBR_INSS_IsTaxIncluded";

	/** Set INSS Incluso no Preço	  */
	public void setLBR_INSS_IsTaxIncluded (boolean LBR_INSS_IsTaxIncluded);

	/** Get INSS Incluso no Preço	  */
	public boolean isLBR_INSS_IsTaxIncluded();

    /** Column name LBR_INSS_TaxAmt */
    public static final String COLUMNNAME_LBR_INSS_TaxAmt = "LBR_INSS_TaxAmt";

	/** Set Valor do INSS	  */
	public void setLBR_INSS_TaxAmt (BigDecimal LBR_INSS_TaxAmt);

	/** Get Valor do INSS	  */
	public BigDecimal getLBR_INSS_TaxAmt();

    /** Column name LBR_INSS_TaxBaseAmt */
    public static final String COLUMNNAME_LBR_INSS_TaxBaseAmt = "LBR_INSS_TaxBaseAmt";

	/** Set Base de Cálculo do INSS	  */
	public void setLBR_INSS_TaxBaseAmt (BigDecimal LBR_INSS_TaxBaseAmt);

	/** Get Base de Cálculo do INSS	  */
	public BigDecimal getLBR_INSS_TaxBaseAmt();

    /** Column name LBR_INSS_TaxRate */
    public static final String COLUMNNAME_LBR_INSS_TaxRate = "LBR_INSS_TaxRate";

	/** Set Alíquota do INSS	  */
	public void setLBR_INSS_TaxRate (BigDecimal LBR_INSS_TaxRate);

	/** Get Alíquota do INSS	  */
	public BigDecimal getLBR_INSS_TaxRate();

    /** Column name LBR_IR_IsTaxIncluded */
    public static final String COLUMNNAME_LBR_IR_IsTaxIncluded = "LBR_IR_IsTaxIncluded";

	/** Set IR Incluso no Preço	  */
	public void setLBR_IR_IsTaxIncluded (boolean LBR_IR_IsTaxIncluded);

	/** Get IR Incluso no Preço	  */
	public boolean isLBR_IR_IsTaxIncluded();

    /** Column name LBR_IR_TaxAmt */
    public static final String COLUMNNAME_LBR_IR_TaxAmt = "LBR_IR_TaxAmt";

	/** Set Valor do IR	  */
	public void setLBR_IR_TaxAmt (BigDecimal LBR_IR_TaxAmt);

	/** Get Valor do IR	  */
	public BigDecimal getLBR_IR_TaxAmt();

    /** Column name LBR_IR_TaxBaseAmt */
    public static final String COLUMNNAME_LBR_IR_TaxBaseAmt = "LBR_IR_TaxBaseAmt";

	/** Set Base de Cálculo do IR	  */
	public void setLBR_IR_TaxBaseAmt (BigDecimal LBR_IR_TaxBaseAmt);

	/** Get Base de Cálculo do IR	  */
	public BigDecimal getLBR_IR_TaxBaseAmt();

    /** Column name LBR_IR_TaxRate */
    public static final String COLUMNNAME_LBR_IR_TaxRate = "LBR_IR_TaxRate";

	/** Set Alíquota do IR	  */
	public void setLBR_IR_TaxRate (BigDecimal LBR_IR_TaxRate);

	/** Get Alíquota do IR	  */
	public BigDecimal getLBR_IR_TaxRate();

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
