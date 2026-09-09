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

/** Generated Model for LBR_MDFeInfPag
 *  @author iDempiere (generated)
 *  @version Release 13 - $Id$ */
@org.adempiere.base.Model(table="LBR_MDFeInfPag")
public class X_LBR_MDFeInfPag extends PO implements I_LBR_MDFeInfPag, I_Persistent
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20260828L;

    /** Standard Constructor */
    public X_LBR_MDFeInfPag (Properties ctx, int LBR_MDFeInfPag_ID, String trxName)
    {
      super (ctx, LBR_MDFeInfPag_ID, trxName);
      /** if (LBR_MDFeInfPag_ID == 0)
        {
			setLBR_IndPag (null);
			setLBR_MDFeInfPag_ID (0);
			setLBR_MDFe_ID (0);
			setLBR_ValueContract (null);
        } */
    }

    /** Standard Constructor */
    public X_LBR_MDFeInfPag (Properties ctx, int LBR_MDFeInfPag_ID, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_MDFeInfPag_ID, trxName, virtualColumns);
      /** if (LBR_MDFeInfPag_ID == 0)
        {
			setLBR_IndPag (null);
			setLBR_MDFeInfPag_ID (0);
			setLBR_MDFe_ID (0);
			setLBR_ValueContract (null);
        } */
    }

    /** Standard Constructor */
    public X_LBR_MDFeInfPag (Properties ctx, String LBR_MDFeInfPag_UU, String trxName)
    {
      super (ctx, LBR_MDFeInfPag_UU, trxName);
      /** if (LBR_MDFeInfPag_UU == null)
        {
			setLBR_IndPag (null);
			setLBR_MDFeInfPag_ID (0);
			setLBR_MDFe_ID (0);
			setLBR_ValueContract (null);
        } */
    }

    /** Standard Constructor */
    public X_LBR_MDFeInfPag (Properties ctx, String LBR_MDFeInfPag_UU, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_MDFeInfPag_UU, trxName, virtualColumns);
      /** if (LBR_MDFeInfPag_UU == null)
        {
			setLBR_IndPag (null);
			setLBR_MDFeInfPag_ID (0);
			setLBR_MDFe_ID (0);
			setLBR_ValueContract (null);
        } */
    }

    /** Load Constructor */
    public X_LBR_MDFeInfPag (Properties ctx, ResultSet rs, String trxName)
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
      StringBuilder sb = new StringBuilder ("X_LBR_MDFeInfPag[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set CNPJ do responsavel.
		@param LBR_CNPJ infPag/CNPJ
	*/
	public void setLBR_CNPJ (String LBR_CNPJ)
	{
		set_Value (COLUMNNAME_LBR_CNPJ, LBR_CNPJ);
	}

	/** Get CNPJ do responsavel.
		@return infPag/CNPJ
	  */
	public String getLBR_CNPJ()
	{
		return (String)get_Value(COLUMNNAME_LBR_CNPJ);
	}

	/** Set CNPJ da instituicao de pagamento.
		@param LBR_CNPJIPEF infBanc/CNPJIPEF
	*/
	public void setLBR_CNPJIPEF (String LBR_CNPJIPEF)
	{
		set_Value (COLUMNNAME_LBR_CNPJIPEF, LBR_CNPJIPEF);
	}

	/** Get CNPJ da instituicao de pagamento.
		@return infBanc/CNPJIPEF
	  */
	public String getLBR_CNPJIPEF()
	{
		return (String)get_Value(COLUMNNAME_LBR_CNPJIPEF);
	}

	/** Set CPF do responsavel.
		@param LBR_CPF infPag/CPF
	*/
	public void setLBR_CPF (String LBR_CPF)
	{
		set_Value (COLUMNNAME_LBR_CPF, LBR_CPF);
	}

	/** Get CPF do responsavel.
		@return infPag/CPF
	  */
	public String getLBR_CPF()
	{
		return (String)get_Value(COLUMNNAME_LBR_CPF);
	}

	/** Set Codigo da agencia.
		@param LBR_CodAgencia infBanc/codAgencia
	*/
	public void setLBR_CodAgencia (String LBR_CodAgencia)
	{
		set_Value (COLUMNNAME_LBR_CodAgencia, LBR_CodAgencia);
	}

	/** Get Codigo da agencia.
		@return infBanc/codAgencia
	  */
	public String getLBR_CodAgencia()
	{
		return (String)get_Value(COLUMNNAME_LBR_CodAgencia);
	}

	/** Set Codigo do banco.
		@param LBR_CodBanco infBanc/codBanco
	*/
	public void setLBR_CodBanco (String LBR_CodBanco)
	{
		set_Value (COLUMNNAME_LBR_CodBanco, LBR_CodBanco);
	}

	/** Get Codigo do banco.
		@return infBanc/codBanco
	  */
	public String getLBR_CodBanco()
	{
		return (String)get_Value(COLUMNNAME_LBR_CodBanco);
	}

	/** Set Identificador estrangeiro.
		@param LBR_IdEstrangeiro infPag/idEstrangeiro
	*/
	public void setLBR_IdEstrangeiro (String LBR_IdEstrangeiro)
	{
		set_Value (COLUMNNAME_LBR_IdEstrangeiro, LBR_IdEstrangeiro);
	}

	/** Get Identificador estrangeiro.
		@return infPag/idEstrangeiro
	  */
	public String getLBR_IdEstrangeiro()
	{
		return (String)get_Value(COLUMNNAME_LBR_IdEstrangeiro);
	}

	/** Set Alto desempenho.
		@param LBR_IndAltoDesemp infPag/indAltoDesemp
	*/
	public void setLBR_IndAltoDesemp (boolean LBR_IndAltoDesemp)
	{
		set_Value (COLUMNNAME_LBR_IndAltoDesemp, Boolean.valueOf(LBR_IndAltoDesemp));
	}

	/** Get Alto desempenho.
		@return infPag/indAltoDesemp
	  */
	public boolean isLBR_IndAltoDesemp()
	{
		Object oo = get_Value(COLUMNNAME_LBR_IndAltoDesemp);
		if (oo != null)
		{
			 if (oo instanceof Boolean)
				 return ((Boolean)oo).booleanValue();
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Autoriza antecipar adiantamento.
		@param LBR_IndAntecipa infPag/indAntecipaAdiant
	*/
	public void setLBR_IndAntecipa (boolean LBR_IndAntecipa)
	{
		set_Value (COLUMNNAME_LBR_IndAntecipa, Boolean.valueOf(LBR_IndAntecipa));
	}

	/** Get Autoriza antecipar adiantamento.
		@return infPag/indAntecipaAdiant
	  */
	public boolean isLBR_IndAntecipa()
	{
		Object oo = get_Value(COLUMNNAME_LBR_IndAntecipa);
		if (oo != null)
		{
			 if (oo instanceof Boolean)
				 return ((Boolean)oo).booleanValue();
			return "Y".equals(oo);
		}
		return false;
	}

	/** LBR_IndPag AD_Reference_ID=1100021 */
	public static final int LBR_INDPAG_AD_Reference_ID=1100021;
	/** A vista = 0 */
	public static final String LBR_INDPAG_AVista = "0";
	/** A prazo = 1 */
	public static final String LBR_INDPAG_APrazo = "1";
	/** Set Forma de pagamento.
		@param LBR_IndPag infPag/indPag
	*/
	public void setLBR_IndPag (String LBR_IndPag)
	{
		set_Value (COLUMNNAME_LBR_IndPag, LBR_IndPag);
	}

	/** Get Forma de pagamento.
		@return infPag/indPag
	  */
	public String getLBR_IndPag()
	{
		return (String)get_Value(COLUMNNAME_LBR_IndPag);
	}

	/** Set LBR_MDFeInfPag.
		@param LBR_MDFeInfPag_ID LBR_MDFeInfPag
	*/
	public void setLBR_MDFeInfPag_ID (int LBR_MDFeInfPag_ID)
	{
		if (LBR_MDFeInfPag_ID < 1)
			set_ValueNoCheck (COLUMNNAME_LBR_MDFeInfPag_ID, null);
		else
			set_ValueNoCheck (COLUMNNAME_LBR_MDFeInfPag_ID, Integer.valueOf(LBR_MDFeInfPag_ID));
	}

	/** Get LBR_MDFeInfPag.
		@return LBR_MDFeInfPag
	  */
	public int getLBR_MDFeInfPag_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_MDFeInfPag_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_MDFeInfPag_UU.
		@param LBR_MDFeInfPag_UU LBR_MDFeInfPag_UU
	*/
	public void setLBR_MDFeInfPag_UU (String LBR_MDFeInfPag_UU)
	{
		set_Value (COLUMNNAME_LBR_MDFeInfPag_UU, LBR_MDFeInfPag_UU);
	}

	/** Get LBR_MDFeInfPag_UU.
		@return LBR_MDFeInfPag_UU
	  */
	public String getLBR_MDFeInfPag_UU()
	{
		return (String)get_Value(COLUMNNAME_LBR_MDFeInfPag_UU);
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

	/** Set Chave PIX.
		@param LBR_PIX infBanc/PIX
	*/
	public void setLBR_PIX (String LBR_PIX)
	{
		set_Value (COLUMNNAME_LBR_PIX, LBR_PIX);
	}

	/** Get Chave PIX.
		@return infBanc/PIX
	  */
	public String getLBR_PIX()
	{
		return (String)get_Value(COLUMNNAME_LBR_PIX);
	}

	/** LBR_TpAntecip AD_Reference_ID=1100022 */
	public static final int LBR_TPANTECIP_AD_Reference_ID=1100022;
	/** Nao permite antecipar = 0 */
	public static final String LBR_TPANTECIP_NaoPermiteAntecipar = "0";
	/** Permite antecipar as parcelas = 1 */
	public static final String LBR_TPANTECIP_PermiteAnteciparAsParcelas = "1";
	/** Permite antecipar mediante confirmacao = 2 */
	public static final String LBR_TPANTECIP_PermiteAnteciparMedianteConfirmacao = "2";
	/** Set Antecipacao das parcelas.
		@param LBR_TpAntecip infPag/tpAntecip
	*/
	public void setLBR_TpAntecip (String LBR_TpAntecip)
	{
		set_Value (COLUMNNAME_LBR_TpAntecip, LBR_TpAntecip);
	}

	/** Get Antecipacao das parcelas.
		@return infPag/tpAntecip
	  */
	public String getLBR_TpAntecip()
	{
		return (String)get_Value(COLUMNNAME_LBR_TpAntecip);
	}

	/** Set Valor do adiantamento.
		@param LBR_ValueAdiant infPag/vAdiant
	*/
	public void setLBR_ValueAdiant (BigDecimal LBR_ValueAdiant)
	{
		set_Value (COLUMNNAME_LBR_ValueAdiant, LBR_ValueAdiant);
	}

	/** Get Valor do adiantamento.
		@return infPag/vAdiant
	  */
	public BigDecimal getLBR_ValueAdiant()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_ValueAdiant);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Valor do contrato.
		@param LBR_ValueContract infPag/vContrato
	*/
	public void setLBR_ValueContract (BigDecimal LBR_ValueContract)
	{
		set_Value (COLUMNNAME_LBR_ValueContract, LBR_ValueContract);
	}

	/** Get Valor do contrato.
		@return infPag/vContrato
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

	/** Set Nome do responsavel.
		@param Name infPag/xNome
	*/
	public void setName (String Name)
	{
		set_Value (COLUMNNAME_Name, Name);
	}

	/** Get Nome do responsavel.
		@return infPag/xNome
	  */
	public String getName()
	{
		return (String)get_Value(COLUMNNAME_Name);
	}

}
