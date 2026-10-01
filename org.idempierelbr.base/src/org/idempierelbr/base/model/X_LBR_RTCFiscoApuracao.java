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

/** Generated Model for LBR_RTCFiscoApuracao
 *  @author iDempiere (generated)
 *  @version Release 13 - $Id$ */
@org.adempiere.base.Model(table="LBR_RTCFiscoApuracao")
public class X_LBR_RTCFiscoApuracao extends PO implements I_LBR_RTCFiscoApuracao, I_Persistent
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20260924L;

    /** Standard Constructor */
    public X_LBR_RTCFiscoApuracao (Properties ctx, int LBR_RTCFiscoApuracao_ID, String trxName)
    {
      super (ctx, LBR_RTCFiscoApuracao_ID, trxName);
      /** if (LBR_RTCFiscoApuracao_ID == 0)
        {
			setLBR_CNPJBase (null);
			setLBR_PA (null);
			setLBR_RTCFiscoApuracao_ID (0);
			setLBR_RTCTaxType (null);
        } */
    }

    /** Standard Constructor */
    public X_LBR_RTCFiscoApuracao (Properties ctx, int LBR_RTCFiscoApuracao_ID, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_RTCFiscoApuracao_ID, trxName, virtualColumns);
      /** if (LBR_RTCFiscoApuracao_ID == 0)
        {
			setLBR_CNPJBase (null);
			setLBR_PA (null);
			setLBR_RTCFiscoApuracao_ID (0);
			setLBR_RTCTaxType (null);
        } */
    }

    /** Standard Constructor */
    public X_LBR_RTCFiscoApuracao (Properties ctx, String LBR_RTCFiscoApuracao_UU, String trxName)
    {
      super (ctx, LBR_RTCFiscoApuracao_UU, trxName);
      /** if (LBR_RTCFiscoApuracao_UU == null)
        {
			setLBR_CNPJBase (null);
			setLBR_PA (null);
			setLBR_RTCFiscoApuracao_ID (0);
			setLBR_RTCTaxType (null);
        } */
    }

    /** Standard Constructor */
    public X_LBR_RTCFiscoApuracao (Properties ctx, String LBR_RTCFiscoApuracao_UU, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_RTCFiscoApuracao_UU, trxName, virtualColumns);
      /** if (LBR_RTCFiscoApuracao_UU == null)
        {
			setLBR_CNPJBase (null);
			setLBR_PA (null);
			setLBR_RTCFiscoApuracao_ID (0);
			setLBR_RTCTaxType (null);
        } */
    }

    /** Load Constructor */
    public X_LBR_RTCFiscoApuracao (Properties ctx, ResultSet rs, String trxName)
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
      StringBuilder sb = new StringBuilder ("X_LBR_RTCFiscoApuracao[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	@Deprecated(since="13") // use better methods with cache
	public org.compiere.model.I_C_Period getC_Period() throws RuntimeException
	{
		return (org.compiere.model.I_C_Period)MTable.get(getCtx(), org.compiere.model.I_C_Period.Table_ID)
			.getPO(getC_Period_ID(), get_TrxName());
	}

	/** Set Period.
		@param C_Period_ID Period of the Calendar
	*/
	public void setC_Period_ID (int C_Period_ID)
	{
		if (C_Period_ID < 1)
			set_Value (COLUMNNAME_C_Period_ID, null);
		else
			set_Value (COLUMNNAME_C_Period_ID, Integer.valueOf(C_Period_ID));
	}

	/** Get Period.
		@return Period of the Calendar
	  */
	public int getC_Period_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_Period_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Saldo.
		@param LBR_Balance Saldo
	*/
	public void setLBR_Balance (BigDecimal LBR_Balance)
	{
		set_Value (COLUMNNAME_LBR_Balance, LBR_Balance);
	}

	/** Get Saldo.
		@return Saldo	  */
	public BigDecimal getLBR_Balance()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_Balance);
		if (bd == null)
			 return Env.ZERO;
		return bd;
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

	/** Set Atualizado em (Fisco).
		@param LBR_DateUpdated Atualizado em (Fisco)
	*/
	public void setLBR_DateUpdated (Timestamp LBR_DateUpdated)
	{
		set_Value (COLUMNNAME_LBR_DateUpdated, LBR_DateUpdated);
	}

	/** Get Atualizado em (Fisco).
		@return Atualizado em (Fisco)	  */
	public Timestamp getLBR_DateUpdated()
	{
		return (Timestamp)get_Value(COLUMNNAME_LBR_DateUpdated);
	}

	/** Set Período de Apuração.
		@param LBR_PA Período de Apuração
	*/
	public void setLBR_PA (String LBR_PA)
	{
		set_Value (COLUMNNAME_LBR_PA, LBR_PA);
	}

	/** Get Período de Apuração.
		@return Período de Apuração	  */
	public String getLBR_PA()
	{
		return (String)get_Value(COLUMNNAME_LBR_PA);
	}

    /** Get Record ID/ColumnName
        @return ID/ColumnName pair
      */
    public KeyNamePair getKeyNamePair()
    {
        return new KeyNamePair(get_ID(), getLBR_PA());
    }

	/** Set Apuração de IBS/CBS (RTC/Fisco).
		@param LBR_RTCFiscoApuracao_ID Apuração de IBS/CBS (RTC/Fisco)
	*/
	public void setLBR_RTCFiscoApuracao_ID (int LBR_RTCFiscoApuracao_ID)
	{
		if (LBR_RTCFiscoApuracao_ID < 1)
			set_ValueNoCheck (COLUMNNAME_LBR_RTCFiscoApuracao_ID, null);
		else
			set_ValueNoCheck (COLUMNNAME_LBR_RTCFiscoApuracao_ID, Integer.valueOf(LBR_RTCFiscoApuracao_ID));
	}

	/** Get Apuração de IBS/CBS (RTC/Fisco).
		@return Apuração de IBS/CBS (RTC/Fisco)	  */
	public int getLBR_RTCFiscoApuracao_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_RTCFiscoApuracao_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_RTCFiscoApuracao_UU.
		@param LBR_RTCFiscoApuracao_UU LBR_RTCFiscoApuracao_UU
	*/
	public void setLBR_RTCFiscoApuracao_UU (String LBR_RTCFiscoApuracao_UU)
	{
		set_Value (COLUMNNAME_LBR_RTCFiscoApuracao_UU, LBR_RTCFiscoApuracao_UU);
	}

	/** Get LBR_RTCFiscoApuracao_UU.
		@return LBR_RTCFiscoApuracao_UU	  */
	public String getLBR_RTCFiscoApuracao_UU()
	{
		return (String)get_Value(COLUMNNAME_LBR_RTCFiscoApuracao_UU);
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

	/** Set Total de Crédito.
		@param LBR_TotalCredit Total de Crédito
	*/
	public void setLBR_TotalCredit (BigDecimal LBR_TotalCredit)
	{
		set_Value (COLUMNNAME_LBR_TotalCredit, LBR_TotalCredit);
	}

	/** Get Total de Crédito.
		@return Total de Crédito	  */
	public BigDecimal getLBR_TotalCredit()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_TotalCredit);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Total de Débito.
		@param LBR_TotalDebit Total de Débito
	*/
	public void setLBR_TotalDebit (BigDecimal LBR_TotalDebit)
	{
		set_Value (COLUMNNAME_LBR_TotalDebit, LBR_TotalDebit);
	}

	/** Get Total de Débito.
		@return Total de Débito	  */
	public BigDecimal getLBR_TotalDebit()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_TotalDebit);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Total Pago.
		@param LBR_TotalPaid Total Pago
	*/
	public void setLBR_TotalPaid (BigDecimal LBR_TotalPaid)
	{
		set_Value (COLUMNNAME_LBR_TotalPaid, LBR_TotalPaid);
	}

	/** Get Total Pago.
		@return Total Pago	  */
	public BigDecimal getLBR_TotalPaid()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_TotalPaid);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}
}