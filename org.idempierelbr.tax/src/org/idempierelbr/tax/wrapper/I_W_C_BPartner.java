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
package org.idempierelbr.tax.wrapper;

import java.math.BigDecimal;
import java.sql.Timestamp;
import org.compiere.model.*;
import org.compiere.util.KeyNamePair;

/** Generated Interface for C_BPartner
 *  @author iDempiere (generated) 
 *  @version Release 2.0
 */
@SuppressWarnings("all")
public interface I_W_C_BPartner extends org.idempierelbr.core.wrapper.I_W_C_BPartner
{
	/** End User = END */
	public static final String LBR_TRANSACTIONTYPE_EndUser = "END";
	/** Export = EXP */
	public static final String LBR_TRANSACTIONTYPE_Export = "EXP";
	/** Import = IMP */
	public static final String LBR_TRANSACTIONTYPE_Import = "IMP";
	/** Manufacturing = MAN */
	public static final String LBR_TRANSACTIONTYPE_Manufacturing = "MAN";
	/** Resale = RES */
	public static final String LBR_TRANSACTIONTYPE_Resale = "RES";
	
    /** Column name LBR_CustomerCategory_ID */
    public static final String COLUMNNAME_LBR_CustomerCategory_ID = "LBR_CustomerCategory_ID";

	/** Set CFOP Business Partner Category (Customer).
	  * Identifies a CFOP Business Partner Category (when Customer)
	  */
	public void setLBR_CustomerCategory_ID (int LBR_CustomerCategory_ID);

	/** Get CFOP Business Partner Category (Customer).
	  * Identifies a CFOP Business Partner Category (when Customer)
	  */
	public int getLBR_CustomerCategory_ID();

    /** Column name LBR_FiscalGroup_Customer_ID */
    public static final String COLUMNNAME_LBR_FiscalGroup_Customer_ID = "LBR_FiscalGroup_Customer_ID";

	/** Set BP Fiscal Group (Customer).
	  * Identifies a Business Partner Fiscal Group (when Customer)
	  */
	public void setLBR_FiscalGroup_Customer_ID (int LBR_FiscalGroup_Customer_ID);

	/** Get BP Fiscal Group (Customer).
	  * Identifies a Business Partner Fiscal Group (when Customer)
	  */
	public int getLBR_FiscalGroup_Customer_ID();

    /** Column name LBR_FiscalGroup_Vendor_ID */
    public static final String COLUMNNAME_LBR_FiscalGroup_Vendor_ID = "LBR_FiscalGroup_Vendor_ID";

	/** Set BP Fiscal Group (Vendor).
	  * Identifies a Business Partner Fiscal Group (when Vendor)
	  */
	public void setLBR_FiscalGroup_Vendor_ID (int LBR_FiscalGroup_Vendor_ID);

	/** Get BP Fiscal Group (Vendor).
	  * Identifies a Business Partner Fiscal Group (when Vendor)
	  */
	public int getLBR_FiscalGroup_Vendor_ID();

    /** Column name LBR_TransactionType_Customer */
    public static final String COLUMNNAME_LBR_TransactionType_Customer = "LBR_TransactionType_Customer";

	/** Set Transaction Type (Customer).
	  * Identifies a Transaction Type (when Customer)
	  */
	public void setLBR_TransactionType_Customer (String LBR_TransactionType_Customer);

	/** Get Transaction Type (Customer).
	  * Identifies a Transaction Type (when Customer)
	  */
	public String getLBR_TransactionType_Customer();

    /** Column name LBR_TransactionType_Vendor */
    public static final String COLUMNNAME_LBR_TransactionType_Vendor = "LBR_TransactionType_Vendor";

	/** Set Transaction Type (Vendor).
	  * Identifies a Transaction Type (when Vendor)
	  */
	public void setLBR_TransactionType_Vendor (String LBR_TransactionType_Vendor);

	/** Get Transaction Type (Vendor).
	  * Identifies a Transaction Type (when Vendor)
	  */
	public String getLBR_TransactionType_Vendor();

    /** Column name LBR_VendorCategory_ID */
    public static final String COLUMNNAME_LBR_VendorCategory_ID = "LBR_VendorCategory_ID";

	/** Set CFOP Business Partner Category (Vendor).
	  * Identifies a CFOP Business Partner Category (when Vendor)
	  */
	public void setLBR_VendorCategory_ID (int LBR_VendorCategory_ID);

	/** Get CFOP Business Partner Category (Vendor).
	  * Identifies a CFOP Business Partner Category (when Vendor)
	  */
	public int getLBR_VendorCategory_ID();

}
