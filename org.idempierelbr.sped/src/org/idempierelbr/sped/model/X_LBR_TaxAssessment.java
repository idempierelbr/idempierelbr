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
import java.sql.Timestamp;
import java.util.Properties;

import org.compiere.model.*;
import org.compiere.util.Env;
import org.idempierelbr.base.model.I_LBR_TaxName;

/** Generated Model for LBR_TaxAssessment
 *  @author iDempiere (generated) 
 *  @version Release 2.1 - $Id$ */
public class X_LBR_TaxAssessment extends PO implements I_LBR_TaxAssessment, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20150703L;

    /** Standard Constructor */
    public X_LBR_TaxAssessment (Properties ctx, int LBR_TaxAssessment_ID, String trxName)
    {
      super (ctx, LBR_TaxAssessment_ID, trxName);
      /** if (LBR_TaxAssessment_ID == 0)
        {
			setAmtSourceCr (Env.ZERO);
			setAmtSourceDr (Env.ZERO);
			setbooknumber (0);
			setC_Period_ID (0);
			setCumulatedAmt (Env.ZERO);
			setLBR_PageNumber (0);
			setLBR_SaldoCredorTransportar (Env.ZERO);
			setLBR_TaxAssessment_ID (0);
			setLBR_TaxName_ID (0);
			setProcessed (false);
			setTotalAmt (Env.ZERO);
			setTotalCr (Env.ZERO);
// 0
			setTotalDr (Env.ZERO);
// 0
        } */
    }

    /** Load Constructor */
    public X_LBR_TaxAssessment (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_TaxAssessment[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set Source Credit.
		@param AmtSourceCr 
		Source Credit Amount
	  */
	public void setAmtSourceCr (BigDecimal AmtSourceCr)
	{
		set_ValueNoCheck (COLUMNNAME_AmtSourceCr, AmtSourceCr);
	}

	/** Get Source Credit.
		@return Source Credit Amount
	  */
	public BigDecimal getAmtSourceCr () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_AmtSourceCr);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}


	public org.compiere.model.I_C_Period getC_Period() throws RuntimeException
    {
		return (org.compiere.model.I_C_Period)MTable.get(getCtx(), org.compiere.model.I_C_Period.Table_Name)
			.getPO(getC_Period_ID(), get_TrxName());	}

	/** Set Period.
		@param C_Period_ID 
		Period of the Calendar
	  */
	public void setC_Period_ID (int C_Period_ID)
	{
		if (C_Period_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_C_Period_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_C_Period_ID, Integer.valueOf(C_Period_ID));
	}

	/** Get Period.
		@return Period of the Calendar
	  */
	public int getC_Period_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_Period_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Accumulated Amt.
		@param CumulatedAmt 
		Total Amount
	  */
	public void setCumulatedAmt (BigDecimal CumulatedAmt)
	{
		set_ValueNoCheck (COLUMNNAME_CumulatedAmt, CumulatedAmt);
	}

	/** Get Accumulated Amt.
		@return Total Amount
	  */
	public BigDecimal getCumulatedAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_CumulatedAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Due Date.
		@param DueDate 
		Date when the payment is due
	  */
	public void setDueDate (Timestamp DueDate)
	{
		set_ValueNoCheck (COLUMNNAME_DueDate, DueDate);
	}

	/** Get Due Date.
		@return Date when the payment is due
	  */
	public Timestamp getDueDate () 
	{
		return (Timestamp)get_Value(COLUMNNAME_DueDate);
	}

	/** ICMS = 000 */
	public static final String LBR_COD_OR_ICMS = "000";
	/** ICMS-ST pelas entradas = 001 */
	public static final String LBR_COD_OR_ICMS_STPelasEntradas = "001";
	/** ICMS da substituição tributária pelas saídas para o Estado = 002 */
	public static final String LBR_COD_OR_ICMSDaSubstituiçãoTributáriaPelasSaídasParaOEstado = "002";
	/** Antecipação do diferencial de alíquotas do ICMS = 003 */
	public static final String LBR_COD_OR_AntecipaçãoDoDiferencialDeAlíquotasDoICMS = "003";
	/** Antecipação do ICMS da importação = 004 */
	public static final String LBR_COD_OR_AntecipaçãoDoICMSDaImportação = "004";
	/** Antecipação tributária = 005 */
	public static final String LBR_COD_OR_AntecipaçãoTributária = "005";
	/** ICMS resultante da alíquota adicional dos itens incluídos no Fundo de Combate à Pobreza = 006 */
	public static final String LBR_COD_OR_ICMSResultanteDaAlíquotaAdicionalDosItensIncluídosNoFundoDeCombateÀPobreza = "006";
	/** Outras obrigações do ICMS = 090 */
	public static final String LBR_COD_OR_OutrasObrigaçõesDoICMS = "090";
	/** ICMS da substituição tributária pelas saídas para outro Estado = 999 */
	public static final String LBR_COD_OR_ICMSDaSubstituiçãoTributáriaPelasSaídasParaOutroEstado = "999";
	/** Set Obligation Code.
		@param LBR_Cod_OR Obligation Code	  */
	public void setLBR_Cod_OR (String LBR_Cod_OR)
	{

		set_Value (COLUMNNAME_LBR_Cod_OR, LBR_Cod_OR);
	}

	/** Get Obligation Code.
		@return Obligation Code	  */
	public String getLBR_Cod_OR () 
	{
		return (String)get_Value(COLUMNNAME_LBR_Cod_OR);
	}

	/** Outros Débitos = 0 */
	public static final String LBR_COD_REC_OutrosDébitos = "0";
	/** Credit reversal = 1 */
	public static final String LBR_COD_REC_CreditReversal = "1";
	/** Other Credits = 3 */
	public static final String LBR_COD_REC_OtherCredits = "3";
	/** Debit Reversal = 4 */
	public static final String LBR_COD_REC_DebitReversal = "4";
	/** Set Revenue Code.
		@param LBR_Cod_Rec 
		Revenue Code specific to state of the federation
	  */
	public void setLBR_Cod_Rec (String LBR_Cod_Rec)
	{

		set_Value (COLUMNNAME_LBR_Cod_Rec, LBR_Cod_Rec);
	}

	/** Get Revenue Code.
		@return Revenue Code specific to state of the federation
	  */
	public String getLBR_Cod_Rec () 
	{
		return (String)get_Value(COLUMNNAME_LBR_Cod_Rec);
	}

	/** SEFAZ = 0 */
	public static final String LBR_IND_PROC_SEFAZ = "0";
	/** Federal Justice = 1 */
	public static final String LBR_IND_PROC_FederalJustice = "1";
	/** State Justice = 2 */
	public static final String LBR_IND_PROC_StateJustice = "2";
	/** Others = 9 */
	public static final String LBR_IND_PROC_Others = "9";
	/** Set Process' Origin Code.
		@param LBR_Ind_Proc Process' Origin Code	  */
	public void setLBR_Ind_Proc (String LBR_Ind_Proc)
	{

		set_Value (COLUMNNAME_LBR_Ind_Proc, LBR_Ind_Proc);
	}

	/** Get Process' Origin Code.
		@return Process' Origin Code	  */
	public String getLBR_Ind_Proc () 
	{
		return (String)get_Value(COLUMNNAME_LBR_Ind_Proc);
	}

	/** Set Process Number.
		@param LBR_Num_Proc 
		Process Number or infraction notice
	  */
	public void setLBR_Num_Proc (String LBR_Num_Proc)
	{
		set_Value (COLUMNNAME_LBR_Num_Proc, LBR_Num_Proc);
	}

	/** Get Process Number.
		@return Process Number or infraction notice
	  */
	public String getLBR_Num_Proc () 
	{
		return (String)get_Value(COLUMNNAME_LBR_Num_Proc);
	}

	/** Set Process Description.
		@param LBR_Proc 
		Short description of the process of this record
	  */
	public void setLBR_Proc (String LBR_Proc)
	{
		set_Value (COLUMNNAME_LBR_Proc, LBR_Proc);
	}

	/** Get Process Description.
		@return Short description of the process of this record
	  */
	public String getLBR_Proc () 
	{
		return (String)get_Value(COLUMNNAME_LBR_Proc);
	}

	/** Set Saldo Credor a Transportar.
		@param LBR_SaldoCredorTransportar Saldo Credor a Transportar	  */
	public void setLBR_SaldoCredorTransportar (BigDecimal LBR_SaldoCredorTransportar)
	{
		set_Value (COLUMNNAME_LBR_SaldoCredorTransportar, LBR_SaldoCredorTransportar);
	}

	/** Get Saldo Credor a Transportar.
		@return Saldo Credor a Transportar	  */
	public BigDecimal getLBR_SaldoCredorTransportar () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_SaldoCredorTransportar);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

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

	public I_LBR_TaxName getLBR_TaxName() throws RuntimeException
    {
		return (I_LBR_TaxName)MTable.get(getCtx(), I_LBR_TaxName.Table_Name)
			.getPO(getLBR_TaxName_ID(), get_TrxName());	}

	/** Set Tax Name.
		@param LBR_TaxName_ID 
		Primary key table LBR_TaxName
	  */
	public void setLBR_TaxName_ID (int LBR_TaxName_ID)
	{
		if (LBR_TaxName_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_TaxName_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_TaxName_ID, Integer.valueOf(LBR_TaxName_ID));
	}

	/** Get Tax Name.
		@return Primary key table LBR_TaxName
	  */
	public int getLBR_TaxName_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_TaxName_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Complementary Description.
		@param LBR_Txt_Compl 
		Complementary description of the obligation
	  */
	public void setLBR_Txt_Compl (String LBR_Txt_Compl)
	{
		set_Value (COLUMNNAME_LBR_Txt_Compl, LBR_Txt_Compl);
	}

	/** Get Complementary Description.
		@return Complementary description of the obligation
	  */
	public String getLBR_Txt_Compl () 
	{
		return (String)get_Value(COLUMNNAME_LBR_Txt_Compl);
	}

	/** Set Obligation Value.
		@param LBR_VL_OR Obligation Value	  */
	public void setLBR_VL_OR (BigDecimal LBR_VL_OR)
	{
		set_Value (COLUMNNAME_LBR_VL_OR, LBR_VL_OR);
	}

	/** Get Obligation Value.
		@return Obligation Value	  */
	public BigDecimal getLBR_VL_OR () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_VL_OR);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Processed.
		@param Processed 
		The document has been processed
	  */
	public void setProcessed (boolean Processed)
	{
		set_Value (COLUMNNAME_Processed, Boolean.valueOf(Processed));
	}

	/** Get Processed.
		@return The document has been processed
	  */
	public boolean isProcessed () 
	{
		Object oo = get_Value(COLUMNNAME_Processed);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Process Now.
		@param Processing Process Now	  */
	public void setProcessing (boolean Processing)
	{
		set_Value (COLUMNNAME_Processing, Boolean.valueOf(Processing));
	}

	/** Get Process Now.
		@return Process Now	  */
	public boolean isProcessing () 
	{
		Object oo = get_Value(COLUMNNAME_Processing);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Total Amount.
		@param TotalAmt 
		Total Amount
	  */
	public void setTotalAmt (BigDecimal TotalAmt)
	{
		set_ValueNoCheck (COLUMNNAME_TotalAmt, TotalAmt);
	}

	/** Get Total Amount.
		@return Total Amount
	  */
	public BigDecimal getTotalAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_TotalAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Total Credit.
		@param TotalCr 
		Total Credit in document currency
	  */
	public void setTotalCr (BigDecimal TotalCr)
	{
		set_ValueNoCheck (COLUMNNAME_TotalCr, TotalCr);
	}

	/** Get Total Credit.
		@return Total Credit in document currency
	  */
	public BigDecimal getTotalCr () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_TotalCr);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Total Debit.
		@param TotalDr 
		Total debit in document currency
	  */
	public void setTotalDr (BigDecimal TotalDr)
	{
		set_ValueNoCheck (COLUMNNAME_TotalDr, TotalDr);
	}

	/** Get Total Debit.
		@return Total debit in document currency
	  */
	public BigDecimal getTotalDr () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_TotalDr);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}
}