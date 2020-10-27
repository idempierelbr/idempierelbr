/******************************************************************************
 * Product: AdempiereLBR ERP & CRM Smart Business Solution                    *
 * Copyright (C) 1999-2007 ComPiere, Inc. All Rights Reserved.                *
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
package org.kenos.idempiere.lbr.mdfe.model;

import java.math.BigDecimal;
import java.sql.Timestamp;
import org.compiere.model.*;
import org.compiere.util.KeyNamePair;

/** Generated Interface for LBR_MDFeInsurance
 *  @author Adempiere (generated) 
 *  @version Release 3.6.0LTS
 */
public interface I_LBR_MDFeInsurance 
{

    /** TableName=LBR_MDFeInsurance */
    public static final String Table_Name = "LBR_MDFeInsurance";

    /** AD_Table_ID=1120658 */
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

    /** Column name A_Insurance_Co */
    public static final String COLUMNNAME_A_Insurance_Co = "A_Insurance_Co";

	/** Set Insurance Company	  */
	public void setA_Insurance_Co (String A_Insurance_Co);

	/** Get Insurance Company	  */
	public String getA_Insurance_Co();

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

	public I_C_BPartner getC_BPartner() throws RuntimeException;

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

    /** Column name LBR_InsuResp */
    public static final String COLUMNNAME_LBR_InsuResp = "LBR_InsuResp";

	/** Set Insurance Resp	  */
	public void setLBR_InsuResp (String LBR_InsuResp);

	/** Get Insurance Resp	  */
	public String getLBR_InsuResp();

    /** Column name LBR_InsuranceAnnot */
    public static final String COLUMNNAME_LBR_InsuranceAnnot = "LBR_InsuranceAnnot";

	/** Set Insurance Annotation.
	  * Insurance Annotation number, separated by semicolon ;

	  */
	public void setLBR_InsuranceAnnot (String LBR_InsuranceAnnot);

	/** Get Insurance Annotation.
	  * Insurance Annotation number, separated by semicolon ;

	  */
	public String getLBR_InsuranceAnnot();

    /** Column name LBR_InsurancePolicy */
    public static final String COLUMNNAME_LBR_InsurancePolicy = "LBR_InsurancePolicy";

	/** Set Insurance Policy	  */
	public void setLBR_InsurancePolicy (String LBR_InsurancePolicy);

	/** Get Insurance Policy	  */
	public String getLBR_InsurancePolicy();

    /** Column name LBR_MDFeInsurance_ID */
    public static final String COLUMNNAME_LBR_MDFeInsurance_ID = "LBR_MDFeInsurance_ID";

	/** Set MDFe Insurance	  */
	public void setLBR_MDFeInsurance_ID (int LBR_MDFeInsurance_ID);

	/** Get MDFe Insurance	  */
	public int getLBR_MDFeInsurance_ID();

    /** Column name LBR_MDFe_ID */
    public static final String COLUMNNAME_LBR_MDFe_ID = "LBR_MDFe_ID";

	/** Set MDF-e.
	  * Manifesto Eletrônico de Documentos Fiscais
	  */
	public void setLBR_MDFe_ID (int LBR_MDFe_ID);

	/** Get MDF-e.
	  * Manifesto Eletrônico de Documentos Fiscais
	  */
	public int getLBR_MDFe_ID();

	public org.kenos.idempiere.lbr.mdfe.model.I_LBR_MDFe getLBR_MDFe() throws RuntimeException;

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

    /** Column name lbr_BPCNPJ */
    public static final String COLUMNNAME_lbr_BPCNPJ = "lbr_BPCNPJ";

	/** Set BP CNPJ.
	  * BP CNPJ - Copied from the BP into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPCNPJ (String lbr_BPCNPJ);

	/** Get BP CNPJ.
	  * BP CNPJ - Copied from the BP into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPCNPJ();

    /** Column name lbr_BPTypeBR */
    public static final String COLUMNNAME_lbr_BPTypeBR = "lbr_BPTypeBR";

	/** Set Brazilian BP Type.
	  * Brazilian BP Type (Identifies if the BP is a Legal Entity or an Individual)
	  */
	public void setlbr_BPTypeBR (String lbr_BPTypeBR);

	/** Get Brazilian BP Type.
	  * Brazilian BP Type (Identifies if the BP is a Legal Entity or an Individual)
	  */
	public String getlbr_BPTypeBR();

    /** Column name lbr_CNPJ */
    public static final String COLUMNNAME_lbr_CNPJ = "lbr_CNPJ";

	/** Set CNPJ.
	  * Used to identify Legal Entities in Brazil
	  */
	public void setlbr_CNPJ (String lbr_CNPJ);

	/** Get CNPJ.
	  * Used to identify Legal Entities in Brazil
	  */
	public String getlbr_CNPJ();

    /** Column name lbr_CPF */
    public static final String COLUMNNAME_lbr_CPF = "lbr_CPF";

	/** Set CPF.
	  * Used to identify individuals in Brazil
	  */
	public void setlbr_CPF (String lbr_CPF);

	/** Get CPF.
	  * Used to identify individuals in Brazil
	  */
	public String getlbr_CPF();
}
