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
package org.idempierelbr.tax.model;

import java.math.BigDecimal;
import java.sql.Timestamp;
import org.compiere.model.*;
import org.compiere.util.KeyNamePair;
import org.idempierelbr.core.model.I_LBR_NCM;

/** Generated Interface for LBR_DocLine_Details
 *  @author iDempiere (generated) 
 *  @version Release 2.0
 */
@SuppressWarnings("all")
public interface I_LBR_DocLine_Details 
{

    /** TableName=LBR_DocLine_Details */
    public static final String Table_Name = "LBR_DocLine_Details";

    /** AD_Table_ID=1000026 */
    public static final int Table_ID = MTable.getTable_ID(Table_Name);

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

    /** Column name C_InvoiceLine_ID */
    public static final String COLUMNNAME_C_InvoiceLine_ID = "C_InvoiceLine_ID";

	/** Set Invoice Line.
	  * Invoice Detail Line
	  */
	public void setC_InvoiceLine_ID (int C_InvoiceLine_ID);

	/** Get Invoice Line.
	  * Invoice Detail Line
	  */
	public int getC_InvoiceLine_ID();

	public org.compiere.model.I_C_InvoiceLine getC_InvoiceLine() throws RuntimeException;

    /** Column name C_OrderLine_ID */
    public static final String COLUMNNAME_C_OrderLine_ID = "C_OrderLine_ID";

	/** Set Sales Order Line.
	  * Sales Order Line
	  */
	public void setC_OrderLine_ID (int C_OrderLine_ID);

	/** Get Sales Order Line.
	  * Sales Order Line
	  */
	public int getC_OrderLine_ID();

	public org.compiere.model.I_C_OrderLine getC_OrderLine() throws RuntimeException;

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

    /** Column name DiscountAmt */
    public static final String COLUMNNAME_DiscountAmt = "DiscountAmt";

	/** Set Discount Amount.
	  * Calculated amount of discount
	  */
	public void setDiscountAmt (BigDecimal DiscountAmt);

	/** Get Discount Amount.
	  * Calculated amount of discount
	  */
	public BigDecimal getDiscountAmt();

    /** Column name FreightAmt */
    public static final String COLUMNNAME_FreightAmt = "FreightAmt";

	/** Set Freight Amount.
	  * Freight Amount 
	  */
	public void setFreightAmt (BigDecimal FreightAmt);

	/** Get Freight Amount.
	  * Freight Amount 
	  */
	public BigDecimal getFreightAmt();

    /** Column name InsuredAmount */
    public static final String COLUMNNAME_InsuredAmount = "InsuredAmount";

	/** Set Insured Amount	  */
	public void setInsuredAmount (BigDecimal InsuredAmount);

	/** Get Insured Amount	  */
	public BigDecimal getInsuredAmount();

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

    /** Column name LBR_CFOP_ID */
    public static final String COLUMNNAME_LBR_CFOP_ID = "LBR_CFOP_ID";

	/** Set CFOP.
	  * Indentifies the CFOP
	  */
	public void setLBR_CFOP_ID (int LBR_CFOP_ID);

	/** Get CFOP.
	  * Indentifies the CFOP
	  */
	public int getLBR_CFOP_ID();

	public I_LBR_CFOP getLBR_CFOP() throws RuntimeException;

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

    /** Column name LBR_DocLine_Details_UU */
    public static final String COLUMNNAME_LBR_DocLine_Details_UU = "LBR_DocLine_Details_UU";

	/** Set Doc Line Details.
	  * Doc Line Details
	  */
	public void setLBR_DocLine_Details_UU (String LBR_DocLine_Details_UU);

	/** Get Doc Line Details.
	  * Doc Line Details
	  */
	public String getLBR_DocLine_Details_UU();

    /** Column name LBR_EXTIPI */
    public static final String COLUMNNAME_LBR_EXTIPI = "LBR_EXTIPI";

	/** Set EX TIPI.
	  * NCM Exception
	  */
	public void setLBR_EXTIPI (String LBR_EXTIPI);

	/** Get EX TIPI.
	  * NCM Exception
	  */
	public String getLBR_EXTIPI();

