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
package org.idempierelbr.nfs.model;

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.Properties;
import org.compiere.model.*;
import org.compiere.util.Env;

/** Generated Model for LBR_NFS
 *  @author iDempiere (generated) 
 *  @version Release 5.1 - $Id$ */
public class X_LBR_NFS extends PO implements I_LBR_NFS, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20180105L;

    /** Standard Constructor */
    public X_LBR_NFS (Properties ctx, int LBR_NFS_ID, String trxName)
    {
      super (ctx, LBR_NFS_ID, trxName);
      /** if (LBR_NFS_ID == 0)
        {
			setC_BPartner_ID (0);
			setC_BPartner_Location_ID (0);
			setC_DocType_ID (0);
// 0
			setC_DocTypeTarget_ID (0);
// 0
			setC_PaymentTerm_ID (0);
			setC_Tax_ID (0);
			setC_UOM_ID (0);
			setDateDoc (new Timestamp( System.currentTimeMillis() ));
// @#Date@
			setDescription (null);
			setDocAction (null);
// CO
			setIsApproved (true);
// Y
			setIsTaxIncluded (true);
// Y
			setLBR_IsDocIssuedByOrg (true);
// Y
			setLBR_NFS_ID (0);
			setLBR_NFSeStatus (null);
// 1
			setLBR_TransactionType (null);
			setM_PriceList_ID (0);
			setM_Product_ID (0);
			setPaymentRule (null);
// B
			setPrice (Env.ZERO);
			setQty (Env.ZERO);
        } */
    }

    /** Load Constructor */
    public X_LBR_NFS (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_NFS[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	public org.compiere.model.I_AD_User getAD_User() throws RuntimeException
    {
		return (org.compiere.model.I_AD_User)MTable.get(getCtx(), org.compiere.model.I_AD_User.Table_Name)
			.getPO(getAD_User_ID(), get_TrxName());	}

	/** Set User/Contact.
		@param AD_User_ID 
		User within the system - Internal or Business Partner Contact
	  */
	public void setAD_User_ID (int AD_User_ID)
	{
		if (AD_User_ID < 1) 
			set_Value (COLUMNNAME_AD_User_ID, null);
		else 
			set_Value (COLUMNNAME_AD_User_ID, Integer.valueOf(AD_User_ID));
	}

	/** Get User/Contact.
		@return User within the system - Internal or Business Partner Contact
	  */
	public int getAD_User_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_AD_User_ID);
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

	public org.compiere.model.I_C_Charge getC_Charge() throws RuntimeException
    {
		return (org.compiere.model.I_C_Charge)MTable.get(getCtx(), org.compiere.model.I_C_Charge.Table_Name)
			.getPO(getC_Charge_ID(), get_TrxName());	}

	/** Set Charge.
		@param C_Charge_ID 
		Additional document charges
	  */
	public void setC_Charge_ID (int C_Charge_ID)
	{
		if (C_Charge_ID < 1) 
			set_Value (COLUMNNAME_C_Charge_ID, null);
		else 
			set_Value (COLUMNNAME_C_Charge_ID, Integer.valueOf(C_Charge_ID));
	}

	/** Get Charge.
		@return Additional document charges
	  */
	public int getC_Charge_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_Charge_ID);
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
			set_Value (COLUMNNAME_C_DocType_ID, null);
		else 
			set_Value (COLUMNNAME_C_DocType_ID, Integer.valueOf(C_DocType_ID));
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

	public org.compiere.model.I_C_DocType getC_DocTypeTarget() throws RuntimeException
    {
		return (org.compiere.model.I_C_DocType)MTable.get(getCtx(), org.compiere.model.I_C_DocType.Table_Name)
			.getPO(getC_DocTypeTarget_ID(), get_TrxName());	}

	/** Set Target Document Type.
		@param C_DocTypeTarget_ID 
		Target document type for conversing documents
	  */
	public void setC_DocTypeTarget_ID (int C_DocTypeTarget_ID)
	{
		if (C_DocTypeTarget_ID < 1) 
			set_Value (COLUMNNAME_C_DocTypeTarget_ID, null);
		else 
			set_Value (COLUMNNAME_C_DocTypeTarget_ID, Integer.valueOf(C_DocTypeTarget_ID));
	}

	/** Get Target Document Type.
		@return Target document type for conversing documents
	  */
	public int getC_DocTypeTarget_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_DocTypeTarget_ID);
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
			set_ValueNoCheck (COLUMNNAME_C_Invoice_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_C_Invoice_ID, Integer.valueOf(C_Invoice_ID));
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

	public org.compiere.model.I_C_Invoice getC_InvoiceLine() throws RuntimeException
    {
		return (org.compiere.model.I_C_Invoice)MTable.get(getCtx(), org.compiere.model.I_C_Invoice.Table_Name)
			.getPO(getC_InvoiceLine_ID(), get_TrxName());	}

	/** Set Invoice Line.
		@param C_InvoiceLine_ID 
		Invoice Detail Line
	  */
	public void setC_InvoiceLine_ID (int C_InvoiceLine_ID)
	{
		if (C_InvoiceLine_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_C_InvoiceLine_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_C_InvoiceLine_ID, Integer.valueOf(C_InvoiceLine_ID));
	}

	/** Get Invoice Line.
		@return Invoice Detail Line
	  */
	public int getC_InvoiceLine_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_InvoiceLine_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.compiere.model.I_C_Order getC_Order() throws RuntimeException
    {
		return (org.compiere.model.I_C_Order)MTable.get(getCtx(), org.compiere.model.I_C_Order.Table_Name)
			.getPO(getC_Order_ID(), get_TrxName());	}

	/** Set Order.
		@param C_Order_ID 
		Order
	  */
	public void setC_Order_ID (int C_Order_ID)
	{
		if (C_Order_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_C_Order_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_C_Order_ID, Integer.valueOf(C_Order_ID));
	}

	/** Get Order.
		@return Order
	  */
	public int getC_Order_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_Order_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.compiere.model.I_C_OrderLine getC_OrderLine() throws RuntimeException
    {
		return (org.compiere.model.I_C_OrderLine)MTable.get(getCtx(), org.compiere.model.I_C_OrderLine.Table_Name)
			.getPO(getC_OrderLine_ID(), get_TrxName());	}

	/** Set Sales Order Line.
		@param C_OrderLine_ID 
		Sales Order Line
	  */
	public void setC_OrderLine_ID (int C_OrderLine_ID)
	{
		if (C_OrderLine_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_C_OrderLine_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_C_OrderLine_ID, Integer.valueOf(C_OrderLine_ID));
	}

	/** Get Sales Order Line.
		@return Sales Order Line
	  */
	public int getC_OrderLine_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_OrderLine_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.compiere.model.I_C_PaymentTerm getC_PaymentTerm() throws RuntimeException
    {
		return (org.compiere.model.I_C_PaymentTerm)MTable.get(getCtx(), org.compiere.model.I_C_PaymentTerm.Table_Name)
			.getPO(getC_PaymentTerm_ID(), get_TrxName());	}

	/** Set Payment Term.
		@param C_PaymentTerm_ID 
		The terms of Payment (timing, discount)
	  */
	public void setC_PaymentTerm_ID (int C_PaymentTerm_ID)
	{
		if (C_PaymentTerm_ID < 1) 
			set_Value (COLUMNNAME_C_PaymentTerm_ID, null);
		else 
			set_Value (COLUMNNAME_C_PaymentTerm_ID, Integer.valueOf(C_PaymentTerm_ID));
	}

	/** Get Payment Term.
		@return The terms of Payment (timing, discount)
	  */
	public int getC_PaymentTerm_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_PaymentTerm_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.compiere.model.I_C_Tax getC_Tax() throws RuntimeException
    {
		return (org.compiere.model.I_C_Tax)MTable.get(getCtx(), org.compiere.model.I_C_Tax.Table_Name)
			.getPO(getC_Tax_ID(), get_TrxName());	}

	/** Set Tax.
		@param C_Tax_ID 
		Tax identifier
	  */
	public void setC_Tax_ID (int C_Tax_ID)
	{
		if (C_Tax_ID < 1) 
			set_Value (COLUMNNAME_C_Tax_ID, null);
		else 
			set_Value (COLUMNNAME_C_Tax_ID, Integer.valueOf(C_Tax_ID));
	}

	/** Get Tax.
		@return Tax identifier
	  */
	public int getC_Tax_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_Tax_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.compiere.model.I_C_UOM getC_UOM() throws RuntimeException
    {
		return (org.compiere.model.I_C_UOM)MTable.get(getCtx(), org.compiere.model.I_C_UOM.Table_Name)
			.getPO(getC_UOM_ID(), get_TrxName());	}

	/** Set UOM.
		@param C_UOM_ID 
		Unit of Measure
	  */
	public void setC_UOM_ID (int C_UOM_ID)
	{
		if (C_UOM_ID < 1) 
			set_Value (COLUMNNAME_C_UOM_ID, null);
		else 
			set_Value (COLUMNNAME_C_UOM_ID, Integer.valueOf(C_UOM_ID));
	}

	/** Get UOM.
		@return Unit of Measure
	  */
	public int getC_UOM_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_UOM_ID);
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
		set_Value (COLUMNNAME_DocumentNo, DocumentNo);
	}

	/** Get Document No.
		@return Document sequence number of the document
	  */
	public String getDocumentNo () 
	{
		return (String)get_Value(COLUMNNAME_DocumentNo);
	}

	/** Set Grand Total.
		@param GrandTotal 
		Total amount of document
	  */
	public void setGrandTotal (BigDecimal GrandTotal)
	{
		set_ValueNoCheck (COLUMNNAME_GrandTotal, GrandTotal);
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

	/** Set Approved.
		@param IsApproved 
		Indicates if this document requires approval
	  */
	public void setIsApproved (boolean IsApproved)
	{
		set_Value (COLUMNNAME_IsApproved, Boolean.valueOf(IsApproved));
	}

	/** Get Approved.
		@return Indicates if this document requires approval
	  */
	public boolean isApproved () 
	{
		Object oo = get_Value(COLUMNNAME_IsApproved);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Price includes Tax.
		@param IsTaxIncluded 
		Tax is included in the price 
	  */
	public void setIsTaxIncluded (boolean IsTaxIncluded)
	{
		set_Value (COLUMNNAME_IsTaxIncluded, Boolean.valueOf(IsTaxIncluded));
	}

	/** Get Price includes Tax.
		@return Tax is included in the price 
	  */
	public boolean isTaxIncluded () 
	{
		Object oo = get_Value(COLUMNNAME_IsTaxIncluded);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	public org.compiere.model.I_C_BPartner getLBR_IntermediateBPartner() throws RuntimeException
    {
		return (org.compiere.model.I_C_BPartner)MTable.get(getCtx(), org.compiere.model.I_C_BPartner.Table_Name)
			.getPO(getLBR_IntermediateBPartner_ID(), get_TrxName());	}

	/** Set Parceiro de Negócios Intermediário.
		@param LBR_IntermediateBPartner_ID Parceiro de Negócios Intermediário	  */
	public void setLBR_IntermediateBPartner_ID (int LBR_IntermediateBPartner_ID)
	{
		if (LBR_IntermediateBPartner_ID < 1) 
			set_Value (COLUMNNAME_LBR_IntermediateBPartner_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_IntermediateBPartner_ID, Integer.valueOf(LBR_IntermediateBPartner_ID));
	}

	/** Get Parceiro de Negócios Intermediário.
		@return Parceiro de Negócios Intermediário	  */
	public int getLBR_IntermediateBPartner_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_IntermediateBPartner_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.compiere.model.I_C_BPartner_Location getLBR_IntermediateBPLocation() throws RuntimeException
    {
		return (org.compiere.model.I_C_BPartner_Location)MTable.get(getCtx(), org.compiere.model.I_C_BPartner_Location.Table_Name)
			.getPO(getLBR_IntermediateBPLocation_ID(), get_TrxName());	}

	/** Set Localização do Parc. de Negócios Intermediário.
		@param LBR_IntermediateBPLocation_ID Localização do Parc. de Negócios Intermediário	  */
	public void setLBR_IntermediateBPLocation_ID (int LBR_IntermediateBPLocation_ID)
	{
		if (LBR_IntermediateBPLocation_ID < 1) 
			set_Value (COLUMNNAME_LBR_IntermediateBPLocation_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_IntermediateBPLocation_ID, Integer.valueOf(LBR_IntermediateBPLocation_ID));
	}

	/** Get Localização do Parc. de Negócios Intermediário.
		@return Localização do Parc. de Negócios Intermediário	  */
	public int getLBR_IntermediateBPLocation_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_IntermediateBPLocation_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Is Document Issued by Client/Org?.
		@param LBR_IsDocIssuedByOrg Is Document Issued by Client/Org?	  */
	public void setLBR_IsDocIssuedByOrg (boolean LBR_IsDocIssuedByOrg)
	{
		set_Value (COLUMNNAME_LBR_IsDocIssuedByOrg, Boolean.valueOf(LBR_IsDocIssuedByOrg));
	}

	/** Get Is Document Issued by Client/Org?.
		@return Is Document Issued by Client/Org?	  */
	public boolean isLBR_IsDocIssuedByOrg () 
	{
		Object oo = get_Value(COLUMNNAME_LBR_IsDocIssuedByOrg);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Mensagens de Retorno.
		@param LBR_MensagensRetorno 
		Mensagens de Retorno (erros)
	  */
	public void setLBR_MensagensRetorno (String LBR_MensagensRetorno)
	{
		set_Value (COLUMNNAME_LBR_MensagensRetorno, LBR_MensagensRetorno);
	}

	/** Get Mensagens de Retorno.
		@return Mensagens de Retorno (erros)
	  */
	public String getLBR_MensagensRetorno () 
	{
		return (String)get_Value(COLUMNNAME_LBR_MensagensRetorno);
	}

	/** LBR_MotivoCancelamentoNFS AD_Reference_ID=800045 */
	public static final int LBR_MOTIVOCANCELAMENTONFS_AD_Reference_ID=800045;
	/** Erro na Emissao = 1 */
	public static final String LBR_MOTIVOCANCELAMENTONFS_ErroNaEmissao = "1";
	/** Servico nao prestado = 2 */
	public static final String LBR_MOTIVOCANCELAMENTONFS_ServicoNaoPrestado = "2";
	/** Erro de Assinatura = 3 */
	public static final String LBR_MOTIVOCANCELAMENTONFS_ErroDeAssinatura = "3";
	/** Duplicidade da Nota = 4 */
	public static final String LBR_MOTIVOCANCELAMENTONFS_DuplicidadeDaNota = "4";
	/** Erro de processamento = 5 */
	public static final String LBR_MOTIVOCANCELAMENTONFS_ErroDeProcessamento = "5";
	/** Set Motivo de Cancelamento.
		@param LBR_MotivoCancelamentoNFS Motivo de Cancelamento	  */
	public void setLBR_MotivoCancelamentoNFS (String LBR_MotivoCancelamentoNFS)
	{

		set_Value (COLUMNNAME_LBR_MotivoCancelamentoNFS, LBR_MotivoCancelamentoNFS);
	}

	/** Get Motivo de Cancelamento.
		@return Motivo de Cancelamento	  */
	public String getLBR_MotivoCancelamentoNFS () 
	{
		return (String)get_Value(COLUMNNAME_LBR_MotivoCancelamentoNFS);
	}

	/** Set Nota Fiscal de Serviço.
		@param LBR_NFS_ID Nota Fiscal de Serviço	  */
	public void setLBR_NFS_ID (int LBR_NFS_ID)
	{
		if (LBR_NFS_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_NFS_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_NFS_ID, Integer.valueOf(LBR_NFS_ID));
	}

	/** Get Nota Fiscal de Serviço.
		@return Nota Fiscal de Serviço	  */
	public int getLBR_NFS_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_NFS_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_NFS_UU.
		@param LBR_NFS_UU LBR_NFS_UU	  */
	public void setLBR_NFS_UU (String LBR_NFS_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_NFS_UU, LBR_NFS_UU);
	}

	/** Get LBR_NFS_UU.
		@return LBR_NFS_UU	  */
	public String getLBR_NFS_UU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_NFS_UU);
	}

	/** Set Código de Verificação da NFS-e.
		@param LBR_NFSeCodVerificacao Código de Verificação da NFS-e	  */
	public void setLBR_NFSeCodVerificacao (String LBR_NFSeCodVerificacao)
	{
		set_Value (COLUMNNAME_LBR_NFSeCodVerificacao, LBR_NFSeCodVerificacao);
	}

	/** Get Código de Verificação da NFS-e.
		@return Código de Verificação da NFS-e	  */
	public String getLBR_NFSeCodVerificacao () 
	{
		return (String)get_Value(COLUMNNAME_LBR_NFSeCodVerificacao);
	}

	/** Set NFS-e ID.
		@param LBR_NFSeID NFS-e ID	  */
	public void setLBR_NFSeID (String LBR_NFSeID)
	{
		set_Value (COLUMNNAME_LBR_NFSeID, LBR_NFSeID);
	}

	/** Get NFS-e ID.
		@return NFS-e ID	  */
	public String getLBR_NFSeID () 
	{
		return (String)get_Value(COLUMNNAME_LBR_NFSeID);
	}

	/** Set Código da NFS-e.
		@param LBR_NFSeNumero Código da NFS-e	  */
	public void setLBR_NFSeNumero (String LBR_NFSeNumero)
	{
		set_Value (COLUMNNAME_LBR_NFSeNumero, LBR_NFSeNumero);
	}

	/** Get Código da NFS-e.
		@return Código da NFS-e	  */
	public String getLBR_NFSeNumero () 
	{
		return (String)get_Value(COLUMNNAME_LBR_NFSeNumero);
	}

	/** LBR_NFSeStatus AD_Reference_ID=800030 */
	public static final int LBR_NFSESTATUS_AD_Reference_ID=800030;
	/** Normal = 1 */
	public static final String LBR_NFSESTATUS_Normal = "1";
	/** Cancelado = 2 */
	public static final String LBR_NFSESTATUS_Cancelado = "2";
	/** Set Situação da NFS-e.
		@param LBR_NFSeStatus Situação da NFS-e	  */
	public void setLBR_NFSeStatus (String LBR_NFSeStatus)
	{

		set_Value (COLUMNNAME_LBR_NFSeStatus, LBR_NFSeStatus);
	}

	/** Get Situação da NFS-e.
		@return Situação da NFS-e	  */
	public String getLBR_NFSeStatus () 
	{
		return (String)get_Value(COLUMNNAME_LBR_NFSeStatus);
	}

	/** Set Número da NFS-e Substituída.
		@param LBR_NFSeSubstituida Número da NFS-e Substituída	  */
	public void setLBR_NFSeSubstituida (String LBR_NFSeSubstituida)
	{
		set_Value (COLUMNNAME_LBR_NFSeSubstituida, LBR_NFSeSubstituida);
	}

	/** Get Número da NFS-e Substituída.
		@return Número da NFS-e Substituída	  */
	public String getLBR_NFSeSubstituida () 
	{
		return (String)get_Value(COLUMNNAME_LBR_NFSeSubstituida);
	}

	/** Set Série da NFS.
		@param LBR_NFSSerie Série da NFS	  */
	public void setLBR_NFSSerie (String LBR_NFSSerie)
	{
		set_Value (COLUMNNAME_LBR_NFSSerie, LBR_NFSSerie);
	}

	/** Get Série da NFS.
		@return Série da NFS	  */
	public String getLBR_NFSSerie () 
	{
		return (String)get_Value(COLUMNNAME_LBR_NFSSerie);
	}

	/** Set Número Nif do Tomador.
		@param LBR_NIFTomador Número Nif do Tomador	  */
	public void setLBR_NIFTomador (String LBR_NIFTomador)
	{
		set_Value (COLUMNNAME_LBR_NIFTomador, LBR_NIFTomador);
	}

	/** Get Número Nif do Tomador.
		@return Número Nif do Tomador	  */
	public String getLBR_NIFTomador () 
	{
		return (String)get_Value(COLUMNNAME_LBR_NIFTomador);
	}

	/** Set Cancelar NFS-e.
		@param LBR_ProcCancelNFS Cancelar NFS-e	  */
	public void setLBR_ProcCancelNFS (String LBR_ProcCancelNFS)
	{
		set_Value (COLUMNNAME_LBR_ProcCancelNFS, LBR_ProcCancelNFS);
	}

	/** Get Cancelar NFS-e.
		@return Cancelar NFS-e	  */
	public String getLBR_ProcCancelNFS () 
	{
		return (String)get_Value(COLUMNNAME_LBR_ProcCancelNFS);
	}

	/** Set Imprimir DANFE.
		@param LBR_ProcPrintNFS Imprimir DANFE	  */
	public void setLBR_ProcPrintNFS (String LBR_ProcPrintNFS)
	{
		set_Value (COLUMNNAME_LBR_ProcPrintNFS, LBR_ProcPrintNFS);
	}

	/** Get Imprimir DANFE.
		@return Imprimir DANFE	  */
	public String getLBR_ProcPrintNFS () 
	{
		return (String)get_Value(COLUMNNAME_LBR_ProcPrintNFS);
	}

	/** Set Enviar por e-Mail.
		@param LBR_ProcSendEMail Enviar por e-Mail	  */
	public void setLBR_ProcSendEMail (String LBR_ProcSendEMail)
	{
		set_Value (COLUMNNAME_LBR_ProcSendEMail, LBR_ProcSendEMail);
	}

	/** Get Enviar por e-Mail.
		@return Enviar por e-Mail	  */
	public String getLBR_ProcSendEMail () 
	{
		return (String)get_Value(COLUMNNAME_LBR_ProcSendEMail);
	}

	/** Set Transmitir NFS-e.
		@param LBR_ProcSendNFS Transmitir NFS-e	  */
	public void setLBR_ProcSendNFS (String LBR_ProcSendNFS)
	{
		set_Value (COLUMNNAME_LBR_ProcSendNFS, LBR_ProcSendNFS);
	}

	/** Get Transmitir NFS-e.
		@return Transmitir NFS-e	  */
	public String getLBR_ProcSendNFS () 
	{
		return (String)get_Value(COLUMNNAME_LBR_ProcSendNFS);
	}

	/** Set Número da RPS.
		@param LBR_RPSNumero Número da RPS	  */
	public void setLBR_RPSNumero (String LBR_RPSNumero)
	{
		set_Value (COLUMNNAME_LBR_RPSNumero, LBR_RPSNumero);
	}

	/** Get Número da RPS.
		@return Número da RPS	  */
	public String getLBR_RPSNumero () 
	{
		return (String)get_Value(COLUMNNAME_LBR_RPSNumero);
	}

	/** Set Número da RPS Substituída.
		@param LBR_RPSNumeroSubstituida Número da RPS Substituída	  */
	public void setLBR_RPSNumeroSubstituida (String LBR_RPSNumeroSubstituida)
	{
		set_Value (COLUMNNAME_LBR_RPSNumeroSubstituida, LBR_RPSNumeroSubstituida);
	}

	/** Get Número da RPS Substituída.
		@return Número da RPS Substituída	  */
	public String getLBR_RPSNumeroSubstituida () 
	{
		return (String)get_Value(COLUMNNAME_LBR_RPSNumeroSubstituida);
	}

	/** Set Série da RPS.
		@param LBR_RPSSerie Série da RPS	  */
	public void setLBR_RPSSerie (String LBR_RPSSerie)
	{
		set_Value (COLUMNNAME_LBR_RPSSerie, LBR_RPSSerie);
	}

	/** Get Série da RPS.
		@return Série da RPS	  */
	public String getLBR_RPSSerie () 
	{
		return (String)get_Value(COLUMNNAME_LBR_RPSSerie);
	}

	/** Set Série da RPS Substituída.
		@param LBR_RPSSerieSubstituida Série da RPS Substituída	  */
	public void setLBR_RPSSerieSubstituida (String LBR_RPSSerieSubstituida)
	{
		set_Value (COLUMNNAME_LBR_RPSSerieSubstituida, LBR_RPSSerieSubstituida);
	}

	/** Get Série da RPS Substituída.
		@return Série da RPS Substituída	  */
	public String getLBR_RPSSerieSubstituida () 
	{
		return (String)get_Value(COLUMNNAME_LBR_RPSSerieSubstituida);
	}

	/** LBR_RPSStatus AD_Reference_ID=800030 */
	public static final int LBR_RPSSTATUS_AD_Reference_ID=800030;
	/** Normal = 1 */
	public static final String LBR_RPSSTATUS_Normal = "1";
	/** Cancelado = 2 */
	public static final String LBR_RPSSTATUS_Cancelado = "2";
	/** Set Situação da RPS.
		@param LBR_RPSStatus Situação da RPS	  */
	public void setLBR_RPSStatus (String LBR_RPSStatus)
	{

		set_Value (COLUMNNAME_LBR_RPSStatus, LBR_RPSStatus);
	}

	/** Get Situação da RPS.
		@return Situação da RPS	  */
	public String getLBR_RPSStatus () 
	{
		return (String)get_Value(COLUMNNAME_LBR_RPSStatus);
	}

	/** LBR_RPSTipo AD_Reference_ID=800031 */
	public static final int LBR_RPSTIPO_AD_Reference_ID=800031;
	/** Recibo Provisorio de Servicos = 1 */
	public static final String LBR_RPSTIPO_ReciboProvisorioDeServicos = "1";
	/** RPS Nota Fiscal Conjugada (Mista) = 2 */
	public static final String LBR_RPSTIPO_RPSNotaFiscalConjugadaMista = "2";
	/** Cupom = 3 */
	public static final String LBR_RPSTIPO_Cupom = "3";
	/** Set Tipo da RPS.
		@param LBR_RPSTipo Tipo da RPS	  */
	public void setLBR_RPSTipo (String LBR_RPSTipo)
	{

		set_Value (COLUMNNAME_LBR_RPSTipo, LBR_RPSTipo);
	}

	/** Get Tipo da RPS.
		@return Tipo da RPS	  */
	public String getLBR_RPSTipo () 
	{
		return (String)get_Value(COLUMNNAME_LBR_RPSTipo);
	}

	/** LBR_RPSTipoSubstituida AD_Reference_ID=800031 */
	public static final int LBR_RPSTIPOSUBSTITUIDA_AD_Reference_ID=800031;
	/** Recibo Provisorio de Servicos = 1 */
	public static final String LBR_RPSTIPOSUBSTITUIDA_ReciboProvisorioDeServicos = "1";
	/** RPS Nota Fiscal Conjugada (Mista) = 2 */
	public static final String LBR_RPSTIPOSUBSTITUIDA_RPSNotaFiscalConjugadaMista = "2";
	/** Cupom = 3 */
	public static final String LBR_RPSTIPOSUBSTITUIDA_Cupom = "3";
	/** Set Tipo da RPS Substituída.
		@param LBR_RPSTipoSubstituida Tipo da RPS Substituída	  */
	public void setLBR_RPSTipoSubstituida (String LBR_RPSTipoSubstituida)
	{

		set_Value (COLUMNNAME_LBR_RPSTipoSubstituida, LBR_RPSTipoSubstituida);
	}

	/** Get Tipo da RPS Substituída.
		@return Tipo da RPS Substituída	  */
	public String getLBR_RPSTipoSubstituida () 
	{
		return (String)get_Value(COLUMNNAME_LBR_RPSTipoSubstituida);
	}

	/** End User = END */
	public static final String LBR_TRANSACTIONTYPE_EndUser = "END";
	/** Export = EXP */
	public static final String LBR_TRANSACTIONTYPE_Export = "EXP";
	/** Import = IMP */
	public static final String LBR_TRANSACTIONTYPE_Import = "IMP";
	/** Manufacturing = MAN */
	public static final String LBR_TRANSACTIONTYPE_Manufacturing = "MAN";
	/** Resale = RES */
	public static final String LBR_TRANSACTIONTYPE_Resale = "RES";
	/** Set Transaction Type.
		@param LBR_TransactionType 
		Identifies a Transaction Type
	  */
	public void setLBR_TransactionType (String LBR_TransactionType)
	{

		set_Value (COLUMNNAME_LBR_TransactionType, LBR_TransactionType);
	}

	/** Get Transaction Type.
		@return Identifies a Transaction Type
	  */
	public String getLBR_TransactionType () 
	{
		return (String)get_Value(COLUMNNAME_LBR_TransactionType);
	}

	public org.compiere.model.I_M_PriceList getM_PriceList() throws RuntimeException
    {
		return (org.compiere.model.I_M_PriceList)MTable.get(getCtx(), org.compiere.model.I_M_PriceList.Table_Name)
			.getPO(getM_PriceList_ID(), get_TrxName());	}

	/** Set Price List.
		@param M_PriceList_ID 
		Unique identifier of a Price List
	  */
	public void setM_PriceList_ID (int M_PriceList_ID)
	{
		if (M_PriceList_ID < 1) 
			set_Value (COLUMNNAME_M_PriceList_ID, null);
		else 
			set_Value (COLUMNNAME_M_PriceList_ID, Integer.valueOf(M_PriceList_ID));
	}

	/** Get Price List.
		@return Unique identifier of a Price List
	  */
	public int getM_PriceList_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_M_PriceList_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.compiere.model.I_M_Product getM_Product() throws RuntimeException
    {
		return (org.compiere.model.I_M_Product)MTable.get(getCtx(), org.compiere.model.I_M_Product.Table_Name)
			.getPO(getM_Product_ID(), get_TrxName());	}

	/** Set Product.
		@param M_Product_ID 
		Product, Service, Item
	  */
	public void setM_Product_ID (int M_Product_ID)
	{
		if (M_Product_ID < 1) 
			set_Value (COLUMNNAME_M_Product_ID, null);
		else 
			set_Value (COLUMNNAME_M_Product_ID, Integer.valueOf(M_Product_ID));
	}

	/** Get Product.
		@return Product, Service, Item
	  */
	public int getM_Product_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_M_Product_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** PaymentRule AD_Reference_ID=195 */
	public static final int PAYMENTRULE_AD_Reference_ID=195;
	/** Cash = B */
	public static final String PAYMENTRULE_Cash = "B";
	/** Credit Card = K */
	public static final String PAYMENTRULE_CreditCard = "K";
	/** Direct Deposit = T */
	public static final String PAYMENTRULE_DirectDeposit = "T";
	/** Check = S */
	public static final String PAYMENTRULE_Check = "S";
	/** On Credit = P */
	public static final String PAYMENTRULE_OnCredit = "P";
	/** Direct Debit = D */
	public static final String PAYMENTRULE_DirectDebit = "D";
	/** Mixed POS Payment = M */
	public static final String PAYMENTRULE_MixedPOSPayment = "M";
	/** Set Payment Rule.
		@param PaymentRule 
		How you pay the invoice
	  */
	public void setPaymentRule (String PaymentRule)
	{

		set_Value (COLUMNNAME_PaymentRule, PaymentRule);
	}

	/** Get Payment Rule.
		@return How you pay the invoice
	  */
	public String getPaymentRule () 
	{
		return (String)get_Value(COLUMNNAME_PaymentRule);
	}

	/** Set Posted.
		@param Posted 
		Posting status
	  */
	public void setPosted (boolean Posted)
	{
		set_ValueNoCheck (COLUMNNAME_Posted, Boolean.valueOf(Posted));
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

	/** Set Price.
		@param Price 
		Price
	  */
	public void setPrice (BigDecimal Price)
	{
		set_Value (COLUMNNAME_Price, Price);
	}

	/** Get Price.
		@return Price
	  */
	public BigDecimal getPrice () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_Price);
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

	/** Set Quantity.
		@param Qty 
		Quantity
	  */
	public void setQty (BigDecimal Qty)
	{
		set_Value (COLUMNNAME_Qty, Qty);
	}

	/** Get Quantity.
		@return Quantity
	  */
	public BigDecimal getQty () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_Qty);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Total Lines.
		@param TotalLines 
		Total of all document lines
	  */
	public void setTotalLines (BigDecimal TotalLines)
	{
		set_ValueNoCheck (COLUMNNAME_TotalLines, TotalLines);
	}

	/** Get Total Lines.
		@return Total of all document lines
	  */
	public BigDecimal getTotalLines () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_TotalLines);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}
}