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
package org.idempierelbr.sped.model;

import java.math.BigDecimal;
import java.sql.Timestamp;

import org.compiere.model.*;
import org.compiere.util.KeyNamePair;
import org.idempierelbr.core.model.I_LBR_NCM;
import org.idempierelbr.nfe.model.I_LBR_NotaFiscal;
import org.idempierelbr.nfe.model.I_LBR_NotaFiscalLine;
import org.idempierelbr.tax.model.I_LBR_CFOP;

/** Generated Interface for LBR_FactFiscal
 *  @author iDempiere (generated) 
 *  @version Release 2.1
 */
@SuppressWarnings("all")
public interface I_LBR_FactFiscal 
{

    /** TableName=LBR_FactFiscal */
    public static final String Table_Name = "LBR_FactFiscal";

    /** AD_Table_ID=1000067 */
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

    /** Column name Address1 */
    public static final String COLUMNNAME_Address1 = "Address1";

	/** Set Address 1.
	  * Address line 1 for this location
	  */
	public void setAddress1 (String Address1);

	/** Get Address 1.
	  * Address line 1 for this location
	  */
	public String getAddress1();

    /** Column name Address2 */
    public static final String COLUMNNAME_Address2 = "Address2";

	/** Set Address 2.
	  * Address line 2 for this location
	  */
	public void setAddress2 (String Address2);

	/** Get Address 2.
	  * Address line 2 for this location
	  */
	public String getAddress2();

    /** Column name Address3 */
    public static final String COLUMNNAME_Address3 = "Address3";

	/** Set Address 3.
	  * Address Line 3 for the location
	  */
	public void setAddress3 (String Address3);

	/** Get Address 3.
	  * Address Line 3 for the location
	  */
	public String getAddress3();

    /** Column name Address4 */
    public static final String COLUMNNAME_Address4 = "Address4";

	/** Set Address 4.
	  * Address Line 4 for the location
	  */
	public void setAddress4 (String Address4);

	/** Get Address 4.
	  * Address Line 4 for the location
	  */
	public String getAddress4();

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

    /** Column name C_BPartner_ID */
    public static final String COLUMNNAME_C_BPartner_ID = "C_BPartner_ID";

	/** Set Business Partner .
	  * Identifies a Business Partner
	  */
	public void setC_BPartner_ID (int C_BPartner_ID);

	/** Get Business Partner .
	  * Identifies a Business Partner
	  */
	public int getC_BPartner_ID();

	public org.compiere.model.I_C_BPartner getC_BPartner() throws RuntimeException;

    /** Column name C_Charge_ID */
    public static final String COLUMNNAME_C_Charge_ID = "C_Charge_ID";

	/** Set Charge.
	  * Additional document charges
	  */
	public void setC_Charge_ID (int C_Charge_ID);

	/** Get Charge.
	  * Additional document charges
	  */
	public int getC_Charge_ID();

	public org.compiere.model.I_C_Charge getC_Charge() throws RuntimeException;

    /** Column name C_Invoice_ID */
    public static final String COLUMNNAME_C_Invoice_ID = "C_Invoice_ID";

	/** Set Invoice.
	  * Invoice Identifier
	  */
	public void setC_Invoice_ID (int C_Invoice_ID);

	/** Get Invoice.
	  * Invoice Identifier
	  */
	public int getC_Invoice_ID();

	public org.compiere.model.I_C_Invoice getC_Invoice() throws RuntimeException;

    /** Column name C_Location_ID */
    public static final String COLUMNNAME_C_Location_ID = "C_Location_ID";

	/** Set Address.
	  * Location or Address
	  */
	public void setC_Location_ID (int C_Location_ID);

	/** Get Address.
	  * Location or Address
	  */
	public int getC_Location_ID();

	public I_C_Location getC_Location() throws RuntimeException;

    /** Column name C_Order_ID */
    public static final String COLUMNNAME_C_Order_ID = "C_Order_ID";

	/** Set Order.
	  * Order
	  */
	public void setC_Order_ID (int C_Order_ID);

	/** Get Order.
	  * Order
	  */
	public int getC_Order_ID();

	public org.compiere.model.I_C_Order getC_Order() throws RuntimeException;

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

    /** Column name C_UOM_ID */
    public static final String COLUMNNAME_C_UOM_ID = "C_UOM_ID";

	/** Set UOM.
	  * Unit of Measure
	  */
	public void setC_UOM_ID (int C_UOM_ID);

	/** Get UOM.
	  * Unit of Measure
	  */
	public int getC_UOM_ID();

	public org.compiere.model.I_C_UOM getC_UOM() throws RuntimeException;

    /** Column name DateDelivered */
    public static final String COLUMNNAME_DateDelivered = "DateDelivered";

	/** Set Date Delivered.
	  * Date when the product was delivered
	  */
	public void setDateDelivered (Timestamp DateDelivered);

	/** Get Date Delivered.
	  * Date when the product was delivered
	  */
	public Timestamp getDateDelivered();

    /** Column name DateDoc */
    public static final String COLUMNNAME_DateDoc = "DateDoc";

	/** Set Document Date.
	  * Date of the Document
	  */
	public void setDateDoc (Timestamp DateDoc);

