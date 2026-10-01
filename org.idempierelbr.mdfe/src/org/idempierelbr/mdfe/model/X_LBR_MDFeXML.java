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

/** Generated Model for LBR_MDFeXML
 *  @author iDempiere (generated)
 *  @version Release 13 - $Id$ */
@org.adempiere.base.Model(table="LBR_MDFeXML")
public class X_LBR_MDFeXML extends PO implements I_LBR_MDFeXML, I_Persistent
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20260828L;

    /** Standard Constructor */
    public X_LBR_MDFeXML (Properties ctx, int LBR_MDFeXML_ID, String trxName)
    {
      super (ctx, LBR_MDFeXML_ID, trxName);
      /** if (LBR_MDFeXML_ID == 0)
        {
			setLBR_MDFeXML_ID (0);
			setLBR_MDFe_ID (0);
			setLBR_XMLType (null);
        } */
    }

    /** Standard Constructor */
    public X_LBR_MDFeXML (Properties ctx, int LBR_MDFeXML_ID, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_MDFeXML_ID, trxName, virtualColumns);
      /** if (LBR_MDFeXML_ID == 0)
        {
			setLBR_MDFeXML_ID (0);
			setLBR_MDFe_ID (0);
			setLBR_XMLType (null);
        } */
    }

    /** Standard Constructor */
    public X_LBR_MDFeXML (Properties ctx, String LBR_MDFeXML_UU, String trxName)
    {
      super (ctx, LBR_MDFeXML_UU, trxName);
      /** if (LBR_MDFeXML_UU == null)
        {
			setLBR_MDFeXML_ID (0);
			setLBR_MDFe_ID (0);
			setLBR_XMLType (null);
        } */
    }

    /** Standard Constructor */
    public X_LBR_MDFeXML (Properties ctx, String LBR_MDFeXML_UU, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_MDFeXML_UU, trxName, virtualColumns);
      /** if (LBR_MDFeXML_UU == null)
        {
			setLBR_MDFeXML_ID (0);
			setLBR_MDFe_ID (0);
			setLBR_XMLType (null);
        } */
    }

    /** Load Constructor */
    public X_LBR_MDFeXML (Properties ctx, ResultSet rs, String trxName)
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
      StringBuilder sb = new StringBuilder ("X_LBR_MDFeXML[")
        .append(get_ID()).append(",LBR_XMLType=").append(getLBR_XMLType()).append("]");
      return sb.toString();
    }

	/** Set Evento.
		@param LBR_MDFeEvento_ID Evento
	*/
	public void setLBR_MDFeEvento_ID (int LBR_MDFeEvento_ID)
	{
		if (LBR_MDFeEvento_ID < 1)
			set_Value (COLUMNNAME_LBR_MDFeEvento_ID, null);
		else
			set_Value (COLUMNNAME_LBR_MDFeEvento_ID, Integer.valueOf(LBR_MDFeEvento_ID));
	}

	/** Get Evento.
		@return Evento
	  */
	public int getLBR_MDFeEvento_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_MDFeEvento_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_MDFeXML.
		@param LBR_MDFeXML_ID LBR_MDFeXML
	*/
	public void setLBR_MDFeXML_ID (int LBR_MDFeXML_ID)
	{
		if (LBR_MDFeXML_ID < 1)
			set_ValueNoCheck (COLUMNNAME_LBR_MDFeXML_ID, null);
		else
			set_ValueNoCheck (COLUMNNAME_LBR_MDFeXML_ID, Integer.valueOf(LBR_MDFeXML_ID));
	}

	/** Get LBR_MDFeXML.
		@return LBR_MDFeXML
	  */
	public int getLBR_MDFeXML_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_MDFeXML_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_MDFeXML_UU.
		@param LBR_MDFeXML_UU LBR_MDFeXML_UU
	*/
	public void setLBR_MDFeXML_UU (String LBR_MDFeXML_UU)
	{
		set_Value (COLUMNNAME_LBR_MDFeXML_UU, LBR_MDFeXML_UU);
	}

	/** Get LBR_MDFeXML_UU.
		@return LBR_MDFeXML_UU
	  */
	public String getLBR_MDFeXML_UU()
	{
		return (String)get_Value(COLUMNNAME_LBR_MDFeXML_UU);
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

	/** Set Conteudo do XML.
		@param LBR_XMLContent Conteudo do XML
	*/
	public void setLBR_XMLContent (String LBR_XMLContent)
	{
		set_Value (COLUMNNAME_LBR_XMLContent, LBR_XMLContent);
	}

	/** Get Conteudo do XML.
		@return Conteudo do XML
	  */
	public String getLBR_XMLContent()
	{
		return (String)get_Value(COLUMNNAME_LBR_XMLContent);
	}

	/** LBR_XMLType */
	/** Lote enviado = ENVI */
	public static final String LBR_XMLTYPE_LoteEnviado = "ENVI";
	/** Evento enviado = EVENTO */
	public static final String LBR_XMLTYPE_EventoEnviado = "EVENTO";
	/** MDF-e assinado = MDFE */
	public static final String LBR_XMLTYPE_MDF_EAssinado = "MDFE";
	/** MDF-e processado (procMDFe) = PROC */
	public static final String LBR_XMLTYPE_MDF_EProcessadoProcMDFe = "PROC";
	/** Retorno do envio = RETENVI */
	public static final String LBR_XMLTYPE_RetornoDoEnvio = "RETENVI";
	/** Retorno do evento = RETEVENTO */
	public static final String LBR_XMLTYPE_RetornoDoEvento = "RETEVENTO";
	/** Set Tipo do XML.
		@param LBR_XMLType Tipo do XML
	*/
	public void setLBR_XMLType (String LBR_XMLType)
	{
		set_Value (COLUMNNAME_LBR_XMLType, LBR_XMLType);
	}

	/** Get Tipo do XML.
		@return Tipo do XML
	  */
	public String getLBR_XMLType()
	{
		return (String)get_Value(COLUMNNAME_LBR_XMLType);
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

}
