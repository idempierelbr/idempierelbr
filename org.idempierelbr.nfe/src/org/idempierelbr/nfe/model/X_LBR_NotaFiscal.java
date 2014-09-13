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
package org.idempierelbr.nfe.model;

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.Properties;
import org.compiere.model.*;
import org.compiere.util.Env;

/** Generated Model for LBR_NotaFiscal
 *  @author iDempiere (generated) 
 *  @version Release 2.0 - $Id$ */
public class X_LBR_NotaFiscal extends PO implements I_LBR_NotaFiscal, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20140508L;

    /** Standard Constructor */
    public X_LBR_NotaFiscal (Properties ctx, int LBR_NotaFiscal_ID, String trxName)
    {
      super (ctx, LBR_NotaFiscal_ID, trxName);
      /** if (LBR_NotaFiscal_ID == 0)
        {
			setC_DocType_ID (0);
// 0
			setDocAction (null);
// CO
			setDocStatus (null);
// DR
			setDocumentNo (null);
			setIsTaxIncluded (false);
			setLBR_NotaFiscal_ID (0);
			setProcessed (false);
        } */
    }

    /** Load Constructor */
    public X_LBR_NotaFiscal (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_NotaFiscal[")
        .append(get_ID()).append("]");
      return sb.toString();
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

	public org.compiere.model.I_C_City getC_City() throws RuntimeException
    {
		return (org.compiere.model.I_C_City)MTable.get(getCtx(), org.compiere.model.I_C_City.Table_Name)
			.getPO(getC_City_ID(), get_TrxName());	}

	/** Set City.
		@param C_City_ID 
		City
	  */
	public void setC_City_ID (int C_City_ID)
	{
		if (C_City_ID < 1) 
			set_Value (COLUMNNAME_C_City_ID, null);
		else 
			set_Value (COLUMNNAME_C_City_ID, Integer.valueOf(C_City_ID));
	}

	/** Get City.
		@return City
	  */
	public int getC_City_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_City_ID);
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
			set_Value (COLUMNNAME_C_Order_ID, null);
		else 
			set_Value (COLUMNNAME_C_Order_ID, Integer.valueOf(C_Order_ID));
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

	public org.compiere.model.I_C_Region getC_Region() throws RuntimeException
    {
		return (org.compiere.model.I_C_Region)MTable.get(getCtx(), org.compiere.model.I_C_Region.Table_Name)
			.getPO(getC_Region_ID(), get_TrxName());	}

	/** Set Region.
		@param C_Region_ID 
		Identifies a geographical Region
	  */
	public void setC_Region_ID (int C_Region_ID)
	{
		if (C_Region_ID < 1) 
			set_Value (COLUMNNAME_C_Region_ID, null);
		else 
			set_Value (COLUMNNAME_C_Region_ID, Integer.valueOf(C_Region_ID));
	}

	/** Get Region.
		@return Identifies a geographical Region
	  */
	public int getC_Region_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_Region_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Date Delivered.
		@param DateDelivered 
		Date when the product was delivered
	  */
	public void setDateDelivered (Timestamp DateDelivered)
	{
		set_Value (COLUMNNAME_DateDelivered, DateDelivered);
	}

	/** Get Date Delivered.
		@return Date when the product was delivered
	  */
	public Timestamp getDateDelivered () 
	{
		return (Timestamp)get_Value(COLUMNNAME_DateDelivered);
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

	public org.compiere.model.I_C_BPartner_Location getLBR_BP_PickupLocation() throws RuntimeException
    {
		return (org.compiere.model.I_C_BPartner_Location)MTable.get(getCtx(), org.compiere.model.I_C_BPartner_Location.Table_Name)
			.getPO(getLBR_BP_PickupLocation_ID(), get_TrxName());	}

	/** Set Partner Location.
		@param LBR_BP_PickupLocation_ID 
		Identifies the (Pickup) address for this Business Partner
	  */
	public void setLBR_BP_PickupLocation_ID (int LBR_BP_PickupLocation_ID)
	{
		if (LBR_BP_PickupLocation_ID < 1) 
			set_Value (COLUMNNAME_LBR_BP_PickupLocation_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_BP_PickupLocation_ID, Integer.valueOf(LBR_BP_PickupLocation_ID));
	}

	/** Get Partner Location.
		@return Identifies the (Pickup) address for this Business Partner
	  */
	public int getLBR_BP_PickupLocation_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_BP_PickupLocation_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.compiere.model.I_C_BPartner_Location getLBR_BP_ShipLocation() throws RuntimeException
    {
		return (org.compiere.model.I_C_BPartner_Location)MTable.get(getCtx(), org.compiere.model.I_C_BPartner_Location.Table_Name)
			.getPO(getLBR_BP_ShipLocation_ID(), get_TrxName());	}

	/** Set Partner Location.
		@param LBR_BP_ShipLocation_ID 
		Identifies the (ship to) address for this Business Partner
	  */
	public void setLBR_BP_ShipLocation_ID (int LBR_BP_ShipLocation_ID)
	{
		if (LBR_BP_ShipLocation_ID < 1) 
			set_Value (COLUMNNAME_LBR_BP_ShipLocation_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_BP_ShipLocation_ID, Integer.valueOf(LBR_BP_ShipLocation_ID));
	}

	/** Get Partner Location.
		@return Identifies the (ship to) address for this Business Partner
	  */
	public int getLBR_BP_ShipLocation_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_BP_ShipLocation_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Contingency Date.
		@param LBR_ContingencyDate Contingency Date	  */
	public void setLBR_ContingencyDate (Timestamp LBR_ContingencyDate)
	{
		set_Value (COLUMNNAME_LBR_ContingencyDate, LBR_ContingencyDate);
	}

	/** Get Contingency Date.
		@return Contingency Date	  */
	public Timestamp getLBR_ContingencyDate () 
	{
		return (Timestamp)get_Value(COLUMNNAME_LBR_ContingencyDate);
	}

	/** Set Contingency Reason.
		@param LBR_ContingencyReason Contingency Reason	  */
	public void setLBR_ContingencyReason (String LBR_ContingencyReason)
	{
		set_Value (COLUMNNAME_LBR_ContingencyReason, LBR_ContingencyReason);
	}

	/** Get Contingency Reason.
		@return Contingency Reason	  */
	public String getLBR_ContingencyReason () 
	{
		return (String)get_Value(COLUMNNAME_LBR_ContingencyReason);
	}

	/** NF-e Normal = 1 */
	public static final String LBR_FINNFE_NF_ENormal = "1";
	/** NF-e Complementar = 2 */
	public static final String LBR_FINNFE_NF_EComplementar = "2";
	/** NF-e de Ajuste = 3 */
	public static final String LBR_FINNFE_NF_EDeAjuste = "3";
	/** Devolucao/Retorno = 4 */
	public static final String LBR_FINNFE_DevolucaoRetorno = "4";
	/** Set NFe Issue Goal.
		@param LBR_FinNFe NFe Issue Goal	  */
	public void setLBR_FinNFe (String LBR_FinNFe)
	{

		set_Value (COLUMNNAME_LBR_FinNFe, LBR_FinNFe);
	}

	/** Get NFe Issue Goal.
		@return NFe Issue Goal	  */
	public String getLBR_FinNFe () 
	{
		return (String)get_Value(COLUMNNAME_LBR_FinNFe);
	}

	/** Operacao Interna = 1 */
	public static final String LBR_NFE_DESTINATIONTYPE_OperacaoInterna = "1";
	/** Operacao Interestadual = 2 */
	public static final String LBR_NFE_DESTINATIONTYPE_OperacaoInterestadual = "2";
	/** Operacao com Exterior = 3 */
	public static final String LBR_NFE_DESTINATIONTYPE_OperacaoComExterior = "3";
	/** Set NFe Destination Type.
		@param LBR_NFE_DestinationType NFe Destination Type	  */
	public void setLBR_NFE_DestinationType (String LBR_NFE_DestinationType)
	{

		set_Value (COLUMNNAME_LBR_NFE_DestinationType, LBR_NFE_DestinationType);
	}

	/** Get NFe Destination Type.
		@return NFe Destination Type	  */
	public String getLBR_NFE_DestinationType () 
	{
		return (String)get_Value(COLUMNNAME_LBR_NFE_DestinationType);
	}

	/** Set NFe ID.
		@param LBR_NFeID NFe ID	  */
	public void setLBR_NFeID (String LBR_NFeID)
	{
		set_Value (COLUMNNAME_LBR_NFeID, LBR_NFeID);
	}

	/** Get NFe ID.
		@return NFe ID	  */
	public String getLBR_NFeID () 
	{
		return (String)get_Value(COLUMNNAME_LBR_NFeID);
	}

	/** No = 0 */
	public static final String LBR_NFEINDFINAL_No = "0";
	/** End Consumer = 1 */
	public static final String LBR_NFEINDFINAL_EndConsumer = "1";
	/** Set Is End User.
		@param LBR_NFeIndFinal Is End User	  */
	public void setLBR_NFeIndFinal (String LBR_NFeIndFinal)
	{

		set_Value (COLUMNNAME_LBR_NFeIndFinal, LBR_NFeIndFinal);
	}

	/** Get Is End User.
		@return Is End User	  */
	public String getLBR_NFeIndFinal () 
	{
		return (String)get_Value(COLUMNNAME_LBR_NFeIndFinal);
	}

	/** Nao se aplica = 0 */
	public static final String LBR_NFEINDPRES_NaoSeAplica = "0";
	/** Operacao presencial = 1 */
	public static final String LBR_NFEINDPRES_OperacaoPresencial = "1";
	/** Internet = 2 */
	public static final String LBR_NFEINDPRES_Internet = "2";
	/** Teleatendimento = 3 */
	public static final String LBR_NFEINDPRES_Teleatendimento = "3";
	/** NFC-e com entrega em domicilio = 4 */
	public static final String LBR_NFEINDPRES_NFC_EComEntregaEmDomicilio = "4";
	/** Operacao nao presencial = 9 */
	public static final String LBR_NFEINDPRES_OperacaoNaoPresencial = "9";
	/** Set Face-to-Face Indicator.
		@param LBR_NFeIndPres Face-to-Face Indicator	  */
	public void setLBR_NFeIndPres (String LBR_NFeIndPres)
	{

		set_Value (COLUMNNAME_LBR_NFeIndPres, LBR_NFeIndPres);
	}

	/** Get Face-to-Face Indicator.
		@return Face-to-Face Indicator	  */
	public String getLBR_NFeIndPres () 
	{
		return (String)get_Value(COLUMNNAME_LBR_NFeIndPres);
	}

	/** 55 - NF-e = 55 */
	public static final String LBR_NFEMODEL_55_NF_E = "55";
	/** Set NF Model.
		@param LBR_NFeModel NF Model	  */
	public void setLBR_NFeModel (String LBR_NFeModel)
	{

		set_Value (COLUMNNAME_LBR_NFeModel, LBR_NFeModel);
	}

	/** Get NF Model.
		@return NF Model	  */
	public String getLBR_NFeModel () 
	{
		return (String)get_Value(COLUMNNAME_LBR_NFeModel);
	}

	/** Set NFe Nature of Operation.
		@param LBR_NFeNatOp NFe Nature of Operation	  */
	public void setLBR_NFeNatOp (String LBR_NFeNatOp)
	{
		set_Value (COLUMNNAME_LBR_NFeNatOp, LBR_NFeNatOp);
	}

	/** Get NFe Nature of Operation.
		@return NFe Nature of Operation	  */
	public String getLBR_NFeNatOp () 
	{
		return (String)get_Value(COLUMNNAME_LBR_NFeNatOp);
	}

	/** In = 0 */
	public static final String LBR_NFE_OPERATIONTYPE_In = "0";
	/** Out = 1 */
	public static final String LBR_NFE_OPERATIONTYPE_Out = "1";
	/** Set NFe Operation Type.
		@param LBR_NFE_OperationType NFe Operation Type	  */
	public void setLBR_NFE_OperationType (String LBR_NFE_OperationType)
	{

		set_Value (COLUMNNAME_LBR_NFE_OperationType, LBR_NFE_OperationType);
	}

	/** Get NFe Operation Type.
		@return NFe Operation Type	  */
	public String getLBR_NFE_OperationType () 
	{
		return (String)get_Value(COLUMNNAME_LBR_NFE_OperationType);
	}

	/** Set NF Serie.
		@param LBR_NFeSerie NF Serie	  */
	public void setLBR_NFeSerie (String LBR_NFeSerie)
	{
		set_Value (COLUMNNAME_LBR_NFeSerie, LBR_NFeSerie);
	}

	/** Get NF Serie.
		@return NF Serie	  */
	public String getLBR_NFeSerie () 
	{
		return (String)get_Value(COLUMNNAME_LBR_NFeSerie);
	}

	/** 100 - Autorizado o uso da NF-e = 100 */
	public static final String LBR_NFESTATUS_100_AutorizadoOUsoDaNF_E = "100";
	/** Set NFe Status.
		@param LBR_NFeStatus NFe Status	  */
	public void setLBR_NFeStatus (String LBR_NFeStatus)
	{

		set_Value (COLUMNNAME_LBR_NFeStatus, LBR_NFeStatus);
	}

	/** Get NFe Status.
		@return NFe Status	  */
	public String getLBR_NFeStatus () 
	{
		return (String)get_Value(COLUMNNAME_LBR_NFeStatus);
	}

	/** Normal = 1 */
	public static final String LBR_NFETPEMIS_Normal = "1";
	/** Set NFe Issue Type.
		@param LBR_NFeTpEmis NFe Issue Type	  */
	public void setLBR_NFeTpEmis (String LBR_NFeTpEmis)
	{

		set_Value (COLUMNNAME_LBR_NFeTpEmis, LBR_NFeTpEmis);
	}

	/** Get NFe Issue Type.
		@return NFe Issue Type	  */
	public String getLBR_NFeTpEmis () 
	{
		return (String)get_Value(COLUMNNAME_LBR_NFeTpEmis);
	}

	/** Set Brazilian Fiscal Invoice (Nota Fiscal).
		@param LBR_NotaFiscal_ID 
		Brazilian Fiscal Invoice (Nota Fiscal) Identifier
	  */
	public void setLBR_NotaFiscal_ID (int LBR_NotaFiscal_ID)
	{
		if (LBR_NotaFiscal_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_NotaFiscal_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_NotaFiscal_ID, Integer.valueOf(LBR_NotaFiscal_ID));
	}

	/** Get Brazilian Fiscal Invoice (Nota Fiscal).
		@return Brazilian Fiscal Invoice (Nota Fiscal) Identifier
	  */
	public int getLBR_NotaFiscal_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_NotaFiscal_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Brazilian Fiscal Invoice (Nota Fiscal).
		@param LBR_NotaFiscal_UU 
		Brazilian Fiscal Invoice (Nota Fiscal) Identifier
	  */
	public void setLBR_NotaFiscal_UU (String LBR_NotaFiscal_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_NotaFiscal_UU, LBR_NotaFiscal_UU);
	}

	/** Get Brazilian Fiscal Invoice (Nota Fiscal).
		@return Brazilian Fiscal Invoice (Nota Fiscal) Identifier
	  */
	public String getLBR_NotaFiscal_UU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_NotaFiscal_UU);
	}

	public org.compiere.model.I_M_RMA getM_RMA() throws RuntimeException
    {
		return (org.compiere.model.I_M_RMA)MTable.get(getCtx(), org.compiere.model.I_M_RMA.Table_Name)
			.getPO(getM_RMA_ID(), get_TrxName());	}

	/** Set RMA.
		@param M_RMA_ID 
		Return Material Authorization
	  */
	public void setM_RMA_ID (int M_RMA_ID)
	{
		if (M_RMA_ID < 1) 
			set_Value (COLUMNNAME_M_RMA_ID, null);
		else 
			set_Value (COLUMNNAME_M_RMA_ID, Integer.valueOf(M_RMA_ID));
	}

	/** Get RMA.
		@return Return Material Authorization
	  */
	public int getM_RMA_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_M_RMA_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Pagamento a vista = 0 */
	public static final String PAYMENTRULE_PagamentoAVista = "0";
	/** Pagamento a prazo = 1 */
	public static final String PAYMENTRULE_PagamentoAPrazo = "1";
	/** Outros = 2 */
	public static final String PAYMENTRULE_Outros = "2";
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

	/** Set Total Lines.
		@param TotalLines 
		Total of all document lines
	  */
	public void setTotalLines (BigDecimal TotalLines)
	{
		set_Value (COLUMNNAME_TotalLines, TotalLines);
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

	/** Set Version No.
		@param VersionNo 
		Version Number
	  */
	public void setVersionNo (String VersionNo)
	{
		set_Value (COLUMNNAME_VersionNo, VersionNo);
	}

	/** Get Version No.
		@return Version Number
	  */
	public String getVersionNo () 
	{
		return (String)get_Value(COLUMNNAME_VersionNo);
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
	
	/** Set Fiscal Info.
	@param LBR_FiscalInfo 
	Fiscal Information
	  */
	public void setLBR_FiscalInfo (String LBR_FiscalInfo)
	{
		set_Value (COLUMNNAME_LBR_FiscalInfo, LBR_FiscalInfo);
	}
	
	/** Get Fiscal Info.
		@return Fiscal Information
	  */
	public String getLBR_FiscalInfo () 
	{
		return (String)get_Value(COLUMNNAME_LBR_FiscalInfo);
	}
	
	/** Set Tax Payer Info.
	@param LBR_TaxPayerInfo 
	Tax Payer Information
	  */
	public void setLBR_TaxPayerInfo (String LBR_TaxPayerInfo)
	{
		set_Value (COLUMNNAME_LBR_TaxPayerInfo, LBR_TaxPayerInfo);
	}
	
	/** Get Tax Payer Info.
		@return Tax Payer Information
	  */
	public String getLBR_TaxPayerInfo () 
	{
		return (String)get_Value(COLUMNNAME_LBR_TaxPayerInfo);
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
	
	public org.compiere.model.I_C_BPartner getLBR_BP_Ship() throws RuntimeException
    {
		return (org.compiere.model.I_C_BPartner)MTable.get(getCtx(), org.compiere.model.I_C_BPartner.Table_Name)
			.getPO(getLBR_BP_Ship_ID(), get_TrxName());	}

	/** Set Business Partner (Ship).
		@param LBR_BP_Ship_ID 
		Identifies a Business Partner
	  */
	public void setLBR_BP_Ship_ID (int LBR_BP_Ship_ID)
	{
		if (LBR_BP_Ship_ID < 1) 
			set_Value (COLUMNNAME_LBR_BP_Ship_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_BP_Ship_ID, Integer.valueOf(LBR_BP_Ship_ID));
	}

	/** Get Business Partner (Ship).
		@return Identifies a Business Partner
	  */
	public int getLBR_BP_Ship_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_BP_Ship_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}
	
	public org.compiere.model.I_C_BPartner getLBR_BP_Pickup() throws RuntimeException
    {
		return (org.compiere.model.I_C_BPartner)MTable.get(getCtx(), org.compiere.model.I_C_BPartner.Table_Name)
			.getPO(getLBR_BP_Pickup_ID(), get_TrxName());	}

	/** Set Business Partner (Pickup).
		@param LBR_BP_Pickup_ID 
		Identifies a Business Partner
	  */
	public void setLBR_BP_Pickup_ID (int LBR_BP_Pickup_ID)
	{
		if (LBR_BP_Pickup_ID < 1) 
			set_Value (COLUMNNAME_LBR_BP_Pickup_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_BP_Pickup_ID, Integer.valueOf(LBR_BP_Pickup_ID));
	}

	/** Get Business Partner (Pickup).
		@return Identifies a Business Partner
	  */
	public int getLBR_BP_Pickup_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_BP_Pickup_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}
	
	/** Set DigestValue.
	@param LBR_DigestValue 
	Identifies a DigestValue
	  */
	public void setLBR_DigestValue (String LBR_DigestValue)
	{
		set_Value (COLUMNNAME_LBR_DigestValue, LBR_DigestValue);
	}
	
	/** Get DigestValue.
		@return Identifies a DigestValue
	  */
	public String getLBR_DigestValue () 
	{
		return (String)get_Value(COLUMNNAME_LBR_DigestValue);
	}
	
	/** Set NF-e Lot Sending Protocol.
	@param LBR_LotSendingProt 
	Indicates the protocol of the sending process to Sefaz
	  */
	public void setLBR_LotSendingProt (String LBR_LotSendingProt)
	{
		set_Value (COLUMNNAME_LBR_LotSendingProt, LBR_LotSendingProt);
	}
	
	/** Get NF-e Lot Sending Protocol.
		@return Indicates the protocol of the sending process to Sefaz
	  */
	public String getLBR_LotSendingProt () 
	{
		return (String)get_Value(COLUMNNAME_LBR_LotSendingProt);
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
}