	/** Get Document Date.
	  * Date of the Document
	  */
	public Timestamp getDateDoc();

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

    /** Column name DocStatus */
    public static final String COLUMNNAME_DocStatus = "DocStatus";

	/** Set Document Status.
	  * The current status of the document
	  */
	public void setDocStatus (String DocStatus);

	/** Get Document Status.
	  * The current status of the document
	  */
	public String getDocStatus();

    /** Column name DocumentNo */
    public static final String COLUMNNAME_DocumentNo = "DocumentNo";

	/** Set Document No.
	  * Document sequence number of the document
	  */
	public void setDocumentNo (String DocumentNo);

	/** Get Document No.
	  * Document sequence number of the document
	  */
	public String getDocumentNo();

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

    /** Column name GrandTotal */
    public static final String COLUMNNAME_GrandTotal = "GrandTotal";

	/** Set Grand Total.
	  * Total amount of document
	  */
	public void setGrandTotal (BigDecimal GrandTotal);

	/** Get Grand Total.
	  * Total amount of document
	  */
	public BigDecimal getGrandTotal();

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

    /** Column name IsPurchased */
    public static final String COLUMNNAME_IsPurchased = "IsPurchased";

	/** Set Purchased.
	  * Organization purchases this product
	  */
	public void setIsPurchased (boolean IsPurchased);

	/** Get Purchased.
	  * Organization purchases this product
	  */
	public boolean isPurchased();

    /** Column name IsSold */
    public static final String COLUMNNAME_IsSold = "IsSold";

	/** Set Sold.
	  * Organization sells this product
	  */
	public void setIsSold (boolean IsSold);

	/** Get Sold.
	  * Organization sells this product
	  */
	public boolean isSold();

    /** Column name LBR_BPEmpresa_CCM */
    public static final String COLUMNNAME_LBR_BPEmpresa_CCM = "LBR_BPEmpresa_CCM";

	/** Set LBR_BPEmpresa_CCM	  */
	public void setLBR_BPEmpresa_CCM (String LBR_BPEmpresa_CCM);

	/** Get LBR_BPEmpresa_CCM	  */
	public String getLBR_BPEmpresa_CCM();

    /** Column name LBR_BPEmpresa_CNPJ */
    public static final String COLUMNNAME_LBR_BPEmpresa_CNPJ = "LBR_BPEmpresa_CNPJ";

	/** Set LBR_BPEmpresa_CNPJ	  */
	public void setLBR_BPEmpresa_CNPJ (String LBR_BPEmpresa_CNPJ);

	/** Get LBR_BPEmpresa_CNPJ	  */
	public String getLBR_BPEmpresa_CNPJ();

    /** Column name LBR_BPEmpresa_Fantasia */
    public static final String COLUMNNAME_LBR_BPEmpresa_Fantasia = "LBR_BPEmpresa_Fantasia";

	/** Set LBR_BPEmpresa_Fantasia	  */
	public void setLBR_BPEmpresa_Fantasia (String LBR_BPEmpresa_Fantasia);

	/** Get LBR_BPEmpresa_Fantasia	  */
	public String getLBR_BPEmpresa_Fantasia();

    /** Column name LBR_BPEmpresa_IE */
    public static final String COLUMNNAME_LBR_BPEmpresa_IE = "LBR_BPEmpresa_IE";

	/** Set LBR_BPEmpresa_IE	  */
	public void setLBR_BPEmpresa_IE (String LBR_BPEmpresa_IE);

	/** Get LBR_BPEmpresa_IE	  */
	public String getLBR_BPEmpresa_IE();

    /** Column name LBR_BPEmpresa_Suframa */
    public static final String COLUMNNAME_LBR_BPEmpresa_Suframa = "LBR_BPEmpresa_Suframa";

	/** Set LBR_BPEmpresa_Suframa	  */
	public void setLBR_BPEmpresa_Suframa (String LBR_BPEmpresa_Suframa);

	/** Get LBR_BPEmpresa_Suframa	  */
	public String getLBR_BPEmpresa_Suframa();

    /** Column name LBR_CFOP_Description */
    public static final String COLUMNNAME_LBR_CFOP_Description = "LBR_CFOP_Description";

	/** Set CFOP Description	  */
	public void setLBR_CFOP_Description (String LBR_CFOP_Description);

	/** Get CFOP Description	  */
	public String getLBR_CFOP_Description();

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

    /** Column name LBR_CFOP_Value */
    public static final String COLUMNNAME_LBR_CFOP_Value = "LBR_CFOP_Value";

	/** Set LBR_CFOP_Value	  */
	public void setLBR_CFOP_Value (String LBR_CFOP_Value);

	/** Get LBR_CFOP_Value	  */
	public String getLBR_CFOP_Value();

    /** Column name LBR_CityCode */
    public static final String COLUMNNAME_LBR_CityCode = "LBR_CityCode";

	/** Set Cód. Cidade (IBGE).
	  * Código do município no IBGE
	  */
	public void setLBR_CityCode (String LBR_CityCode);

	/** Get Cód. Cidade (IBGE).
	  * Código do município no IBGE
	  */
	public String getLBR_CityCode();

    /** Column name LBR_City_Name */
    public static final String COLUMNNAME_LBR_City_Name = "LBR_City_Name";

