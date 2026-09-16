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

/** Generated Model for LBR_NotaFiscalEventRec
 *  @author iDempiere (generated)
 *  @version Release 13 - $Id$ */
@org.adempiere.base.Model(table="LBR_NotaFiscalEventRec")
public class X_LBR_NotaFiscalEventRec extends PO implements I_LBR_NotaFiscalEventRec, I_Persistent
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20260827L;

    /** Standard Constructor */
    public X_LBR_NotaFiscalEventRec (Properties ctx, int LBR_NotaFiscalEventRec_ID, String trxName)
    {
      super (ctx, LBR_NotaFiscalEventRec_ID, trxName);
      /** if (LBR_NotaFiscalEventRec_ID == 0)
        {
			setLBR_NotaFiscalEventRec_ID (0);
        } */
    }

    /** Standard Constructor */
    public X_LBR_NotaFiscalEventRec (Properties ctx, int LBR_NotaFiscalEventRec_ID, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_NotaFiscalEventRec_ID, trxName, virtualColumns);
      /** if (LBR_NotaFiscalEventRec_ID == 0)
        {
			setLBR_NotaFiscalEventRec_ID (0);
        } */
    }

    /** Standard Constructor */
    public X_LBR_NotaFiscalEventRec (Properties ctx, String LBR_NotaFiscalEventRec_UU, String trxName)
    {
      super (ctx, LBR_NotaFiscalEventRec_UU, trxName);
      /** if (LBR_NotaFiscalEventRec_UU == null)
        {
			setLBR_NotaFiscalEventRec_ID (0);
        } */
    }

    /** Standard Constructor */
    public X_LBR_NotaFiscalEventRec (Properties ctx, String LBR_NotaFiscalEventRec_UU, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_NotaFiscalEventRec_UU, trxName, virtualColumns);
      /** if (LBR_NotaFiscalEventRec_UU == null)
        {
			setLBR_NotaFiscalEventRec_ID (0);
        } */
    }

    /** Load Constructor */
    public X_LBR_NotaFiscalEventRec (Properties ctx, ResultSet rs, String trxName)
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
      StringBuilder sb = new StringBuilder ("X_LBR_NotaFiscalEventRec[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set Description.
		@param Description Optional short description of the record
	*/
	public void setDescription (String Description)
	{
		set_Value (COLUMNNAME_Description, Description);
	}

	/** Get Description.
		@return Optional short description of the record
	  */
	public String getDescription()
	{
		return (String)get_Value(COLUMNNAME_Description);
	}

	/** Set CNPJ/CPF do Autor.
		@param LBR_EventAuthor CNPJ/CPF do Autor
	*/
	public void setLBR_EventAuthor (String LBR_EventAuthor)
	{
		set_Value (COLUMNNAME_LBR_EventAuthor, LBR_EventAuthor);
	}

	/** Get CNPJ/CPF do Autor.
		@return CNPJ/CPF do Autor	  */
	public String getLBR_EventAuthor()
	{
		return (String)get_Value(COLUMNNAME_LBR_EventAuthor);
	}

	/** Set Cód. do Evento.
		@param LBR_EventCode Cód. do Evento
	*/
	public void setLBR_EventCode (String LBR_EventCode)
	{
		set_Value (COLUMNNAME_LBR_EventCode, LBR_EventCode);
	}

	/** Get Cód. do Evento.
		@return Cód. do Evento	  */
	public String getLBR_EventCode()
	{
		return (String)get_Value(COLUMNNAME_LBR_EventCode);
	}

	/** Set Data do Evento.
		@param LBR_EventDate Data do Evento
	*/
	public void setLBR_EventDate (Timestamp LBR_EventDate)
	{
		set_Value (COLUMNNAME_LBR_EventDate, LBR_EventDate);
	}

	/** Get Data do Evento.
		@return Data do Evento	  */
	public Timestamp getLBR_EventDate()
	{
		return (Timestamp)get_Value(COLUMNNAME_LBR_EventDate);
	}

	/** Set Protocolo.
		@param LBR_EventProt Protocolo
	*/
	public void setLBR_EventProt (String LBR_EventProt)
	{
		set_Value (COLUMNNAME_LBR_EventProt, LBR_EventProt);
	}

	/** Get Protocolo.
		@return Protocolo	  */
	public String getLBR_EventProt()
	{
		return (String)get_Value(COLUMNNAME_LBR_EventProt);
	}

	/** Set Seq. do Evento.
		@param LBR_EventSeqNo Seq. do Evento
	*/
	public void setLBR_EventSeqNo (int LBR_EventSeqNo)
	{
		set_Value (COLUMNNAME_LBR_EventSeqNo, Integer.valueOf(LBR_EventSeqNo));
	}

	/** Get Seq. do Evento.
		@return Seq. do Evento	  */
	public int getLBR_EventSeqNo()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_EventSeqNo);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set NFe ID.
		@param LBR_NFeID NFe ID
	*/
	public void setLBR_NFeID (String LBR_NFeID)
	{
		set_Value (COLUMNNAME_LBR_NFeID, LBR_NFeID);
	}

	/** Get NFe ID.
		@return NFe ID	  */
	public String getLBR_NFeID()
	{
		return (String)get_Value(COLUMNNAME_LBR_NFeID);
	}

	@Deprecated(since="13") // use better methods with cache
	public I_LBR_NFeXML getLBR_NFeXML() throws RuntimeException
	{
		return (I_LBR_NFeXML)MTable.get(getCtx(), I_LBR_NFeXML.Table_ID)
			.getPO(getLBR_NFeXML_ID(), get_TrxName());
	}

	/** Set NFe XML.
		@param LBR_NFeXML_ID NFe XML
	*/
	public void setLBR_NFeXML_ID (int LBR_NFeXML_ID)
	{
		if (LBR_NFeXML_ID < 1)
			set_Value (COLUMNNAME_LBR_NFeXML_ID, null);
		else
			set_Value (COLUMNNAME_LBR_NFeXML_ID, Integer.valueOf(LBR_NFeXML_ID));
	}

	/** Get NFe XML.
		@return NFe XML	  */
	public int getLBR_NFeXML_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_NFeXML_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Eventos de DF-e Recebidos.
		@param LBR_NotaFiscalEventRec_ID Eventos de DF-e Recebidos
	*/
	public void setLBR_NotaFiscalEventRec_ID (int LBR_NotaFiscalEventRec_ID)
	{
		if (LBR_NotaFiscalEventRec_ID < 1)
			set_ValueNoCheck (COLUMNNAME_LBR_NotaFiscalEventRec_ID, null);
		else
			set_ValueNoCheck (COLUMNNAME_LBR_NotaFiscalEventRec_ID, Integer.valueOf(LBR_NotaFiscalEventRec_ID));
	}

	/** Get Eventos de DF-e Recebidos.
		@return Eventos de DF-e Recebidos	  */
	public int getLBR_NotaFiscalEventRec_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_NotaFiscalEventRec_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_NotaFiscalEventRec_UU.
		@param LBR_NotaFiscalEventRec_UU LBR_NotaFiscalEventRec_UU
	*/
	public void setLBR_NotaFiscalEventRec_UU (String LBR_NotaFiscalEventRec_UU)
	{
		set_Value (COLUMNNAME_LBR_NotaFiscalEventRec_UU, LBR_NotaFiscalEventRec_UU);
	}

	/** Get LBR_NotaFiscalEventRec_UU.
		@return LBR_NotaFiscalEventRec_UU	  */
	public String getLBR_NotaFiscalEventRec_UU()
	{
		return (String)get_Value(COLUMNNAME_LBR_NotaFiscalEventRec_UU);
	}

	@Deprecated(since="13") // use better methods with cache
	public I_LBR_NotaFiscal getLBR_NotaFiscal() throws RuntimeException
	{
		return (I_LBR_NotaFiscal)MTable.get(getCtx(), I_LBR_NotaFiscal.Table_ID)
			.getPO(getLBR_NotaFiscal_ID(), get_TrxName());
	}

	/** Set Brazilian Fiscal Invoice (Nota Fiscal).
		@param LBR_NotaFiscal_ID Brazilian Fiscal Invoice (Nota Fiscal) Identifier
	*/
	public void setLBR_NotaFiscal_ID (int LBR_NotaFiscal_ID)
	{
		if (LBR_NotaFiscal_ID < 1)
			set_Value (COLUMNNAME_LBR_NotaFiscal_ID, null);
		else
			set_Value (COLUMNNAME_LBR_NotaFiscal_ID, Integer.valueOf(LBR_NotaFiscal_ID));
	}

	/** Get Brazilian Fiscal Invoice (Nota Fiscal).
		@return Brazilian Fiscal Invoice (Nota Fiscal) Identifier
	  */
	public int getLBR_NotaFiscal_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_NotaFiscal_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}
}