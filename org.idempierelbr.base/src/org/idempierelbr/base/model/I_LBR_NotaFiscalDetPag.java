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

/** Generated Interface for LBR_NotaFiscalDetPag
 *  @author iDempiere (generated) 
 *  @version Release 13
 */
@SuppressWarnings("all")
public interface I_LBR_NotaFiscalDetPag 
{

    /** TableName=LBR_NotaFiscalDetPag */
    public static final String Table_Name = "LBR_NotaFiscalDetPag";

    /** AD_Table_ID=800088 */
    public static final int Table_ID = 800088;

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

	@Deprecated(since="13") // use better methods with cache
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

    /** Column name LBR_CNPJPag */
    public static final String COLUMNNAME_LBR_CNPJPag = "LBR_CNPJPag";

	/** Set CNPJ do Estabelecimento	  */
	public void setLBR_CNPJPag (String LBR_CNPJPag);

	/** Get CNPJ do Estabelecimento	  */
	public String getLBR_CNPJPag();

    /** Column name LBR_CNPJReceb */
    public static final String COLUMNNAME_LBR_CNPJReceb = "LBR_CNPJReceb";

	/** Set CNPJ do Recebedor	  */
	public void setLBR_CNPJReceb (String LBR_CNPJReceb);

	/** Get CNPJ do Recebedor	  */
	public String getLBR_CNPJReceb();

    /** Column name LBR_CardAuth */
    public static final String COLUMNNAME_LBR_CardAuth = "LBR_CardAuth";

	/** Set Código de Autorização	  */
	public void setLBR_CardAuth (String LBR_CardAuth);

	/** Get Código de Autorização	  */
	public String getLBR_CardAuth();

    /** Column name LBR_CardBrand */
    public static final String COLUMNNAME_LBR_CardBrand = "LBR_CardBrand";

	/** Set Bandeira	  */
	public void setLBR_CardBrand (String LBR_CardBrand);

	/** Get Bandeira	  */
	public String getLBR_CardBrand();

    /** Column name LBR_CardCNPJ */
    public static final String COLUMNNAME_LBR_CardCNPJ = "LBR_CardCNPJ";

	/** Set CNPJ da Credenciadora	  */
	public void setLBR_CardCNPJ (String LBR_CardCNPJ);

	/** Get CNPJ da Credenciadora	  */
	public String getLBR_CardCNPJ();

    /** Column name LBR_DatePayment */
    public static final String COLUMNNAME_LBR_DatePayment = "LBR_DatePayment";

	/** Set Data do Pagamento	  */
	public void setLBR_DatePayment (Timestamp LBR_DatePayment);

	/** Get Data do Pagamento	  */
	public Timestamp getLBR_DatePayment();

    /** Column name LBR_IdTermPag */
    public static final String COLUMNNAME_LBR_IdTermPag = "LBR_IdTermPag";

	/** Set ID do Terminal de Pagamento	  */
	public void setLBR_IdTermPag (String LBR_IdTermPag);

	/** Get ID do Terminal de Pagamento	  */
	public String getLBR_IdTermPag();

    /** Column name LBR_IndPag */
    public static final String COLUMNNAME_LBR_IndPag = "LBR_IndPag";

	/** Set Forma de Pagamento	  */
	public void setLBR_IndPag (String LBR_IndPag);

	/** Get Forma de Pagamento	  */
	public String getLBR_IndPag();

    /** Column name LBR_NotaFiscalDetPag_ID */
    public static final String COLUMNNAME_LBR_NotaFiscalDetPag_ID = "LBR_NotaFiscalDetPag_ID";

	/** Set Detalhes de Pagamento de Nota Fiscal	  */
	public void setLBR_NotaFiscalDetPag_ID (int LBR_NotaFiscalDetPag_ID);

	/** Get Detalhes de Pagamento de Nota Fiscal	  */
	public int getLBR_NotaFiscalDetPag_ID();

    /** Column name LBR_NotaFiscalDetPag_UU */
    public static final String COLUMNNAME_LBR_NotaFiscalDetPag_UU = "LBR_NotaFiscalDetPag_UU";

	/** Set LBR_NotaFiscalDetPag_UU	  */
	public void setLBR_NotaFiscalDetPag_UU (String LBR_NotaFiscalDetPag_UU);

	/** Get LBR_NotaFiscalDetPag_UU	  */
	public String getLBR_NotaFiscalDetPag_UU();

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

	@Deprecated(since="13") // use better methods with cache
	public I_LBR_NotaFiscal getLBR_NotaFiscal() throws RuntimeException;

    /** Column name LBR_TPag */
    public static final String COLUMNNAME_LBR_TPag = "LBR_TPag";

	/** Set Tipo de Pagamento	  */
	public void setLBR_TPag (String LBR_TPag);

	/** Get Tipo de Pagamento	  */
	public String getLBR_TPag();

    /** Column name LBR_TpIntegra */
    public static final String COLUMNNAME_LBR_TpIntegra = "LBR_TpIntegra";

	/** Set Tipo de Integração	  */
	public void setLBR_TpIntegra (String LBR_TpIntegra);

	/** Get Tipo de Integração	  */
	public String getLBR_TpIntegra();

    /** Column name LBR_xPag */
    public static final String COLUMNNAME_LBR_xPag = "LBR_xPag";

	/** Set Descrição do Meio de Pagamento	  */
	public void setLBR_xPag (String LBR_xPag);

	/** Get Descrição do Meio de Pagamento	  */
	public String getLBR_xPag();

    /** Column name PayAmt */
    public static final String COLUMNNAME_PayAmt = "PayAmt";

	/** Set Payment amount.
	  * Amount being paid
	  */
	public void setPayAmt (BigDecimal PayAmt);

	/** Get Payment amount.
	  * Amount being paid
	  */
	public BigDecimal getPayAmt();

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
