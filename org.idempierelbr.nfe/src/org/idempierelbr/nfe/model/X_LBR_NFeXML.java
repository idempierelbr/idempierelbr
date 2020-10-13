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

import java.sql.ResultSet;
import java.util.Properties;
import org.compiere.model.*;

/** Generated Model for LBR_NFeXML
 *  @author iDempiere (generated) 
 *  @version Release 7.1 - $Id$ */
public class X_LBR_NFeXML extends PO implements I_LBR_NFeXML, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20201013L;

    /** Standard Constructor */
    public X_LBR_NFeXML (Properties ctx, int LBR_NFeXML_ID, String trxName)
    {
      super (ctx, LBR_NFeXML_ID, trxName);
      /** if (LBR_NFeXML_ID == 0)
        {
        } */
    }

    /** Load Constructor */
    public X_LBR_NFeXML (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_NFeXML[")
        .append(get_ID()).append("]");
      return sb.toString();
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

	/** Set NFe XML.
		@param LBR_NFeXML_ID NFe XML	  */
	public void setLBR_NFeXML_ID (int LBR_NFeXML_ID)
	{
		if (LBR_NFeXML_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_NFeXML_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_NFeXML_ID, Integer.valueOf(LBR_NFeXML_ID));
	}

	/** Get NFe XML.
		@return NFe XML	  */
	public int getLBR_NFeXML_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_NFeXML_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set NFe XML.
		@param LBR_NFeXML_UU NFe XML	  */
	public void setLBR_NFeXML_UU (String LBR_NFeXML_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_NFeXML_UU, LBR_NFeXML_UU);
	}

	/** Get NFe XML.
		@return NFe XML	  */
	public String getLBR_NFeXML_UU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_NFeXML_UU);
	}

	/** Set NSU.
		@param LBR_NSU NSU	  */
	public void setLBR_NSU (String LBR_NSU)
	{
		set_Value (COLUMNNAME_LBR_NSU, LBR_NSU);
	}

	/** Get NSU.
		@return NSU	  */
	public String getLBR_NSU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_NSU);
	}

	/** Set Schema Name.
		@param LBR_SchemaName Schema Name	  */
	public void setLBR_SchemaName (String LBR_SchemaName)
	{
		set_Value (COLUMNNAME_LBR_SchemaName, LBR_SchemaName);
	}

	/** Get Schema Name.
		@return Schema Name	  */
	public String getLBR_SchemaName () 
	{
		return (String)get_Value(COLUMNNAME_LBR_SchemaName);
	}

	/** LBR_UltimaManifestacao AD_Reference_ID=800054 */
	public static final int LBR_ULTIMAMANIFESTACAO_AD_Reference_ID=800054;
	/** 210200 - Confirmacao da Operacao  = 210200 */
	public static final String LBR_ULTIMAMANIFESTACAO_210200_ConfirmacaoDaOperacao = "210200";
	/** 210210 - Ciencia da Operacao = 210210 */
	public static final String LBR_ULTIMAMANIFESTACAO_210210_CienciaDaOperacao = "210210";
	/** 210220 - Desconhecimento da Operacao = 210220 */
	public static final String LBR_ULTIMAMANIFESTACAO_210220_DesconhecimentoDaOperacao = "210220";
	/** 210240 - Operacao nao Realizada = 210240 */
	public static final String LBR_ULTIMAMANIFESTACAO_210240_OperacaoNaoRealizada = "210240";
	/** Set Ultima Manifestacao.
		@param LBR_UltimaManifestacao Ultima Manifestacao	  */
	public void setLBR_UltimaManifestacao (String LBR_UltimaManifestacao)
	{

		set_Value (COLUMNNAME_LBR_UltimaManifestacao, LBR_UltimaManifestacao);
	}

	/** Get Ultima Manifestacao.
		@return Ultima Manifestacao	  */
	public String getLBR_UltimaManifestacao () 
	{
		return (String)get_Value(COLUMNNAME_LBR_UltimaManifestacao);
	}
}