	/** Set LBR_City_Name	  */
	public void setLBR_City_Name (String LBR_City_Name);

	/** Get LBR_City_Name	  */
	public String getLBR_City_Name();

    /** Column name LBR_CNPJ */
    public static final String COLUMNNAME_LBR_CNPJ = "LBR_CNPJ";

	/** Set CNPJ.
	  * Used to identify Legal Entities in Brazil
	  */
	public void setLBR_CNPJ (String LBR_CNPJ);

	/** Get CNPJ.
	  * Used to identify Legal Entities in Brazil
	  */
	public String getLBR_CNPJ();

    /** Column name LBR_COFINS_NFTaxAmt */
    public static final String COLUMNNAME_LBR_COFINS_NFTaxAmt = "LBR_COFINS_NFTaxAmt";

	/** Set LBR_COFINS_NFTaxAmt	  */
	public void setLBR_COFINS_NFTaxAmt (BigDecimal LBR_COFINS_NFTaxAmt);

	/** Get LBR_COFINS_NFTaxAmt	  */
	public BigDecimal getLBR_COFINS_NFTaxAmt();

    /** Column name LBR_COFINS_TaxAmt */
    public static final String COLUMNNAME_LBR_COFINS_TaxAmt = "LBR_COFINS_TaxAmt";

	/** Set LBR_COFINS_TaxAmt	  */
	public void setLBR_COFINS_TaxAmt (BigDecimal LBR_COFINS_TaxAmt);

	/** Get LBR_COFINS_TaxAmt	  */
	public BigDecimal getLBR_COFINS_TaxAmt();

    /** Column name LBR_COFINS_TaxBase */
    public static final String COLUMNNAME_LBR_COFINS_TaxBase = "LBR_COFINS_TaxBase";

	/** Set LBR_COFINS_TaxBase	  */
	public void setLBR_COFINS_TaxBase (BigDecimal LBR_COFINS_TaxBase);

	/** Get LBR_COFINS_TaxBase	  */
	public BigDecimal getLBR_COFINS_TaxBase();

    /** Column name LBR_COFINS_TaxBaseAmt */
    public static final String COLUMNNAME_LBR_COFINS_TaxBaseAmt = "LBR_COFINS_TaxBaseAmt";

	/** Set LBR_COFINS_TaxBaseAmt	  */
	public void setLBR_COFINS_TaxBaseAmt (BigDecimal LBR_COFINS_TaxBaseAmt);

	/** Get LBR_COFINS_TaxBaseAmt	  */
	public BigDecimal getLBR_COFINS_TaxBaseAmt();

    /** Column name LBR_COFINS_TaxRate */
    public static final String COLUMNNAME_LBR_COFINS_TaxRate = "LBR_COFINS_TaxRate";

	/** Set LBR_COFINS_TaxRate	  */
	public void setLBR_COFINS_TaxRate (BigDecimal LBR_COFINS_TaxRate);

	/** Get LBR_COFINS_TaxRate	  */
	public BigDecimal getLBR_COFINS_TaxRate();

    /** Column name LBR_COFINS_TaxStatus */
    public static final String COLUMNNAME_LBR_COFINS_TaxStatus = "LBR_COFINS_TaxStatus";

	/** Set LBR_COFINS_TaxStatus	  */
	public void setLBR_COFINS_TaxStatus (String LBR_COFINS_TaxStatus);

	/** Get LBR_COFINS_TaxStatus	  */
	public String getLBR_COFINS_TaxStatus();

    /** Column name LBR_CountryCode */
    public static final String COLUMNNAME_LBR_CountryCode = "LBR_CountryCode";

	/** Set Country Code for Nota Fiscal	  */
	public void setLBR_CountryCode (String LBR_CountryCode);

	/** Get Country Code for Nota Fiscal	  */
	public String getLBR_CountryCode();

    /** Column name LBR_DI_No */
    public static final String COLUMNNAME_LBR_DI_No = "LBR_DI_No";

	/** Set Import Declaration (DI) No.
	  * Document sequence number of the document
	  */
	public void setLBR_DI_No (String LBR_DI_No);

	/** Get Import Declaration (DI) No.
	  * Document sequence number of the document
	  */
	public String getLBR_DI_No();

    /** Column name LBR_FactFiscal_ID */
    public static final String COLUMNNAME_LBR_FactFiscal_ID = "LBR_FactFiscal_ID";

	/** Set Fact Fiscal	  */
	public void setLBR_FactFiscal_ID (int LBR_FactFiscal_ID);

	/** Get Fact Fiscal	  */
	public int getLBR_FactFiscal_ID();

    /** Column name LBR_ICMS_NFTaxAmt */
    public static final String COLUMNNAME_LBR_ICMS_NFTaxAmt = "LBR_ICMS_NFTaxAmt";

	/** Set LBR_ICMS_NFTaxAmt	  */
	public void setLBR_ICMS_NFTaxAmt (BigDecimal LBR_ICMS_NFTaxAmt);

	/** Get LBR_ICMS_NFTaxAmt	  */
	public BigDecimal getLBR_ICMS_NFTaxAmt();

    /** Column name LBR_ICMS_NFTaxBaseAmt */
    public static final String COLUMNNAME_LBR_ICMS_NFTaxBaseAmt = "LBR_ICMS_NFTaxBaseAmt";

