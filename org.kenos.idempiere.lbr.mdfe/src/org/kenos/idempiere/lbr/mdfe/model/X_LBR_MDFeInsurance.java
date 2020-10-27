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
/** Generated Model - DO NOT CHANGE */
package org.adempierelbr.model;

import java.sql.ResultSet;
import java.util.Properties;
import org.compiere.model.*;

/** Generated Model for LBR_MDFeInsurance
 *  @author ADempiereLBR (generated) 
 *  @version Release 3.6.0LTS - $Id$ */
public class X_LBR_MDFeInsurance extends PO implements I_LBR_MDFeInsurance, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20191022L;

    /** Standard Constructor */
    public X_LBR_MDFeInsurance (Properties ctx, int LBR_MDFeInsurance_ID, String trxName)
    {
      super (ctx, LBR_MDFeInsurance_ID, trxName);
      /** if (LBR_MDFeInsurance_ID == 0)
        {
			setLBR_MDFeInsurance_ID (0);
        } */
    }

    /** Load Constructor */
    public X_LBR_MDFeInsurance (Properties ctx, ResultSet rs, String trxName)
    {
      super (ctx, rs, trxName);
    }

    /** AccessLevel
      * @return 3 - Client - Org 
      */
    protected int get_AccessLevel()
    {
      return accessLevel.intValue();
    }

    /** Load Meta Data */
    protected POInfo initPO (Properties ctx)
    {
      POInfo poi = POInfo.getPOInfo (ctx, Table_ID, get_TrxName());
      return poi;
    }

    public String toString()
    {
      StringBuffer sb = new StringBuffer ("X_LBR_MDFeInsurance[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set Insurance Company.
		@param A_Insurance_Co Insurance Company	  */
	public void setA_Insurance_Co (String A_Insurance_Co)
	{
		set_Value (COLUMNNAME_A_Insurance_Co, A_Insurance_Co);
	}

	/** Get Insurance Company.
		@return Insurance Company	  */
	public String getA_Insurance_Co () 
	{
		return (String)get_Value(COLUMNNAME_A_Insurance_Co);
	}

	public I_C_BPartner getC_BPartner() throws RuntimeException
    {
		return (I_C_BPartner)MTable.get(getCtx(), I_C_BPartner.Table_Name)
			.getPO(getC_BPartner_ID(), get_TrxName());	}

	/** Set Business Partner .
		@param C_BPartner_ID 
		Identifies a Business Partner
	  */
	public void setC_BPartner_ID (int C_BPartner_ID)
	{
		if (C_BPartner_ID < 1) 
			set_Value (COLUMNNAME_C_BPartner_ID, null);
		else 
			set_Value (COLUMNNAME_C_BPartner_ID, Integer.valueOf(C_BPartner_ID));
	}

	/** Get Business Partner .
		@return Identifies a Business Partner
	  */
	public int getC_BPartner_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_BPartner_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** LBR_InsuResp AD_Reference_ID=1120324 */
	public static final int LBR_INSURESP_AD_Reference_ID=1120324;
	/** MDFe Issuer = 1 */
	public static final String LBR_INSURESP_MDFeIssuer = "1";
	/** Contractor = 2 */
	public static final String LBR_INSURESP_Contractor = "2";
	/** Set Insurance Resp.
		@param LBR_InsuResp Insurance Resp	  */
	public void setLBR_InsuResp (String LBR_InsuResp)
	{

		set_Value (COLUMNNAME_LBR_InsuResp, LBR_InsuResp);
	}

	/** Get Insurance Resp.
		@return Insurance Resp	  */
	public String getLBR_InsuResp () 
	{
		return (String)get_Value(COLUMNNAME_LBR_InsuResp);
	}

	/** Set Insurance Annotation.
		@param LBR_InsuranceAnnot 
		Insurance Annotation number, separated by semicolon ;
	  */
	public void setLBR_InsuranceAnnot (String LBR_InsuranceAnnot)
	{
		set_Value (COLUMNNAME_LBR_InsuranceAnnot, LBR_InsuranceAnnot);
	}

	/** Get Insurance Annotation.
		@return Insurance Annotation number, separated by semicolon ;
	  */
	public String getLBR_InsuranceAnnot () 
	{
		return (String)get_Value(COLUMNNAME_LBR_InsuranceAnnot);
	}

	/** Set Insurance Policy.
		@param LBR_InsurancePolicy Insurance Policy	  */
	public void setLBR_InsurancePolicy (String LBR_InsurancePolicy)
	{
		set_Value (COLUMNNAME_LBR_InsurancePolicy, LBR_InsurancePolicy);
	}

	/** Get Insurance Policy.
		@return Insurance Policy	  */
	public String getLBR_InsurancePolicy () 
	{
		return (String)get_Value(COLUMNNAME_LBR_InsurancePolicy);
	}

	/** Set MDFe Insurance.
		@param LBR_MDFeInsurance_ID MDFe Insurance	  */
	public void setLBR_MDFeInsurance_ID (int LBR_MDFeInsurance_ID)
	{
		if (LBR_MDFeInsurance_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_MDFeInsurance_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_MDFeInsurance_ID, Integer.valueOf(LBR_MDFeInsurance_ID));
	}

	/** Get MDFe Insurance.
		@return MDFe Insurance	  */
	public int getLBR_MDFeInsurance_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_MDFeInsurance_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.adempierelbr.model.I_LBR_MDFe getLBR_MDFe() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_MDFe)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_MDFe.Table_Name)
			.getPO(getLBR_MDFe_ID(), get_TrxName());	}

	/** Set MDF-e.
		@param LBR_MDFe_ID 
		Manifesto Eletrônico de Documentos Fiscais
	  */
	public void setLBR_MDFe_ID (int LBR_MDFe_ID)
	{
		if (LBR_MDFe_ID < 1) 
			set_Value (COLUMNNAME_LBR_MDFe_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_MDFe_ID, Integer.valueOf(LBR_MDFe_ID));
	}

	/** Get MDF-e.
		@return Manifesto Eletrônico de Documentos Fiscais
	  */
	public int getLBR_MDFe_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_MDFe_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set BP CNPJ.
		@param lbr_BPCNPJ 
		BP CNPJ - Copied from the BP into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPCNPJ (String lbr_BPCNPJ)
	{
		set_Value (COLUMNNAME_lbr_BPCNPJ, lbr_BPCNPJ);
	}

	/** Get BP CNPJ.
		@return BP CNPJ - Copied from the BP into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPCNPJ () 
	{
		return (String)get_Value(COLUMNNAME_lbr_BPCNPJ);
	}

	/** lbr_BPTypeBR AD_Reference_ID=1000000 */
	public static final int LBR_BPTYPEBR_AD_Reference_ID=1000000;
	/** PJ - Legal Entity = PJ */
	public static final String LBR_BPTYPEBR_PJ_LegalEntity = "PJ";
	/** PF - Individual = PF */
	public static final String LBR_BPTYPEBR_PF_Individual = "PF";
	/** PM - Individual Minor = PM */
	public static final String LBR_BPTYPEBR_PM_IndividualMinor = "PM";
	/** XX - Foreigner = XX */
	public static final String LBR_BPTYPEBR_XX_Foreigner = "XX";
	/** Set Brazilian BP Type.
		@param lbr_BPTypeBR 
		Brazilian BP Type (Identifies if the BP is a Legal Entity or an Individual)
	  */
	public void setlbr_BPTypeBR (String lbr_BPTypeBR)
	{

		set_Value (COLUMNNAME_lbr_BPTypeBR, lbr_BPTypeBR);
	}

	/** Get Brazilian BP Type.
		@return Brazilian BP Type (Identifies if the BP is a Legal Entity or an Individual)
	  */
	public String getlbr_BPTypeBR () 
	{
		return (String)get_Value(COLUMNNAME_lbr_BPTypeBR);
	}

	/** Set CNPJ.
		@param lbr_CNPJ 
		Used to identify Legal Entities in Brazil
	  */
	public void setlbr_CNPJ (String lbr_CNPJ)
	{
		set_Value (COLUMNNAME_lbr_CNPJ, lbr_CNPJ);
	}

	/** Get CNPJ.
		@return Used to identify Legal Entities in Brazil
	  */
	public String getlbr_CNPJ () 
	{
		return (String)get_Value(COLUMNNAME_lbr_CNPJ);
	}

	/** Set CPF.
		@param lbr_CPF 
		Used to identify individuals in Brazil
	  */
	public void setlbr_CPF (String lbr_CPF)
	{
		set_Value (COLUMNNAME_lbr_CPF, lbr_CPF);
	}

	/** Get CPF.
		@return Used to identify individuals in Brazil
	  */
	public String getlbr_CPF () 
	{
		return (String)get_Value(COLUMNNAME_lbr_CPF);
	}
}