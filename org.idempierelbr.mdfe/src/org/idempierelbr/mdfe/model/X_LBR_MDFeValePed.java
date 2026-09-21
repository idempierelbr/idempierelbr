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

/** Generated Model for LBR_MDFeValePed
 *  @author iDempiere (generated)
 *  @version Release 13 - $Id$ */
@org.adempiere.base.Model(table="LBR_MDFeValePed")
public class X_LBR_MDFeValePed extends PO implements I_LBR_MDFeValePed, I_Persistent
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20260828L;

    /** Standard Constructor */
    public X_LBR_MDFeValePed (Properties ctx, int LBR_MDFeValePed_ID, String trxName)
    {
      super (ctx, LBR_MDFeValePed_ID, trxName);
      /** if (LBR_MDFeValePed_ID == 0)
        {
			setLBR_CNPJForn (null);
			setLBR_MDFeValePed_ID (0);
			setLBR_MDFe_ID (0);
        } */
    }

    /** Standard Constructor */
    public X_LBR_MDFeValePed (Properties ctx, int LBR_MDFeValePed_ID, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_MDFeValePed_ID, trxName, virtualColumns);
      /** if (LBR_MDFeValePed_ID == 0)
        {
			setLBR_CNPJForn (null);
			setLBR_MDFeValePed_ID (0);
			setLBR_MDFe_ID (0);
        } */
    }

    /** Standard Constructor */
    public X_LBR_MDFeValePed (Properties ctx, String LBR_MDFeValePed_UU, String trxName)
    {
      super (ctx, LBR_MDFeValePed_UU, trxName);
      /** if (LBR_MDFeValePed_UU == null)
        {
			setLBR_CNPJForn (null);
			setLBR_MDFeValePed_ID (0);
			setLBR_MDFe_ID (0);
        } */
    }

    /** Standard Constructor */
    public X_LBR_MDFeValePed (Properties ctx, String LBR_MDFeValePed_UU, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_MDFeValePed_UU, trxName, virtualColumns);
      /** if (LBR_MDFeValePed_UU == null)
        {
			setLBR_CNPJForn (null);
			setLBR_MDFeValePed_ID (0);
			setLBR_MDFe_ID (0);
        } */
    }

    /** Load Constructor */
    public X_LBR_MDFeValePed (Properties ctx, ResultSet rs, String trxName)
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
      StringBuilder sb = new StringBuilder ("X_LBR_MDFeValePed[")
        .append(get_ID()).append(",LBR_CNPJForn=").append(getLBR_CNPJForn()).append("]");
      return sb.toString();
    }

	/** Set CNPJ do fornecedor.
		@param LBR_CNPJForn disp/CNPJForn
	*/
	public void setLBR_CNPJForn (String LBR_CNPJForn)
	{
		set_Value (COLUMNNAME_LBR_CNPJForn, LBR_CNPJForn);
	}

	/** Get CNPJ do fornecedor.
		@return disp/CNPJForn
	  */
	public String getLBR_CNPJForn()
	{
		return (String)get_Value(COLUMNNAME_LBR_CNPJForn);
	}

	/** Set CNPJ do pagador.
		@param LBR_CNPJPg CNPJ do pagador
	*/
	public void setLBR_CNPJPg (String LBR_CNPJPg)
	{
		set_Value (COLUMNNAME_LBR_CNPJPg, LBR_CNPJPg);
	}

	/** Get CNPJ do pagador.
		@return CNPJ do pagador
	  */
	public String getLBR_CNPJPg()
	{
		return (String)get_Value(COLUMNNAME_LBR_CNPJPg);
	}

	/** Set CPF do pagador.
		@param LBR_CPFPg CPF do pagador
	*/
	public void setLBR_CPFPg (String LBR_CPFPg)
	{
		set_Value (COLUMNNAME_LBR_CPFPg, LBR_CPFPg);
	}

	/** Get CPF do pagador.
		@return CPF do pagador
	  */
	public String getLBR_CPFPg()
	{
		return (String)get_Value(COLUMNNAME_LBR_CPFPg);
	}

	/** Set LBR_MDFeValePed.
		@param LBR_MDFeValePed_ID LBR_MDFeValePed
	*/
	public void setLBR_MDFeValePed_ID (int LBR_MDFeValePed_ID)
	{
		if (LBR_MDFeValePed_ID < 1)
			set_ValueNoCheck (COLUMNNAME_LBR_MDFeValePed_ID, null);
		else
			set_ValueNoCheck (COLUMNNAME_LBR_MDFeValePed_ID, Integer.valueOf(LBR_MDFeValePed_ID));
	}

	/** Get LBR_MDFeValePed.
		@return LBR_MDFeValePed
	  */
	public int getLBR_MDFeValePed_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_MDFeValePed_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_MDFeValePed_UU.
		@param LBR_MDFeValePed_UU LBR_MDFeValePed_UU
	*/
	public void setLBR_MDFeValePed_UU (String LBR_MDFeValePed_UU)
	{
		set_Value (COLUMNNAME_LBR_MDFeValePed_UU, LBR_MDFeValePed_UU);
	}

	/** Get LBR_MDFeValePed_UU.
		@return LBR_MDFeValePed_UU
	  */
	public String getLBR_MDFeValePed_UU()
	{
		return (String)get_Value(COLUMNNAME_LBR_MDFeValePed_UU);
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

	/** Set Numero do comprovante.
		@param LBR_NCompra Numero do comprovante
	*/
	public void setLBR_NCompra (String LBR_NCompra)
	{
		set_Value (COLUMNNAME_LBR_NCompra, LBR_NCompra);
	}

	/** Get Numero do comprovante.
		@return Numero do comprovante
	  */
	public String getLBR_NCompra()
	{
		return (String)get_Value(COLUMNNAME_LBR_NCompra);
	}

	/** Set Valor do vale pedagio.
		@param LBR_ValueValePed Valor do vale pedagio
	*/
	public void setLBR_ValueValePed (BigDecimal LBR_ValueValePed)
	{
		set_Value (COLUMNNAME_LBR_ValueValePed, LBR_ValueValePed);
	}

	/** Get Valor do vale pedagio.
		@return Valor do vale pedagio
	  */
	public BigDecimal getLBR_ValueValePed()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_ValueValePed);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** LBR_tpValePed */
	/** TAG = 01 */
	public static final String LBR_TPVALEPED_TAG = "01";
	/** Leitura de placa = 04 */
	public static final String LBR_TPVALEPED_LeituraDePlaca = "04";
	/** Set Tipo do vale pedagio.
		@param LBR_tpValePed Tipo do vale pedagio
	*/
	public void setLBR_tpValePed (String LBR_tpValePed)
	{
		set_Value (COLUMNNAME_LBR_tpValePed, LBR_tpValePed);
	}

	/** Get Tipo do vale pedagio.
		@return Tipo do vale pedagio
	  */
	public String getLBR_tpValePed()
	{
		return (String)get_Value(COLUMNNAME_LBR_tpValePed);
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
