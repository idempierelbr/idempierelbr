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

/** Generated Model for LBR_MDFePerigoso
 *  @author iDempiere (generated)
 *  @version Release 13 - $Id$ */
@org.adempiere.base.Model(table="LBR_MDFePerigoso")
public class X_LBR_MDFePerigoso extends PO implements I_LBR_MDFePerigoso, I_Persistent
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20260828L;

    /** Standard Constructor */
    public X_LBR_MDFePerigoso (Properties ctx, int LBR_MDFePerigoso_ID, String trxName)
    {
      super (ctx, LBR_MDFePerigoso_ID, trxName);
      /** if (LBR_MDFePerigoso_ID == 0)
        {
			setLBR_MDFeDoc_ID (0);
			setLBR_MDFePerigoso_ID (0);
			setLBR_NONU (null);
			setLBR_QTotProd (null);
        } */
    }

    /** Standard Constructor */
    public X_LBR_MDFePerigoso (Properties ctx, int LBR_MDFePerigoso_ID, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_MDFePerigoso_ID, trxName, virtualColumns);
      /** if (LBR_MDFePerigoso_ID == 0)
        {
			setLBR_MDFeDoc_ID (0);
			setLBR_MDFePerigoso_ID (0);
			setLBR_NONU (null);
			setLBR_QTotProd (null);
        } */
    }

    /** Standard Constructor */
    public X_LBR_MDFePerigoso (Properties ctx, String LBR_MDFePerigoso_UU, String trxName)
    {
      super (ctx, LBR_MDFePerigoso_UU, trxName);
      /** if (LBR_MDFePerigoso_UU == null)
        {
			setLBR_MDFeDoc_ID (0);
			setLBR_MDFePerigoso_ID (0);
			setLBR_NONU (null);
			setLBR_QTotProd (null);
        } */
    }

    /** Standard Constructor */
    public X_LBR_MDFePerigoso (Properties ctx, String LBR_MDFePerigoso_UU, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_MDFePerigoso_UU, trxName, virtualColumns);
      /** if (LBR_MDFePerigoso_UU == null)
        {
			setLBR_MDFeDoc_ID (0);
			setLBR_MDFePerigoso_ID (0);
			setLBR_NONU (null);
			setLBR_QTotProd (null);
        } */
    }

    /** Load Constructor */
    public X_LBR_MDFePerigoso (Properties ctx, ResultSet rs, String trxName)
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
      StringBuilder sb = new StringBuilder ("X_LBR_MDFePerigoso[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set Grupo de embalagem.
		@param LBR_GrEmb peri/grEmb
	*/
	public void setLBR_GrEmb (String LBR_GrEmb)
	{
		set_Value (COLUMNNAME_LBR_GrEmb, LBR_GrEmb);
	}

	/** Get Grupo de embalagem.
		@return peri/grEmb
	  */
	public String getLBR_GrEmb()
	{
		return (String)get_Value(COLUMNNAME_LBR_GrEmb);
	}

	/** Set Documento.
		@param LBR_MDFeDoc_ID Documento
	*/
	public void setLBR_MDFeDoc_ID (int LBR_MDFeDoc_ID)
	{
		if (LBR_MDFeDoc_ID < 1)
			set_Value (COLUMNNAME_LBR_MDFeDoc_ID, null);
		else
			set_Value (COLUMNNAME_LBR_MDFeDoc_ID, Integer.valueOf(LBR_MDFeDoc_ID));
	}

	/** Get Documento.
		@return Documento
	  */
	public int getLBR_MDFeDoc_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_MDFeDoc_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_MDFePerigoso.
		@param LBR_MDFePerigoso_ID LBR_MDFePerigoso
	*/
	public void setLBR_MDFePerigoso_ID (int LBR_MDFePerigoso_ID)
	{
		if (LBR_MDFePerigoso_ID < 1)
			set_ValueNoCheck (COLUMNNAME_LBR_MDFePerigoso_ID, null);
		else
			set_ValueNoCheck (COLUMNNAME_LBR_MDFePerigoso_ID, Integer.valueOf(LBR_MDFePerigoso_ID));
	}

	/** Get LBR_MDFePerigoso.
		@return LBR_MDFePerigoso
	  */
	public int getLBR_MDFePerigoso_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_MDFePerigoso_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_MDFePerigoso_UU.
		@param LBR_MDFePerigoso_UU LBR_MDFePerigoso_UU
	*/
	public void setLBR_MDFePerigoso_UU (String LBR_MDFePerigoso_UU)
	{
		set_Value (COLUMNNAME_LBR_MDFePerigoso_UU, LBR_MDFePerigoso_UU);
	}

	/** Get LBR_MDFePerigoso_UU.
		@return LBR_MDFePerigoso_UU
	  */
	public String getLBR_MDFePerigoso_UU()
	{
		return (String)get_Value(COLUMNNAME_LBR_MDFePerigoso_UU);
	}

	/** Set Numero ONU.
		@param LBR_NONU peri/nONU
	*/
	public void setLBR_NONU (String LBR_NONU)
	{
		set_Value (COLUMNNAME_LBR_NONU, LBR_NONU);
	}

	/** Get Numero ONU.
		@return peri/nONU
	  */
	public String getLBR_NONU()
	{
		return (String)get_Value(COLUMNNAME_LBR_NONU);
	}

	/** Set Quantidade total.
		@param LBR_QTotProd peri/qTotProd
	*/
	public void setLBR_QTotProd (String LBR_QTotProd)
	{
		set_Value (COLUMNNAME_LBR_QTotProd, LBR_QTotProd);
	}

	/** Get Quantidade total.
		@return peri/qTotProd
	  */
	public String getLBR_QTotProd()
	{
		return (String)get_Value(COLUMNNAME_LBR_QTotProd);
	}

	/** Set Quantidade e tipo de volumes.
		@param LBR_QVolTipo peri/qVolTipo
	*/
	public void setLBR_QVolTipo (String LBR_QVolTipo)
	{
		set_Value (COLUMNNAME_LBR_QVolTipo, LBR_QVolTipo);
	}

	/** Get Quantidade e tipo de volumes.
		@return peri/qVolTipo
	  */
	public String getLBR_QVolTipo()
	{
		return (String)get_Value(COLUMNNAME_LBR_QVolTipo);
	}

	/** Set Classe de risco.
		@param LBR_XClaRisco peri/xClaRisco
	*/
	public void setLBR_XClaRisco (String LBR_XClaRisco)
	{
		set_Value (COLUMNNAME_LBR_XClaRisco, LBR_XClaRisco);
	}

	/** Get Classe de risco.
		@return peri/xClaRisco
	  */
	public String getLBR_XClaRisco()
	{
		return (String)get_Value(COLUMNNAME_LBR_XClaRisco);
	}

	/** Set Nome para embarque.
		@param LBR_XNomeAE peri/xNomeAE
	*/
	public void setLBR_XNomeAE (String LBR_XNomeAE)
	{
		set_Value (COLUMNNAME_LBR_XNomeAE, LBR_XNomeAE);
	}

	/** Get Nome para embarque.
		@return peri/xNomeAE
	  */
	public String getLBR_XNomeAE()
	{
		return (String)get_Value(COLUMNNAME_LBR_XNomeAE);
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
