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
package org.idempierelbr.base.model;

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.Properties;
import org.compiere.model.*;
import org.compiere.util.Env;
import org.compiere.util.KeyNamePair;

/** Generated Model for LBR_RTCFiscoPayment
 *  @author iDempiere (generated)
 *  @version Release 13 - $Id$ */
@org.adempiere.base.Model(table="LBR_RTCFiscoPayment")
public class X_LBR_RTCFiscoPayment extends PO implements I_LBR_RTCFiscoPayment, I_Persistent
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20260924L;

    /** Standard Constructor */
    public X_LBR_RTCFiscoPayment (Properties ctx, int LBR_RTCFiscoPayment_ID, String trxName)
    {
      super (ctx, LBR_RTCFiscoPayment_ID, trxName);
      /** if (LBR_RTCFiscoPayment_ID == 0)
        {
			setLBR_CNPJBase (null);
			setLBR_DARFNo (null);
			setLBR_DateCollection (new Timestamp( System.currentTimeMillis() ));
			setLBR_RTCFiscoPayment_ID (0);
			setLBR_RTCFiscoService (null);
			setLBR_RTCTaxType (null);
        } */
    }

    /** Standard Constructor */
    public X_LBR_RTCFiscoPayment (Properties ctx, int LBR_RTCFiscoPayment_ID, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_RTCFiscoPayment_ID, trxName, virtualColumns);
      /** if (LBR_RTCFiscoPayment_ID == 0)
        {
			setLBR_CNPJBase (null);
			setLBR_DARFNo (null);
			setLBR_DateCollection (new Timestamp( System.currentTimeMillis() ));
			setLBR_RTCFiscoPayment_ID (0);
			setLBR_RTCFiscoService (null);
			setLBR_RTCTaxType (null);
        } */
    }

    /** Standard Constructor */
    public X_LBR_RTCFiscoPayment (Properties ctx, String LBR_RTCFiscoPayment_UU, String trxName)
    {
      super (ctx, LBR_RTCFiscoPayment_UU, trxName);
      /** if (LBR_RTCFiscoPayment_UU == null)
        {
			setLBR_CNPJBase (null);
			setLBR_DARFNo (null);
			setLBR_DateCollection (new Timestamp( System.currentTimeMillis() ));
			setLBR_RTCFiscoPayment_ID (0);
			setLBR_RTCFiscoService (null);
			setLBR_RTCTaxType (null);
        } */
    }

    /** Standard Constructor */
    public X_LBR_RTCFiscoPayment (Properties ctx, String LBR_RTCFiscoPayment_UU, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_RTCFiscoPayment_UU, trxName, virtualColumns);
      /** if (LBR_RTCFiscoPayment_UU == null)
        {
			setLBR_CNPJBase (null);
			setLBR_DARFNo (null);
			setLBR_DateCollection (new Timestamp( System.currentTimeMillis() ));
			setLBR_RTCFiscoPayment_ID (0);
			setLBR_RTCFiscoService (null);
			setLBR_RTCTaxType (null);
        } */
    }

    /** Load Constructor */
    public X_LBR_RTCFiscoPayment (Properties ctx, ResultSet rs, String trxName)
    {
      super (ctx, rs, trxName);
    }

    /** AccessLevel
      * @return 2 - Client
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
      StringBuilder sb = new StringBuilder ("X_LBR_RTCFiscoPayment[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set CNPJ Base.
		@param LBR_CNPJBase CNPJ Base
	*/
	public void setLBR_CNPJBase (String LBR_CNPJBase)
	{
		set_Value (COLUMNNAME_LBR_CNPJBase, LBR_CNPJBase);
	}

	/** Get CNPJ Base.
		@return CNPJ Base	  */
	public String getLBR_CNPJBase()
	{
		return (String)get_Value(COLUMNNAME_LBR_CNPJBase);
	}

	/** Set Número do DARF.
		@param LBR_DARFNo Número do DARF
	*/
	public void setLBR_DARFNo (String LBR_DARFNo)
	{
		set_Value (COLUMNNAME_LBR_DARFNo, LBR_DARFNo);
	}

	/** Get Número do DARF.
		@return Número do DARF	  */
	public String getLBR_DARFNo()
	{
		return (String)get_Value(COLUMNNAME_LBR_DARFNo);
	}

    /** Get Record ID/ColumnName
        @return ID/ColumnName pair
      */
    public KeyNamePair getKeyNamePair()
    {
        return new KeyNamePair(get_ID(), getLBR_DARFNo());
    }

	/** Set Data de Arrecadação.
		@param LBR_DateCollection Data de Arrecadação
	*/
	public void setLBR_DateCollection (Timestamp LBR_DateCollection)
	{
		set_Value (COLUMNNAME_LBR_DateCollection, LBR_DateCollection);
	}

	/** Get Data de Arrecadação.
		@return Data de Arrecadação	  */
	public Timestamp getLBR_DateCollection()
	{
		return (Timestamp)get_Value(COLUMNNAME_LBR_DateCollection);
	}

	/** Set NI (CNPJ/CPF).
		@param LBR_NI NI (CNPJ/CPF)
	*/
	public void setLBR_NI (String LBR_NI)
	{
		set_Value (COLUMNNAME_LBR_NI, LBR_NI);
	}

	/** Get NI (CNPJ/CPF).
		@return NI (CNPJ/CPF)	  */
	public String getLBR_NI()
	{
		return (String)get_Value(COLUMNNAME_LBR_NI);
	}

	/** Set Tipo de Pagamento.
		@param LBR_PaymentType Tipo de Pagamento
	*/
	public void setLBR_PaymentType (int LBR_PaymentType)
	{
		set_Value (COLUMNNAME_LBR_PaymentType, Integer.valueOf(LBR_PaymentType));
	}

	/** Get Tipo de Pagamento.
		@return Tipo de Pagamento	  */
	public int getLBR_PaymentType()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_PaymentType);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Pagamento de IBS/CBS (RTC/Fisco).
		@param LBR_RTCFiscoPayment_ID Pagamento de IBS/CBS (RTC/Fisco)
	*/
	public void setLBR_RTCFiscoPayment_ID (int LBR_RTCFiscoPayment_ID)
	{
		if (LBR_RTCFiscoPayment_ID < 1)
			set_ValueNoCheck (COLUMNNAME_LBR_RTCFiscoPayment_ID, null);
		else
			set_ValueNoCheck (COLUMNNAME_LBR_RTCFiscoPayment_ID, Integer.valueOf(LBR_RTCFiscoPayment_ID));
	}

	/** Get Pagamento de IBS/CBS (RTC/Fisco).
		@return Pagamento de IBS/CBS (RTC/Fisco)	  */
	public int getLBR_RTCFiscoPayment_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_RTCFiscoPayment_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_RTCFiscoPayment_UU.
		@param LBR_RTCFiscoPayment_UU LBR_RTCFiscoPayment_UU
	*/
	public void setLBR_RTCFiscoPayment_UU (String LBR_RTCFiscoPayment_UU)
	{
		set_Value (COLUMNNAME_LBR_RTCFiscoPayment_UU, LBR_RTCFiscoPayment_UU);
	}

	/** Get LBR_RTCFiscoPayment_UU.
		@return LBR_RTCFiscoPayment_UU	  */
	public String getLBR_RTCFiscoPayment_UU()
	{
		return (String)get_Value(COLUMNNAME_LBR_RTCFiscoPayment_UU);
	}

	@Deprecated(since="13") // use better methods with cache
	public I_LBR_RTCFiscoRequest getLBR_RTCFiscoRequest() throws RuntimeException
	{
		return (I_LBR_RTCFiscoRequest)MTable.get(getCtx(), I_LBR_RTCFiscoRequest.Table_ID)
			.getPO(getLBR_RTCFiscoRequest_ID(), get_TrxName());
	}

	/** Set Request (RTC/Fisco).
		@param LBR_RTCFiscoRequest_ID Request (RTC/Fisco)
	*/
	public void setLBR_RTCFiscoRequest_ID (int LBR_RTCFiscoRequest_ID)
	{
		if (LBR_RTCFiscoRequest_ID < 1)
			set_Value (COLUMNNAME_LBR_RTCFiscoRequest_ID, null);
		else
			set_Value (COLUMNNAME_LBR_RTCFiscoRequest_ID, Integer.valueOf(LBR_RTCFiscoRequest_ID));
	}

	/** Get Request (RTC/Fisco).
		@return Request (RTC/Fisco)	  */
	public int getLBR_RTCFiscoRequest_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_RTCFiscoRequest_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** LBR_RTCFiscoService AD_Reference_ID=800120 */
	public static final int LBR_RTCFISCOSERVICE_AD_Reference_ID=800120;
	/** Créditos = CRE */
	public static final String LBR_RTCFISCOSERVICE_Créditos = "CRE";
	/** Débitos = DEB */
	public static final String LBR_RTCFISCOSERVICE_Débitos = "DEB";
	/** Pagamentos = PAG */
	public static final String LBR_RTCFISCOSERVICE_Pagamentos = "PAG";
	/** Recolhimentos = REC */
	public static final String LBR_RTCFISCOSERVICE_Recolhimentos = "REC";
	/** Set Serviço.
		@param LBR_RTCFiscoService Serviço
	*/
	public void setLBR_RTCFiscoService (String LBR_RTCFiscoService)
	{

		set_Value (COLUMNNAME_LBR_RTCFiscoService, LBR_RTCFiscoService);
	}

	/** Get Serviço.
		@return Serviço	  */
	public String getLBR_RTCFiscoService()
	{
		return (String)get_Value(COLUMNNAME_LBR_RTCFiscoService);
	}

	/** LBR_RTCTaxType AD_Reference_ID=800119 */
	public static final int LBR_RTCTAXTYPE_AD_Reference_ID=800119;
	/** CBS = CBS */
	public static final String LBR_RTCTAXTYPE_CBS = "CBS";
	/** IBS = IBS */
	public static final String LBR_RTCTAXTYPE_IBS = "IBS";
	/** Set Tributo.
		@param LBR_RTCTaxType Tributo
	*/
	public void setLBR_RTCTaxType (String LBR_RTCTaxType)
	{

		set_Value (COLUMNNAME_LBR_RTCTaxType, LBR_RTCTaxType);
	}

	/** Get Tributo.
		@return Tributo	  */
	public String getLBR_RTCTaxType()
	{
		return (String)get_Value(COLUMNNAME_LBR_RTCTaxType);
	}

	/** Set Total Amount.
		@param TotalAmt Total Amount
	*/
	public void setTotalAmt (BigDecimal TotalAmt)
	{
		set_ValueNoCheck (COLUMNNAME_TotalAmt, TotalAmt);
	}

	/** Get Total Amount.
		@return Total Amount
	  */
	public BigDecimal getTotalAmt()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_TotalAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}
}