	/** Set LBR_ICMS_NFTaxBaseAmt	  */
	public void setLBR_ICMS_NFTaxBaseAmt (BigDecimal LBR_ICMS_NFTaxBaseAmt);

	/** Get LBR_ICMS_NFTaxBaseAmt	  */
	public BigDecimal getLBR_ICMS_NFTaxBaseAmt();

    /** Column name LBR_ICMSST_NFTaxAmt */
    public static final String COLUMNNAME_LBR_ICMSST_NFTaxAmt = "LBR_ICMSST_NFTaxAmt";

	/** Set LBR_ICMSST_NFTaxAmt	  */
	public void setLBR_ICMSST_NFTaxAmt (BigDecimal LBR_ICMSST_NFTaxAmt);

	/** Get LBR_ICMSST_NFTaxAmt	  */
	public BigDecimal getLBR_ICMSST_NFTaxAmt();

    /** Column name LBR_ICMSST_NFTaxBaseAmt */
    public static final String COLUMNNAME_LBR_ICMSST_NFTaxBaseAmt = "LBR_ICMSST_NFTaxBaseAmt";

	/** Set LBR_ICMSST_NFTaxBaseAmt	  */
	public void setLBR_ICMSST_NFTaxBaseAmt (BigDecimal LBR_ICMSST_NFTaxBaseAmt);

	/** Get LBR_ICMSST_NFTaxBaseAmt	  */
	public BigDecimal getLBR_ICMSST_NFTaxBaseAmt();

    /** Column name LBR_ICMSST_TaxAmt */
    public static final String COLUMNNAME_LBR_ICMSST_TaxAmt = "LBR_ICMSST_TaxAmt";

	/** Set ICMS-ST Tax Amount.
	  * Defines the ICMS-ST Tax Amount
	  */
	public void setLBR_ICMSST_TaxAmt (BigDecimal LBR_ICMSST_TaxAmt);

	/** Get ICMS-ST Tax Amount.
	  * Defines the ICMS-ST Tax Amount
	  */
	public BigDecimal getLBR_ICMSST_TaxAmt();

    /** Column name LBR_ICMSST_TaxBase */
    public static final String COLUMNNAME_LBR_ICMSST_TaxBase = "LBR_ICMSST_TaxBase";

	/** Set ICMS-ST Tax Base.
	  * Indicates the ICMS-ST Tax Base
	  */
	public void setLBR_ICMSST_TaxBase (BigDecimal LBR_ICMSST_TaxBase);

	/** Get ICMS-ST Tax Base.
	  * Indicates the ICMS-ST Tax Base
	  */
	public BigDecimal getLBR_ICMSST_TaxBase();

    /** Column name LBR_ICMSST_TaxBaseAmt */
    public static final String COLUMNNAME_LBR_ICMSST_TaxBaseAmt = "LBR_ICMSST_TaxBaseAmt";

	/** Set ICMS-ST Tax Base Amount.
	  * Defines the ICMS-ST Tax Base Amount
	  */
	public void setLBR_ICMSST_TaxBaseAmt (BigDecimal LBR_ICMSST_TaxBaseAmt);

	/** Get ICMS-ST Tax Base Amount.
	  * Defines the ICMS-ST Tax Base Amount
	  */
	public BigDecimal getLBR_ICMSST_TaxBaseAmt();

    /** Column name LBR_ICMSST_TaxRate */
    public static final String COLUMNNAME_LBR_ICMSST_TaxRate = "LBR_ICMSST_TaxRate";

	/** Set ICMS-ST Tax Rate.
	  * Indicates the ICMS-ST Tax Rate
	  */
	public void setLBR_ICMSST_TaxRate (BigDecimal LBR_ICMSST_TaxRate);

	/** Get ICMS-ST Tax Rate.
	  * Indicates the ICMS-ST Tax Rate
	  */
	public BigDecimal getLBR_ICMSST_TaxRate();

    /** Column name LBR_ICMSST_TaxStatus */
    public static final String COLUMNNAME_LBR_ICMSST_TaxStatus = "LBR_ICMSST_TaxStatus";

	/** Set LBR_ICMSST_TaxStatus	  */
	public void setLBR_ICMSST_TaxStatus (String LBR_ICMSST_TaxStatus);

	/** Get LBR_ICMSST_TaxStatus	  */
	public String getLBR_ICMSST_TaxStatus();

    /** Column name LBR_ICMS_TaxAmt */
    public static final String COLUMNNAME_LBR_ICMS_TaxAmt = "LBR_ICMS_TaxAmt";

	/** Set LBR_ICMS_TaxAmt	  */
	public void setLBR_ICMS_TaxAmt (BigDecimal LBR_ICMS_TaxAmt);

	/** Get LBR_ICMS_TaxAmt	  */
	public BigDecimal getLBR_ICMS_TaxAmt();

    /** Column name LBR_ICMS_TaxBase */
    public static final String COLUMNNAME_LBR_ICMS_TaxBase = "LBR_ICMS_TaxBase";

	/** Set LBR_ICMS_TaxBase	  */
	public void setLBR_ICMS_TaxBase (BigDecimal LBR_ICMS_TaxBase);