    /** Column name LBR_FCIControlNo */
    public static final String COLUMNNAME_LBR_FCIControlNo = "LBR_FCIControlNo";

	/** Set FCI Control Number.
	  * Import Content Sheet (FCI) Control Number
	  */
	public void setLBR_FCIControlNo (String LBR_FCIControlNo);

	/** Get FCI Control Number.
	  * Import Content Sheet (FCI) Control Number
	  */
	public String getLBR_FCIControlNo();

    /** Column name LBR_GrossAmt */
    public static final String COLUMNNAME_LBR_GrossAmt = "LBR_GrossAmt";

	/** Set Gross Amount.
	  * Gross Amount
	  */
	public void setLBR_GrossAmt (BigDecimal LBR_GrossAmt);

	/** Get Gross Amount.
	  * Gross Amount
	  */
	public BigDecimal getLBR_GrossAmt();

    /** Column name LBR_IsGrossAmtInTotal */
    public static final String COLUMNNAME_LBR_IsGrossAmtInTotal = "LBR_IsGrossAmtInTotal";

	/** Set Gross Amount is in Grand Total.
	  * This Gross Amount is in Grand Total
	  */
	public void setLBR_IsGrossAmtInTotal (boolean LBR_IsGrossAmtInTotal);

	/** Get Gross Amount is in Grand Total.
	  * This Gross Amount is in Grand Total
	  */
	public boolean isLBR_IsGrossAmtInTotal();

    /** Column name LBR_NCM_ID */
    public static final String COLUMNNAME_LBR_NCM_ID = "LBR_NCM_ID";

	/** Set NCM.
	  * NCM stands for Nomenclatura Comum do MERCOSUL
	  */
	public void setLBR_NCM_ID (int LBR_NCM_ID);

	/** Get NCM.
	  * NCM stands for Nomenclatura Comum do MERCOSUL
	  */
	public int getLBR_NCM_ID();

	public I_LBR_NCM getLBR_NCM() throws RuntimeException;

    /** Column name LBR_NFeSpecificProduct */
    public static final String COLUMNNAME_LBR_NFeSpecificProduct = "LBR_NFeSpecificProduct";

	/** Set NF-e Specific Product.
	  * Specific Product in a NF-e
	  */
	public void setLBR_NFeSpecificProduct (String LBR_NFeSpecificProduct);

	/** Get NF-e Specific Product.
	  * Specific Product in a NF-e
	  */
	public String getLBR_NFeSpecificProduct();

    /** Column name LBR_POReferenceLine */
    public static final String COLUMNNAME_LBR_POReferenceLine = "LBR_POReferenceLine";

	/** Set Order Line Reference.
	  * Transaction Line Reference Number (Sales Order Line, Purchase Order Line) of your Business Partner
	  */
	public void setLBR_POReferenceLine (int LBR_POReferenceLine);

	/** Get Order Line Reference.
	  * Transaction Line Reference Number (Sales Order Line, Purchase Order Line) of your Business Partner
	  */
	public int getLBR_POReferenceLine();

    /** Column name LBR_PriceTax */
    public static final String COLUMNNAME_LBR_PriceTax = "LBR_PriceTax";

	/** Set Taxable Price.
	  * Taxable Price
	  */
	public void setLBR_PriceTax (BigDecimal LBR_PriceTax);

	/** Get Taxable Price.
	  * Taxable Price
	  */
	public BigDecimal getLBR_PriceTax();

    /** Column name LBR_QtyTax */
    public static final String COLUMNNAME_LBR_QtyTax = "LBR_QtyTax";

	/** Set Taxable Quantity.
	  * Taxable Quantity
	  */
	public void setLBR_QtyTax (BigDecimal LBR_QtyTax);

	/** Get Taxable Quantity.
	  * Taxable Quantity
	  */
	public BigDecimal getLBR_QtyTax();

    /** Column name LBR_Tax_ID */
    public static final String COLUMNNAME_LBR_Tax_ID = "LBR_Tax_ID";

	/** Set Transaction Tax.
	  * Identifies a transaction tax (document/line)
	  */
	public void setLBR_Tax_ID (int LBR_Tax_ID);

