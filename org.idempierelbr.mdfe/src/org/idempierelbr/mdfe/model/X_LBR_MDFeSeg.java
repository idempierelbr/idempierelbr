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

/** Generated Model for LBR_MDFeSeg
 *  @author iDempiere (generated)
 *  @version Release 13 - $Id$ */
@org.adempiere.base.Model(table="LBR_MDFeSeg")
public class X_LBR_MDFeSeg extends PO implements I_LBR_MDFeSeg, I_Persistent
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20260828L;

    /** Standard Constructor */
    public X_LBR_MDFeSeg (Properties ctx, int LBR_MDFeSeg_ID, String trxName)
    {
      super (ctx, LBR_MDFeSeg_ID, trxName);
      /** if (LBR_MDFeSeg_ID == 0)
        {
			setLBR_MDFeSeg_ID (0);
			setLBR_MDFe_ID (0);
			setLBR_RespSeg (null);
        } */
    }

    /** Standard Constructor */
    public X_LBR_MDFeSeg (Properties ctx, int LBR_MDFeSeg_ID, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_MDFeSeg_ID, trxName, virtualColumns);
      /** if (LBR_MDFeSeg_ID == 0)
        {
			setLBR_MDFeSeg_ID (0);
			setLBR_MDFe_ID (0);
			setLBR_RespSeg (null);
        } */
    }

    /** Standard Constructor */
    public X_LBR_MDFeSeg (Properties ctx, String LBR_MDFeSeg_UU, String trxName)
    {
      super (ctx, LBR_MDFeSeg_UU, trxName);
      /** if (LBR_MDFeSeg_UU == null)
        {
			setLBR_MDFeSeg_ID (0);
			setLBR_MDFe_ID (0);
			setLBR_RespSeg (null);
        } */
    }

    /** Standard Constructor */
    public X_LBR_MDFeSeg (Properties ctx, String LBR_MDFeSeg_UU, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_MDFeSeg_UU, trxName, virtualColumns);
      /** if (LBR_MDFeSeg_UU == null)
        {
			setLBR_MDFeSeg_ID (0);
			setLBR_MDFe_ID (0);
			setLBR_RespSeg (null);
        } */
    }

    /** Load Constructor */
    public X_LBR_MDFeSeg (Properties ctx, ResultSet rs, String trxName)
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
      StringBuilder sb = new StringBuilder ("X_LBR_MDFeSeg[")
        .append(get_ID()).append(",LBR_SegName=").append(getLBR_SegName()).append("]");
      return sb.toString();
    }

	/** Set LBR_MDFeSeg.
		@param LBR_MDFeSeg_ID LBR_MDFeSeg
	*/
	public void setLBR_MDFeSeg_ID (int LBR_MDFeSeg_ID)
	{
		if (LBR_MDFeSeg_ID < 1)
			set_ValueNoCheck (COLUMNNAME_LBR_MDFeSeg_ID, null);
		else
			set_ValueNoCheck (COLUMNNAME_LBR_MDFeSeg_ID, Integer.valueOf(LBR_MDFeSeg_ID));
	}

	/** Get LBR_MDFeSeg.
		@return LBR_MDFeSeg
	  */
	public int getLBR_MDFeSeg_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_MDFeSeg_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_MDFeSeg_UU.
		@param LBR_MDFeSeg_UU LBR_MDFeSeg_UU
	*/
	public void setLBR_MDFeSeg_UU (String LBR_MDFeSeg_UU)
	{
		set_Value (COLUMNNAME_LBR_MDFeSeg_UU, LBR_MDFeSeg_UU);
	}

	/** Get LBR_MDFeSeg_UU.
		@return LBR_MDFeSeg_UU
	  */
	public String getLBR_MDFeSeg_UU()
	{
		return (String)get_Value(COLUMNNAME_LBR_MDFeSeg_UU);
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

	/** Set Numero da apolice.
		@param LBR_NApol Numero da apolice
	*/
	public void setLBR_NApol (String LBR_NApol)
	{
		set_Value (COLUMNNAME_LBR_NApol, LBR_NApol);
	}

	/** Get Numero da apolice.
		@return Numero da apolice
	  */
	public String getLBR_NApol()
	{
		return (String)get_Value(COLUMNNAME_LBR_NApol);
	}

	/** Set CNPJ do responsavel.
		@param LBR_RespCNPJ CNPJ do responsavel
	*/
	public void setLBR_RespCNPJ (String LBR_RespCNPJ)
	{
		set_Value (COLUMNNAME_LBR_RespCNPJ, LBR_RespCNPJ);
	}

	/** Get CNPJ do responsavel.
		@return CNPJ do responsavel
	  */
	public String getLBR_RespCNPJ()
	{
		return (String)get_Value(COLUMNNAME_LBR_RespCNPJ);
	}

	/** Set CPF do responsavel.
		@param LBR_RespCPF CPF do responsavel
	*/
	public void setLBR_RespCPF (String LBR_RespCPF)
	{
		set_Value (COLUMNNAME_LBR_RespCPF, LBR_RespCPF);
	}

	/** Get CPF do responsavel.
		@return CPF do responsavel
	  */
	public String getLBR_RespCPF()
	{
		return (String)get_Value(COLUMNNAME_LBR_RespCPF);
	}

	/** LBR_RespSeg */
	/** Emitente do MDF-e = 1 */
	public static final String LBR_RESPSEG_EmitenteDoMDF_E = "1";
	/** Contratante do servico de transporte = 2 */
	public static final String LBR_RESPSEG_ContratanteDoServicoDeTransporte = "2";
	/** Set Responsavel pelo seguro.
		@param LBR_RespSeg infResp/respSeg
	*/
	public void setLBR_RespSeg (String LBR_RespSeg)
	{
		set_Value (COLUMNNAME_LBR_RespSeg, LBR_RespSeg);
	}

	/** Get Responsavel pelo seguro.
		@return infResp/respSeg
	  */
	public String getLBR_RespSeg()
	{
		return (String)get_Value(COLUMNNAME_LBR_RespSeg);
	}

	/** Set CNPJ da seguradora.
		@param LBR_SegCNPJ CNPJ da seguradora
	*/
	public void setLBR_SegCNPJ (String LBR_SegCNPJ)
	{
		set_Value (COLUMNNAME_LBR_SegCNPJ, LBR_SegCNPJ);
	}

	/** Get CNPJ da seguradora.
		@return CNPJ da seguradora
	  */
	public String getLBR_SegCNPJ()
	{
		return (String)get_Value(COLUMNNAME_LBR_SegCNPJ);
	}

	/** Set Seguradora.
		@param LBR_SegName infSeg/xSeg
	*/
	public void setLBR_SegName (String LBR_SegName)
	{
		set_Value (COLUMNNAME_LBR_SegName, LBR_SegName);
	}

	/** Get Seguradora.
		@return infSeg/xSeg
	  */
	public String getLBR_SegName()
	{
		return (String)get_Value(COLUMNNAME_LBR_SegName);
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