	/** Get LBR_ICMS_TaxBase	  */
	public BigDecimal getLBR_ICMS_TaxBase();

    /** Column name LBR_ICMS_TaxBaseAmt */
    public static final String COLUMNNAME_LBR_ICMS_TaxBaseAmt = "LBR_ICMS_TaxBaseAmt";

	/** Set LBR_ICMS_TaxBaseAmt	  */
	public void setLBR_ICMS_TaxBaseAmt (BigDecimal LBR_ICMS_TaxBaseAmt);

	/** Get LBR_ICMS_TaxBaseAmt	  */
	public BigDecimal getLBR_ICMS_TaxBaseAmt();

    /** Column name LBR_ICMS_TaxRate */
    public static final String COLUMNNAME_LBR_ICMS_TaxRate = "LBR_ICMS_TaxRate";

	/** Set LBR_ICMS_TaxRate	  */
	public void setLBR_ICMS_TaxRate (BigDecimal LBR_ICMS_TaxRate);

	/** Get LBR_ICMS_TaxRate	  */
	public BigDecimal getLBR_ICMS_TaxRate();

    /** Column name LBR_ICMS_TaxStatus */
    public static final String COLUMNNAME_LBR_ICMS_TaxStatus = "LBR_ICMS_TaxStatus";

	/** Set LBR_ICMS_TaxStatus	  */
	public void setLBR_ICMS_TaxStatus (String LBR_ICMS_TaxStatus);

	/** Get LBR_ICMS_TaxStatus	  */
	public String getLBR_ICMS_TaxStatus();

    /** Column name LBR_IE */
    public static final String COLUMNNAME_LBR_IE = "LBR_IE";

	/** Set IE.
	  * Used to identify the IE (State Tax ID)
	  */
	public void setLBR_IE (String LBR_IE);

	/** Get IE.
	  * Used to identify the IE (State Tax ID)
	  */
	public String getLBR_IE();

    /** Column name LBR_II_TaxAmt */
    public static final String COLUMNNAME_LBR_II_TaxAmt = "LBR_II_TaxAmt";

	/** Set LBR_II_TaxAmt	  */
	public void setLBR_II_TaxAmt (BigDecimal LBR_II_TaxAmt);

	/** Get LBR_II_TaxAmt	  */
	public BigDecimal getLBR_II_TaxAmt();

    /** Column name LBR_II_TaxBaseAmt */
    public static final String COLUMNNAME_LBR_II_TaxBaseAmt = "LBR_II_TaxBaseAmt";

	/** Set LBR_II_TaxBaseAmt	  */
	public void setLBR_II_TaxBaseAmt (BigDecimal LBR_II_TaxBaseAmt);

	/** Get LBR_II_TaxBaseAmt	  */
	public BigDecimal getLBR_II_TaxBaseAmt();

    /** Column name LBR_II_TaxRate */
    public static final String COLUMNNAME_LBR_II_TaxRate = "LBR_II_TaxRate";

	/** Set LBR_II_TaxRate	  */
	public void setLBR_II_TaxRate (BigDecimal LBR_II_TaxRate);

	/** Get LBR_II_TaxRate	  */
	public BigDecimal getLBR_II_TaxRate();

    /** Column name LBR_IPI_NFTaxAmt */
    public static final String COLUMNNAME_LBR_IPI_NFTaxAmt = "LBR_IPI_NFTaxAmt";

	/** Set LBR_IPI_NFTaxAmt	  */
	public void setLBR_IPI_NFTaxAmt (BigDecimal LBR_IPI_NFTaxAmt);

	/** Get LBR_IPI_NFTaxAmt	  */
	public BigDecimal getLBR_IPI_NFTaxAmt();

    /** Column name LBR_IPI_TaxAmt */
    public static final String COLUMNNAME_LBR_IPI_TaxAmt = "LBR_IPI_TaxAmt";

	/** Set LBR_IPI_TaxAmt	  */
	public void setLBR_IPI_TaxAmt (BigDecimal LBR_IPI_TaxAmt);

	/** Get LBR_IPI_TaxAmt	  */
	public BigDecimal getLBR_IPI_TaxAmt();

    /** Column name LBR_IPI_TaxBaseAmt */
    public static final String COLUMNNAME_LBR_IPI_TaxBaseAmt = "LBR_IPI_TaxBaseAmt";

	/** Set LBR_IPI_TaxBaseAmt	  */
	public void setLBR_IPI_TaxBaseAmt (BigDecimal LBR_IPI_TaxBaseAmt);

	/** Get LBR_IPI_TaxBaseAmt	  */
	public BigDecimal getLBR_IPI_TaxBaseAmt();

    /** Column name LBR_IPI_TaxRate */
    public static final String COLUMNNAME_LBR_IPI_TaxRate = "LBR_IPI_TaxRate";

	/** Set LBR_IPI_TaxRate	  */
	public void setLBR_IPI_TaxRate (BigDecimal LBR_IPI_TaxRate);

	/** Get LBR_IPI_TaxRate	  */
	public BigDecimal getLBR_IPI_TaxRate();

    /** Column name LBR_IPI_TaxStatus */
    public static final String COLUMNNAME_LBR_IPI_TaxStatus = "LBR_IPI_TaxStatus";

