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

/** Generated Model for LBR_MDFeReboque
 *  @author iDempiere (generated)
 *  @version Release 13 - $Id$ */
@org.adempiere.base.Model(table="LBR_MDFeReboque")
public class X_LBR_MDFeReboque extends PO implements I_LBR_MDFeReboque, I_Persistent
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20260828L;

    /** Standard Constructor */
    public X_LBR_MDFeReboque (Properties ctx, int LBR_MDFeReboque_ID, String trxName)
    {
      super (ctx, LBR_MDFeReboque_ID, trxName);
      /** if (LBR_MDFeReboque_ID == 0)
        {
			setLBR_MDFeReboque_ID (0);
			setLBR_MDFe_ID (0);
			setLBR_Placa (null);
        } */
    }

    /** Standard Constructor */
    public X_LBR_MDFeReboque (Properties ctx, int LBR_MDFeReboque_ID, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_MDFeReboque_ID, trxName, virtualColumns);
      /** if (LBR_MDFeReboque_ID == 0)
        {
			setLBR_MDFeReboque_ID (0);
			setLBR_MDFe_ID (0);
			setLBR_Placa (null);
        } */
    }

    /** Standard Constructor */
    public X_LBR_MDFeReboque (Properties ctx, String LBR_MDFeReboque_UU, String trxName)
    {
      super (ctx, LBR_MDFeReboque_UU, trxName);
      /** if (LBR_MDFeReboque_UU == null)
        {
			setLBR_MDFeReboque_ID (0);
			setLBR_MDFe_ID (0);
			setLBR_Placa (null);
        } */
    }

    /** Standard Constructor */
    public X_LBR_MDFeReboque (Properties ctx, String LBR_MDFeReboque_UU, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_MDFeReboque_UU, trxName, virtualColumns);
      /** if (LBR_MDFeReboque_UU == null)
        {
			setLBR_MDFeReboque_ID (0);
			setLBR_MDFe_ID (0);
			setLBR_Placa (null);
        } */
    }

    /** Load Constructor */
    public X_LBR_MDFeReboque (Properties ctx, ResultSet rs, String trxName)
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
      StringBuilder sb = new StringBuilder ("X_LBR_MDFeReboque[")
        .append(get_ID()).append(",LBR_Placa=").append(getLBR_Placa()).append("]");
      return sb.toString();
    }

	/** Set Capacidade (KG).
		@param LBR_CapKG Capacidade (KG)
	*/
	public void setLBR_CapKG (int LBR_CapKG)
	{
		set_Value (COLUMNNAME_LBR_CapKG, Integer.valueOf(LBR_CapKG));
	}

	/** Get Capacidade (KG).
		@return Capacidade (KG)
	  */
	public int getLBR_CapKG()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_CapKG);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Capacidade (M3).
		@param LBR_CapM3 Capacidade (M3)
	*/
	public void setLBR_CapM3 (int LBR_CapM3)
	{
		set_Value (COLUMNNAME_LBR_CapM3, Integer.valueOf(LBR_CapM3));
	}

	/** Get Capacidade (M3).
		@return Capacidade (M3)
	  */
	public int getLBR_CapM3()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_CapM3);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Proprietario nao e o emitente.
		@param LBR_IsOwnerNotEmitter Proprietario nao e o emitente
	*/
	public void setLBR_IsOwnerNotEmitter (boolean LBR_IsOwnerNotEmitter)
	{
		set_Value (COLUMNNAME_LBR_IsOwnerNotEmitter, Boolean.valueOf(LBR_IsOwnerNotEmitter));
	}

	/** Get Proprietario nao e o emitente.
		@return Proprietario nao e o emitente
	  */
	public boolean isLBR_IsOwnerNotEmitter()
	{
		Object oo = get_Value(COLUMNNAME_LBR_IsOwnerNotEmitter);
		if (oo != null)
		{
			 if (oo instanceof Boolean)
				 return ((Boolean)oo).booleanValue();
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set LBR_MDFeReboque.
		@param LBR_MDFeReboque_ID LBR_MDFeReboque
	*/
	public void setLBR_MDFeReboque_ID (int LBR_MDFeReboque_ID)
	{
		if (LBR_MDFeReboque_ID < 1)
			set_ValueNoCheck (COLUMNNAME_LBR_MDFeReboque_ID, null);
		else
			set_ValueNoCheck (COLUMNNAME_LBR_MDFeReboque_ID, Integer.valueOf(LBR_MDFeReboque_ID));
	}

	/** Get LBR_MDFeReboque.
		@return LBR_MDFeReboque
	  */
	public int getLBR_MDFeReboque_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_MDFeReboque_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_MDFeReboque_UU.
		@param LBR_MDFeReboque_UU LBR_MDFeReboque_UU
	*/
	public void setLBR_MDFeReboque_UU (String LBR_MDFeReboque_UU)
	{
		set_Value (COLUMNNAME_LBR_MDFeReboque_UU, LBR_MDFeReboque_UU);
	}

	/** Get LBR_MDFeReboque_UU.
		@return LBR_MDFeReboque_UU
	  */
	public String getLBR_MDFeReboque_UU()
	{
		return (String)get_Value(COLUMNNAME_LBR_MDFeReboque_UU);
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

	/** Set Placa.
		@param LBR_Placa veicReboque/placa
	*/
	public void setLBR_Placa (String LBR_Placa)
	{
		set_Value (COLUMNNAME_LBR_Placa, LBR_Placa);
	}

	/** Get Placa.
		@return veicReboque/placa
	  */
	public String getLBR_Placa()
	{
		return (String)get_Value(COLUMNNAME_LBR_Placa);
	}

	/** Set CNPJ do proprietario.
		@param LBR_PropCNPJ CNPJ do proprietario
	*/
	public void setLBR_PropCNPJ (String LBR_PropCNPJ)
	{
		set_Value (COLUMNNAME_LBR_PropCNPJ, LBR_PropCNPJ);
	}

	/** Get CNPJ do proprietario.
		@return CNPJ do proprietario
	  */
	public String getLBR_PropCNPJ()
	{
		return (String)get_Value(COLUMNNAME_LBR_PropCNPJ);
	}

	/** Set CPF do proprietario.
		@param LBR_PropCPF CPF do proprietario
	*/
	public void setLBR_PropCPF (String LBR_PropCPF)
	{
		set_Value (COLUMNNAME_LBR_PropCPF, LBR_PropCPF);
	}

	/** Get CPF do proprietario.
		@return CPF do proprietario
	  */
	public String getLBR_PropCPF()
	{
		return (String)get_Value(COLUMNNAME_LBR_PropCPF);
	}

	/** Set IE do proprietario.
		@param LBR_PropIE IE do proprietario
	*/
	public void setLBR_PropIE (String LBR_PropIE)
	{
		set_Value (COLUMNNAME_LBR_PropIE, LBR_PropIE);
	}

	/** Get IE do proprietario.
		@return IE do proprietario
	  */
	public String getLBR_PropIE()
	{
		return (String)get_Value(COLUMNNAME_LBR_PropIE);
	}

	/** Set Nome do proprietario.
		@param LBR_PropName Nome do proprietario
	*/
	public void setLBR_PropName (String LBR_PropName)
	{
		set_Value (COLUMNNAME_LBR_PropName, LBR_PropName);
	}

	/** Get Nome do proprietario.
		@return Nome do proprietario
	  */
	public String getLBR_PropName()
	{
		return (String)get_Value(COLUMNNAME_LBR_PropName);
	}

	/** Set RNTRC do proprietario.
		@param LBR_PropRNTRC RNTRC do proprietario
	*/
	public void setLBR_PropRNTRC (String LBR_PropRNTRC)
	{
		set_Value (COLUMNNAME_LBR_PropRNTRC, LBR_PropRNTRC);
	}

	/** Get RNTRC do proprietario.
		@return RNTRC do proprietario
	  */
	public String getLBR_PropRNTRC()
	{
		return (String)get_Value(COLUMNNAME_LBR_PropRNTRC);
	}

	/** Set UF do proprietario.
		@param LBR_PropUF_ID UF do proprietario
	*/
	public void setLBR_PropUF_ID (int LBR_PropUF_ID)
	{
		if (LBR_PropUF_ID < 1)
			set_Value (COLUMNNAME_LBR_PropUF_ID, null);
		else
			set_Value (COLUMNNAME_LBR_PropUF_ID, Integer.valueOf(LBR_PropUF_ID));
	}

	/** Get UF do proprietario.
		@return UF do proprietario
	  */
	public int getLBR_PropUF_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_PropUF_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set RENAVAM.
		@param LBR_Renavam RENAVAM
	*/
	public void setLBR_Renavam (String LBR_Renavam)
	{
		set_Value (COLUMNNAME_LBR_Renavam, LBR_Renavam);
	}

	/** Get RENAVAM.
		@return RENAVAM
	  */
	public String getLBR_Renavam()
	{
		return (String)get_Value(COLUMNNAME_LBR_Renavam);
	}

	/** Set Tara (KG).
		@param LBR_Tara Tara (KG)
	*/
	public void setLBR_Tara (int LBR_Tara)
	{
		set_Value (COLUMNNAME_LBR_Tara, Integer.valueOf(LBR_Tara));
	}

	/** Get Tara (KG).
		@return Tara (KG)
	  */
	public int getLBR_Tara()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_Tara);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set UF do veiculo.
		@param LBR_VeicUF_ID UF do veiculo
	*/
	public void setLBR_VeicUF_ID (int LBR_VeicUF_ID)
	{
		if (LBR_VeicUF_ID < 1)
			set_Value (COLUMNNAME_LBR_VeicUF_ID, null);
		else
			set_Value (COLUMNNAME_LBR_VeicUF_ID, Integer.valueOf(LBR_VeicUF_ID));
	}

	/** Get UF do veiculo.
		@return UF do veiculo
	  */
	public int getLBR_VeicUF_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_VeicUF_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Codigo interno.
		@param LBR_cInt Codigo interno
	*/
	public void setLBR_cInt (String LBR_cInt)
	{
		set_Value (COLUMNNAME_LBR_cInt, LBR_cInt);
	}

	/** Get Codigo interno.
		@return Codigo interno
	  */
	public String getLBR_cInt()
	{
		return (String)get_Value(COLUMNNAME_LBR_cInt);
	}

	/** LBR_tpCar */
	/** Nao aplicavel = 00 */
	public static final String LBR_TPCAR_NaoAplicavel = "00";
	/** Aberta = 01 */
	public static final String LBR_TPCAR_Aberta = "01";
	/** Fechada/Bau = 02 */
	public static final String LBR_TPCAR_FechadaBau = "02";
	/** Granelera = 03 */
	public static final String LBR_TPCAR_Granelera = "03";
	/** Porta container = 04 */
	public static final String LBR_TPCAR_PortaContainer = "04";
	/** Sider = 05 */
	public static final String LBR_TPCAR_Sider = "05";
	/** Set Tipo de carroceria.
		@param LBR_tpCar Tipo de carroceria
	*/
	public void setLBR_tpCar (String LBR_tpCar)
	{
		set_Value (COLUMNNAME_LBR_tpCar, LBR_tpCar);
	}

	/** Get Tipo de carroceria.
		@return Tipo de carroceria
	  */
	public String getLBR_tpCar()
	{
		return (String)get_Value(COLUMNNAME_LBR_tpCar);
	}

	/** LBR_tpProp */
	/** TAC agregado = 0 */
	public static final String LBR_TPPROP_TACAgregado = "0";
	/** TAC independente = 1 */
	public static final String LBR_TPPROP_TACIndependente = "1";
	/** Outros = 2 */
	public static final String LBR_TPPROP_Outros = "2";
	/** Set Tipo de proprietario.
		@param LBR_tpProp Tipo de proprietario
	*/
	public void setLBR_tpProp (String LBR_tpProp)
	{
		set_Value (COLUMNNAME_LBR_tpProp, LBR_tpProp);
	}

	/** Get Tipo de proprietario.
		@return Tipo de proprietario
	  */
	public String getLBR_tpProp()
	{
		return (String)get_Value(COLUMNNAME_LBR_tpProp);
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
