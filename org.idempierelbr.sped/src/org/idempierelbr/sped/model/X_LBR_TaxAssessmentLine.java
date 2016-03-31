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
package org.idempierelbr.sped.model;

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.util.Properties;
import org.compiere.model.*;
import org.compiere.util.Env;

/** Generated Model for LBR_TaxAssessmentLine
 *  @author iDempiere (generated) 
 *  @version Release 2.1 - $Id$ */
public class X_LBR_TaxAssessmentLine extends PO implements I_LBR_TaxAssessmentLine, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20150703L;

    /** Standard Constructor */
    public X_LBR_TaxAssessmentLine (Properties ctx, int LBR_TaxAssessmentLine_ID, String trxName)
    {
      super (ctx, LBR_TaxAssessmentLine_ID, trxName);
      /** if (LBR_TaxAssessmentLine_ID == 0)
        {
			setAmt (Env.ZERO);
			setLBR_TaxAssessment_ID (0);
			setLBR_TaxAssessmentLine_ID (0);
        } */
    }

    /** Load Constructor */
    public X_LBR_TaxAssessmentLine (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_TaxAssessmentLine[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set Amount.
		@param Amt 
		Amount
	  */
	public void setAmt (BigDecimal Amt)
	{
		set_Value (COLUMNNAME_Amt, Amt);
	}

	/** Get Amount.
		@return Amount
	  */
	public BigDecimal getAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_Amt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Description.
		@param Description 
		Optional short description of the record
	  */
	public void setDescription (String Description)
	{
		set_Value (COLUMNNAME_Description, Description);
	}

	/** Get Description.
		@return Optional short description of the record
	  */
	public String getDescription () 
	{
		return (String)get_Value(COLUMNNAME_Description);
	}

	/** Other Debit ICMS = PE009999 */
	public static final String LBR_COD_AJ_APUR_OtherDebitICMS = "PE009999";
	/** Credit Reversal ICMS = PE019999 */
	public static final String LBR_COD_AJ_APUR_CreditReversalICMS = "PE019999";
	/** Other Credit ICMS = PE029999 */
	public static final String LBR_COD_AJ_APUR_OtherCreditICMS = "PE029999";
	/** Debit Reversal ICMS = PE039999 */
	public static final String LBR_COD_AJ_APUR_DebitReversalICMS = "PE039999";
	/** Tax Deduction ICMS = PE049999 */
	public static final String LBR_COD_AJ_APUR_TaxDeductionICMS = "PE049999";
	/** Special Debit ICMS = PE059999 */
	public static final String LBR_COD_AJ_APUR_SpecialDebitICMS = "PE059999";
	/** Control ICMS = PE099999 */
	public static final String LBR_COD_AJ_APUR_ControlICMS = "PE099999";
	/** Other Debit ICMS-ST = PE109999 */
	public static final String LBR_COD_AJ_APUR_OtherDebitICMS_ST = "PE109999";
	/** Credit Reversal ICMS-ST = PE119999 */
	public static final String LBR_COD_AJ_APUR_CreditReversalICMS_ST = "PE119999";
	/** Other Credit ICMS-ST = PE129999 */
	public static final String LBR_COD_AJ_APUR_OtherCreditICMS_ST = "PE129999";
	/** Debit Reversal ICMS-ST = PE139999 */
	public static final String LBR_COD_AJ_APUR_DebitReversalICMS_ST = "PE139999";
	/** Tax Deduction ICMS-ST = PE149999 */
	public static final String LBR_COD_AJ_APUR_TaxDeductionICMS_ST = "PE149999";
	/** Special Debit ICMS-ST = PE159999 */
	public static final String LBR_COD_AJ_APUR_SpecialDebitICMS_ST = "PE159999";
	/** Set Código do Ajuste.
		@param LBR_Cod_Aj_Apur Código do Ajuste	  */
	public void setLBR_Cod_Aj_Apur (String LBR_Cod_Aj_Apur)
	{

		set_Value (COLUMNNAME_LBR_Cod_Aj_Apur, LBR_Cod_Aj_Apur);
	}

	/** Get Código do Ajuste.
		@return Código do Ajuste	  */
	public String getLBR_Cod_Aj_Apur () 
	{
		return (String)get_Value(COLUMNNAME_LBR_Cod_Aj_Apur);
	}

	public I_LBR_TaxAssessment getLBR_TaxAssessment() throws RuntimeException
    {
		return (I_LBR_TaxAssessment)MTable.get(getCtx(), I_LBR_TaxAssessment.Table_Name)
			.getPO(getLBR_TaxAssessment_ID(), get_TrxName());	}

	/** Set Tax Assessment.
		@param LBR_TaxAssessment_ID Tax Assessment	  */
	public void setLBR_TaxAssessment_ID (int LBR_TaxAssessment_ID)
	{
		if (LBR_TaxAssessment_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_TaxAssessment_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_TaxAssessment_ID, Integer.valueOf(LBR_TaxAssessment_ID));
	}

	/** Get Tax Assessment.
		@return Tax Assessment	  */
	public int getLBR_TaxAssessment_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_TaxAssessment_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Tax Assessment Line.
		@param LBR_TaxAssessmentLine_ID Tax Assessment Line	  */
	public void setLBR_TaxAssessmentLine_ID (int LBR_TaxAssessmentLine_ID)
	{
		if (LBR_TaxAssessmentLine_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_TaxAssessmentLine_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_TaxAssessmentLine_ID, Integer.valueOf(LBR_TaxAssessmentLine_ID));
	}

	/** Get Tax Assessment Line.
		@return Tax Assessment Line	  */
	public int getLBR_TaxAssessmentLine_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_TaxAssessmentLine_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Other Debits = 0 */
	public static final String TYPE_OtherDebits = "0";
	/** Credit Reversal = 1 */
	public static final String TYPE_CreditReversal = "1";
	/** Other Credits = 2 */
	public static final String TYPE_OtherCredits = "2";
	/** Debit Reversal = 3 */
	public static final String TYPE_DebitReversal = "3";
	/** Set Type.
		@param Type 
		Type of Validation (SQL, Java Script, Java Language)
	  */
	public void setType (String Type)
	{

		set_Value (COLUMNNAME_Type, Type);
	}

	/** Get Type.
		@return Type of Validation (SQL, Java Script, Java Language)
	  */
	public String getType () 
	{
		return (String)get_Value(COLUMNNAME_Type);
	}
}