	/** Set IPI Tax Status.
	  * Identifies a IPI Tax Status
	  */
	public void setLBR_IPI_TaxStatus (String LBR_IPI_TaxStatus);

	/** Get IPI Tax Status.
	  * Identifies a IPI Tax Status
	  */
	public String getLBR_IPI_TaxStatus();

    /** Column name LBR_IsDocIssuedByOrg */
    public static final String COLUMNNAME_LBR_IsDocIssuedByOrg = "LBR_IsDocIssuedByOrg";

	/** Set Is Document Issued by Client/Org?	  */
	public void setLBR_IsDocIssuedByOrg (boolean LBR_IsDocIssuedByOrg);

	/** Get Is Document Issued by Client/Org?	  */
	public boolean isLBR_IsDocIssuedByOrg();

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

    /** Column name LBR_NCM_Value */
    public static final String COLUMNNAME_LBR_NCM_Value = "LBR_NCM_Value";

	/** Set LBR_NCM_Value	  */
	public void setLBR_NCM_Value (String LBR_NCM_Value);

	/** Get LBR_NCM_Value	  */
	public String getLBR_NCM_Value();

    /** Column name LBR_NFeID */
    public static final String COLUMNNAME_LBR_NFeID = "LBR_NFeID";

	/** Set NFe ID	  */
	public void setLBR_NFeID (String LBR_NFeID);

	/** Get NFe ID	  */
	public String getLBR_NFeID();

    /** Column name LBR_NFeModel */
    public static final String COLUMNNAME_LBR_NFeModel = "LBR_NFeModel";

	/** Set NF Model	  */
	public void setLBR_NFeModel (String LBR_NFeModel);

	/** Get NF Model	  */
	public String getLBR_NFeModel();

    /** Column name LBR_NFeModShipping */
    public static final String COLUMNNAME_LBR_NFeModShipping = "LBR_NFeModShipping";

	/** Set NFe Mode of Shipping	  */
	public void setLBR_NFeModShipping (String LBR_NFeModShipping);

	/** Get NFe Mode of Shipping	  */
	public String getLBR_NFeModShipping();

    /** Column name LBR_NFE_OperationType */
    public static final String COLUMNNAME_LBR_NFE_OperationType = "LBR_NFE_OperationType";

	/** Set NFe Operation Type	  */
	public void setLBR_NFE_OperationType (String LBR_NFE_OperationType);

	/** Get NFe Operation Type	  */
	public String getLBR_NFE_OperationType();

    /** Column name LBR_NFeSerie */
    public static final String COLUMNNAME_LBR_NFeSerie = "LBR_NFeSerie";

	/** Set NF Serie	  */
	public void setLBR_NFeSerie (String LBR_NFeSerie);

	/** Get NF Serie	  */
	public String getLBR_NFeSerie();

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

    /** Column name LBR_Org_Address1 */
    public static final String COLUMNNAME_LBR_Org_Address1 = "LBR_Org_Address1";

	/** Set LBR_Org_Address1	  */
	public void setLBR_Org_Address1 (String LBR_Org_Address1);

	/** Get LBR_Org_Address1	  */
	public String getLBR_Org_Address1();

    /** Column name LBR_Org_Address2 */
    public static final String COLUMNNAME_LBR_Org_Address2 = "LBR_Org_Address2";

	/** Set LBR_Org_Address2	  */
	public void setLBR_Org_Address2 (String LBR_Org_Address2);

	/** Get LBR_Org_Address2	  */
	public String getLBR_Org_Address2();

    /** Column name LBR_Org_Address3 */
    public static final String COLUMNNAME_LBR_Org_Address3 = "LBR_Org_Address3";

	/** Set LBR_Org_Address3	  */
	public void setLBR_Org_Address3 (String LBR_Org_Address3);

	/** Get LBR_Org_Address3	  */
	public String getLBR_Org_Address3();

    /** Column name LBR_Org_Address4 */
    public static final String COLUMNNAME_LBR_Org_Address4 = "LBR_Org_Address4";

	/** Set LBR_Org_Address4	  */
	public void setLBR_Org_Address4 (String LBR_Org_Address4);

	/** Get LBR_Org_Address4	  */
	public String getLBR_Org_Address4();

    /** Column name LBR_Org_CityCode */
    public static final String COLUMNNAME_LBR_Org_CityCode = "LBR_Org_CityCode";

	/** Set LBR_Org_CityCode	  */
	public void setLBR_Org_CityCode (String LBR_Org_CityCode);

	/** Get LBR_Org_CityCode	  */
	public String getLBR_Org_CityCode();

    /** Column name LBR_Org_City_Name */
    public static final String COLUMNNAME_LBR_Org_City_Name = "LBR_Org_City_Name";

	/** Set LBR_Org_City_Name	  */
	public void setLBR_Org_City_Name (String LBR_Org_City_Name);

	/** Get LBR_Org_City_Name	  */
	public String getLBR_Org_City_Name();

    /** Column name LBR_Org_CNAE */
    public static final String COLUMNNAME_LBR_Org_CNAE = "LBR_Org_CNAE";

	/** Set LBR_Org_CNAE	  */
	public void setLBR_Org_CNAE (String LBR_Org_CNAE);

	/** Get LBR_Org_CNAE	  */
	public String getLBR_Org_CNAE();

