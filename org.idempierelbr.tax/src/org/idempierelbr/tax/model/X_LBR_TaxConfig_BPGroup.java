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
/** Generated Model - DO NOT CHANGE */
package org.idempierelbr.tax.model;

import java.sql.ResultSet;
import java.util.Properties;
import org.compiere.model.*;

/** Generated Model for LBR_TaxConfig_BPGroup
 *  @author iDempiere (generated) 
 *  @version Release 2.0 - $Id$ */
public class X_LBR_TaxConfig_BPGroup extends PO implements I_LBR_TaxConfig_BPGroup, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20140204L;

    /** Standard Constructor */
    public X_LBR_TaxConfig_BPGroup (Properties ctx, int LBR_TaxConfig_BPGroup_ID, String trxName)
    {
      super (ctx, LBR_TaxConfig_BPGroup_ID, trxName);
      /** if (LBR_TaxConfig_BPGroup_ID == 0)
        {
			setLBR_FiscalGroup_BPartner_ID (0);
			setLBR_TaxConfig_BPGroup_ID (0);
			setLBR_TaxConfiguration_ID (0);
			setLBR_Tax_ID (null);
        } */
    }

    /** Load Constructor */
    public X_LBR_TaxConfig_BPGroup (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_TaxConfig_BPGroup[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	public I_LBR_FiscalGroup_BPartner getLBR_FiscalGroup_BPartner() throws RuntimeException
    {
		return (I_LBR_FiscalGroup_BPartner)MTable.get(getCtx(), I_LBR_FiscalGroup_BPartner.Table_Name)
			.getPO(getLBR_FiscalGroup_BPartner_ID(), get_TrxName());	}

	/** Set BP Fiscal Group.
		@param LBR_FiscalGroup_BPartner_ID 
		Identifies a Business Partner Fiscal Group
	  */
	public void setLBR_FiscalGroup_BPartner_ID (int LBR_FiscalGroup_BPartner_ID)
	{
		if (LBR_FiscalGroup_BPartner_ID < 1) 
			set_Value (COLUMNNAME_LBR_FiscalGroup_BPartner_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_FiscalGroup_BPartner_ID, Integer.valueOf(LBR_FiscalGroup_BPartner_ID));
	}

	/** Get BP Fiscal Group.
		@return Identifies a Business Partner Fiscal Group
	  */
	public int getLBR_FiscalGroup_BPartner_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_FiscalGroup_BPartner_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public I_LBR_LegalMessage getLBR_LegalMessage() throws RuntimeException
    {
		return (I_LBR_LegalMessage)MTable.get(getCtx(), I_LBR_LegalMessage.Table_Name)
			.getPO(getLBR_LegalMessage_ID(), get_TrxName());	}

	/** Set Legal Message.
		@param LBR_LegalMessage_ID 
		Identifies a Legal Message
	  */
	public void setLBR_LegalMessage_ID (int LBR_LegalMessage_ID)
	{
		if (LBR_LegalMessage_ID < 1) 
			set_Value (COLUMNNAME_LBR_LegalMessage_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_LegalMessage_ID, Integer.valueOf(LBR_LegalMessage_ID));
	}

	/** Get Legal Message.
		@return Identifies a Legal Message
	  */
	public int getLBR_LegalMessage_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_LegalMessage_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Business Partner Group Exception.
		@param LBR_TaxConfig_BPGroup_ID 
		Identifies a Business Partner Group Exception
	  */
	public void setLBR_TaxConfig_BPGroup_ID (int LBR_TaxConfig_BPGroup_ID)
	{
		if (LBR_TaxConfig_BPGroup_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_TaxConfig_BPGroup_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_TaxConfig_BPGroup_ID, Integer.valueOf(LBR_TaxConfig_BPGroup_ID));
	}

	/** Get Business Partner Group Exception.
		@return Identifies a Business Partner Group Exception
	  */
	public int getLBR_TaxConfig_BPGroup_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_TaxConfig_BPGroup_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_TaxConfig_BPGroup_UU.
		@param LBR_TaxConfig_BPGroup_UU LBR_TaxConfig_BPGroup_UU	  */
	public void setLBR_TaxConfig_BPGroup_UU (String LBR_TaxConfig_BPGroup_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_TaxConfig_BPGroup_UU, LBR_TaxConfig_BPGroup_UU);
	}

	/** Get LBR_TaxConfig_BPGroup_UU.
		@return LBR_TaxConfig_BPGroup_UU	  */
	public String getLBR_TaxConfig_BPGroup_UU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_TaxConfig_BPGroup_UU);
	}

	public I_LBR_TaxConfiguration getLBR_TaxConfiguration() throws RuntimeException
    {
		return (I_LBR_TaxConfiguration)MTable.get(getCtx(), I_LBR_TaxConfiguration.Table_Name)
			.getPO(getLBR_TaxConfiguration_ID(), get_TrxName());	}

	/** Set Tax Configuration.
		@param LBR_TaxConfiguration_ID 
		Tax Configuration Used
	  */
	public void setLBR_TaxConfiguration_ID (int LBR_TaxConfiguration_ID)
	{
		if (LBR_TaxConfiguration_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_TaxConfiguration_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_TaxConfiguration_ID, Integer.valueOf(LBR_TaxConfiguration_ID));
	}

	/** Get Tax Configuration.
		@return Tax Configuration Used
	  */
	public int getLBR_TaxConfiguration_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_TaxConfiguration_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Transaction Tax.
		@param LBR_Tax_ID 
		Identifies a transaction tax (document/line)
	  */
	public void setLBR_Tax_ID (int LBR_Tax_ID)
	{
		set_Value (COLUMNNAME_LBR_Tax_ID, LBR_Tax_ID);
	}

	/** Get Transaction Tax.
		@return Identifies a transaction tax (document/line)
	  */
	public int getLBR_Tax_ID () 
	{
				return (Integer) get_Value(COLUMNNAME_LBR_Tax_ID);
	}

	/** 00 - Tributada integralmente = 00 */
	public static final String LBR_TAXSTATUS_00_TributadaIntegralmente = "00";
	/** 10 - Tributada e com cobranca do ICMS por Sub. Tributaria = 10 */
	public static final String LBR_TAXSTATUS_10_TributadaEComCobrancaDoICMSPorSubTributaria = "10";
	/** 20 - Com reducao de base de calculo = 20 */
	public static final String LBR_TAXSTATUS_20_ComReducaoDeBaseDeCalculo = "20";
	/** 30 - Isenta ou nao-trib. e com cobr. do ICMS por Sub. Tribut = 30 */
	public static final String LBR_TAXSTATUS_30_IsentaOuNao_TribEComCobrDoICMSPorSubTribut = "30";
	/** 40 - Isenta = 40 */
	public static final String LBR_TAXSTATUS_40_Isenta = "40";
	/** 41 - Nao-tributada = 41 */
	public static final String LBR_TAXSTATUS_41_Nao_Tributada = "41";
	/** 50 - Suspensao = 50 */
	public static final String LBR_TAXSTATUS_50_Suspensao = "50";
	/** 51 - Diferimento  = 51 */
	public static final String LBR_TAXSTATUS_51_Diferimento = "51";
	/** 60 - ICMS cobrado anteriormente por substituicao tributaria = 60 */
	public static final String LBR_TAXSTATUS_60_ICMSCobradoAnteriormentePorSubstituicaoTributaria = "60";
	/** 70 - Com red. de base de calc. e cobr. do ICMS por Sub. Trib = 70 */
	public static final String LBR_TAXSTATUS_70_ComRedDeBaseDeCalcECobrDoICMSPorSubTrib = "70";
	/** 90 - Outras = 90 */
	public static final String LBR_TAXSTATUS_90_Outras = "90";
	/** Set Tax Status.
		@param LBR_TaxStatus 
		Defines the Tax Status
	  */
	public void setLBR_TaxStatus (String LBR_TaxStatus)
	{

		set_Value (COLUMNNAME_LBR_TaxStatus, LBR_TaxStatus);
	}

	/** Get Tax Status.
		@return Defines the Tax Status
	  */
	public String getLBR_TaxStatus () 
	{
		return (String)get_Value(COLUMNNAME_LBR_TaxStatus);
	}
}