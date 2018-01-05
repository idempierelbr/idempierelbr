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
package org.idempierelbr.tax.model;

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.util.Properties;
import org.compiere.model.*;
import org.compiere.util.Env;

/** Generated Model for LBR_DocLine_IPI
 *  @author iDempiere (generated) 
 *  @version Release 3.1 - $Id$ */
public class X_LBR_DocLine_IPI extends PO implements I_LBR_DocLine_IPI, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20170110L;

    /** Standard Constructor */
    public X_LBR_DocLine_IPI (Properties ctx, int LBR_DocLine_IPI_ID, String trxName)
    {
      super (ctx, LBR_DocLine_IPI_ID, trxName);
      /** if (LBR_DocLine_IPI_ID == 0)
        {
			setIsTaxIncluded (false);
// N
        } */
    }

    /** Load Constructor */
    public X_LBR_DocLine_IPI (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_DocLine_IPI[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Percentage = PER */
	public static final String CALCULATIONTYPE_Percentage = "PER";
	/** Amount = AMT */
	public static final String CALCULATIONTYPE_Amount = "AMT";
	/** Set Calculation.
		@param CalculationType Calculation	  */
	public void setCalculationType (String CalculationType)
	{

		set_Value (COLUMNNAME_CalculationType, CalculationType);
	}

	/** Get Calculation.
		@return Calculation	  */
	public String getCalculationType () 
	{
		return (String)get_Value(COLUMNNAME_CalculationType);
	}

	/** Set Price includes Tax.
		@param IsTaxIncluded 
		Tax is included in the price 
	  */
	public void setIsTaxIncluded (boolean IsTaxIncluded)
	{
		set_Value (COLUMNNAME_IsTaxIncluded, Boolean.valueOf(IsTaxIncluded));
	}

	/** Get Price includes Tax.
		@return Tax is included in the price 
	  */
	public boolean isTaxIncluded () 
	{
		Object oo = get_Value(COLUMNNAME_IsTaxIncluded);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set CNPJ.
		@param LBR_CNPJ 
		Used to identify Legal Entities in Brazil
	  */
	public void setLBR_CNPJ (String LBR_CNPJ)
	{
		set_Value (COLUMNNAME_LBR_CNPJ, LBR_CNPJ);
	}

	/** Get CNPJ.
		@return Used to identify Legal Entities in Brazil
	  */
	public String getLBR_CNPJ () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CNPJ);
	}

	public I_LBR_DocLine_Details getLBR_DocLine_Details() throws RuntimeException
    {
		return (I_LBR_DocLine_Details)MTable.get(getCtx(), I_LBR_DocLine_Details.Table_Name)
			.getPO(getLBR_DocLine_Details_ID(), get_TrxName());	}

	/** Set Doc Line Details.
		@param LBR_DocLine_Details_ID 
		Doc Line Details
	  */
	public void setLBR_DocLine_Details_ID (int LBR_DocLine_Details_ID)
	{
		if (LBR_DocLine_Details_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_DocLine_Details_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_DocLine_Details_ID, Integer.valueOf(LBR_DocLine_Details_ID));
	}

	/** Get Doc Line Details.
		@return Doc Line Details
	  */
	public int getLBR_DocLine_Details_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_DocLine_Details_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Doc Line IPI.
		@param LBR_DocLine_IPI_ID 
		Doc Line IPI
	  */
	public void setLBR_DocLine_IPI_ID (int LBR_DocLine_IPI_ID)
	{
		if (LBR_DocLine_IPI_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_DocLine_IPI_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_DocLine_IPI_ID, Integer.valueOf(LBR_DocLine_IPI_ID));
	}

	/** Get Doc Line IPI.
		@return Doc Line IPI
	  */
	public int getLBR_DocLine_IPI_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_DocLine_IPI_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Doc Line IPI.
		@param LBR_DocLine_IPI_UU 
		Doc Line IPI
	  */
	public void setLBR_DocLine_IPI_UU (String LBR_DocLine_IPI_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_DocLine_IPI_UU, LBR_DocLine_IPI_UU);
	}

	/** Get Doc Line IPI.
		@return Doc Line IPI
	  */
	public String getLBR_DocLine_IPI_UU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_DocLine_IPI_UU);
	}

	/** 00 - Entrada com recuperacao de credito = 00 */
	public static final String LBR_IPI_OWNTAXSTATUS_00_EntradaComRecuperacaoDeCredito = "00";
	/** 01 - Entrada tributada com aliquota zero = 01 */
	public static final String LBR_IPI_OWNTAXSTATUS_01_EntradaTributadaComAliquotaZero = "01";
	/** 02 - Entrada isenta = 02 */
	public static final String LBR_IPI_OWNTAXSTATUS_02_EntradaIsenta = "02";
	/** 03 - Entrada nao-tributada = 03 */
	public static final String LBR_IPI_OWNTAXSTATUS_03_EntradaNao_Tributada = "03";
	/** 04 - Entrada imune = 04 */
	public static final String LBR_IPI_OWNTAXSTATUS_04_EntradaImune = "04";
	/** 05 - Entrada com suspensao = 05 */
	public static final String LBR_IPI_OWNTAXSTATUS_05_EntradaComSuspensao = "05";
	/** 49 - Outras entradas = 49 */
	public static final String LBR_IPI_OWNTAXSTATUS_49_OutrasEntradas = "49";
	/** 50 - Saida tributada = 50 */
	public static final String LBR_IPI_OWNTAXSTATUS_50_SaidaTributada = "50";
	/** 51 - Saida tributada com aliquota zero = 51 */
	public static final String LBR_IPI_OWNTAXSTATUS_51_SaidaTributadaComAliquotaZero = "51";
	/** 52 - Saida isenta = 52 */
	public static final String LBR_IPI_OWNTAXSTATUS_52_SaidaIsenta = "52";
	/** 53 - Saida nao-tributada = 53 */
	public static final String LBR_IPI_OWNTAXSTATUS_53_SaidaNao_Tributada = "53";
	/** 54 - Saida imune = 54 */
	public static final String LBR_IPI_OWNTAXSTATUS_54_SaidaImune = "54";
	/** 55 - Saida com suspensao = 55 */
	public static final String LBR_IPI_OWNTAXSTATUS_55_SaidaComSuspensao = "55";
	/** 99 - Outras saidas = 99 */
	public static final String LBR_IPI_OWNTAXSTATUS_99_OutrasSaidas = "99";
	/** Set Declarant IPI Tax Status.
		@param LBR_IPI_OwnTaxStatus 
		IPI tax status from the point of view of the declarant
	  */
	public void setLBR_IPI_OwnTaxStatus (String LBR_IPI_OwnTaxStatus)
	{

		set_Value (COLUMNNAME_LBR_IPI_OwnTaxStatus, LBR_IPI_OwnTaxStatus);
	}

	/** Get Declarant IPI Tax Status.
		@return IPI tax status from the point of view of the declarant
	  */
	public String getLBR_IPI_OwnTaxStatus () 
	{
		return (String)get_Value(COLUMNNAME_LBR_IPI_OwnTaxStatus);
	}

	/** Set IPI Tax Regarding Class.
		@param LBR_IPI_RegardingClass 
		Identifies the IPI Tax Regarding Class
	  */
	public void setLBR_IPI_RegardingClass (String LBR_IPI_RegardingClass)
	{
		set_Value (COLUMNNAME_LBR_IPI_RegardingClass, LBR_IPI_RegardingClass);
	}

	/** Get IPI Tax Regarding Class.
		@return Identifies the IPI Tax Regarding Class
	  */
	public String getLBR_IPI_RegardingClass () 
	{
		return (String)get_Value(COLUMNNAME_LBR_IPI_RegardingClass);
	}

	/** Set IPI Tax Regarding Code.
		@param LBR_IPI_RegardingCode 
		Identifies the IPI Tax Regarding Code
	  */
	public void setLBR_IPI_RegardingCode (int LBR_IPI_RegardingCode)
	{
		set_Value (COLUMNNAME_LBR_IPI_RegardingCode, Integer.valueOf(LBR_IPI_RegardingCode));
	}

	/** Get IPI Tax Regarding Code.
		@return Identifies the IPI Tax Regarding Code
	  */
	public int getLBR_IPI_RegardingCode () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_IPI_RegardingCode);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set IPI Tax Seal Code.
		@param LBR_IPI_SealCode 
		Identifies the IPI Tax Seal Code
	  */
	public void setLBR_IPI_SealCode (String LBR_IPI_SealCode)
	{
		set_Value (COLUMNNAME_LBR_IPI_SealCode, LBR_IPI_SealCode);
	}

	/** Get IPI Tax Seal Code.
		@return Identifies the IPI Tax Seal Code
	  */
	public String getLBR_IPI_SealCode () 
	{
		return (String)get_Value(COLUMNNAME_LBR_IPI_SealCode);
	}

	/** Set IPI Tax Seal Qty.
		@param LBR_IPI_SealQty 
		Identifies the IPI Tax Seal Qty
	  */
	public void setLBR_IPI_SealQty (int LBR_IPI_SealQty)
	{
		set_Value (COLUMNNAME_LBR_IPI_SealQty, Integer.valueOf(LBR_IPI_SealQty));
	}

	/** Get IPI Tax Seal Qty.
		@return Identifies the IPI Tax Seal Qty
	  */
	public int getLBR_IPI_SealQty () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_IPI_SealQty);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** 00 - Entrada com recuperacao de credito = 00 */
	public static final String LBR_IPI_TAXSTATUS_00_EntradaComRecuperacaoDeCredito = "00";
	/** 01 - Entrada tributada com aliquota zero = 01 */
	public static final String LBR_IPI_TAXSTATUS_01_EntradaTributadaComAliquotaZero = "01";
	/** 02 - Entrada isenta = 02 */
	public static final String LBR_IPI_TAXSTATUS_02_EntradaIsenta = "02";
	/** 03 - Entrada nao-tributada = 03 */
	public static final String LBR_IPI_TAXSTATUS_03_EntradaNao_Tributada = "03";
	/** 04 - Entrada imune = 04 */
	public static final String LBR_IPI_TAXSTATUS_04_EntradaImune = "04";
	/** 05 - Entrada com suspensao = 05 */
	public static final String LBR_IPI_TAXSTATUS_05_EntradaComSuspensao = "05";
	/** 49 - Outras entradas = 49 */
	public static final String LBR_IPI_TAXSTATUS_49_OutrasEntradas = "49";
	/** 50 - Saida tributada = 50 */
	public static final String LBR_IPI_TAXSTATUS_50_SaidaTributada = "50";
	/** 51 - Saida tributada com aliquota zero = 51 */
	public static final String LBR_IPI_TAXSTATUS_51_SaidaTributadaComAliquotaZero = "51";
	/** 52 - Saida isenta = 52 */
	public static final String LBR_IPI_TAXSTATUS_52_SaidaIsenta = "52";
	/** 53 - Saida nao-tributada = 53 */
	public static final String LBR_IPI_TAXSTATUS_53_SaidaNao_Tributada = "53";
	/** 54 - Saida imune = 54 */
	public static final String LBR_IPI_TAXSTATUS_54_SaidaImune = "54";
	/** 55 - Saida com suspensao = 55 */
	public static final String LBR_IPI_TAXSTATUS_55_SaidaComSuspensao = "55";
	/** 99 - Outras saidas = 99 */
	public static final String LBR_IPI_TAXSTATUS_99_OutrasSaidas = "99";
	/** Set IPI Tax Status.
		@param LBR_IPI_TaxStatus 
		Identifies a IPI Tax Status
	  */
	public void setLBR_IPI_TaxStatus (String LBR_IPI_TaxStatus)
	{

		set_Value (COLUMNNAME_LBR_IPI_TaxStatus, LBR_IPI_TaxStatus);
	}

	/** Get IPI Tax Status.
		@return Identifies a IPI Tax Status
	  */
	public String getLBR_IPI_TaxStatus () 
	{
		return (String)get_Value(COLUMNNAME_LBR_IPI_TaxStatus);
	}

	/** Set Tax Amount.
		@param LBR_TaxAmt 
		Defines the Tax Amount
	  */
	public void setLBR_TaxAmt (BigDecimal LBR_TaxAmt)
	{
		set_Value (COLUMNNAME_LBR_TaxAmt, LBR_TaxAmt);
	}

	/** Get Tax Amount.
		@return Defines the Tax Amount
	  */
	public BigDecimal getLBR_TaxAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_TaxAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Tax Base Amount.
		@param LBR_TaxBaseAmt 
		Defines the Tax Base Amount
	  */
	public void setLBR_TaxBaseAmt (BigDecimal LBR_TaxBaseAmt)
	{
		set_Value (COLUMNNAME_LBR_TaxBaseAmt, LBR_TaxBaseAmt);
	}

	/** Get Tax Base Amount.
		@return Defines the Tax Base Amount
	  */
	public BigDecimal getLBR_TaxBaseAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_TaxBaseAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Tax Rate.
		@param LBR_TaxRate 
		Indicates the Tax Rate
	  */
	public void setLBR_TaxRate (BigDecimal LBR_TaxRate)
	{
		set_Value (COLUMNNAME_LBR_TaxRate, LBR_TaxRate);
	}

	/** Get Tax Rate.
		@return Indicates the Tax Rate
	  */
	public BigDecimal getLBR_TaxRate () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_TaxRate);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Unit Price.
		@param PriceActual 
		Actual Price 
	  */
	public void setPriceActual (BigDecimal PriceActual)
	{
		set_Value (COLUMNNAME_PriceActual, PriceActual);
	}

	/** Get Unit Price.
		@return Actual Price 
	  */
	public BigDecimal getPriceActual () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_PriceActual);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Total Quantity.
		@param TotalQty 
		Total Quantity
	  */
	public void setTotalQty (BigDecimal TotalQty)
	{
		set_Value (COLUMNNAME_TotalQty, TotalQty);
	}

	/** Get Total Quantity.
		@return Total Quantity
	  */
	public BigDecimal getTotalQty () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_TotalQty);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}
}