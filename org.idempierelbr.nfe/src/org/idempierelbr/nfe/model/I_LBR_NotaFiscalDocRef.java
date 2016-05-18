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

/** Generated Interface for LBR_NotaFiscalDocRef
 *  @author iDempiere (generated) 
 *  @version Release 3.1
 */
@SuppressWarnings("all")
public interface I_LBR_NotaFiscalDocRef 
{

    /** TableName=LBR_NotaFiscalDocRef */
    public static final String Table_Name = "LBR_NotaFiscalDocRef";

    /** AD_Table_ID=1000043 */
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

    /** Column name C_Region_ID */
    public static final String COLUMNNAME_C_Region_ID = "C_Region_ID";

	/** Set Region.
	  * Identifies a geographical Region
	  */
	public void setC_Region_ID (int C_Region_ID);

	/** Get Region.
	  * Identifies a geographical Region
	  */
	public int getC_Region_ID();

	public org.compiere.model.I_C_Region getC_Region() throws RuntimeException;

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

    /** Column name LBR_BPTypeBR */
    public static final String COLUMNNAME_LBR_BPTypeBR = "LBR_BPTypeBR";

	/** Set Brazilian BP Type.
	  * Brazilian BP Type (identifies if the BP is a Legal Entity or an Individual)
	  */
	public void setLBR_BPTypeBR (String LBR_BPTypeBR);

	/** Get Brazilian BP Type.
	  * Brazilian BP Type (identifies if the BP is a Legal Entity or an Individual)
	  */
	public String getLBR_BPTypeBR();

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

    /** Column name LBR_COONo */
    public static final String COLUMNNAME_LBR_COONo = "LBR_COONo";

	/** Set COO Number	  */
	public void setLBR_COONo (String LBR_COONo);

	/** Get COO Number	  */
	public String getLBR_COONo();

    /** Column name LBR_CPF */
    public static final String COLUMNNAME_LBR_CPF = "LBR_CPF";

	/** Set CPF.
	  * Used to identify individuals in Brazil
	  */
	public void setLBR_CPF (String LBR_CPF);

	/** Get CPF.
	  * Used to identify individuals in Brazil
	  */
	public String getLBR_CPF();

    /** Column name LBR_Document */
    public static final String COLUMNNAME_LBR_Document = "LBR_Document";

	/** Set Document	  */
	public void setLBR_Document (String LBR_Document);

	/** Get Document	  */
	public String getLBR_Document();

    /** Column name LBR_ECFModel */
    public static final String COLUMNNAME_LBR_ECFModel = "LBR_ECFModel";

	/** Set ECF Model	  */
	public void setLBR_ECFModel (String LBR_ECFModel);

	/** Get ECF Model	  */
	public String getLBR_ECFModel();

    /** Column name LBR_ECFNo */
    public static final String COLUMNNAME_LBR_ECFNo = "LBR_ECFNo";

	/** Set ECF Number	  */
	public void setLBR_ECFNo (String LBR_ECFNo);

	/** Get ECF Number	  */
	public String getLBR_ECFNo();

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

    /** Column name LBR_NFModel */
    public static final String COLUMNNAME_LBR_NFModel = "LBR_NFModel";

	/** Set NF Model.
	  * Referes to old printed NF
	  */
	public void setLBR_NFModel (String LBR_NFModel);

	/** Get NF Model.
	  * Referes to old printed NF
	  */
	public String getLBR_NFModel();

    /** Column name LBR_NFProdModel */
    public static final String COLUMNNAME_LBR_NFProdModel = "LBR_NFProdModel";

	/** Set NF Farmer Model	  */
	public void setLBR_NFProdModel (String LBR_NFProdModel);

	/** Get NF Farmer Model	  */
	public String getLBR_NFProdModel();

    /** Column name LBR_NFYearMonth */
    public static final String COLUMNNAME_LBR_NFYearMonth = "LBR_NFYearMonth";

	/** Set NF Year/Month	  */
	public void setLBR_NFYearMonth (String LBR_NFYearMonth);

	/** Get NF Year/Month	  */
	public String getLBR_NFYearMonth();

    /** Column name LBR_NFeDocRefType */
    public static final String COLUMNNAME_LBR_NFeDocRefType = "LBR_NFeDocRefType";

	/** Set NFe Doc Ref. Type.
	  * NFe Referenced Document Type
	  */
	public void setLBR_NFeDocRefType (String LBR_NFeDocRefType);

	/** Get NFe Doc Ref. Type.
	  * NFe Referenced Document Type
	  */
	public String getLBR_NFeDocRefType();

    /** Column name LBR_NFeID */
    public static final String COLUMNNAME_LBR_NFeID = "LBR_NFeID";

	/** Set NFe ID	  */
	public void setLBR_NFeID (String LBR_NFeID);

	/** Get NFe ID	  */
	public String getLBR_NFeID();

    /** Column name LBR_NFeSerie */
    public static final String COLUMNNAME_LBR_NFeSerie = "LBR_NFeSerie";

	/** Set NF Serie	  */
	public void setLBR_NFeSerie (String LBR_NFeSerie);

	/** Get NF Serie	  */
	public String getLBR_NFeSerie();

    /** Column name LBR_NotaFiscalDocRef_ID */
    public static final String COLUMNNAME_LBR_NotaFiscalDocRef_ID = "LBR_NotaFiscalDocRef_ID";

	/** Set Brazilian Fiscal Invoice (Nota Fiscal) Referenced Doc	  */
	public void setLBR_NotaFiscalDocRef_ID (int LBR_NotaFiscalDocRef_ID);

	/** Get Brazilian Fiscal Invoice (Nota Fiscal) Referenced Doc	  */
	public int getLBR_NotaFiscalDocRef_ID();

    /** Column name LBR_NotaFiscalDocRef_UU */
    public static final String COLUMNNAME_LBR_NotaFiscalDocRef_UU = "LBR_NotaFiscalDocRef_UU";

	/** Set Brazilian Fiscal Invoice (Nota Fiscal) Referenced Doc	  */
	public void setLBR_NotaFiscalDocRef_UU (String LBR_NotaFiscalDocRef_UU);

	/** Get Brazilian Fiscal Invoice (Nota Fiscal) Referenced Doc	  */
	public String getLBR_NotaFiscalDocRef_UU();

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

    /** Column name LBR_TypeIE */
    public static final String COLUMNNAME_LBR_TypeIE = "LBR_TypeIE";

	/** Set IE Inscription Type	  */
	public void setLBR_TypeIE (String LBR_TypeIE);

	/** Get IE Inscription Type	  */
	public String getLBR_TypeIE();

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
