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

/** Generated Model for LBR_MDFeContratante
 *  @author iDempiere (generated)
 *  @version Release 13 - $Id$ */
@org.adempiere.base.Model(table="LBR_MDFeContratante")
public class X_LBR_MDFeContratante extends PO implements I_LBR_MDFeContratante, I_Persistent
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20260828L;

    /** Standard Constructor */
    public X_LBR_MDFeContratante (Properties ctx, int LBR_MDFeContratante_ID, String trxName)
    {
      super (ctx, LBR_MDFeContratante_ID, trxName);
      /** if (LBR_MDFeContratante_ID == 0)
        {
			setLBR_MDFeContratante_ID (0);
			setLBR_MDFe_ID (0);
        } */
    }

    /** Standard Constructor */
    public X_LBR_MDFeContratante (Properties ctx, int LBR_MDFeContratante_ID, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_MDFeContratante_ID, trxName, virtualColumns);
      /** if (LBR_MDFeContratante_ID == 0)
        {
			setLBR_MDFeContratante_ID (0);
			setLBR_MDFe_ID (0);
        } */
    }

    /** Standard Constructor */
    public X_LBR_MDFeContratante (Properties ctx, String LBR_MDFeContratante_UU, String trxName)
    {
      super (ctx, LBR_MDFeContratante_UU, trxName);
      /** if (LBR_MDFeContratante_UU == null)
        {
			setLBR_MDFeContratante_ID (0);
			setLBR_MDFe_ID (0);
        } */
    }

    /** Standard Constructor */
    public X_LBR_MDFeContratante (Properties ctx, String LBR_MDFeContratante_UU, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_MDFeContratante_UU, trxName, virtualColumns);
      /** if (LBR_MDFeContratante_UU == null)
        {
			setLBR_MDFeContratante_ID (0);
			setLBR_MDFe_ID (0);
        } */
    }

    /** Load Constructor */
    public X_LBR_MDFeContratante (Properties ctx, ResultSet rs, String trxName)
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
      StringBuilder sb = new StringBuilder ("X_LBR_MDFeContratante[")
        .append(get_ID()).append(",Name=").append(getName()).append("]");
      return sb.toString();
    }

	/** Set Parceiro de negocio.
		@param C_BPartner_ID Parceiro de negocio
	*/
	public void setC_BPartner_ID (int C_BPartner_ID)
	{
		if (C_BPartner_ID < 1)
			set_Value (COLUMNNAME_C_BPartner_ID, null);
		else
			set_Value (COLUMNNAME_C_BPartner_ID, Integer.valueOf(C_BPartner_ID));
	}

	/** Get Parceiro de negocio.
		@return Parceiro de negocio
	  */
	public int getC_BPartner_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_BPartner_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set CNPJ.
		@param LBR_CNPJ CNPJ
	*/
	public void setLBR_CNPJ (String LBR_CNPJ)
	{
		set_Value (COLUMNNAME_LBR_CNPJ, LBR_CNPJ);
	}

	/** Get CNPJ.
		@return CNPJ
	  */
	public String getLBR_CNPJ()
	{
		return (String)get_Value(COLUMNNAME_LBR_CNPJ);
	}

	/** Set CPF.
		@param LBR_CPF CPF
	*/
	public void setLBR_CPF (String LBR_CPF)
	{
		set_Value (COLUMNNAME_LBR_CPF, LBR_CPF);
	}

	/** Get CPF.
		@return CPF
	  */
	public String getLBR_CPF()
	{
		return (String)get_Value(COLUMNNAME_LBR_CPF);
	}

	/** Set Identificador estrangeiro.
		@param LBR_IdEstrangeiro infContratante/idEstrangeiro
	*/
	public void setLBR_IdEstrangeiro (String LBR_IdEstrangeiro)
	{
		set_Value (COLUMNNAME_LBR_IdEstrangeiro, LBR_IdEstrangeiro);
	}

	/** Get Identificador estrangeiro.
		@return infContratante/idEstrangeiro
	  */
	public String getLBR_IdEstrangeiro()
	{
		return (String)get_Value(COLUMNNAME_LBR_IdEstrangeiro);
	}

	/** Set LBR_MDFeContratante.
		@param LBR_MDFeContratante_ID LBR_MDFeContratante
	*/
	public void setLBR_MDFeContratante_ID (int LBR_MDFeContratante_ID)
	{
		if (LBR_MDFeContratante_ID < 1)
			set_ValueNoCheck (COLUMNNAME_LBR_MDFeContratante_ID, null);
		else
			set_ValueNoCheck (COLUMNNAME_LBR_MDFeContratante_ID, Integer.valueOf(LBR_MDFeContratante_ID));
	}

	/** Get LBR_MDFeContratante.
		@return LBR_MDFeContratante
	  */
	public int getLBR_MDFeContratante_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_MDFeContratante_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_MDFeContratante_UU.
		@param LBR_MDFeContratante_UU LBR_MDFeContratante_UU
	*/
	public void setLBR_MDFeContratante_UU (String LBR_MDFeContratante_UU)
	{
		set_Value (COLUMNNAME_LBR_MDFeContratante_UU, LBR_MDFeContratante_UU);
	}

	/** Get LBR_MDFeContratante_UU.
		@return LBR_MDFeContratante_UU
	  */
	public String getLBR_MDFeContratante_UU()
	{
		return (String)get_Value(COLUMNNAME_LBR_MDFeContratante_UU);
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

	/** Set Numero do contrato.
		@param LBR_NroContrato Numero do contrato
	*/
	public void setLBR_NroContrato (String LBR_NroContrato)
	{
		set_Value (COLUMNNAME_LBR_NroContrato, LBR_NroContrato);
	}

	/** Get Numero do contrato.
		@return Numero do contrato
	  */
	public String getLBR_NroContrato()
	{
		return (String)get_Value(COLUMNNAME_LBR_NroContrato);
	}

	/** Set Valor global do contrato.
		@param LBR_ValueContract Valor global do contrato
	*/
	public void setLBR_ValueContract (BigDecimal LBR_ValueContract)
	{
		set_Value (COLUMNNAME_LBR_ValueContract, LBR_ValueContract);
	}

	/** Get Valor global do contrato.
		@return Valor global do contrato
	  */
	public BigDecimal getLBR_ValueContract()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_ValueContract);
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

	/** Set Nome.
		@param Name infContratante/xNome
	*/
	public void setName (String Name)
	{
		set_Value (COLUMNNAME_Name, Name);
	}

	/** Get Nome.
		@return infContratante/xNome
	  */
	public String getName()
	{
		return (String)get_Value(COLUMNNAME_Name);
	}

}