    /** Column name LBR_Org_Email */
    public static final String COLUMNNAME_LBR_Org_Email = "LBR_Org_Email";

	/** Set LBR_Org_Email	  */
	public void setLBR_Org_Email (String LBR_Org_Email);

	/** Get LBR_Org_Email	  */
	public String getLBR_Org_Email();

    /** Column name LBR_Org_Location_ID */
    public static final String COLUMNNAME_LBR_Org_Location_ID = "LBR_Org_Location_ID";

	/** Set LBR_Org_Location_ID	  */
	public void setLBR_Org_Location_ID (int LBR_Org_Location_ID);

	/** Get LBR_Org_Location_ID	  */
	public int getLBR_Org_Location_ID();

	public org.compiere.model.I_C_Location getLBR_Org_Location() throws RuntimeException;

    /** Column name LBR_Org_Name */
    public static final String COLUMNNAME_LBR_Org_Name = "LBR_Org_Name";

	/** Set LBR_Org_Name	  */
	public void setLBR_Org_Name (String LBR_Org_Name);

	/** Get LBR_Org_Name	  */
	public String getLBR_Org_Name();

    /** Column name LBR_Org_Phone */
    public static final String COLUMNNAME_LBR_Org_Phone = "LBR_Org_Phone";

	/** Set LBR_Org_Phone	  */
	public void setLBR_Org_Phone (String LBR_Org_Phone);

	/** Get LBR_Org_Phone	  */
	public String getLBR_Org_Phone();

    /** Column name LBR_ORG_Postal */
    public static final String COLUMNNAME_LBR_ORG_Postal = "LBR_ORG_Postal";

	/** Set LBR_ORG_Postal	  */
	public void setLBR_ORG_Postal (String LBR_ORG_Postal);

	/** Get LBR_ORG_Postal	  */
	public String getLBR_ORG_Postal();

    /** Column name LBR_Org_RegionName */
    public static final String COLUMNNAME_LBR_Org_RegionName = "LBR_Org_RegionName";

	/** Set LBR_Org_RegionName	  */
	public void setLBR_Org_RegionName (String LBR_Org_RegionName);

	/** Get LBR_Org_RegionName	  */
	public String getLBR_Org_RegionName();

    /** Column name LBR_PIS_NFTaxAmt */
    public static final String COLUMNNAME_LBR_PIS_NFTaxAmt = "LBR_PIS_NFTaxAmt";

	/** Set LBR_PIS_NFTaxAmt	  */
	public void setLBR_PIS_NFTaxAmt (BigDecimal LBR_PIS_NFTaxAmt);

	/** Get LBR_PIS_NFTaxAmt	  */
	public BigDecimal getLBR_PIS_NFTaxAmt();

    /** Column name LBR_PIS_TaxAmt */
    public static final String COLUMNNAME_LBR_PIS_TaxAmt = "LBR_PIS_TaxAmt";

	/** Set LBR_PIS_TaxAmt	  */
	public void setLBR_PIS_TaxAmt (BigDecimal LBR_PIS_TaxAmt);

	/** Get LBR_PIS_TaxAmt	  */
	public BigDecimal getLBR_PIS_TaxAmt();

    /** Column name LBR_PIS_TaxBase */
    public static final String COLUMNNAME_LBR_PIS_TaxBase = "LBR_PIS_TaxBase";

	/** Set LBR_PIS_TaxBase	  */
	public void setLBR_PIS_TaxBase (BigDecimal LBR_PIS_TaxBase);

	/** Get LBR_PIS_TaxBase	  */
	public BigDecimal getLBR_PIS_TaxBase();

    /** Column name LBR_PIS_TaxBaseAmt */
    public static final String COLUMNNAME_LBR_PIS_TaxBaseAmt = "LBR_PIS_TaxBaseAmt";

	/** Set LBR_PIS_TaxBaseAmt	  */
	public void setLBR_PIS_TaxBaseAmt (BigDecimal LBR_PIS_TaxBaseAmt);

	/** Get LBR_PIS_TaxBaseAmt	  */
	public BigDecimal getLBR_PIS_TaxBaseAmt();

    /** Column name LBR_PIS_TaxRate */
    public static final String COLUMNNAME_LBR_PIS_TaxRate = "LBR_PIS_TaxRate";

	/** Set LBR_PIS_TaxRate	  */
	public void setLBR_PIS_TaxRate (BigDecimal LBR_PIS_TaxRate);

	/** Get LBR_PIS_TaxRate	  */
	public BigDecimal getLBR_PIS_TaxRate();

    /** Column name LBR_PIS_TaxStatus */
    public static final String COLUMNNAME_LBR_PIS_TaxStatus = "LBR_PIS_TaxStatus";

	/** Set PIS Tax Status.
	  * Identifies a PIS Tax Status
	  */
	public void setLBR_PIS_TaxStatus (String LBR_PIS_TaxStatus);

	/** Get PIS Tax Status.
	  * Identifies a PIS Tax Status
	  */
	public String getLBR_PIS_TaxStatus();

    /** Column name LBR_Postal */
    public static final String COLUMNNAME_LBR_Postal = "LBR_Postal";

	/** Set LBR_Postal	  */
	public void setLBR_Postal (String LBR_Postal);

