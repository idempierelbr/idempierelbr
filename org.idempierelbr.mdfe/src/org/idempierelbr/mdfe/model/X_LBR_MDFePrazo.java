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

/** Generated Model for LBR_MDFePrazo
 *  @author iDempiere (generated)
 *  @version Release 13 - $Id$ */
@org.adempiere.base.Model(table="LBR_MDFePrazo")
public class X_LBR_MDFePrazo extends PO implements I_LBR_MDFePrazo, I_Persistent
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20260828L;

    /** Standard Constructor */
    public X_LBR_MDFePrazo (Properties ctx, int LBR_MDFePrazo_ID, String trxName)
    {
      super (ctx, LBR_MDFePrazo_ID, trxName);
      /** if (LBR_MDFePrazo_ID == 0)
        {
			setLBR_DateDue (null);
			setLBR_MDFeInfPag_ID (0);
			setLBR_MDFePrazo_ID (0);
			setLBR_NParcela (null);
        } */
    }

    /** Standard Constructor */
    public X_LBR_MDFePrazo (Properties ctx, int LBR_MDFePrazo_ID, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_MDFePrazo_ID, trxName, virtualColumns);
      /** if (LBR_MDFePrazo_ID == 0)
        {
			setLBR_DateDue (null);
			setLBR_MDFeInfPag_ID (0);
			setLBR_MDFePrazo_ID (0);
			setLBR_NParcela (null);
        } */
    }

    /** Standard Constructor */
    public X_LBR_MDFePrazo (Properties ctx, String LBR_MDFePrazo_UU, String trxName)
    {
      super (ctx, LBR_MDFePrazo_UU, trxName);
      /** if (LBR_MDFePrazo_UU == null)
        {
			setLBR_DateDue (null);
			setLBR_MDFeInfPag_ID (0);
			setLBR_MDFePrazo_ID (0);
			setLBR_NParcela (null);
        } */
    }

    /** Standard Constructor */
    public X_LBR_MDFePrazo (Properties ctx, String LBR_MDFePrazo_UU, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_MDFePrazo_UU, trxName, virtualColumns);
      /** if (LBR_MDFePrazo_UU == null)
        {
			setLBR_DateDue (null);
			setLBR_MDFeInfPag_ID (0);
			setLBR_MDFePrazo_ID (0);
			setLBR_NParcela (null);
        } */
    }

    /** Load Constructor */
    public X_LBR_MDFePrazo (Properties ctx, ResultSet rs, String trxName)
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
      StringBuilder sb = new StringBuilder ("X_LBR_MDFePrazo[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set Vencimento.
		@param LBR_DateDue infPrazo/dVenc
	*/
	public void setLBR_DateDue (Timestamp LBR_DateDue)
	{
		set_Value (COLUMNNAME_LBR_DateDue, LBR_DateDue);
	}

	/** Get Vencimento.
		@return infPrazo/dVenc
	  */
	public Timestamp getLBR_DateDue()
	{
		return (Timestamp)get_Value(COLUMNNAME_LBR_DateDue);
	}

	/** Set Pagamento.
		@param LBR_MDFeInfPag_ID Pagamento
	*/
	public void setLBR_MDFeInfPag_ID (int LBR_MDFeInfPag_ID)
	{
		if (LBR_MDFeInfPag_ID < 1)
			set_Value (COLUMNNAME_LBR_MDFeInfPag_ID, null);
		else
			set_Value (COLUMNNAME_LBR_MDFeInfPag_ID, Integer.valueOf(LBR_MDFeInfPag_ID));
	}

	/** Get Pagamento.
		@return Pagamento
	  */
	public int getLBR_MDFeInfPag_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_MDFeInfPag_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_MDFePrazo.
		@param LBR_MDFePrazo_ID LBR_MDFePrazo
	*/
	public void setLBR_MDFePrazo_ID (int LBR_MDFePrazo_ID)
	{
		if (LBR_MDFePrazo_ID < 1)
			set_ValueNoCheck (COLUMNNAME_LBR_MDFePrazo_ID, null);
		else
			set_ValueNoCheck (COLUMNNAME_LBR_MDFePrazo_ID, Integer.valueOf(LBR_MDFePrazo_ID));
	}

	/** Get LBR_MDFePrazo.
		@return LBR_MDFePrazo
	  */
	public int getLBR_MDFePrazo_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_MDFePrazo_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_MDFePrazo_UU.
		@param LBR_MDFePrazo_UU LBR_MDFePrazo_UU
	*/
	public void setLBR_MDFePrazo_UU (String LBR_MDFePrazo_UU)
	{
		set_Value (COLUMNNAME_LBR_MDFePrazo_UU, LBR_MDFePrazo_UU);
	}

	/** Get LBR_MDFePrazo_UU.
		@return LBR_MDFePrazo_UU
	  */
	public String getLBR_MDFePrazo_UU()
	{
		return (String)get_Value(COLUMNNAME_LBR_MDFePrazo_UU);
	}

	/** Set Numero da parcela.
		@param LBR_NParcela infPrazo/nParcela
	*/
	public void setLBR_NParcela (String LBR_NParcela)
	{
		set_Value (COLUMNNAME_LBR_NParcela, LBR_NParcela);
	}

	/** Get Numero da parcela.
		@return infPrazo/nParcela
	  */
	public String getLBR_NParcela()
	{
		return (String)get_Value(COLUMNNAME_LBR_NParcela);
	}

	/** Set Valor da parcela.
		@param LBR_ValueParcela infPrazo/vParcela
	*/
	public void setLBR_ValueParcela (BigDecimal LBR_ValueParcela)
	{
		set_Value (COLUMNNAME_LBR_ValueParcela, LBR_ValueParcela);
	}

	/** Get Valor da parcela.
		@return infPrazo/vParcela
	  */
	public BigDecimal getLBR_ValueParcela()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_ValueParcela);
		if (bd == null)
			 return Env.ZERO;
		return bd;
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
