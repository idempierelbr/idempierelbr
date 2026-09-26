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

/** Generated Model for LBR_RTCFiscoApurDoc
 *  @author iDempiere (generated)
 *  @version Release 13 - $Id$ */
@org.adempiere.base.Model(table="LBR_RTCFiscoApurDoc")
public class X_LBR_RTCFiscoApurDoc extends PO implements I_LBR_RTCFiscoApurDoc, I_Persistent
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20260924L;

    /** Standard Constructor */
    public X_LBR_RTCFiscoApurDoc (Properties ctx, int LBR_RTCFiscoApurDoc_ID, String trxName)
    {
      super (ctx, LBR_RTCFiscoApurDoc_ID, trxName);
      /** if (LBR_RTCFiscoApurDoc_ID == 0)
        {
			setLBR_DFeChave (null);
			setLBR_Documento (0);
			setLBR_Origem (0);
			setLBR_RTCFiscoApurDoc_ID (0);
			setLBR_RTCFiscoApuracao_ID (0);
			setLBR_RTCFiscoDocType (null);
        } */
    }

    /** Standard Constructor */
    public X_LBR_RTCFiscoApurDoc (Properties ctx, int LBR_RTCFiscoApurDoc_ID, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_RTCFiscoApurDoc_ID, trxName, virtualColumns);
      /** if (LBR_RTCFiscoApurDoc_ID == 0)
        {
			setLBR_DFeChave (null);
			setLBR_Documento (0);
			setLBR_Origem (0);
			setLBR_RTCFiscoApurDoc_ID (0);
			setLBR_RTCFiscoApuracao_ID (0);
			setLBR_RTCFiscoDocType (null);
        } */
    }

    /** Standard Constructor */
    public X_LBR_RTCFiscoApurDoc (Properties ctx, String LBR_RTCFiscoApurDoc_UU, String trxName)
    {
      super (ctx, LBR_RTCFiscoApurDoc_UU, trxName);
      /** if (LBR_RTCFiscoApurDoc_UU == null)
        {
			setLBR_DFeChave (null);
			setLBR_Documento (0);
			setLBR_Origem (0);
			setLBR_RTCFiscoApurDoc_ID (0);
			setLBR_RTCFiscoApuracao_ID (0);
			setLBR_RTCFiscoDocType (null);
        } */
    }

    /** Standard Constructor */
    public X_LBR_RTCFiscoApurDoc (Properties ctx, String LBR_RTCFiscoApurDoc_UU, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_RTCFiscoApurDoc_UU, trxName, virtualColumns);
      /** if (LBR_RTCFiscoApurDoc_UU == null)
        {
			setLBR_DFeChave (null);
			setLBR_Documento (0);
			setLBR_Origem (0);
			setLBR_RTCFiscoApurDoc_ID (0);
			setLBR_RTCFiscoApuracao_ID (0);
			setLBR_RTCFiscoDocType (null);
        } */
    }

    /** Load Constructor */
    public X_LBR_RTCFiscoApurDoc (Properties ctx, ResultSet rs, String trxName)
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
      StringBuilder sb = new StringBuilder ("X_LBR_RTCFiscoApurDoc[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set Apropriado.
		@param LBR_AppropriatedAmt Apropriado
	*/
	public void setLBR_AppropriatedAmt (BigDecimal LBR_AppropriatedAmt)
	{
		set_Value (COLUMNNAME_LBR_AppropriatedAmt, LBR_AppropriatedAmt);
	}

	/** Get Apropriado.
		@return Apropriado	  */
	public BigDecimal getLBR_AppropriatedAmt()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_AppropriatedAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Valor Apurado.
		@param LBR_AssessedAmt Valor Apurado
	*/
	public void setLBR_AssessedAmt (BigDecimal LBR_AssessedAmt)
	{
		set_Value (COLUMNNAME_LBR_AssessedAmt, LBR_AssessedAmt);
	}

	/** Get Valor Apurado.
		@return Valor Apurado	  */
	public BigDecimal getLBR_AssessedAmt()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_AssessedAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Saldo Credor.
		@param LBR_CreditBalanceAmt Saldo Credor
	*/
	public void setLBR_CreditBalanceAmt (BigDecimal LBR_CreditBalanceAmt)
	{
		set_Value (COLUMNNAME_LBR_CreditBalanceAmt, LBR_CreditBalanceAmt);
	}

	/** Get Saldo Credor.
		@return Saldo Credor	  */
	public BigDecimal getLBR_CreditBalanceAmt()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_CreditBalanceAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
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

	/** Set Data de Emissão.
		@param LBR_DateIssued Data de Emissão
	*/
	public void setLBR_DateIssued (Timestamp LBR_DateIssued)
	{
		set_Value (COLUMNNAME_LBR_DateIssued, LBR_DateIssued);
	}

	/** Get Data de Emissão.
		@return Data de Emissão	  */
	public Timestamp getLBR_DateIssued()
	{
		return (Timestamp)get_Value(COLUMNNAME_LBR_DateIssued);
	}

	/** Set Data de Registro.
		@param LBR_DateRegistered Data de Registro
	*/
	public void setLBR_DateRegistered (Timestamp LBR_DateRegistered)
	{
		set_Value (COLUMNNAME_LBR_DateRegistered, LBR_DateRegistered);
	}

	/** Get Data de Registro.
		@return Data de Registro	  */
	public Timestamp getLBR_DateRegistered()
	{
		return (Timestamp)get_Value(COLUMNNAME_LBR_DateRegistered);
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

	/** Set Saldo Devedor.
		@param LBR_DebitBalanceAmt Saldo Devedor
	*/
	public void setLBR_DebitBalanceAmt (BigDecimal LBR_DebitBalanceAmt)
	{
		set_Value (COLUMNNAME_LBR_DebitBalanceAmt, LBR_DebitBalanceAmt);
	}

	/** Get Saldo Devedor.
		@return Saldo Devedor	  */
	public BigDecimal getLBR_DebitBalanceAmt()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_DebitBalanceAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Documento.
		@param LBR_Documento Documento
	*/
	public void setLBR_Documento (int LBR_Documento)
	{
		set_Value (COLUMNNAME_LBR_Documento, Integer.valueOf(LBR_Documento));
	}

	/** Get Documento.
		@return Documento	  */
	public int getLBR_Documento()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_Documento);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Excedentes.
		@param LBR_ExcessAmt Excedentes
	*/
	public void setLBR_ExcessAmt (BigDecimal LBR_ExcessAmt)
	{
		set_Value (COLUMNNAME_LBR_ExcessAmt, LBR_ExcessAmt);
	}

	/** Get Excedentes.
		@return Excedentes	  */
	public BigDecimal getLBR_ExcessAmt()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_ExcessAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Extinto.
		@param LBR_ExtinguishedAmt Extinto
	*/
	public void setLBR_ExtinguishedAmt (BigDecimal LBR_ExtinguishedAmt)
	{
		set_Value (COLUMNNAME_LBR_ExtinguishedAmt, LBR_ExtinguishedAmt);
	}

	/** Get Extinto.
		@return Extinto	  */
	public BigDecimal getLBR_ExtinguishedAmt()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_ExtinguishedAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Inapropriável.
		@param LBR_NonAppropriableAmt Inapropriável
	*/
	public void setLBR_NonAppropriableAmt (BigDecimal LBR_NonAppropriableAmt)
	{
		set_Value (COLUMNNAME_LBR_NonAppropriableAmt, LBR_NonAppropriableAmt);
	}

	/** Get Inapropriável.
		@return Inapropriável	  */
	public BigDecimal getLBR_NonAppropriableAmt()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_NonAppropriableAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Inexigível.
		@param LBR_NonEnforceableAmt Inexigível
	*/
	public void setLBR_NonEnforceableAmt (BigDecimal LBR_NonEnforceableAmt)
	{
		set_Value (COLUMNNAME_LBR_NonEnforceableAmt, LBR_NonEnforceableAmt);
	}

	/** Get Inexigível.
		@return Inexigível	  */
	public BigDecimal getLBR_NonEnforceableAmt()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_NonEnforceableAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Inutilizável.
		@param LBR_NonUsableAmt Inutilizável
	*/
	public void setLBR_NonUsableAmt (BigDecimal LBR_NonUsableAmt)
	{
		set_Value (COLUMNNAME_LBR_NonUsableAmt, LBR_NonUsableAmt);
	}

	/** Get Inutilizável.
		@return Inutilizável	  */
	public BigDecimal getLBR_NonUsableAmt()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_NonUsableAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Origem.
		@param LBR_Origem Origem
	*/
	public void setLBR_Origem (int LBR_Origem)
	{
		set_Value (COLUMNNAME_LBR_Origem, Integer.valueOf(LBR_Origem));
	}

	/** Get Origem.
		@return Origem	  */
	public int getLBR_Origem()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_Origem);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Prescrito.
		@param LBR_PrescribedAmt Prescrito
	*/
	public void setLBR_PrescribedAmt (BigDecimal LBR_PrescribedAmt)
	{
		set_Value (COLUMNNAME_LBR_PrescribedAmt, LBR_PrescribedAmt);
	}

	/** Get Prescrito.
		@return Prescrito	  */
	public BigDecimal getLBR_PrescribedAmt()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_PrescribedAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Doc. de Apuração de IBS/CBS (RTC/Fisco).
		@param LBR_RTCFiscoApurDoc_ID Doc. de Apuração de IBS/CBS (RTC/Fisco)
	*/
	public void setLBR_RTCFiscoApurDoc_ID (int LBR_RTCFiscoApurDoc_ID)
	{
		if (LBR_RTCFiscoApurDoc_ID < 1)
			set_ValueNoCheck (COLUMNNAME_LBR_RTCFiscoApurDoc_ID, null);
		else
			set_ValueNoCheck (COLUMNNAME_LBR_RTCFiscoApurDoc_ID, Integer.valueOf(LBR_RTCFiscoApurDoc_ID));
	}

	/** Get Doc. de Apuração de IBS/CBS (RTC/Fisco).
		@return Doc. de Apuração de IBS/CBS (RTC/Fisco)	  */
	public int getLBR_RTCFiscoApurDoc_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_RTCFiscoApurDoc_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_RTCFiscoApurDoc_UU.
		@param LBR_RTCFiscoApurDoc_UU LBR_RTCFiscoApurDoc_UU
	*/
	public void setLBR_RTCFiscoApurDoc_UU (String LBR_RTCFiscoApurDoc_UU)
	{
		set_Value (COLUMNNAME_LBR_RTCFiscoApurDoc_UU, LBR_RTCFiscoApurDoc_UU);
	}

	/** Get LBR_RTCFiscoApurDoc_UU.
		@return LBR_RTCFiscoApurDoc_UU	  */
	public String getLBR_RTCFiscoApurDoc_UU()
	{
		return (String)get_Value(COLUMNNAME_LBR_RTCFiscoApurDoc_UU);
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

	/** LBR_RTCFiscoDocType AD_Reference_ID=800122 */
	public static final int LBR_RTCFISCODOCTYPE_AD_Reference_ID=800122;
	/** Crédito = C */
	public static final String LBR_RTCFISCODOCTYPE_Crédito = "C";
	/** Débito = D */
	public static final String LBR_RTCFISCODOCTYPE_Débito = "D";
	/** Set Tipo do Documento.
		@param LBR_RTCFiscoDocType Tipo do Documento
	*/
	public void setLBR_RTCFiscoDocType (String LBR_RTCFiscoDocType)
	{

		set_Value (COLUMNNAME_LBR_RTCFiscoDocType, LBR_RTCFiscoDocType);
	}

	/** Get Tipo do Documento.
		@return Tipo do Documento	  */
	public String getLBR_RTCFiscoDocType()
	{
		return (String)get_Value(COLUMNNAME_LBR_RTCFiscoDocType);
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

	/** Set Pedido de Ressarcimento.
		@param LBR_RefundRequestAmt Pedido de Ressarcimento
	*/
	public void setLBR_RefundRequestAmt (BigDecimal LBR_RefundRequestAmt)
	{
		set_Value (COLUMNNAME_LBR_RefundRequestAmt, LBR_RefundRequestAmt);
	}

	/** Get Pedido de Ressarcimento.
		@return Pedido de Ressarcimento	  */
	public BigDecimal getLBR_RefundRequestAmt()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_RefundRequestAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Restabelecido.
		@param LBR_RestoredAmt Restabelecido
	*/
	public void setLBR_RestoredAmt (BigDecimal LBR_RestoredAmt)
	{
		set_Value (COLUMNNAME_LBR_RestoredAmt, LBR_RestoredAmt);
	}

	/** Get Restabelecido.
		@return Restabelecido	  */
	public BigDecimal getLBR_RestoredAmt()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_RestoredAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Suspenso.
		@param LBR_SuspendedAmt Suspenso
	*/
	public void setLBR_SuspendedAmt (BigDecimal LBR_SuspendedAmt)
	{
		set_Value (COLUMNNAME_LBR_SuspendedAmt, LBR_SuspendedAmt);
	}

	/** Get Suspenso.
		@return Suspenso	  */
	public BigDecimal getLBR_SuspendedAmt()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_SuspendedAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set A Apropriar.
		@param LBR_ToAppropriateAmt A Apropriar
	*/
	public void setLBR_ToAppropriateAmt (BigDecimal LBR_ToAppropriateAmt)
	{
		set_Value (COLUMNNAME_LBR_ToAppropriateAmt, LBR_ToAppropriateAmt);
	}

	/** Get A Apropriar.
		@return A Apropriar	  */
	public BigDecimal getLBR_ToAppropriateAmt()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_ToAppropriateAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Utilizado.
		@param LBR_UsedAmt Utilizado
	*/
	public void setLBR_UsedAmt (BigDecimal LBR_UsedAmt)
	{
		set_Value (COLUMNNAME_LBR_UsedAmt, LBR_UsedAmt);
	}

	/** Get Utilizado.
		@return Utilizado	  */
	public BigDecimal getLBR_UsedAmt()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_UsedAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}
}