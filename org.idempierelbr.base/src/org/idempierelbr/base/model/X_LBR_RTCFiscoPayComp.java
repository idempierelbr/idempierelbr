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

/** Generated Model for LBR_RTCFiscoPayComp
 *  @author iDempiere (generated)
 *  @version Release 13 - $Id$ */
@org.adempiere.base.Model(table="LBR_RTCFiscoPayComp")
public class X_LBR_RTCFiscoPayComp extends PO implements I_LBR_RTCFiscoPayComp, I_Persistent
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20260924L;

    /** Standard Constructor */
    public X_LBR_RTCFiscoPayComp (Properties ctx, int LBR_RTCFiscoPayComp_ID, String trxName)
    {
      super (ctx, LBR_RTCFiscoPayComp_ID, trxName);
      /** if (LBR_RTCFiscoPayComp_ID == 0)
        {
			setLBR_RTCFiscoPayComp_ID (0);
			setLBR_RTCFiscoPayment_ID (0);
			setSeqNo (0);
        } */
    }

    /** Standard Constructor */
    public X_LBR_RTCFiscoPayComp (Properties ctx, int LBR_RTCFiscoPayComp_ID, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_RTCFiscoPayComp_ID, trxName, virtualColumns);
      /** if (LBR_RTCFiscoPayComp_ID == 0)
        {
			setLBR_RTCFiscoPayComp_ID (0);
			setLBR_RTCFiscoPayment_ID (0);
			setSeqNo (0);
        } */
    }

    /** Standard Constructor */
    public X_LBR_RTCFiscoPayComp (Properties ctx, String LBR_RTCFiscoPayComp_UU, String trxName)
    {
      super (ctx, LBR_RTCFiscoPayComp_UU, trxName);
      /** if (LBR_RTCFiscoPayComp_UU == null)
        {
			setLBR_RTCFiscoPayComp_ID (0);
			setLBR_RTCFiscoPayment_ID (0);
			setSeqNo (0);
        } */
    }

    /** Standard Constructor */
    public X_LBR_RTCFiscoPayComp (Properties ctx, String LBR_RTCFiscoPayComp_UU, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_RTCFiscoPayComp_UU, trxName, virtualColumns);
      /** if (LBR_RTCFiscoPayComp_UU == null)
        {
			setLBR_RTCFiscoPayComp_ID (0);
			setLBR_RTCFiscoPayment_ID (0);
			setSeqNo (0);
        } */
    }

    /** Load Constructor */
    public X_LBR_RTCFiscoPayComp (Properties ctx, ResultSet rs, String trxName)
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
      StringBuilder sb = new StringBuilder ("X_LBR_RTCFiscoPayComp[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set Due Date.
		@param DueDate Date when the payment is due
	*/
	public void setDueDate (Timestamp DueDate)
	{
		set_Value (COLUMNNAME_DueDate, DueDate);
	}

	/** Get Due Date.
		@return Date when the payment is due
	  */
	public Timestamp getDueDate()
	{
		return (Timestamp)get_Value(COLUMNNAME_DueDate);
	}

	/** Set Chave de Acesso do Documento.
		@param LBR_DFeChave Chave de Acesso do Documento
	*/
	public void setLBR_DFeChave (String LBR_DFeChave)
	{
		set_Value (COLUMNNAME_LBR_DFeChave, LBR_DFeChave);
	}

	/** Get Chave de Acesso do Documento.
		@return Chave de Acesso do Documento	  */
	public String getLBR_DFeChave()
	{
		return (String)get_Value(COLUMNNAME_LBR_DFeChave);
	}

	/** Set Multa.
		@param LBR_FineAmt Multa
	*/
	public void setLBR_FineAmt (BigDecimal LBR_FineAmt)
	{
		set_Value (COLUMNNAME_LBR_FineAmt, LBR_FineAmt);
	}

	/** Get Multa.
		@return Multa	  */
	public BigDecimal getLBR_FineAmt()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_FineAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Juros.
		@param LBR_InterestAmt Juros
	*/
	public void setLBR_InterestAmt (BigDecimal LBR_InterestAmt)
	{
		set_Value (COLUMNNAME_LBR_InterestAmt, LBR_InterestAmt);
	}

	/** Get Juros.
		@return Juros	  */
	public BigDecimal getLBR_InterestAmt()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_InterestAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
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

	/** Set Principal.
		@param LBR_PrincipalAmt Principal
	*/
	public void setLBR_PrincipalAmt (BigDecimal LBR_PrincipalAmt)
	{
		set_Value (COLUMNNAME_LBR_PrincipalAmt, LBR_PrincipalAmt);
	}

	/** Get Principal.
		@return Principal	  */
	public BigDecimal getLBR_PrincipalAmt()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_PrincipalAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	@Deprecated(since="13") // use better methods with cache
	public I_LBR_RTCFiscoApuracao getLBR_RTCFiscoApuracao() throws RuntimeException
	{
		return (I_LBR_RTCFiscoApuracao)MTable.get(getCtx(), I_LBR_RTCFiscoApuracao.Table_ID)
			.getPO(getLBR_RTCFiscoApuracao_ID(), get_TrxName());
	}

	/** Set Apuração de IBS/CBS (RTC/Fisco).
		@param LBR_RTCFiscoApuracao_ID Apuração de IBS/CBS (RTC/Fisco)
	*/
	public void setLBR_RTCFiscoApuracao_ID (int LBR_RTCFiscoApuracao_ID)
	{
		if (LBR_RTCFiscoApuracao_ID < 1)
			set_Value (COLUMNNAME_LBR_RTCFiscoApuracao_ID, null);
		else
			set_Value (COLUMNNAME_LBR_RTCFiscoApuracao_ID, Integer.valueOf(LBR_RTCFiscoApuracao_ID));
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

	/** Set Composição de Pagto de IBS/CBS (RTC/Fisco).
		@param LBR_RTCFiscoPayComp_ID Composição de Pagto de IBS/CBS (RTC/Fisco)
	*/
	public void setLBR_RTCFiscoPayComp_ID (int LBR_RTCFiscoPayComp_ID)
	{
		if (LBR_RTCFiscoPayComp_ID < 1)
			set_ValueNoCheck (COLUMNNAME_LBR_RTCFiscoPayComp_ID, null);
		else
			set_ValueNoCheck (COLUMNNAME_LBR_RTCFiscoPayComp_ID, Integer.valueOf(LBR_RTCFiscoPayComp_ID));
	}

	/** Get Composição de Pagto de IBS/CBS (RTC/Fisco).
		@return Composição de Pagto de IBS/CBS (RTC/Fisco)	  */
	public int getLBR_RTCFiscoPayComp_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_RTCFiscoPayComp_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_RTCFiscoPayComp_UU.
		@param LBR_RTCFiscoPayComp_UU LBR_RTCFiscoPayComp_UU
	*/
	public void setLBR_RTCFiscoPayComp_UU (String LBR_RTCFiscoPayComp_UU)
	{
		set_Value (COLUMNNAME_LBR_RTCFiscoPayComp_UU, LBR_RTCFiscoPayComp_UU);
	}

	/** Get LBR_RTCFiscoPayComp_UU.
		@return LBR_RTCFiscoPayComp_UU	  */
	public String getLBR_RTCFiscoPayComp_UU()
	{
		return (String)get_Value(COLUMNNAME_LBR_RTCFiscoPayComp_UU);
	}

	@Deprecated(since="13") // use better methods with cache
	public I_LBR_RTCFiscoPayment getLBR_RTCFiscoPayment() throws RuntimeException
	{
		return (I_LBR_RTCFiscoPayment)MTable.get(getCtx(), I_LBR_RTCFiscoPayment.Table_ID)
			.getPO(getLBR_RTCFiscoPayment_ID(), get_TrxName());
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

	/** Set Sequence.
		@param SeqNo Method of ordering records; lowest number comes first
	*/
	public void setSeqNo (int SeqNo)
	{
		set_Value (COLUMNNAME_SeqNo, Integer.valueOf(SeqNo));
	}

	/** Get Sequence.
		@return Method of ordering records; lowest number comes first
	  */
	public int getSeqNo()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_SeqNo);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Total Amount.
		@param TotalAmt Total Amount
	*/
	public void setTotalAmt (BigDecimal TotalAmt)
	{
		set_Value (COLUMNNAME_TotalAmt, TotalAmt);
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