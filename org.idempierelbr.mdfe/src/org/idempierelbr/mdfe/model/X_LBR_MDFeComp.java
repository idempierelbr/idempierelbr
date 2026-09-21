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

/** Generated Model for LBR_MDFeComp
 *  @author iDempiere (generated)
 *  @version Release 13 - $Id$ */
@org.adempiere.base.Model(table="LBR_MDFeComp")
public class X_LBR_MDFeComp extends PO implements I_LBR_MDFeComp, I_Persistent
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20260828L;

    /** Standard Constructor */
    public X_LBR_MDFeComp (Properties ctx, int LBR_MDFeComp_ID, String trxName)
    {
      super (ctx, LBR_MDFeComp_ID, trxName);
      /** if (LBR_MDFeComp_ID == 0)
        {
			setLBR_MDFeComp_ID (0);
			setLBR_MDFeInfPag_ID (0);
			setLBR_TpComp (null);
			setLBR_ValueComp (null);
        } */
    }

    /** Standard Constructor */
    public X_LBR_MDFeComp (Properties ctx, int LBR_MDFeComp_ID, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_MDFeComp_ID, trxName, virtualColumns);
      /** if (LBR_MDFeComp_ID == 0)
        {
			setLBR_MDFeComp_ID (0);
			setLBR_MDFeInfPag_ID (0);
			setLBR_TpComp (null);
			setLBR_ValueComp (null);
        } */
    }

    /** Standard Constructor */
    public X_LBR_MDFeComp (Properties ctx, String LBR_MDFeComp_UU, String trxName)
    {
      super (ctx, LBR_MDFeComp_UU, trxName);
      /** if (LBR_MDFeComp_UU == null)
        {
			setLBR_MDFeComp_ID (0);
			setLBR_MDFeInfPag_ID (0);
			setLBR_TpComp (null);
			setLBR_ValueComp (null);
        } */
    }

    /** Standard Constructor */
    public X_LBR_MDFeComp (Properties ctx, String LBR_MDFeComp_UU, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_MDFeComp_UU, trxName, virtualColumns);
      /** if (LBR_MDFeComp_UU == null)
        {
			setLBR_MDFeComp_ID (0);
			setLBR_MDFeInfPag_ID (0);
			setLBR_TpComp (null);
			setLBR_ValueComp (null);
        } */
    }

    /** Load Constructor */
    public X_LBR_MDFeComp (Properties ctx, ResultSet rs, String trxName)
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
      StringBuilder sb = new StringBuilder ("X_LBR_MDFeComp[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set LBR_MDFeComp.
		@param LBR_MDFeComp_ID LBR_MDFeComp
	*/
	public void setLBR_MDFeComp_ID (int LBR_MDFeComp_ID)
	{
		if (LBR_MDFeComp_ID < 1)
			set_ValueNoCheck (COLUMNNAME_LBR_MDFeComp_ID, null);
		else
			set_ValueNoCheck (COLUMNNAME_LBR_MDFeComp_ID, Integer.valueOf(LBR_MDFeComp_ID));
	}

	/** Get LBR_MDFeComp.
		@return LBR_MDFeComp
	  */
	public int getLBR_MDFeComp_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_MDFeComp_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_MDFeComp_UU.
		@param LBR_MDFeComp_UU LBR_MDFeComp_UU
	*/
	public void setLBR_MDFeComp_UU (String LBR_MDFeComp_UU)
	{
		set_Value (COLUMNNAME_LBR_MDFeComp_UU, LBR_MDFeComp_UU);
	}

	/** Get LBR_MDFeComp_UU.
		@return LBR_MDFeComp_UU
	  */
	public String getLBR_MDFeComp_UU()
	{
		return (String)get_Value(COLUMNNAME_LBR_MDFeComp_UU);
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

	/** LBR_TpComp AD_Reference_ID=1100020 */
	public static final int LBR_TPCOMP_AD_Reference_ID=1100020;
	/** Vale-pedagio = 01 */
	public static final String LBR_TPCOMP_Vale_Pedagio = "01";
	/** Impostos, taxas e contribuicoes = 02 */
	public static final String LBR_TPCOMP_ImpostosTaxasEContribuicoes = "02";
	/** Despesas (bancarias, meios de pagamento, outras) = 03 */
	public static final String LBR_TPCOMP_DespesasBancariasMeiosDePagamentoOutras = "03";
	/** Frete = 04 */
	public static final String LBR_TPCOMP_Frete = "04";
	/** Outros = 99 */
	public static final String LBR_TPCOMP_Outros = "99";
	/** Set Tipo do componente.
		@param LBR_TpComp Comp/tpComp
	*/
	public void setLBR_TpComp (String LBR_TpComp)
	{
		set_Value (COLUMNNAME_LBR_TpComp, LBR_TpComp);
	}

	/** Get Tipo do componente.
		@return Comp/tpComp
	  */
	public String getLBR_TpComp()
	{
		return (String)get_Value(COLUMNNAME_LBR_TpComp);
	}

	/** Set Valor do componente.
		@param LBR_ValueComp Comp/vComp
	*/
	public void setLBR_ValueComp (BigDecimal LBR_ValueComp)
	{
		set_Value (COLUMNNAME_LBR_ValueComp, LBR_ValueComp);
	}

	/** Get Valor do componente.
		@return Comp/vComp
	  */
	public BigDecimal getLBR_ValueComp()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_ValueComp);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Descricao do componente.
		@param LBR_XComp Comp/xComp
	*/
	public void setLBR_XComp (String LBR_XComp)
	{
		set_Value (COLUMNNAME_LBR_XComp, LBR_XComp);
	}

	/** Get Descricao do componente.
		@return Comp/xComp
	  */
	public String getLBR_XComp()
	{
		return (String)get_Value(COLUMNNAME_LBR_XComp);
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
