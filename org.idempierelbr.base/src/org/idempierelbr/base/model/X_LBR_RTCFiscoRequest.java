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

import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.Properties;
import org.compiere.model.*;

/** Generated Model for LBR_RTCFiscoRequest
 *  @author iDempiere (generated)
 *  @version Release 13 - $Id$ */
@org.adempiere.base.Model(table="LBR_RTCFiscoRequest")
public class X_LBR_RTCFiscoRequest extends PO implements I_LBR_RTCFiscoRequest, I_Persistent
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20260924L;

    /** Standard Constructor */
    public X_LBR_RTCFiscoRequest (Properties ctx, int LBR_RTCFiscoRequest_ID, String trxName)
    {
      super (ctx, LBR_RTCFiscoRequest_ID, trxName);
      /** if (LBR_RTCFiscoRequest_ID == 0)
        {
			setLBR_DateRequested (new Timestamp( System.currentTimeMillis() ));
			setLBR_RTCFiscoConfig_ID (0);
			setLBR_RTCFiscoReqStatus (null);
			setLBR_RTCFiscoRequest_ID (0);
			setLBR_RTCFiscoService (null);
			setLBR_RTCTaxType (null);
			setProcessed (false);
// N
        } */
    }

    /** Standard Constructor */
    public X_LBR_RTCFiscoRequest (Properties ctx, int LBR_RTCFiscoRequest_ID, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_RTCFiscoRequest_ID, trxName, virtualColumns);
      /** if (LBR_RTCFiscoRequest_ID == 0)
        {
			setLBR_DateRequested (new Timestamp( System.currentTimeMillis() ));
			setLBR_RTCFiscoConfig_ID (0);
			setLBR_RTCFiscoReqStatus (null);
			setLBR_RTCFiscoRequest_ID (0);
			setLBR_RTCFiscoService (null);
			setLBR_RTCTaxType (null);
			setProcessed (false);
// N
        } */
    }

    /** Standard Constructor */
    public X_LBR_RTCFiscoRequest (Properties ctx, String LBR_RTCFiscoRequest_UU, String trxName)
    {
      super (ctx, LBR_RTCFiscoRequest_UU, trxName);
      /** if (LBR_RTCFiscoRequest_UU == null)
        {
			setLBR_DateRequested (new Timestamp( System.currentTimeMillis() ));
			setLBR_RTCFiscoConfig_ID (0);
			setLBR_RTCFiscoReqStatus (null);
			setLBR_RTCFiscoRequest_ID (0);
			setLBR_RTCFiscoService (null);
			setLBR_RTCTaxType (null);
			setProcessed (false);
// N
        } */
    }

    /** Standard Constructor */
    public X_LBR_RTCFiscoRequest (Properties ctx, String LBR_RTCFiscoRequest_UU, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_RTCFiscoRequest_UU, trxName, virtualColumns);
      /** if (LBR_RTCFiscoRequest_UU == null)
        {
			setLBR_DateRequested (new Timestamp( System.currentTimeMillis() ));
			setLBR_RTCFiscoConfig_ID (0);
			setLBR_RTCFiscoReqStatus (null);
			setLBR_RTCFiscoRequest_ID (0);
			setLBR_RTCFiscoService (null);
			setLBR_RTCTaxType (null);
			setProcessed (false);
// N
        } */
    }

    /** Load Constructor */
    public X_LBR_RTCFiscoRequest (Properties ctx, ResultSet rs, String trxName)
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
      StringBuilder sb = new StringBuilder ("X_LBR_RTCFiscoRequest[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set Data da Solicitação.
		@param LBR_DateRequested Data da Solicitação
	*/
	public void setLBR_DateRequested (Timestamp LBR_DateRequested)
	{
		set_Value (COLUMNNAME_LBR_DateRequested, LBR_DateRequested);
	}

	/** Get Data da Solicitação.
		@return Data da Solicitação	  */
	public Timestamp getLBR_DateRequested()
	{
		return (Timestamp)get_Value(COLUMNNAME_LBR_DateRequested);
	}

	/** Set Código do Erro.
		@param LBR_ErrorCode Código do Erro
	*/
	public void setLBR_ErrorCode (String LBR_ErrorCode)
	{
		set_Value (COLUMNNAME_LBR_ErrorCode, LBR_ErrorCode);
	}

	/** Get Código do Erro.
		@return Código do Erro	  */
	public String getLBR_ErrorCode()
	{
		return (String)get_Value(COLUMNNAME_LBR_ErrorCode);
	}

	/** Set Mensagem do Erro.
		@param LBR_ErrorMsg Mensagem do Erro
	*/
	public void setLBR_ErrorMsg (String LBR_ErrorMsg)
	{
		set_Value (COLUMNNAME_LBR_ErrorMsg, LBR_ErrorMsg);
	}

	/** Get Mensagem do Erro.
		@return Mensagem do Erro	  */
	public String getLBR_ErrorMsg()
	{
		return (String)get_Value(COLUMNNAME_LBR_ErrorMsg);
	}

	/** Set Gerado em.
		@param LBR_GeneratedAt Gerado em
	*/
	public void setLBR_GeneratedAt (Timestamp LBR_GeneratedAt)
	{
		set_Value (COLUMNNAME_LBR_GeneratedAt, LBR_GeneratedAt);
	}

	/** Get Gerado em.
		@return Gerado em	  */
	public Timestamp getLBR_GeneratedAt()
	{
		return (Timestamp)get_Value(COLUMNNAME_LBR_GeneratedAt);
	}

	@Deprecated(since="13") // use better methods with cache
	public I_LBR_RTCFiscoConfig getLBR_RTCFiscoConfig() throws RuntimeException
	{
		return (I_LBR_RTCFiscoConfig)MTable.get(getCtx(), I_LBR_RTCFiscoConfig.Table_ID)
			.getPO(getLBR_RTCFiscoConfig_ID(), get_TrxName());
	}

	/** Set Configuração da Integração (RTC/Fisco).
		@param LBR_RTCFiscoConfig_ID Configuração da Integração (RTC/Fisco)
	*/
	public void setLBR_RTCFiscoConfig_ID (int LBR_RTCFiscoConfig_ID)
	{
		if (LBR_RTCFiscoConfig_ID < 1)
			set_ValueNoCheck (COLUMNNAME_LBR_RTCFiscoConfig_ID, null);
		else
			set_ValueNoCheck (COLUMNNAME_LBR_RTCFiscoConfig_ID, Integer.valueOf(LBR_RTCFiscoConfig_ID));
	}

	/** Get Configuração da Integração (RTC/Fisco).
		@return Configuração da Integração (RTC/Fisco)	  */
	public int getLBR_RTCFiscoConfig_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_RTCFiscoConfig_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** LBR_RTCFiscoReqStatus AD_Reference_ID=800121 */
	public static final int LBR_RTCFISCOREQSTATUS_AD_Reference_ID=800121;
	/** Concluída = DONE */
	public static final String LBR_RTCFISCOREQSTATUS_Concluída = "DONE";
	/** Erro = ERROR */
	public static final String LBR_RTCFISCOREQSTATUS_Erro = "ERROR";
	/** Expirada = EXPIRED */
	public static final String LBR_RTCFISCOREQSTATUS_Expirada = "EXPIRED";
	/** Importada = IMPORTED */
	public static final String LBR_RTCFISCOREQSTATUS_Importada = "IMPORTED";
	/** Pendente = PENDING */
	public static final String LBR_RTCFISCOREQSTATUS_Pendente = "PENDING";
	/** Em processamento = PROCESSING */
	public static final String LBR_RTCFISCOREQSTATUS_EmProcessamento = "PROCESSING";
	/** Enviada = SENT */
	public static final String LBR_RTCFISCOREQSTATUS_Enviada = "SENT";
	/** Set Status da Solicitação.
		@param LBR_RTCFiscoReqStatus Status da Solicitação
	*/
	public void setLBR_RTCFiscoReqStatus (String LBR_RTCFiscoReqStatus)
	{

		set_Value (COLUMNNAME_LBR_RTCFiscoReqStatus, LBR_RTCFiscoReqStatus);
	}

	/** Get Status da Solicitação.
		@return Status da Solicitação	  */
	public String getLBR_RTCFiscoReqStatus()
	{
		return (String)get_Value(COLUMNNAME_LBR_RTCFiscoReqStatus);
	}

	/** Set Request (RTC/Fisco).
		@param LBR_RTCFiscoRequest_ID Request (RTC/Fisco)
	*/
	public void setLBR_RTCFiscoRequest_ID (int LBR_RTCFiscoRequest_ID)
	{
		if (LBR_RTCFiscoRequest_ID < 1)
			set_ValueNoCheck (COLUMNNAME_LBR_RTCFiscoRequest_ID, null);
		else
			set_ValueNoCheck (COLUMNNAME_LBR_RTCFiscoRequest_ID, Integer.valueOf(LBR_RTCFiscoRequest_ID));
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

	/** Set LBR_RTCFiscoRequest_UU.
		@param LBR_RTCFiscoRequest_UU LBR_RTCFiscoRequest_UU
	*/
	public void setLBR_RTCFiscoRequest_UU (String LBR_RTCFiscoRequest_UU)
	{
		set_Value (COLUMNNAME_LBR_RTCFiscoRequest_UU, LBR_RTCFiscoRequest_UU);
	}

	/** Get LBR_RTCFiscoRequest_UU.
		@return LBR_RTCFiscoRequest_UU	  */
	public String getLBR_RTCFiscoRequest_UU()
	{
		return (String)get_Value(COLUMNNAME_LBR_RTCFiscoRequest_UU);
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

	/** Set URL Assinada.
		@param LBR_SignedURL URL Assinada
	*/
	public void setLBR_SignedURL (String LBR_SignedURL)
	{
		set_Value (COLUMNNAME_LBR_SignedURL, LBR_SignedURL);
	}

	/** Get URL Assinada.
		@return URL Assinada	  */
	public String getLBR_SignedURL()
	{
		return (String)get_Value(COLUMNNAME_LBR_SignedURL);
	}

	/** Set Expiração da URL Assinada.
		@param LBR_SignedURLExpiresAt Expiração da URL Assinada
	*/
	public void setLBR_SignedURLExpiresAt (Timestamp LBR_SignedURLExpiresAt)
	{
		set_Value (COLUMNNAME_LBR_SignedURLExpiresAt, LBR_SignedURLExpiresAt);
	}

	/** Get Expiração da URL Assinada.
		@return Expiração da URL Assinada	  */
	public Timestamp getLBR_SignedURLExpiresAt()
	{
		return (Timestamp)get_Value(COLUMNNAME_LBR_SignedURLExpiresAt);
	}

	/** Set Tempo Estimado (Segundos).
		@param LBR_TEASeconds Tempo Estimado (Segundos)
	*/
	public void setLBR_TEASeconds (int LBR_TEASeconds)
	{
		set_Value (COLUMNNAME_LBR_TEASeconds, Integer.valueOf(LBR_TEASeconds));
	}

	/** Get Tempo Estimado (Segundos).
		@return Tempo Estimado (Segundos)	  */
	public int getLBR_TEASeconds()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_TEASeconds);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Ticket da Solicitação.
		@param LBR_Ticket Ticket da Solicitação
	*/
	public void setLBR_Ticket (String LBR_Ticket)
	{
		set_Value (COLUMNNAME_LBR_Ticket, LBR_Ticket);
	}

	/** Get Ticket da Solicitação.
		@return Ticket da Solicitação	  */
	public String getLBR_Ticket()
	{
		return (String)get_Value(COLUMNNAME_LBR_Ticket);
	}

	/** Set Processed.
		@param Processed The document has been processed
	*/
	public void setProcessed (boolean Processed)
	{
		set_Value (COLUMNNAME_Processed, Boolean.valueOf(Processed));
	}

	/** Get Processed.
		@return The document has been processed
	  */
	public boolean isProcessed()
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
}