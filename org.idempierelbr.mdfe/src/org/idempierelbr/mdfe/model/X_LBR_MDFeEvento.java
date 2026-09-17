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
 *****************************************************************************/

/** Generated Model - DO NOT CHANGE */
package org.idempierelbr.mdfe.model;

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.Properties;
import org.compiere.model.*;
import org.compiere.util.Env;
import org.compiere.util.KeyNamePair;

/** Generated Model for LBR_MDFeEvento
 *  @author iDempiere (generated)
 *  @version Release 13 - $Id$ */
@org.adempiere.base.Model(table="LBR_MDFeEvento")
public class X_LBR_MDFeEvento extends PO implements I_LBR_MDFeEvento, I_Persistent
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20260828L;

    /** Standard Constructor */
    public X_LBR_MDFeEvento (Properties ctx, int LBR_MDFeEvento_ID, String trxName)
    {
      super (ctx, LBR_MDFeEvento_ID, trxName);
      /** if (LBR_MDFeEvento_ID == 0)
        {
			setLBR_EventType (null);
			setLBR_MDFeEvento_ID (0);
			setLBR_MDFe_ID (0);
        } */
    }

    /** Standard Constructor */
    public X_LBR_MDFeEvento (Properties ctx, int LBR_MDFeEvento_ID, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_MDFeEvento_ID, trxName, virtualColumns);
      /** if (LBR_MDFeEvento_ID == 0)
        {
			setLBR_EventType (null);
			setLBR_MDFeEvento_ID (0);
			setLBR_MDFe_ID (0);
        } */
    }

    /** Standard Constructor */
    public X_LBR_MDFeEvento (Properties ctx, String LBR_MDFeEvento_UU, String trxName)
    {
      super (ctx, LBR_MDFeEvento_UU, trxName);
      /** if (LBR_MDFeEvento_UU == null)
        {
			setLBR_EventType (null);
			setLBR_MDFeEvento_ID (0);
			setLBR_MDFe_ID (0);
        } */
    }

    /** Standard Constructor */
    public X_LBR_MDFeEvento (Properties ctx, String LBR_MDFeEvento_UU, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_MDFeEvento_UU, trxName, virtualColumns);
      /** if (LBR_MDFeEvento_UU == null)
        {
			setLBR_EventType (null);
			setLBR_MDFeEvento_ID (0);
			setLBR_MDFe_ID (0);
        } */
    }

    /** Load Constructor */
    public X_LBR_MDFeEvento (Properties ctx, ResultSet rs, String trxName)
    {
      super (ctx, rs, trxName);
    }

    /** AccessLevel
      * @return 3 - Client+Organization
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
      StringBuilder sb = new StringBuilder ("X_LBR_MDFeEvento[")
        .append(get_ID()).append(",LBR_EventType=").append(getLBR_EventType()).append("]");
      return sb.toString();
    }

	/** Set Municipio do encerramento.
		@param C_City_ID cMun
	*/
	public void setC_City_ID (int C_City_ID)
	{
		if (C_City_ID < 1)
			set_Value (COLUMNNAME_C_City_ID, null);
		else
			set_Value (COLUMNNAME_C_City_ID, Integer.valueOf(C_City_ID));
	}

	/** Get Municipio do encerramento.
		@return cMun
	  */
	public int getC_City_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_City_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set UF do encerramento.
		@param C_Region_ID UF
	*/
	public void setC_Region_ID (int C_Region_ID)
	{
		if (C_Region_ID < 1)
			set_Value (COLUMNNAME_C_Region_ID, null);
		else
			set_Value (COLUMNNAME_C_Region_ID, Integer.valueOf(C_Region_ID));
	}

	/** Get UF do encerramento.
		@return UF
	  */
	public int getC_Region_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_Region_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Descricao.
		@param Description Descricao
	*/
	public void setDescription (String Description)
	{
		set_Value (COLUMNNAME_Description, Description);
	}

	/** Get Descricao.
		@return Descricao
	  */
	public String getDescription()
	{
		return (String)get_Value(COLUMNNAME_Description);
	}

	/** Set CPF do condutor.
		@param LBR_CPF evIncCondutorMDFe/condutor/CPF
	*/
	public void setLBR_CPF (String LBR_CPF)
	{
		set_Value (COLUMNNAME_LBR_CPF, LBR_CPF);
	}

	/** Get CPF do condutor.
		@return evIncCondutorMDFe/condutor/CPF
	  */
	public String getLBR_CPF()
	{
		return (String)get_Value(COLUMNNAME_LBR_CPF);
	}

	/** Set Data do encerramento.
		@param LBR_DateEncerra dtEnc
	*/
	public void setLBR_DateEncerra (Timestamp LBR_DateEncerra)
	{
		set_Value (COLUMNNAME_LBR_DateEncerra, LBR_DateEncerra);
	}

	/** Get Data do encerramento.
		@return dtEnc
	  */
	public Timestamp getLBR_DateEncerra()
	{
		return (Timestamp)get_Value(COLUMNNAME_LBR_DateEncerra);
	}

	/** Set Data do evento.
		@param LBR_DateEvent dhEvento
	*/
	public void setLBR_DateEvent (Timestamp LBR_DateEvent)
	{
		set_Value (COLUMNNAME_LBR_DateEvent, LBR_DateEvent);
	}

	/** Get Data do evento.
		@return dhEvento
	  */
	public Timestamp getLBR_DateEvent()
	{
		return (Timestamp)get_Value(COLUMNNAME_LBR_DateEvent);
	}

	/** Set Data do protocolo.
		@param LBR_DateProtocol Data do protocolo
	*/
	public void setLBR_DateProtocol (Timestamp LBR_DateProtocol)
	{
		set_Value (COLUMNNAME_LBR_DateProtocol, LBR_DateProtocol);
	}

	/** Get Data do protocolo.
		@return Data do protocolo
	  */
	public Timestamp getLBR_DateProtocol()
	{
		return (Timestamp)get_Value(COLUMNNAME_LBR_DateProtocol);
	}

	/** LBR_EventType */
	/** Cancelamento = 110111 */
	public static final String LBR_EVENTTYPE_Cancelamento = "110111";
	/** Encerramento = 110112 */
	public static final String LBR_EVENTTYPE_Encerramento = "110112";
	/** Inclusao de condutor = 110114 */
	public static final String LBR_EVENTTYPE_InclusaoDeCondutor = "110114";
	/** Inclusao de DF-e = 110115 */
	public static final String LBR_EVENTTYPE_InclusaoDeDF_E = "110115";
	/** Pagamento da operacao de transporte = 110116 */
	public static final String LBR_EVENTTYPE_PagamentoDaOperacaoDeTransporte = "110116";
	/** Alteracao no pagamento do servico de transporte = 110118 */
	public static final String LBR_EVENTTYPE_AlteracaoNoPagamentoDoServicoDeTransporte = "110118";
	/** Set Tipo do evento.
		@param LBR_EventType tpEvento
	*/
	public void setLBR_EventType (String LBR_EventType)
	{
		set_Value (COLUMNNAME_LBR_EventType, LBR_EventType);
	}

	/** Get Tipo do evento.
		@return tpEvento
	  */
	public String getLBR_EventType()
	{
		return (String)get_Value(COLUMNNAME_LBR_EventType);
	}

	/** Set Justificativa.
		@param LBR_Justification xJust
	*/
	public void setLBR_Justification (String LBR_Justification)
	{
		set_Value (COLUMNNAME_LBR_Justification, LBR_Justification);
	}

	/** Get Justificativa.
		@return xJust
	  */
	public String getLBR_Justification()
	{
		return (String)get_Value(COLUMNNAME_LBR_Justification);
	}

	/** Set LBR_MDFeEvento.
		@param LBR_MDFeEvento_ID LBR_MDFeEvento
	*/
	public void setLBR_MDFeEvento_ID (int LBR_MDFeEvento_ID)
	{
		if (LBR_MDFeEvento_ID < 1)
			set_ValueNoCheck (COLUMNNAME_LBR_MDFeEvento_ID, null);
		else
			set_ValueNoCheck (COLUMNNAME_LBR_MDFeEvento_ID, Integer.valueOf(LBR_MDFeEvento_ID));
	}

	/** Get LBR_MDFeEvento.
		@return LBR_MDFeEvento
	  */
	public int getLBR_MDFeEvento_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_MDFeEvento_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_MDFeEvento_UU.
		@param LBR_MDFeEvento_UU LBR_MDFeEvento_UU
	*/
	public void setLBR_MDFeEvento_UU (String LBR_MDFeEvento_UU)
	{
		set_Value (COLUMNNAME_LBR_MDFeEvento_UU, LBR_MDFeEvento_UU);
	}

	/** Get LBR_MDFeEvento_UU.
		@return LBR_MDFeEvento_UU
	  */
	public String getLBR_MDFeEvento_UU()
	{
		return (String)get_Value(COLUMNNAME_LBR_MDFeEvento_UU);
	}

	/** Set MDF-e.
		@param LBR_MDFe_ID MDF-e
	*/
	public void setLBR_MDFe_ID (int LBR_MDFe_ID)
	{
		if (LBR_MDFe_ID < 1)
			set_Value (COLUMNNAME_LBR_MDFe_ID, null);
		else
			set_Value (COLUMNNAME_LBR_MDFe_ID, Integer.valueOf(LBR_MDFe_ID));
	}

	/** Get MDF-e.
		@return MDF-e
	  */
	public int getLBR_MDFe_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_MDFe_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Sequencia do evento.
		@param LBR_NSeqEvento nSeqEvento
	*/
	public void setLBR_NSeqEvento (int LBR_NSeqEvento)
	{
		set_Value (COLUMNNAME_LBR_NSeqEvento, Integer.valueOf(LBR_NSeqEvento));
	}

	/** Get Sequencia do evento.
		@return nSeqEvento
	  */
	public int getLBR_NSeqEvento()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_NSeqEvento);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Protocolo.
		@param LBR_Protocol Protocolo
	*/
	public void setLBR_Protocol (String LBR_Protocol)
	{
		set_Value (COLUMNNAME_LBR_Protocol, LBR_Protocol);
	}

	/** Get Protocolo.
		@return Protocolo
	  */
	public String getLBR_Protocol()
	{
		return (String)get_Value(COLUMNNAME_LBR_Protocol);
	}

	/** Set Codigo do status SEFAZ.
		@param LBR_cStat Codigo do status SEFAZ
	*/
	public void setLBR_cStat (String LBR_cStat)
	{
		set_Value (COLUMNNAME_LBR_cStat, LBR_cStat);
	}

	/** Get Codigo do status SEFAZ.
		@return Codigo do status SEFAZ
	  */
	public String getLBR_cStat()
	{
		return (String)get_Value(COLUMNNAME_LBR_cStat);
	}

	/** Set Motivo.
		@param LBR_xMotivo Motivo
	*/
	public void setLBR_xMotivo (String LBR_xMotivo)
	{
		set_Value (COLUMNNAME_LBR_xMotivo, LBR_xMotivo);
	}

	/** Get Motivo.
		@return Motivo
	  */
	public String getLBR_xMotivo()
	{
		return (String)get_Value(COLUMNNAME_LBR_xMotivo);
	}

	/** Set Linha.
		@param Line Linha
	*/
	public void setLine (int Line)
	{
		set_Value (COLUMNNAME_Line, Integer.valueOf(Line));
	}

	/** Get Linha.
		@return Linha
	  */
	public int getLine()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_Line);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Nome do condutor.
		@param Name evIncCondutorMDFe/condutor/xNome
	*/
	public void setName (String Name)
	{
		set_Value (COLUMNNAME_Name, Name);
	}

	/** Get Nome do condutor.
		@return evIncCondutorMDFe/condutor/xNome
	  */
	public String getName()
	{
		return (String)get_Value(COLUMNNAME_Name);
	}

	/** Set Processado.
		@param Processed Processado
	*/
	public void setProcessed (boolean Processed)
	{
		set_Value (COLUMNNAME_Processed, Boolean.valueOf(Processed));
	}

	/** Get Processado.
		@return Processado
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
