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
package org.kenos.idempiere.lbr.mdfe.model;

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.Properties;
import org.compiere.model.*;
import org.compiere.util.Env;
import org.compiere.util.KeyNamePair;

/** Generated Model for LBR_MDFe
 *  @author iDempiere (generated) 
 *  @version Release 4.1 - $Id$ */
public class X_LBR_MDFe extends PO implements I_LBR_MDFe, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20170626L;

    /** Standard Constructor */
    public X_LBR_MDFe (Properties ctx, int LBR_MDFe_ID, String trxName)
    {
      super (ctx, LBR_MDFe_ID, trxName);
      /** if (LBR_MDFe_ID == 0)
        {
			setC_Region_ID (0);
			setC_SalesRegion_ID (0);
			setDateDoc (new Timestamp( System.currentTimeMillis() ));
// @#Date@
			setDocAction (null);
// CO
			setDocStatus (null);
// DR
			setDocumentNo (null);
			setGrandTotal (Env.ZERO);
			setLBR_CommType (null);
// 1
			setLBR_MDFeIssuerType (null);
// 2
			setLBR_MDFeVehicle_ID (0);
			setLBR_MDFe_ID (0);
			setLBR_ShipmentType (null);
// 1
			setLBR_WeightUOM (null);
// 01
			setProcessed (false);
// N
			setProcessing (false);
// N
			setWeight (Env.ZERO);
			setlbr_NFModel (null);
// 58
			setlbr_NFSerie (null);
// 0
			setlbr_NFeEnv (null);
// 1
        } */
    }

    /** Load Constructor */
    public X_LBR_MDFe (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_MDFe[")
        .append(get_ID()).append("]");
      return sb.toString();
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

	public org.compiere.model.I_C_Region getC_SalesRegion() throws RuntimeException
    {
		return (org.compiere.model.I_C_Region)MTable.get(getCtx(), org.compiere.model.I_C_Region.Table_Name)
			.getPO(getC_SalesRegion_ID(), get_TrxName());	}

	/** Set Sales Region.
		@param C_SalesRegion_ID 
		Sales coverage region
	  */
	public void setC_SalesRegion_ID (int C_SalesRegion_ID)
	{
		if (C_SalesRegion_ID < 1) 
			set_Value (COLUMNNAME_C_SalesRegion_ID, null);
		else 
			set_Value (COLUMNNAME_C_SalesRegion_ID, Integer.valueOf(C_SalesRegion_ID));
	}

	/** Get Sales Region.
		@return Sales coverage region
	  */
	public int getC_SalesRegion_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_SalesRegion_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
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

	/** Set Start Plan.
		@param DateStartPlan 
		Planned Start Date
	  */
	public void setDateStartPlan (Timestamp DateStartPlan)
	{
		set_Value (COLUMNNAME_DateStartPlan, DateStartPlan);
	}

	/** Get Start Plan.
		@return Planned Start Date
	  */
	public Timestamp getDateStartPlan () 
	{
		return (Timestamp)get_Value(COLUMNNAME_DateStartPlan);
	}

	/** Set Transaction Date.
		@param DateTrx 
		Transaction Date
	  */
	public void setDateTrx (Timestamp DateTrx)
	{
		set_Value (COLUMNNAME_DateTrx, DateTrx);
	}

	/** Get Transaction Date.
		@return Transaction Date
	  */
	public Timestamp getDateTrx () 
	{
		return (Timestamp)get_Value(COLUMNNAME_DateTrx);
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

    /** Get Record ID/ColumnName
        @return ID/ColumnName pair
      */
    public KeyNamePair getKeyNamePair() 
    {
        return new KeyNamePair(get_ID(), getDocumentNo());
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

	/** Set CIOT.
		@param LBR_CIOT 
		Codigo Identificador da Operação de Transporte
	  */
	public void setLBR_CIOT (String LBR_CIOT)
	{
		set_Value (COLUMNNAME_LBR_CIOT, LBR_CIOT);
	}

	/** Get CIOT.
		@return Codigo Identificador da Operação de Transporte
	  */
	public String getLBR_CIOT () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CIOT);
	}

	/** Set CSRT Hash.
		@param LBR_CSRTHash 
		CSRT Hash is generated using NFe ID and CSRT Code
	  */
	public void setLBR_CSRTHash (String LBR_CSRTHash)
	{
		set_Value (COLUMNNAME_LBR_CSRTHash, LBR_CSRTHash);
	}

	/** Get CSRT Hash.
		@return CSRT Hash is generated using NFe ID and CSRT Code
	  */
	public String getLBR_CSRTHash () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CSRTHash);
	}

	/** LBR_CommType AD_Reference_ID=1120173 */
	public static final int LBR_COMMTYPE_AD_Reference_ID=1120173;
	/** Regular = 1 */
	public static final String LBR_COMMTYPE_Regular = "1";
	/** Contingent = 2 */
	public static final String LBR_COMMTYPE_Contingent = "2";
	/** Set Communication Type.
		@param LBR_CommType Communication Type	  */
	public void setLBR_CommType (String LBR_CommType)
	{

		set_Value (COLUMNNAME_LBR_CommType, LBR_CommType);
	}

	/** Get Communication Type.
		@return Communication Type	  */
	public String getLBR_CommType () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CommType);
	}

	public org.compiere.model.I_C_Region getLBR_EndRegion() throws RuntimeException
    {
		return (org.compiere.model.I_C_Region)MTable.get(getCtx(), org.compiere.model.I_C_Region.Table_Name)
			.getPO(getLBR_EndRegion_ID(), get_TrxName());	}

	/** Set End Region.
		@param LBR_EndRegion_ID End Region	  */
	public void setLBR_EndRegion_ID (int LBR_EndRegion_ID)
	{
		if (LBR_EndRegion_ID < 1) 
			set_Value (COLUMNNAME_LBR_EndRegion_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_EndRegion_ID, Integer.valueOf(LBR_EndRegion_ID));
	}

	/** Get End Region.
		@return End Region	  */
	public int getLBR_EndRegion_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_EndRegion_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** LBR_GreenChannel AD_Reference_ID=319 */
	public static final int LBR_GREENCHANNEL_AD_Reference_ID=319;
	/** Yes = Y */
	public static final String LBR_GREENCHANNEL_Yes = "Y";
	/** No = N */
	public static final String LBR_GREENCHANNEL_No = "N";
	/** Set Green Channel.
		@param LBR_GreenChannel Green Channel	  */
	public void setLBR_GreenChannel (String LBR_GreenChannel)
	{

		set_Value (COLUMNNAME_LBR_GreenChannel, LBR_GreenChannel);
	}

	/** Get Green Channel.
		@return Green Channel	  */
	public String getLBR_GreenChannel () 
	{
		return (String)get_Value(COLUMNNAME_LBR_GreenChannel);
	}

	/** LBR_MDFeIssuerType AD_Reference_ID=1120171 */
	public static final int LBR_MDFEISSUERTYPE_AD_Reference_ID=1120171;
	/** Shipper Provider = 1 */
	public static final String LBR_MDFEISSUERTYPE_ShipperProvider = "1";
	/** Non-Shipper Provider = 2 */
	public static final String LBR_MDFEISSUERTYPE_Non_ShipperProvider = "2";
	/** Set Issuer Type.
		@param LBR_MDFeIssuerType Issuer Type	  */
	public void setLBR_MDFeIssuerType (String LBR_MDFeIssuerType)
	{

		set_Value (COLUMNNAME_LBR_MDFeIssuerType, LBR_MDFeIssuerType);
	}

	/** Get Issuer Type.
		@return Issuer Type	  */
	public String getLBR_MDFeIssuerType () 
	{
		return (String)get_Value(COLUMNNAME_LBR_MDFeIssuerType);
	}

	public org.kenos.idempiere.lbr.mdfe.model.I_LBR_MDFeVehicle getLBR_MDFeTrailer1() throws RuntimeException
    {
		return (org.kenos.idempiere.lbr.mdfe.model.I_LBR_MDFeVehicle)MTable.get(getCtx(), org.kenos.idempiere.lbr.mdfe.model.I_LBR_MDFeVehicle.Table_Name)
			.getPO(getLBR_MDFeTrailer1_ID(), get_TrxName());	}

	/** Set Vehicle Trailer 1.
		@param LBR_MDFeTrailer1_ID Vehicle Trailer 1	  */
	public void setLBR_MDFeTrailer1_ID (int LBR_MDFeTrailer1_ID)
	{
		if (LBR_MDFeTrailer1_ID < 1) 
			set_Value (COLUMNNAME_LBR_MDFeTrailer1_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_MDFeTrailer1_ID, Integer.valueOf(LBR_MDFeTrailer1_ID));
	}

	/** Get Vehicle Trailer 1.
		@return Vehicle Trailer 1	  */
	public int getLBR_MDFeTrailer1_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_MDFeTrailer1_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.kenos.idempiere.lbr.mdfe.model.I_LBR_MDFeVehicle getLBR_MDFeTrailer2() throws RuntimeException
    {
		return (org.kenos.idempiere.lbr.mdfe.model.I_LBR_MDFeVehicle)MTable.get(getCtx(), org.kenos.idempiere.lbr.mdfe.model.I_LBR_MDFeVehicle.Table_Name)
			.getPO(getLBR_MDFeTrailer2_ID(), get_TrxName());	}

	/** Set Vehicle Trailer 2.
		@param LBR_MDFeTrailer2_ID Vehicle Trailer 2	  */
	public void setLBR_MDFeTrailer2_ID (int LBR_MDFeTrailer2_ID)
	{
		if (LBR_MDFeTrailer2_ID < 1) 
			set_Value (COLUMNNAME_LBR_MDFeTrailer2_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_MDFeTrailer2_ID, Integer.valueOf(LBR_MDFeTrailer2_ID));
	}

	/** Get Vehicle Trailer 2.
		@return Vehicle Trailer 2	  */
	public int getLBR_MDFeTrailer2_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_MDFeTrailer2_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.kenos.idempiere.lbr.mdfe.model.I_LBR_MDFeVehicle getLBR_MDFeTrailer3() throws RuntimeException
    {
		return (org.kenos.idempiere.lbr.mdfe.model.I_LBR_MDFeVehicle)MTable.get(getCtx(), org.kenos.idempiere.lbr.mdfe.model.I_LBR_MDFeVehicle.Table_Name)
			.getPO(getLBR_MDFeTrailer3_ID(), get_TrxName());	}

	/** Set Vehicle Trailer 3.
		@param LBR_MDFeTrailer3_ID Vehicle Trailer 3	  */
	public void setLBR_MDFeTrailer3_ID (int LBR_MDFeTrailer3_ID)
	{
		if (LBR_MDFeTrailer3_ID < 1) 
			set_Value (COLUMNNAME_LBR_MDFeTrailer3_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_MDFeTrailer3_ID, Integer.valueOf(LBR_MDFeTrailer3_ID));
	}

	/** Get Vehicle Trailer 3.
		@return Vehicle Trailer 3	  */
	public int getLBR_MDFeTrailer3_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_MDFeTrailer3_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.kenos.idempiere.lbr.mdfe.model.I_LBR_MDFeVehicle getLBR_MDFeVehicle() throws RuntimeException
    {
		return (org.kenos.idempiere.lbr.mdfe.model.I_LBR_MDFeVehicle)MTable.get(getCtx(), org.kenos.idempiere.lbr.mdfe.model.I_LBR_MDFeVehicle.Table_Name)
			.getPO(getLBR_MDFeVehicle_ID(), get_TrxName());	}

	/** Set MDFe Vehicle.
		@param LBR_MDFeVehicle_ID MDFe Vehicle	  */
	public void setLBR_MDFeVehicle_ID (int LBR_MDFeVehicle_ID)
	{
		if (LBR_MDFeVehicle_ID < 1) 
			set_Value (COLUMNNAME_LBR_MDFeVehicle_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_MDFeVehicle_ID, Integer.valueOf(LBR_MDFeVehicle_ID));
	}

	/** Get MDFe Vehicle.
		@return MDFe Vehicle	  */
	public int getLBR_MDFeVehicle_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_MDFeVehicle_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set MDF-e.
		@param LBR_MDFe_ID 
		Manifesto Eletrônico de Documentos Fiscais
	  */
	public void setLBR_MDFe_ID (int LBR_MDFe_ID)
	{
		if (LBR_MDFe_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_MDFe_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_MDFe_ID, Integer.valueOf(LBR_MDFe_ID));
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

	/** LBR_PostLoading AD_Reference_ID=319 */
	public static final int LBR_POSTLOADING_AD_Reference_ID=319;
	/** Yes = Y */
	public static final String LBR_POSTLOADING_Yes = "Y";
	/** No = N */
	public static final String LBR_POSTLOADING_No = "N";
	/** Set Post Loading.
		@param LBR_PostLoading Post Loading	  */
	public void setLBR_PostLoading (String LBR_PostLoading)
	{

		set_Value (COLUMNNAME_LBR_PostLoading, LBR_PostLoading);
	}

	/** Get Post Loading.
		@return Post Loading	  */
	public String getLBR_PostLoading () 
	{
		return (String)get_Value(COLUMNNAME_LBR_PostLoading);
	}

	/** Set RNTRC.
		@param LBR_RNTRC 
		Registro Nacional dos Transportadores Rodoviários de Carga
	  */
	public void setLBR_RNTRC (String LBR_RNTRC)
	{
		set_Value (COLUMNNAME_LBR_RNTRC, LBR_RNTRC);
	}

	/** Get RNTRC.
		@return Registro Nacional dos Transportadores Rodoviários de Carga
	  */
	public String getLBR_RNTRC () 
	{
		return (String)get_Value(COLUMNNAME_LBR_RNTRC);
	}

	/** LBR_ShipmentType AD_Reference_ID=1120172 */
	public static final int LBR_SHIPMENTTYPE_AD_Reference_ID=1120172;
	/** Road = 1 */
	public static final String LBR_SHIPMENTTYPE_Road = "1";
	/** Air = 2 */
	public static final String LBR_SHIPMENTTYPE_Air = "2";
	/** Marine = 3 */
	public static final String LBR_SHIPMENTTYPE_Marine = "3";
	/** Train = 4 */
	public static final String LBR_SHIPMENTTYPE_Train = "4";
	/** Set Shipment Type.
		@param LBR_ShipmentType Shipment Type	  */
	public void setLBR_ShipmentType (String LBR_ShipmentType)
	{

		set_Value (COLUMNNAME_LBR_ShipmentType, LBR_ShipmentType);
	}

	/** Get Shipment Type.
		@return Shipment Type	  */
	public String getLBR_ShipmentType () 
	{
		return (String)get_Value(COLUMNNAME_LBR_ShipmentType);
	}

	/** LBR_WeightUOM AD_Reference_ID=1120174 */
	public static final int LBR_WEIGHTUOM_AD_Reference_ID=1120174;
	/** Kg = 01 */
	public static final String LBR_WEIGHTUOM_Kg = "01";
	/** Ton = 02 */
	public static final String LBR_WEIGHTUOM_Ton = "02";
	/** Set UOM.
		@param LBR_WeightUOM UOM	  */
	public void setLBR_WeightUOM (String LBR_WeightUOM)
	{

		set_Value (COLUMNNAME_LBR_WeightUOM, LBR_WeightUOM);
	}

	/** Get UOM.
		@return UOM	  */
	public String getLBR_WeightUOM () 
	{
		return (String)get_Value(COLUMNNAME_LBR_WeightUOM);
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

	/** Set Weight.
		@param Weight 
		Weight of a product
	  */
	public void setWeight (BigDecimal Weight)
	{
		set_Value (COLUMNNAME_Weight, Weight);
	}

	/** Get Weight.
		@return Weight of a product
	  */
	public BigDecimal getWeight () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_Weight);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Digest Value.
		@param lbr_DigestValue Digest Value	  */
	public void setlbr_DigestValue (String lbr_DigestValue)
	{
		set_Value (COLUMNNAME_lbr_DigestValue, lbr_DigestValue);
	}

	/** Get Digest Value.
		@return Digest Value	  */
	public String getlbr_DigestValue () 
	{
		return (String)get_Value(COLUMNNAME_lbr_DigestValue);
	}

	/** Set Motivo do Cancelamento.
		@param lbr_MotivoCancel 
		Motivo do Cancelamento (Entre 15 e 255 caracteres)
	  */
	public void setlbr_MotivoCancel (String lbr_MotivoCancel)
	{
		set_Value (COLUMNNAME_lbr_MotivoCancel, lbr_MotivoCancel);
	}

	/** Get Motivo do Cancelamento.
		@return Motivo do Cancelamento (Entre 15 e 255 caracteres)
	  */
	public String getlbr_MotivoCancel () 
	{
		return (String)get_Value(COLUMNNAME_lbr_MotivoCancel);
	}

	/** Set Nota Fiscal Description.
		@param lbr_NFDescription 
		Description Printed on Nota Fiscal
	  */
	public void setlbr_NFDescription (String lbr_NFDescription)
	{
		set_Value (COLUMNNAME_lbr_NFDescription, lbr_NFDescription);
	}

	/** Get Nota Fiscal Description.
		@return Description Printed on Nota Fiscal
	  */
	public String getlbr_NFDescription () 
	{
		return (String)get_Value(COLUMNNAME_lbr_NFDescription);
	}

	/** Set NF Model.
		@param lbr_NFModel 
		Identifies the model of Nota Fiscal
	  */
	public void setlbr_NFModel (String lbr_NFModel)
	{
		set_Value (COLUMNNAME_lbr_NFModel, lbr_NFModel);
	}

	/** Get NF Model.
		@return Identifies the model of Nota Fiscal
	  */
	public String getlbr_NFModel () 
	{
		return (String)get_Value(COLUMNNAME_lbr_NFModel);
	}

	/** Set NF Serie.
		@param lbr_NFSerie NF Serie	  */
	public void setlbr_NFSerie (String lbr_NFSerie)
	{
		set_Value (COLUMNNAME_lbr_NFSerie, lbr_NFSerie);
	}

	/** Get NF Serie.
		@return NF Serie	  */
	public String getlbr_NFSerie () 
	{
		return (String)get_Value(COLUMNNAME_lbr_NFSerie);
	}

	/** Set NFe Answer Status.
		@param lbr_NFeAnswerStatus 
		Status of Answer NFe
	  */
	public void setlbr_NFeAnswerStatus (String lbr_NFeAnswerStatus)
	{
		set_Value (COLUMNNAME_lbr_NFeAnswerStatus, lbr_NFeAnswerStatus);
	}

	/** Get NFe Answer Status.
		@return Status of Answer NFe
	  */
	public String getlbr_NFeAnswerStatus () 
	{
		return (String)get_Value(COLUMNNAME_lbr_NFeAnswerStatus);
	}

	/** lbr_NFeEnv AD_Reference_ID=1100001 */
	public static final int LBR_NFEENV_AD_Reference_ID=1100001;
	/** Production = 1 */
	public static final String LBR_NFEENV_Production = "1";
	/** Homologation = 2 */
	public static final String LBR_NFEENV_Homologation = "2";
	/** Set NFe Environment.
		@param lbr_NFeEnv NFe Environment	  */
	public void setlbr_NFeEnv (String lbr_NFeEnv)
	{

		set_Value (COLUMNNAME_lbr_NFeEnv, lbr_NFeEnv);
	}

	/** Get NFe Environment.
		@return NFe Environment	  */
	public String getlbr_NFeEnv () 
	{
		return (String)get_Value(COLUMNNAME_lbr_NFeEnv);
	}

	/** Set NFe ID.
		@param lbr_NFeID 
		Identification of NFe
	  */
	public void setlbr_NFeID (String lbr_NFeID)
	{
		set_Value (COLUMNNAME_lbr_NFeID, lbr_NFeID);
	}

	/** Get NFe ID.
		@return Identification of NFe
	  */
	public String getlbr_NFeID () 
	{
		return (String)get_Value(COLUMNNAME_lbr_NFeID);
	}

	/** Set NFe Protocol.
		@param lbr_NFeProt NFe Protocol	  */
	public void setlbr_NFeProt (String lbr_NFeProt)
	{
		set_Value (COLUMNNAME_lbr_NFeProt, lbr_NFeProt);
	}

	/** Get NFe Protocol.
		@return NFe Protocol	  */
	public String getlbr_NFeProt () 
	{
		return (String)get_Value(COLUMNNAME_lbr_NFeProt);
	}

	/** Set Recebimento ID.
		@param lbr_NFeRecID Recebimento ID	  */
	public void setlbr_NFeRecID (String lbr_NFeRecID)
	{
		set_Value (COLUMNNAME_lbr_NFeRecID, lbr_NFeRecID);
	}

	/** Get Recebimento ID.
		@return Recebimento ID	  */
	public String getlbr_NFeRecID () 
	{
		return (String)get_Value(COLUMNNAME_lbr_NFeRecID);
	}

	/** Set NFe Status.
		@param lbr_NFeStatus 
		Status of NFe
	  */
	public void setlbr_NFeStatus (String lbr_NFeStatus)
	{
		set_Value (COLUMNNAME_lbr_NFeStatus, lbr_NFeStatus);
	}

	/** Get NFe Status.
		@return Status of NFe
	  */
	public String getlbr_NFeStatus () 
	{
		return (String)get_Value(COLUMNNAME_lbr_NFeStatus);
	}
}