	/** Get Transaction Tax.
	  * Identifies a transaction tax (document/line)
	  */
	public int getLBR_Tax_ID();

    /** Column name LBR_UOMTax_ID */
    public static final String COLUMNNAME_LBR_UOMTax_ID = "LBR_UOMTax_ID";

	/** Set Taxable UOM.
	  * Taxable Unit of Measure
	  */
	public void setLBR_UOMTax_ID (int LBR_UOMTax_ID);

	/** Get Taxable UOM.
	  * Taxable Unit of Measure
	  */
	public int getLBR_UOMTax_ID();

	public org.compiere.model.I_C_UOM getLBR_UOMTax() throws RuntimeException;

    /** Column name LBR_UPCTax */
    public static final String COLUMNNAME_LBR_UPCTax = "LBR_UPCTax";

	/** Set Taxable UPC/EAN.
	  * Taxable Bar Code (Universal Product Code or its superset European Article Number)
	  */
	public void setLBR_UPCTax (String LBR_UPCTax);

	/** Get Taxable UPC/EAN.
	  * Taxable Bar Code (Universal Product Code or its superset European Article Number)
	  */
	public String getLBR_UPCTax();

    /** Column name M_RMALine_ID */
    public static final String COLUMNNAME_M_RMALine_ID = "M_RMALine_ID";

	/** Set RMA Line.
	  * Return Material Authorization Line
	  */
	public void setM_RMALine_ID (int M_RMALine_ID);

	/** Get RMA Line.
	  * Return Material Authorization Line
	  */
	public int getM_RMALine_ID();

	public org.compiere.model.I_M_RMALine getM_RMALine() throws RuntimeException;

    /** Column name POReference */
    public static final String COLUMNNAME_POReference = "POReference";

	/** Set Order Reference.
	  * Transaction Reference Number (Sales Order, Purchase Order) of your Business Partner
	  */
	public void setPOReference (String POReference);

	/** Get Order Reference.
	  * Transaction Reference Number (Sales Order, Purchase Order) of your Business Partner
	  */
	public String getPOReference();

    /** Column name ProductName */
    public static final String COLUMNNAME_ProductName = "ProductName";

	/** Set Product Name.
	  * Name of the Product
	  */
	public void setProductName (String ProductName);

	/** Get Product Name.
	  * Name of the Product
	  */
	public String getProductName();

    /** Column name ProductValue */
    public static final String COLUMNNAME_ProductValue = "ProductValue";

	/** Set Product Key.
	  * Key of the Product
	  */
	public void setProductValue (String ProductValue);

	/** Get Product Key.
	  * Key of the Product
	  */
	public String getProductValue();

    /** Column name Surcharges */
    public static final String COLUMNNAME_Surcharges = "Surcharges";

	/** Set Surcharges	  */
	public void setSurcharges (BigDecimal Surcharges);

	/** Get Surcharges	  */
	public BigDecimal getSurcharges();

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
	
	/** Column name TaxLineTotal */
    public static final String COLUMNNAME_TaxLineTotal = "TaxLineTotal";

	/** Set Tax Line Total.
	  * Tax Line Total Amount
	  */
	public void setTaxLineTotal (BigDecimal TaxLineTotal);

	/** Get Tax Line Total.
	  * Tax Line Total Amount
	  */
	public BigDecimal getTaxLineTotal();
	
	/** Column name LBR_TaxationType */
    public static final String COLUMNNAME_LBR_TaxationType = "LBR_TaxationType";

	/** Set Taxation Type.
	  * Taxation type used to calculate taxes
	  */
	public void setLBR_TaxationType (String LBR_TaxationType);

	/** Get Taxation Type.
	  * Taxation type used to calculate taxes
	  */
	public String getLBR_TaxationType();
	
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

	/** Column name LBR_SiscomexAmt */
    public static final String COLUMNNAME_LBR_SiscomexAmt = "LBR_SiscomexAmt";

	/** Set Siscomex Amount	  */
	public void setLBR_SiscomexAmt (BigDecimal LBR_SiscomexAmt);

	/** Get Siscomex Amount	  */
	public BigDecimal getLBR_SiscomexAmt();
}
