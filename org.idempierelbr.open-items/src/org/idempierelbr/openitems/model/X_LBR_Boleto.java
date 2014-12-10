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
package org.idempierelbr.openitems.model;

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.Properties;
import org.compiere.model.*;
import org.compiere.util.Env;
import org.compiere.util.KeyNamePair;

/** Generated Model for LBR_Boleto
 *  @author iDempiere (generated) 
 *  @version Release 2.1 - $Id$ */
public class X_LBR_Boleto extends PO implements I_LBR_Boleto, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20141205L;

    /** Standard Constructor */
    public X_LBR_Boleto (Properties ctx, int LBR_Boleto_ID, String trxName)
    {
      super (ctx, LBR_Boleto_ID, trxName);
      /** if (LBR_Boleto_ID == 0)
        {
			setC_BankAccount_ID (0);
			setC_Bank_ID (0);
			setC_BPartner_ID (0);
			setC_BPartner_Location_ID (0);
			setC_DocType_ID (0);
			setC_Invoice_ID (0);
			setDateAcct (new Timestamp( System.currentTimeMillis() ));
// @#Date@
			setDateDoc (new Timestamp( System.currentTimeMillis() ));
// @#Date@
			setDocAction (null);
// CO
			setDocStatus (null);
// DR
			setDocumentNo (null);
			setDueDate (new Timestamp( System.currentTimeMillis() ));
			setGrandTotal (Env.ZERO);
			setLBR_Accepted (null);
			setLBR_BankAccount_Carteira_ID (0);
			setLBR_BankAccount_Convenio_ID (0);
			setLBR_CNAB240Currency (null);
			setLBR_CNAB240DocType (null);
			setLBR_CollectionRegType (null);
			setLBR_CollectionType (null);
			setLBR_DistributionType (null);
			setLBR_IssueType (null);
			setLBR_NumberInOrg (null);
			setLBR_PartialPayment (null);
			setPosted (false);
// N
			setProcessed (false);
        } */
    }

    /** Load Constructor */
    public X_LBR_Boleto (Properties ctx, ResultSet rs, String trxName)
    {
      super (ctx, rs, trxName);
    }

    /** AccessLevel
      * @return 1 - Org 
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
      StringBuffer sb = new StringBuffer ("X_LBR_Boleto[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	public org.compiere.model.I_C_BankAccount getC_BankAccount() throws RuntimeException
    {
		return (org.compiere.model.I_C_BankAccount)MTable.get(getCtx(), org.compiere.model.I_C_BankAccount.Table_Name)
			.getPO(getC_BankAccount_ID(), get_TrxName());	}

	/** Set Bank Account.
		@param C_BankAccount_ID 
		Account at the Bank
	  */
	public void setC_BankAccount_ID (int C_BankAccount_ID)
	{
		if (C_BankAccount_ID < 1) 
			set_Value (COLUMNNAME_C_BankAccount_ID, null);
		else 
			set_Value (COLUMNNAME_C_BankAccount_ID, Integer.valueOf(C_BankAccount_ID));
	}

	/** Get Bank Account.
		@return Account at the Bank
	  */
	public int getC_BankAccount_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_BankAccount_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.compiere.model.I_C_Bank getC_Bank() throws RuntimeException
    {
		return (org.compiere.model.I_C_Bank)MTable.get(getCtx(), org.compiere.model.I_C_Bank.Table_Name)
			.getPO(getC_Bank_ID(), get_TrxName());	}

	/** Set Bank.
		@param C_Bank_ID 
		Bank
	  */
	public void setC_Bank_ID (int C_Bank_ID)
	{
		if (C_Bank_ID < 1) 
			set_Value (COLUMNNAME_C_Bank_ID, null);
		else 
			set_Value (COLUMNNAME_C_Bank_ID, Integer.valueOf(C_Bank_ID));
	}

	/** Get Bank.
		@return Bank
	  */
	public int getC_Bank_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_Bank_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.compiere.model.I_C_BPartner getC_BPartner() throws RuntimeException
    {
		return (org.compiere.model.I_C_BPartner)MTable.get(getCtx(), org.compiere.model.I_C_BPartner.Table_Name)
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

	public org.compiere.model.I_C_BPartner_Location getC_BPartner_Location() throws RuntimeException
    {
		return (org.compiere.model.I_C_BPartner_Location)MTable.get(getCtx(), org.compiere.model.I_C_BPartner_Location.Table_Name)
			.getPO(getC_BPartner_Location_ID(), get_TrxName());	}

	/** Set Partner Location.
		@param C_BPartner_Location_ID 
		Identifies the (ship to) address for this Business Partner
	  */
	public void setC_BPartner_Location_ID (int C_BPartner_Location_ID)
	{
		if (C_BPartner_Location_ID < 1) 
			set_Value (COLUMNNAME_C_BPartner_Location_ID, null);
		else 
			set_Value (COLUMNNAME_C_BPartner_Location_ID, Integer.valueOf(C_BPartner_Location_ID));
	}

	/** Get Partner Location.
		@return Identifies the (ship to) address for this Business Partner
	  */
	public int getC_BPartner_Location_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_BPartner_Location_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.compiere.model.I_C_DocType getC_DocType() throws RuntimeException
    {
		return (org.compiere.model.I_C_DocType)MTable.get(getCtx(), org.compiere.model.I_C_DocType.Table_Name)
			.getPO(getC_DocType_ID(), get_TrxName());	}

	/** Set Document Type.
		@param C_DocType_ID 
		Document type or rules
	  */
	public void setC_DocType_ID (int C_DocType_ID)
	{
		if (C_DocType_ID < 0) 
			set_ValueNoCheck (COLUMNNAME_C_DocType_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_C_DocType_ID, Integer.valueOf(C_DocType_ID));
	}

	/** Get Document Type.
		@return Document type or rules
	  */
	public int getC_DocType_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_DocType_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.compiere.model.I_C_Invoice getC_Invoice() throws RuntimeException
    {
		return (org.compiere.model.I_C_Invoice)MTable.get(getCtx(), org.compiere.model.I_C_Invoice.Table_Name)
			.getPO(getC_Invoice_ID(), get_TrxName());	}

	/** Set Invoice.
		@param C_Invoice_ID 
		Invoice Identifier
	  */
	public void setC_Invoice_ID (int C_Invoice_ID)
	{
		if (C_Invoice_ID < 1) 
			set_Value (COLUMNNAME_C_Invoice_ID, null);
		else 
			set_Value (COLUMNNAME_C_Invoice_ID, Integer.valueOf(C_Invoice_ID));
	}

	/** Get Invoice.
		@return Invoice Identifier
	  */
	public int getC_Invoice_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_Invoice_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.compiere.model.I_C_InvoicePaySchedule getC_InvoicePaySchedule() throws RuntimeException
    {
		return (org.compiere.model.I_C_InvoicePaySchedule)MTable.get(getCtx(), org.compiere.model.I_C_InvoicePaySchedule.Table_Name)
			.getPO(getC_InvoicePaySchedule_ID(), get_TrxName());	}

	/** Set Invoice Payment Schedule.
		@param C_InvoicePaySchedule_ID 
		Invoice Payment Schedule
	  */
	public void setC_InvoicePaySchedule_ID (int C_InvoicePaySchedule_ID)
	{
		if (C_InvoicePaySchedule_ID < 1) 
			set_Value (COLUMNNAME_C_InvoicePaySchedule_ID, null);
		else 
			set_Value (COLUMNNAME_C_InvoicePaySchedule_ID, Integer.valueOf(C_InvoicePaySchedule_ID));
	}

	/** Get Invoice Payment Schedule.
		@return Invoice Payment Schedule
	  */
	public int getC_InvoicePaySchedule_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_InvoicePaySchedule_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Account Date.
		@param DateAcct 
		Accounting Date
	  */
	public void setDateAcct (Timestamp DateAcct)
	{
		set_Value (COLUMNNAME_DateAcct, DateAcct);
	}

	/** Get Account Date.
		@return Accounting Date
	  */
	public Timestamp getDateAcct () 
	{
		return (Timestamp)get_Value(COLUMNNAME_DateAcct);
	}

	/** Set Document Date.
		@param DateDoc 
		Date of the Document
	  */
	public void setDateDoc (Timestamp DateDoc)
	{
		set_Value (COLUMNNAME_DateDoc, DateDoc);
	}

	/** Get Document Date.
		@return Date of the Document
	  */
	public Timestamp getDateDoc () 
	{
		return (Timestamp)get_Value(COLUMNNAME_DateDoc);
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

	/** DocAction AD_Reference_ID=135 */
	public static final int DOCACTION_AD_Reference_ID=135;
	/** Complete = CO */
	public static final String DOCACTION_Complete = "CO";
	/** Approve = AP */
	public static final String DOCACTION_Approve = "AP";
	/** Reject = RJ */
	public static final String DOCACTION_Reject = "RJ";
	/** Post = PO */
	public static final String DOCACTION_Post = "PO";
	/** Void = VO */
	public static final String DOCACTION_Void = "VO";
	/** Close = CL */
	public static final String DOCACTION_Close = "CL";
	/** Reverse - Correct = RC */
	public static final String DOCACTION_Reverse_Correct = "RC";
	/** Reverse - Accrual = RA */
	public static final String DOCACTION_Reverse_Accrual = "RA";
	/** Invalidate = IN */
	public static final String DOCACTION_Invalidate = "IN";
	/** Re-activate = RE */
	public static final String DOCACTION_Re_Activate = "RE";
	/** <None> = -- */
	public static final String DOCACTION_None = "--";
	/** Prepare = PR */
	public static final String DOCACTION_Prepare = "PR";
	/** Unlock = XL */
	public static final String DOCACTION_Unlock = "XL";
	/** Wait Complete = WC */
	public static final String DOCACTION_WaitComplete = "WC";
	/** Set Document Action.
		@param DocAction 
		The targeted status of the document
	  */
	public void setDocAction (String DocAction)
	{

		set_Value (COLUMNNAME_DocAction, DocAction);
	}

	/** Get Document Action.
		@return The targeted status of the document
	  */
	public String getDocAction () 
	{
		return (String)get_Value(COLUMNNAME_DocAction);
	}

	/** DocStatus AD_Reference_ID=131 */
	public static final int DOCSTATUS_AD_Reference_ID=131;
	/** Drafted = DR */
	public static final String DOCSTATUS_Drafted = "DR";
	/** Completed = CO */
	public static final String DOCSTATUS_Completed = "CO";
	/** Approved = AP */
	public static final String DOCSTATUS_Approved = "AP";
	/** Not Approved = NA */
	public static final String DOCSTATUS_NotApproved = "NA";
	/** Voided = VO */
	public static final String DOCSTATUS_Voided = "VO";
	/** Invalid = IN */
	public static final String DOCSTATUS_Invalid = "IN";
	/** Reversed = RE */
	public static final String DOCSTATUS_Reversed = "RE";
	/** Closed = CL */
	public static final String DOCSTATUS_Closed = "CL";
	/** Unknown = ?? */
	public static final String DOCSTATUS_Unknown = "??";
	/** In Progress = IP */
	public static final String DOCSTATUS_InProgress = "IP";
	/** Waiting Payment = WP */
	public static final String DOCSTATUS_WaitingPayment = "WP";
	/** Waiting Confirmation = WC */
	public static final String DOCSTATUS_WaitingConfirmation = "WC";
	/** Set Document Status.
		@param DocStatus 
		The current status of the document
	  */
	public void setDocStatus (String DocStatus)
	{

		set_Value (COLUMNNAME_DocStatus, DocStatus);
	}

	/** Get Document Status.
		@return The current status of the document
	  */
	public String getDocStatus () 
	{
		return (String)get_Value(COLUMNNAME_DocStatus);
	}

	/** Set Document No.
		@param DocumentNo 
		Document sequence number of the document
	  */
	public void setDocumentNo (String DocumentNo)
	{
		set_ValueNoCheck (COLUMNNAME_DocumentNo, DocumentNo);
	}

	/** Get Document No.
		@return Document sequence number of the document
	  */
	public String getDocumentNo () 
	{
		return (String)get_Value(COLUMNNAME_DocumentNo);
	}

	/** Set Due Date.
		@param DueDate 
		Date when the payment is due
	  */
	public void setDueDate (Timestamp DueDate)
	{
		set_Value (COLUMNNAME_DueDate, DueDate);
	}

	/** Get Due Date.
		@return Date when the payment is due
	  */
	public Timestamp getDueDate () 
	{
		return (Timestamp)get_Value(COLUMNNAME_DueDate);
	}

    /** Get Record ID/ColumnName
        @return ID/ColumnName pair
      */
    public KeyNamePair getKeyNamePair() 
    {
        return new KeyNamePair(get_ID(), String.valueOf(getDueDate()));
    }

	/** Set Grand Total.
		@param GrandTotal 
		Total amount of document
	  */
	public void setGrandTotal (BigDecimal GrandTotal)
	{
		set_Value (COLUMNNAME_GrandTotal, GrandTotal);
	}

	/** Get Grand Total.
		@return Total amount of document
	  */
	public BigDecimal getGrandTotal () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_GrandTotal);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Paid.
		@param IsPaid 
		The document is paid
	  */
	public void setIsPaid (boolean IsPaid)
	{
		set_Value (COLUMNNAME_IsPaid, Boolean.valueOf(IsPaid));
	}

	/** Get Paid.
		@return The document is paid
	  */
	public boolean isPaid () 
	{
		Object oo = get_Value(COLUMNNAME_IsPaid);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** A - Accepted = A */
	public static final String LBR_ACCEPTED_A_Accepted = "A";
	/** N - Not Accepted = N */
	public static final String LBR_ACCEPTED_N_NotAccepted = "N";
	/** Set Accepted.
		@param LBR_Accepted Accepted	  */
	public void setLBR_Accepted (String LBR_Accepted)
	{

		set_Value (COLUMNNAME_LBR_Accepted, LBR_Accepted);
	}

	/** Get Accepted.
		@return Accepted	  */
	public String getLBR_Accepted () 
	{
		return (String)get_Value(COLUMNNAME_LBR_Accepted);
	}

	public I_LBR_BankAccount_Carteira getLBR_BankAccount_Carteira() throws RuntimeException
    {
		return (I_LBR_BankAccount_Carteira)MTable.get(getCtx(), I_LBR_BankAccount_Carteira.Table_Name)
			.getPO(getLBR_BankAccount_Carteira_ID(), get_TrxName());	}

	/** Set Bank Account Carteira.
		@param LBR_BankAccount_Carteira_ID Bank Account Carteira	  */
	public void setLBR_BankAccount_Carteira_ID (int LBR_BankAccount_Carteira_ID)
	{
		if (LBR_BankAccount_Carteira_ID < 1) 
			set_Value (COLUMNNAME_LBR_BankAccount_Carteira_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_BankAccount_Carteira_ID, Integer.valueOf(LBR_BankAccount_Carteira_ID));
	}

	/** Get Bank Account Carteira.
		@return Bank Account Carteira	  */
	public int getLBR_BankAccount_Carteira_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_BankAccount_Carteira_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public I_LBR_BankAccount_Convenio getLBR_BankAccount_Convenio() throws RuntimeException
    {
		return (I_LBR_BankAccount_Convenio)MTable.get(getCtx(), I_LBR_BankAccount_Convenio.Table_Name)
			.getPO(getLBR_BankAccount_Convenio_ID(), get_TrxName());	}

	/** Set Bank Account Convênio.
		@param LBR_BankAccount_Convenio_ID Bank Account Convênio	  */
	public void setLBR_BankAccount_Convenio_ID (int LBR_BankAccount_Convenio_ID)
	{
		if (LBR_BankAccount_Convenio_ID < 1) 
			set_Value (COLUMNNAME_LBR_BankAccount_Convenio_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_BankAccount_Convenio_ID, Integer.valueOf(LBR_BankAccount_Convenio_ID));
	}

	/** Get Bank Account Convênio.
		@return Bank Account Convênio	  */
	public int getLBR_BankAccount_Convenio_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_BankAccount_Convenio_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Bank Use.
		@param LBR_BankUse 
		Bank Use
	  */
	public void setLBR_BankUse (String LBR_BankUse)
	{
		set_Value (COLUMNNAME_LBR_BankUse, LBR_BankUse);
	}

	/** Get Bank Use.
		@return Bank Use
	  */
	public String getLBR_BankUse () 
	{
		return (String)get_Value(COLUMNNAME_LBR_BankUse);
	}

	/** Set Barcode.
		@param LBR_Barcode 
		Barcode
	  */
	public void setLBR_Barcode (String LBR_Barcode)
	{
		set_Value (COLUMNNAME_LBR_Barcode, LBR_Barcode);
	}

	/** Get Barcode.
		@return Barcode
	  */
	public String getLBR_Barcode () 
	{
		return (String)get_Value(COLUMNNAME_LBR_Barcode);
	}

	/** Set Brazilian Bank Collection (Boleto).
		@param LBR_Boleto_ID 
		Brazilian Bank Collection (Boleto) Identifier
	  */
	public void setLBR_Boleto_ID (int LBR_Boleto_ID)
	{
		if (LBR_Boleto_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_Boleto_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_Boleto_ID, Integer.valueOf(LBR_Boleto_ID));
	}

	/** Get Brazilian Bank Collection (Boleto).
		@return Brazilian Bank Collection (Boleto) Identifier
	  */
	public int getLBR_Boleto_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_Boleto_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Brazilian Bank Collection (Boleto).
		@param LBR_Boleto_UU 
		Brazilian Bank Collection (Boleto) Identifier
	  */
	public void setLBR_Boleto_UU (String LBR_Boleto_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_Boleto_UU, LBR_Boleto_UU);
	}

	/** Get Brazilian Bank Collection (Boleto).
		@return Brazilian Bank Collection (Boleto) Identifier
	  */
	public String getLBR_Boleto_UU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_Boleto_UU);
	}

	/** Simples = 1 */
	public static final String LBR_CARTEIRATYPE_Simples = "1";
	/** Vinculada = 2 */
	public static final String LBR_CARTEIRATYPE_Vinculada = "2";
	/** Caucionada = 3 */
	public static final String LBR_CARTEIRATYPE_Caucionada = "3";
	/** Descontada = 4 */
	public static final String LBR_CARTEIRATYPE_Descontada = "4";
	/** Vendor = 5 */
	public static final String LBR_CARTEIRATYPE_Vendor = "5";
	/** Set Bank Account Carteira Type.
		@param LBR_CarteiraType Bank Account Carteira Type	  */
	public void setLBR_CarteiraType (String LBR_CarteiraType)
	{

		set_Value (COLUMNNAME_LBR_CarteiraType, LBR_CarteiraType);
	}

	/** Get Bank Account Carteira Type.
		@return Bank Account Carteira Type	  */
	public String getLBR_CarteiraType () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CarteiraType);
	}

	/** 01 - Reservado para Uso Futuro = 01 */
	public static final String LBR_CNAB240CURRENCY_01_ReservadoParaUsoFuturo = "01";
	/** 02 - Dolar Americano Comercial (Venda) = 02 */
	public static final String LBR_CNAB240CURRENCY_02_DolarAmericanoComercialVenda = "02";
	/** 03 - Dolar Americano Turismo (Venda) = 03 */
	public static final String LBR_CNAB240CURRENCY_03_DolarAmericanoTurismoVenda = "03";
	/** 04 - ITRD = 04 */
	public static final String LBR_CNAB240CURRENCY_04_ITRD = "04";
	/** 05 - IDTR = 05 */
	public static final String LBR_CNAB240CURRENCY_05_IDTR = "05";
	/** 06 - UFIR Diaria = 06 */
	public static final String LBR_CNAB240CURRENCY_06_UFIRDiaria = "06";
	/** 07 - UFIR Mensal = 07 */
	public static final String LBR_CNAB240CURRENCY_07_UFIRMensal = "07";
	/** 08 - FAJ-TR = 08 */
	public static final String LBR_CNAB240CURRENCY_08_FAJ_TR = "08";
	/** 09 - Real = 09 */
	public static final String LBR_CNAB240CURRENCY_09_Real = "09";
	/** 10 - TR = 10 */
	public static final String LBR_CNAB240CURRENCY_10_TR = "10";
	/** 11 - IGPM = 11 */
	public static final String LBR_CNAB240CURRENCY_11_IGPM = "11";
	/** 12 - CDI = 12 */
	public static final String LBR_CNAB240CURRENCY_12_CDI = "12";
	/** 13 - Percentual do CDI = 13 */
	public static final String LBR_CNAB240CURRENCY_13_PercentualDoCDI = "13";
	/** 14 - Euro = 14 */
	public static final String LBR_CNAB240CURRENCY_14_Euro = "14";
	/** Set Currency.
		@param LBR_CNAB240Currency Currency	  */
	public void setLBR_CNAB240Currency (String LBR_CNAB240Currency)
	{

		set_Value (COLUMNNAME_LBR_CNAB240Currency, LBR_CNAB240Currency);
	}

	/** Get Currency.
		@return Currency	  */
	public String getLBR_CNAB240Currency () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CNAB240Currency);
	}

	/** 1 - Tradicional = 1 */
	public static final String LBR_CNAB240DOCTYPE_1_Tradicional = "1";
	/** 2 - Escritural = 2 */
	public static final String LBR_CNAB240DOCTYPE_2_Escritural = "2";
	/** Set Febraban Document Type.
		@param LBR_CNAB240DocType Febraban Document Type	  */
	public void setLBR_CNAB240DocType (String LBR_CNAB240DocType)
	{

		set_Value (COLUMNNAME_LBR_CNAB240DocType, LBR_CNAB240DocType);
	}

	/** Get Febraban Document Type.
		@return Febraban Document Type	  */
	public String getLBR_CNAB240DocType () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CNAB240DocType);
	}

	/** 1 - Remessa (Cliente -> Banco) = 1 */
	public static final String LBR_CNAB240MOVEMENTTYPE_1_RemessaCliente_GtBanco = "1";
	/** 2 - Retorno (Banco -> Cliente) = 2 */
	public static final String LBR_CNAB240MOVEMENTTYPE_2_RetornoBanco_GtCliente = "2";
	/** Set Movement Type.
		@param LBR_CNAB240MovementType Movement Type	  */
	public void setLBR_CNAB240MovementType (String LBR_CNAB240MovementType)
	{

		throw new IllegalArgumentException ("LBR_CNAB240MovementType is virtual column");	}

	/** Get Movement Type.
		@return Movement Type	  */
	public String getLBR_CNAB240MovementType () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CNAB240MovementType);
	}

	public I_LBR_Cob_Movimento getLBR_Cob_Movimento() throws RuntimeException
    {
		return (I_LBR_Cob_Movimento)MTable.get(getCtx(), I_LBR_Cob_Movimento.Table_Name)
			.getPO(getLBR_Cob_Movimento_ID(), get_TrxName());	}

	/** Set Collection Movement.
		@param LBR_Cob_Movimento_ID Collection Movement	  */
	public void setLBR_Cob_Movimento_ID (int LBR_Cob_Movimento_ID)
	{
		throw new IllegalArgumentException ("LBR_Cob_Movimento_ID is virtual column");	}

	/** Get Collection Movement.
		@return Collection Movement	  */
	public int getLBR_Cob_Movimento_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_Cob_Movimento_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** 1 - Com Cadastramento (Cobranca Registrada) = 1 */
	public static final String LBR_COLLECTIONREGTYPE_1_ComCadastramentoCobrancaRegistrada = "1";
	/** 2 - Sem Cadastramento (Cobranca sem Registro) = 2 */
	public static final String LBR_COLLECTIONREGTYPE_2_SemCadastramentoCobrancaSemRegistro = "2";
	/** 3 - Com Cadastramento / Recusa Debito Automatico = 3 */
	public static final String LBR_COLLECTIONREGTYPE_3_ComCadastramentoRecusaDebitoAutomatico = "3";
	/** Set Registration Type.
		@param LBR_CollectionRegType 
		Collection Registration Type
	  */
	public void setLBR_CollectionRegType (String LBR_CollectionRegType)
	{

		set_Value (COLUMNNAME_LBR_CollectionRegType, LBR_CollectionRegType);
	}

	/** Get Registration Type.
		@return Collection Registration Type
	  */
	public String getLBR_CollectionRegType () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CollectionRegType);
	}

	/** 01 - CH Cheque = 01 */
	public static final String LBR_COLLECTIONTYPE_01_CHCheque = "01";
	/** 02 - DM Duplicata Mercantil = 02 */
	public static final String LBR_COLLECTIONTYPE_02_DMDuplicataMercantil = "02";
	/** 03 - DMI Duplicata Mercantil p/ Indicacao = 03 */
	public static final String LBR_COLLECTIONTYPE_03_DMIDuplicataMercantilPIndicacao = "03";
	/** 04 - DS Duplicata de Servico = 04 */
	public static final String LBR_COLLECTIONTYPE_04_DSDuplicataDeServico = "04";
	/** 05 - DSI Duplicata de Servico p/ Indicacao = 05 */
	public static final String LBR_COLLECTIONTYPE_05_DSIDuplicataDeServicoPIndicacao = "05";
	/** 06 - DR Duplicata Rural = 06 */
	public static final String LBR_COLLECTIONTYPE_06_DRDuplicataRural = "06";
	/** 07 - LC Letra de Cambio = 07 */
	public static final String LBR_COLLECTIONTYPE_07_LCLetraDeCambio = "07";
	/** 08 - NCC Nota de Credito Comercial = 08 */
	public static final String LBR_COLLECTIONTYPE_08_NCCNotaDeCreditoComercial = "08";
	/** 09 - NCE Nota de Credito a Exportacao = 09 */
	public static final String LBR_COLLECTIONTYPE_09_NCENotaDeCreditoAExportacao = "09";
	/** 10 - NCI Nota de Credito Industrial = 10 */
	public static final String LBR_COLLECTIONTYPE_10_NCINotaDeCreditoIndustrial = "10";
	/** 11 - NCR Nota de Credito Rural = 11 */
	public static final String LBR_COLLECTIONTYPE_11_NCRNotaDeCreditoRural = "11";
	/** 12 - NP Nota Promissoria = 12 */
	public static final String LBR_COLLECTIONTYPE_12_NPNotaPromissoria = "12";
	/** 13 - NPR Nota Promissoria Rural = 13 */
	public static final String LBR_COLLECTIONTYPE_13_NPRNotaPromissoriaRural = "13";
	/** 14 - TM Triplicata Mercantil = 14 */
	public static final String LBR_COLLECTIONTYPE_14_TMTriplicataMercantil = "14";
	/** 15 - TS Triplicata de Servico = 15 */
	public static final String LBR_COLLECTIONTYPE_15_TSTriplicataDeServico = "15";
	/** 16 - NS Nota de Seguro = 16 */
	public static final String LBR_COLLECTIONTYPE_16_NSNotaDeSeguro = "16";
	/** 17 - RC Recibo = 17 */
	public static final String LBR_COLLECTIONTYPE_17_RCRecibo = "17";
	/** 18 - FAT Fatura = 18 */
	public static final String LBR_COLLECTIONTYPE_18_FATFatura = "18";
	/** 19 - ND Nota de Debito = 19 */
	public static final String LBR_COLLECTIONTYPE_19_NDNotaDeDebito = "19";
	/** 20 - AP Apolice de Seguro = 20 */
	public static final String LBR_COLLECTIONTYPE_20_APApoliceDeSeguro = "20";
	/** 21 - ME Mensalidade Escolar = 21 */
	public static final String LBR_COLLECTIONTYPE_21_MEMensalidadeEscolar = "21";
	/** 22 - PC Parcela de Consorcio = 22 */
	public static final String LBR_COLLECTIONTYPE_22_PCParcelaDeConsorcio = "22";
	/** 23 - NF Nota Fiscal = 23 */
	public static final String LBR_COLLECTIONTYPE_23_NFNotaFiscal = "23";
	/** 24 - DD Documento de Divida = 24 */
	public static final String LBR_COLLECTIONTYPE_24_DDDocumentoDeDivida = "24";
	/** 25 - Cedula de Produto Rural = 25 */
	public static final String LBR_COLLECTIONTYPE_25_CedulaDeProdutoRural = "25";
	/** 26 - Warrant = 26 */
	public static final String LBR_COLLECTIONTYPE_26_Warrant = "26";
	/** 27 - Divida Ativa de Estado = 27 */
	public static final String LBR_COLLECTIONTYPE_27_DividaAtivaDeEstado = "27";
	/** 28 - Divida Ativa de Municipio = 28 */
	public static final String LBR_COLLECTIONTYPE_28_DividaAtivaDeMunicipio = "28";
	/** 29 - Divida Ativa da Uniao = 29 */
	public static final String LBR_COLLECTIONTYPE_29_DividaAtivaDaUniao = "29";
	/** 30 - Encargos Condominiais = 30 */
	public static final String LBR_COLLECTIONTYPE_30_EncargosCondominiais = "30";
	/** 31 - CC Cartao de Credito = 31 */
	public static final String LBR_COLLECTIONTYPE_31_CCCartaoDeCredito = "31";
	/** 99 - Outros = 99 */
	public static final String LBR_COLLECTIONTYPE_99_Outros = "99";
	/** Set Collection Type.
		@param LBR_CollectionType Collection Type	  */
	public void setLBR_CollectionType (String LBR_CollectionType)
	{

		set_Value (COLUMNNAME_LBR_CollectionType, LBR_CollectionType);
	}

	/** Get Collection Type.
		@return Collection Type	  */
	public String getLBR_CollectionType () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CollectionType);
	}

	public org.compiere.model.I_C_Bank getLBR_CorrespBank() throws RuntimeException
    {
		return (org.compiere.model.I_C_Bank)MTable.get(getCtx(), org.compiere.model.I_C_Bank.Table_Name)
			.getPO(getLBR_CorrespBank_ID(), get_TrxName());	}

	/** Set Correspondent Bank.
		@param LBR_CorrespBank_ID 
		Correspondent Bank
	  */
	public void setLBR_CorrespBank_ID (int LBR_CorrespBank_ID)
	{
		if (LBR_CorrespBank_ID < 1) 
			set_Value (COLUMNNAME_LBR_CorrespBank_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_CorrespBank_ID, Integer.valueOf(LBR_CorrespBank_ID));
	}

	/** Get Correspondent Bank.
		@return Correspondent Bank
	  */
	public int getLBR_CorrespBank_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_CorrespBank_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** 1 - Emite com Endereco do Arquivo Remessa = 1 */
	public static final String LBR_DIRECTDEBITNOTICE_1_EmiteComEnderecoDoArquivoRemessa = "1";
	/** 2 - Nao Emite Aviso ao Sacado = 2 */
	public static final String LBR_DIRECTDEBITNOTICE_2_NaoEmiteAvisoAoSacado = "2";
	/** 3 - Emite com Endereco do Cadastro no Banco = 3 */
	public static final String LBR_DIRECTDEBITNOTICE_3_EmiteComEnderecoDoCadastroNoBanco = "3";
	/** Set Direct Debit Notice.
		@param LBR_DirectDebitNotice Direct Debit Notice	  */
	public void setLBR_DirectDebitNotice (String LBR_DirectDebitNotice)
	{

		set_Value (COLUMNNAME_LBR_DirectDebitNotice, LBR_DirectDebitNotice);
	}

	/** Get Direct Debit Notice.
		@return Direct Debit Notice	  */
	public String getLBR_DirectDebitNotice () 
	{
		return (String)get_Value(COLUMNNAME_LBR_DirectDebitNotice);
	}

	/** 1 - Banco Distribui = 1 */
	public static final String LBR_DISTRIBUTIONTYPE_1_BancoDistribui = "1";
	/** 2 - Cliente Distribui = 2 */
	public static final String LBR_DISTRIBUTIONTYPE_2_ClienteDistribui = "2";
	/** 3 - Banco Envia E-mail = 3 */
	public static final String LBR_DISTRIBUTIONTYPE_3_BancoEnviaE_Mail = "3";
	/** 4 - Banco Envia SMS = 4 */
	public static final String LBR_DISTRIBUTIONTYPE_4_BancoEnviaSMS = "4";
	/** Set Distribution Type.
		@param LBR_DistributionType Distribution Type	  */
	public void setLBR_DistributionType (String LBR_DistributionType)
	{

		set_Value (COLUMNNAME_LBR_DistributionType, LBR_DistributionType);
	}

	/** Get Distribution Type.
		@return Distribution Type	  */
	public String getLBR_DistributionType () 
	{
		return (String)get_Value(COLUMNNAME_LBR_DistributionType);
	}

	/** Set Agency and Client Formatted.
		@param LBR_Fmt_AgencyClient 
		Agency and Client Formatted
	  */
	public void setLBR_Fmt_AgencyClient (String LBR_Fmt_AgencyClient)
	{
		set_Value (COLUMNNAME_LBR_Fmt_AgencyClient, LBR_Fmt_AgencyClient);
	}

	/** Get Agency and Client Formatted.
		@return Agency and Client Formatted
	  */
	public String getLBR_Fmt_AgencyClient () 
	{
		return (String)get_Value(COLUMNNAME_LBR_Fmt_AgencyClient);
	}

	/** Set Billfold Formatted.
		@param LBR_Fmt_Billfold 
		Billfold Formatted
	  */
	public void setLBR_Fmt_Billfold (String LBR_Fmt_Billfold)
	{
		set_Value (COLUMNNAME_LBR_Fmt_Billfold, LBR_Fmt_Billfold);
	}

	/** Get Billfold Formatted.
		@return Billfold Formatted
	  */
	public String getLBR_Fmt_Billfold () 
	{
		return (String)get_Value(COLUMNNAME_LBR_Fmt_Billfold);
	}

	/** Set Document Type Formatted.
		@param LBR_Fmt_Doctype 
		Document Type Formatted
	  */
	public void setLBR_Fmt_Doctype (String LBR_Fmt_Doctype)
	{
		set_Value (COLUMNNAME_LBR_Fmt_Doctype, LBR_Fmt_Doctype);
	}

	/** Get Document Type Formatted.
		@return Document Type Formatted
	  */
	public String getLBR_Fmt_Doctype () 
	{
		return (String)get_Value(COLUMNNAME_LBR_Fmt_Doctype);
	}

	/** Set Number In Bank Formatted.
		@param LBR_Fmt_NumberInBank 
		Number In Bank Formatted
	  */
	public void setLBR_Fmt_NumberInBank (String LBR_Fmt_NumberInBank)
	{
		set_Value (COLUMNNAME_LBR_Fmt_NumberInBank, LBR_Fmt_NumberInBank);
	}

	/** Get Number In Bank Formatted.
		@return Number In Bank Formatted
	  */
	public String getLBR_Fmt_NumberInBank () 
	{
		return (String)get_Value(COLUMNNAME_LBR_Fmt_NumberInBank);
	}

	public org.compiere.model.I_C_BPartner getLBR_Guarantor() throws RuntimeException
    {
		return (org.compiere.model.I_C_BPartner)MTable.get(getCtx(), org.compiere.model.I_C_BPartner.Table_Name)
			.getPO(getLBR_Guarantor_ID(), get_TrxName());	}

	/** Set Guarantor (Business Partner).
		@param LBR_Guarantor_ID 
		Identifies a guarantor (Business Partner)
	  */
	public void setLBR_Guarantor_ID (int LBR_Guarantor_ID)
	{
		if (LBR_Guarantor_ID < 1) 
			set_Value (COLUMNNAME_LBR_Guarantor_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_Guarantor_ID, Integer.valueOf(LBR_Guarantor_ID));
	}

	/** Get Guarantor (Business Partner).
		@return Identifies a guarantor (Business Partner)
	  */
	public int getLBR_Guarantor_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_Guarantor_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.compiere.model.I_C_BPartner_Location getLBR_Guarantor_Location() throws RuntimeException
    {
		return (org.compiere.model.I_C_BPartner_Location)MTable.get(getCtx(), org.compiere.model.I_C_BPartner_Location.Table_Name)
			.getPO(getLBR_Guarantor_Location_ID(), get_TrxName());	}

	/** Set Guarantor (Partner) Location.
		@param LBR_Guarantor_Location_ID 
		Identifies the address for this guarantor (Business Partner)
	  */
	public void setLBR_Guarantor_Location_ID (int LBR_Guarantor_Location_ID)
	{
		if (LBR_Guarantor_Location_ID < 1) 
			set_Value (COLUMNNAME_LBR_Guarantor_Location_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_Guarantor_Location_ID, Integer.valueOf(LBR_Guarantor_Location_ID));
	}

	/** Get Guarantor (Partner) Location.
		@return Identifies the address for this guarantor (Business Partner)
	  */
	public int getLBR_Guarantor_Location_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_Guarantor_Location_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set IOF Amount.
		@param LBR_IOFAmt 
		Defines the IOF Amount
	  */
	public void setLBR_IOFAmt (BigDecimal LBR_IOFAmt)
	{
		set_Value (COLUMNNAME_LBR_IOFAmt, LBR_IOFAmt);
	}

	/** Get IOF Amount.
		@return Defines the IOF Amount
	  */
	public BigDecimal getLBR_IOFAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_IOFAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Baixado.
		@param LBR_IsBaixado Baixado	  */
	public void setLBR_IsBaixado (boolean LBR_IsBaixado)
	{
		set_Value (COLUMNNAME_LBR_IsBaixado, Boolean.valueOf(LBR_IsBaixado));
	}

	/** Get Baixado.
		@return Baixado	  */
	public boolean isLBR_IsBaixado () 
	{
		Object oo = get_Value(COLUMNNAME_LBR_IsBaixado);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Protested.
		@param LBR_IsProtested 
		The document is protested
	  */
	public void setLBR_IsProtested (boolean LBR_IsProtested)
	{
		set_Value (COLUMNNAME_LBR_IsProtested, Boolean.valueOf(LBR_IsProtested));
	}

	/** Get Protested.
		@return The document is protested
	  */
	public boolean isLBR_IsProtested () 
	{
		Object oo = get_Value(COLUMNNAME_LBR_IsProtested);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** 1 - Banco Emite = 1 */
	public static final String LBR_ISSUETYPE_1_BancoEmite = "1";
	/** 2 - Cliente Emite = 2 */
	public static final String LBR_ISSUETYPE_2_ClienteEmite = "2";
	/** 3 - Banco Pre-emite e Cliente Complementa = 3 */
	public static final String LBR_ISSUETYPE_3_BancoPre_EmiteEClienteComplementa = "3";
	/** 4 - Banco Reemite = 4 */
	public static final String LBR_ISSUETYPE_4_BancoReemite = "4";
	/** 5 - Banco nao Reemite = 5 */
	public static final String LBR_ISSUETYPE_5_BancoNaoReemite = "5";
	/** 7 - Banco Emitente - Aberta = 7 */
	public static final String LBR_ISSUETYPE_7_BancoEmitente_Aberta = "7";
	/** 8 - Banco Emitente - Auto-envelopavel = 8 */
	public static final String LBR_ISSUETYPE_8_BancoEmitente_Auto_Envelopavel = "8";
	/** Set Issue Type.
		@param LBR_IssueType Issue Type	  */
	public void setLBR_IssueType (String LBR_IssueType)
	{

		set_Value (COLUMNNAME_LBR_IssueType, LBR_IssueType);
	}

	/** Get Issue Type.
		@return Issue Type	  */
	public String getLBR_IssueType () 
	{
		return (String)get_Value(COLUMNNAME_LBR_IssueType);
	}

	/** Set Sustado.
		@param LBR_IsSustado Sustado	  */
	public void setLBR_IsSustado (boolean LBR_IsSustado)
	{
		set_Value (COLUMNNAME_LBR_IsSustado, Boolean.valueOf(LBR_IsSustado));
	}

	/** Get Sustado.
		@return Sustado	  */
	public boolean isLBR_IsSustado () 
	{
		Object oo = get_Value(COLUMNNAME_LBR_IsSustado);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Loan Contract No..
		@param LBR_LoanContractNo Loan Contract No.	  */
	public void setLBR_LoanContractNo (String LBR_LoanContractNo)
	{
		set_Value (COLUMNNAME_LBR_LoanContractNo, LBR_LoanContractNo);
	}

	/** Get Loan Contract No..
		@return Loan Contract No.	  */
	public String getLBR_LoanContractNo () 
	{
		return (String)get_Value(COLUMNNAME_LBR_LoanContractNo);
	}

	/** Set Number in the Bank.
		@param LBR_NumberInBank Number in the Bank	  */
	public void setLBR_NumberInBank (String LBR_NumberInBank)
	{
		set_Value (COLUMNNAME_LBR_NumberInBank, LBR_NumberInBank);
	}

	/** Get Number in the Bank.
		@return Number in the Bank	  */
	public String getLBR_NumberInBank () 
	{
		return (String)get_Value(COLUMNNAME_LBR_NumberInBank);
	}

	/** Set Number in the Correspondent Bank.
		@param LBR_NumberInCorrespBank Number in the Correspondent Bank	  */
	public void setLBR_NumberInCorrespBank (String LBR_NumberInCorrespBank)
	{
		set_Value (COLUMNNAME_LBR_NumberInCorrespBank, LBR_NumberInCorrespBank);
	}

	/** Get Number in the Correspondent Bank.
		@return Number in the Correspondent Bank	  */
	public String getLBR_NumberInCorrespBank () 
	{
		return (String)get_Value(COLUMNNAME_LBR_NumberInCorrespBank);
	}

	/** Set Number in the Org.
		@param LBR_NumberInOrg Number in the Org	  */
	public void setLBR_NumberInOrg (String LBR_NumberInOrg)
	{
		set_Value (COLUMNNAME_LBR_NumberInOrg, LBR_NumberInOrg);
	}

	/** Get Number in the Org.
		@return Number in the Org	  */
	public String getLBR_NumberInOrg () 
	{
		return (String)get_Value(COLUMNNAME_LBR_NumberInOrg);
	}

	/** 1 - Nao Autoriza Pagamento Parcial = 1 */
	public static final String LBR_PARTIALPAYMENT_1_NaoAutorizaPagamentoParcial = "1";
	/** 2 - Autoriza Pagamentos Parciais = 2 */
	public static final String LBR_PARTIALPAYMENT_2_AutorizaPagamentosParciais = "2";
	/** Set Authorize Partial Payment.
		@param LBR_PartialPayment Authorize Partial Payment	  */
	public void setLBR_PartialPayment (String LBR_PartialPayment)
	{

		set_Value (COLUMNNAME_LBR_PartialPayment, LBR_PartialPayment);
	}

	/** Get Authorize Partial Payment.
		@return Authorize Partial Payment	  */
	public String getLBR_PartialPayment () 
	{
		return (String)get_Value(COLUMNNAME_LBR_PartialPayment);
	}

	/** Set Typeable Line.
		@param LBR_TypeableLine 
		Typeable Line
	  */
	public void setLBR_TypeableLine (String LBR_TypeableLine)
	{
		set_Value (COLUMNNAME_LBR_TypeableLine, LBR_TypeableLine);
	}

	/** Get Typeable Line.
		@return Typeable Line
	  */
	public String getLBR_TypeableLine () 
	{
		return (String)get_Value(COLUMNNAME_LBR_TypeableLine);
	}

	/** Set Posted.
		@param Posted 
		Posting status
	  */
	public void setPosted (boolean Posted)
	{
		set_Value (COLUMNNAME_Posted, Boolean.valueOf(Posted));
	}

	/** Get Posted.
		@return Posting status
	  */
	public boolean isPosted () 
	{
		Object oo = get_Value(COLUMNNAME_Posted);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
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

	/** Set Processed On.
		@param ProcessedOn 
		The date+time (expressed in decimal format) when the document has been processed
	  */
	public void setProcessedOn (BigDecimal ProcessedOn)
	{
		set_Value (COLUMNNAME_ProcessedOn, ProcessedOn);
	}

	/** Get Processed On.
		@return The date+time (expressed in decimal format) when the document has been processed
	  */
	public BigDecimal getProcessedOn () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_ProcessedOn);
		if (bd == null)
			 return Env.ZERO;
		return bd;
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

	/** Set Write-off Amount.
		@param WriteOffAmt 
		Amount to write-off
	  */
	public void setWriteOffAmt (BigDecimal WriteOffAmt)
	{
		set_Value (COLUMNNAME_WriteOffAmt, WriteOffAmt);
	}

	/** Get Write-off Amount.
		@return Amount to write-off
	  */
	public BigDecimal getWriteOffAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_WriteOffAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}
}