	/** Get LBR_Postal	  */
	public String getLBR_Postal();

    /** Column name LBR_Region_Name */
    public static final String COLUMNNAME_LBR_Region_Name = "LBR_Region_Name";

	/** Set LBR_Region_Name	  */
	public void setLBR_Region_Name (String LBR_Region_Name);

	/** Get LBR_Region_Name	  */
	public String getLBR_Region_Name();

    /** Column name LBR_SiscomexAmt */
    public static final String COLUMNNAME_LBR_SiscomexAmt = "LBR_SiscomexAmt";

	/** Set Siscomex Amount	  */
	public void setLBR_SiscomexAmt (BigDecimal LBR_SiscomexAmt);

	/** Get Siscomex Amount	  */
	public BigDecimal getLBR_SiscomexAmt();

    /** Column name LBR_SPED_Activity */
    public static final String COLUMNNAME_LBR_SPED_Activity = "LBR_SPED_Activity";

	/** Set SPED Activity Indicator	  */
	public void setLBR_SPED_Activity (String LBR_SPED_Activity);

	/** Get SPED Activity Indicator	  */
	public String getLBR_SPED_Activity();

    /** Column name LBR_Suframa */
    public static final String COLUMNNAME_LBR_Suframa = "LBR_Suframa";

	/** Set Suframa.
	  * Brazilian SUFRAMA Identification Number
	  */
	public void setLBR_Suframa (String LBR_Suframa);

	/** Get Suframa.
	  * Brazilian SUFRAMA Identification Number
	  */
	public String getLBR_Suframa();

    /** Column name LBR_UOM_Name */
    public static final String COLUMNNAME_LBR_UOM_Name = "LBR_UOM_Name";

	/** Set LBR_UOM_Name	  */
	public void setLBR_UOM_Name (String LBR_UOM_Name);

	/** Get LBR_UOM_Name	  */
	public String getLBR_UOM_Name();

    /** Column name Line */
    public static final String COLUMNNAME_Line = "Line";

	/** Set Line No.
	  * Unique line for this document
	  */
	public void setLine (int Line);

	/** Get Line No.
	  * Unique line for this document
	  */
	public int getLine();

    /** Column name LineNetAmt */
    public static final String COLUMNNAME_LineNetAmt = "LineNetAmt";

	/** Set Line Amount.
	  * Line Extended Amount (Quantity * Actual Price) without Freight and Charges
	  */
	public void setLineNetAmt (BigDecimal LineNetAmt);

	/** Get Line Amount.
	  * Line Extended Amount (Quantity * Actual Price) without Freight and Charges
	  */
	public BigDecimal getLineNetAmt();

    /** Column name M_Product_ID */
    public static final String COLUMNNAME_M_Product_ID = "M_Product_ID";

	/** Set Product.
	  * Product, Service, Item
	  */
	public void setM_Product_ID (int M_Product_ID);

	/** Get Product.
	  * Product, Service, Item
	  */
	public int getM_Product_ID();

	public org.compiere.model.I_M_Product getM_Product() throws RuntimeException;

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

    /** Column name Price */
    public static final String COLUMNNAME_Price = "Price";

	/** Set Price.
	  * Price
	  */
	public void setPrice (BigDecimal Price);

	/** Get Price.
	  * Price
	  */
	public BigDecimal getPrice();

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

    /** Column name ProductType */
    public static final String COLUMNNAME_ProductType = "ProductType";

	/** Set Product Type.
	  * Type of product
	  */
	public void setProductType (String ProductType);

	/** Get Product Type.
	  * Type of product
	  */
	public String getProductType();

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

    /** Column name Qty */
    public static final String COLUMNNAME_Qty = "Qty";

	/** Set Quantity.
	  * Quantity
	  */
	public void setQty (BigDecimal Qty);

	/** Get Quantity.
	  * Quantity
	  */
	public BigDecimal getQty();

    /** Column name Surcharges */
    public static final String COLUMNNAME_Surcharges = "Surcharges";

	/** Set Surcharges	  */
	public void setSurcharges (BigDecimal Surcharges);

	/** Get Surcharges	  */
	public BigDecimal getSurcharges();

    /** Column name TotalLines */
    public static final String COLUMNNAME_TotalLines = "TotalLines";

	/** Set Total Lines.
	  * Total of all document lines
	  */
	public void setTotalLines (BigDecimal TotalLines);

	/** Get Total Lines.
	  * Total of all document lines
	  */
	public BigDecimal getTotalLines();

    /** Column name UOMSymbol */
    public static final String COLUMNNAME_UOMSymbol = "UOMSymbol";

	/** Set Symbol.
	  * Symbol for a Unit of Measure
	  */
	public void setUOMSymbol (String UOMSymbol);

	/** Get Symbol.
	  * Symbol for a Unit of Measure
	  */
	public String getUOMSymbol();

    /** Column name UPC */
    public static final String COLUMNNAME_UPC = "UPC";

	/** Set UPC/EAN.
	  * Bar Code (Universal Product Code or its superset European Article Number)
	  */
	public void setUPC (String UPC);

	/** Get UPC/EAN.
	  * Bar Code (Universal Product Code or its superset European Article Number)
	  */
	public String getUPC();

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
