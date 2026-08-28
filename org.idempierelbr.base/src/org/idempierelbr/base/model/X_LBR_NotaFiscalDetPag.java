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
package org.idempierelbr.base.model;

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.Properties;
import org.compiere.model.*;
import org.compiere.util.Env;

/** Generated Model for LBR_NotaFiscalDetPag
 *  @author iDempiere (generated)
 *  @version Release 13 - $Id$ */
@org.adempiere.base.Model(table="LBR_NotaFiscalDetPag")
public class X_LBR_NotaFiscalDetPag extends PO implements I_LBR_NotaFiscalDetPag, I_Persistent
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20260827L;

    /** Standard Constructor */
    public X_LBR_NotaFiscalDetPag (Properties ctx, int LBR_NotaFiscalDetPag_ID, String trxName)
    {
      super (ctx, LBR_NotaFiscalDetPag_ID, trxName);
      /** if (LBR_NotaFiscalDetPag_ID == 0)
        {
			setLBR_NotaFiscalDetPag_ID (0);
			setLBR_NotaFiscal_ID (0);
			setLBR_TPag (null);
			setLBR_TpIntegra (null);
        } */
    }

    /** Standard Constructor */
    public X_LBR_NotaFiscalDetPag (Properties ctx, int LBR_NotaFiscalDetPag_ID, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_NotaFiscalDetPag_ID, trxName, virtualColumns);
      /** if (LBR_NotaFiscalDetPag_ID == 0)
        {
			setLBR_NotaFiscalDetPag_ID (0);
			setLBR_NotaFiscal_ID (0);
			setLBR_TPag (null);
			setLBR_TpIntegra (null);
        } */
    }

    /** Standard Constructor */
    public X_LBR_NotaFiscalDetPag (Properties ctx, String LBR_NotaFiscalDetPag_UU, String trxName)
    {
      super (ctx, LBR_NotaFiscalDetPag_UU, trxName);
      /** if (LBR_NotaFiscalDetPag_UU == null)
        {
			setLBR_NotaFiscalDetPag_ID (0);
			setLBR_NotaFiscal_ID (0);
			setLBR_TPag (null);
			setLBR_TpIntegra (null);
        } */
    }

    /** Standard Constructor */
    public X_LBR_NotaFiscalDetPag (Properties ctx, String LBR_NotaFiscalDetPag_UU, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_NotaFiscalDetPag_UU, trxName, virtualColumns);
      /** if (LBR_NotaFiscalDetPag_UU == null)
        {
			setLBR_NotaFiscalDetPag_ID (0);
			setLBR_NotaFiscal_ID (0);
			setLBR_TPag (null);
			setLBR_TpIntegra (null);
        } */
    }

    /** Load Constructor */
    public X_LBR_NotaFiscalDetPag (Properties ctx, ResultSet rs, String trxName)
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
      StringBuilder sb = new StringBuilder ("X_LBR_NotaFiscalDetPag[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	@Deprecated(since="13") // use better methods with cache
	public org.compiere.model.I_C_Region getC_Region() throws RuntimeException
	{
		return (org.compiere.model.I_C_Region)MTable.get(getCtx(), org.compiere.model.I_C_Region.Table_ID)
			.getPO(getC_Region_ID(), get_TrxName());
	}

	/** Set Region.
		@param C_Region_ID Identifies a geographical Region
	*/
	public void setC_Region_ID (int C_Region_ID)
	{
		if (C_Region_ID < 1)
			set_Value (COLUMNNAME_C_Region_ID, null);
		else
			set_Value (COLUMNNAME_C_Region_ID, Integer.valueOf(C_Region_ID));
	}

	/** Get Region.
		@return Identifies a geographical Region
	  */
	public int getC_Region_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_Region_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set CNPJ do Estabelecimento.
		@param LBR_CNPJPag CNPJ do Estabelecimento
	*/
	public void setLBR_CNPJPag (String LBR_CNPJPag)
	{
		set_Value (COLUMNNAME_LBR_CNPJPag, LBR_CNPJPag);
	}

	/** Get CNPJ do Estabelecimento.
		@return CNPJ do Estabelecimento	  */
	public String getLBR_CNPJPag()
	{
		return (String)get_Value(COLUMNNAME_LBR_CNPJPag);
	}

	/** Set CNPJ do Recebedor.
		@param LBR_CNPJReceb CNPJ do Recebedor
	*/
	public void setLBR_CNPJReceb (String LBR_CNPJReceb)
	{
		set_Value (COLUMNNAME_LBR_CNPJReceb, LBR_CNPJReceb);
	}

	/** Get CNPJ do Recebedor.
		@return CNPJ do Recebedor	  */
	public String getLBR_CNPJReceb()
	{
		return (String)get_Value(COLUMNNAME_LBR_CNPJReceb);
	}

	/** Set Código de Autorização.
		@param LBR_CardAuth Código de Autorização
	*/
	public void setLBR_CardAuth (String LBR_CardAuth)
	{
		set_Value (COLUMNNAME_LBR_CardAuth, LBR_CardAuth);
	}

	/** Get Código de Autorização.
		@return Código de Autorização	  */
	public String getLBR_CardAuth()
	{
		return (String)get_Value(COLUMNNAME_LBR_CardAuth);
	}

	/** LBR_CardBrand AD_Reference_ID=800080 */
	public static final int LBR_CARDBRAND_AD_Reference_ID=800080;
	/** LBR_NFE_TBand = 01 */
	public static final String LBR_CARDBRAND_LBR_NFE_TBand = "01";
	/** Mastercard = 02 */
	public static final String LBR_CARDBRAND_Mastercard = "02";
	/** American Express = 03 */
	public static final String LBR_CARDBRAND_AmericanExpress = "03";
	/** Sorocred = 04 */
	public static final String LBR_CARDBRAND_Sorocred = "04";
	/** Diners Club = 05 */
	public static final String LBR_CARDBRAND_DinersClub = "05";
	/** Elo = 06 */
	public static final String LBR_CARDBRAND_Elo = "06";
	/** Hipercard = 07 */
	public static final String LBR_CARDBRAND_Hipercard = "07";
	/** Aura = 08 */
	public static final String LBR_CARDBRAND_Aura = "08";
	/** Cabal = 09 */
	public static final String LBR_CARDBRAND_Cabal = "09";
	/** Alelo = 10 */
	public static final String LBR_CARDBRAND_Alelo = "10";
	/** Banes Card = 11 */
	public static final String LBR_CARDBRAND_BanesCard = "11";
	/** CalCard = 12 */
	public static final String LBR_CARDBRAND_CalCard = "12";
	/** Credz = 13 */
	public static final String LBR_CARDBRAND_Credz = "13";
	/** Discover = 14 */
	public static final String LBR_CARDBRAND_Discover = "14";
	/** GoodCard = 15 */
	public static final String LBR_CARDBRAND_GoodCard = "15";
	/** GreenCard = 16 */
	public static final String LBR_CARDBRAND_GreenCard = "16";
	/** Hiper = 17 */
	public static final String LBR_CARDBRAND_Hiper = "17";
	/** JCB = 18 */
	public static final String LBR_CARDBRAND_JCB = "18";
	/** Mais = 19 */
	public static final String LBR_CARDBRAND_Mais = "19";
	/** MaxVan = 20 */
	public static final String LBR_CARDBRAND_MaxVan = "20";
	/** Policard = 21 */
	public static final String LBR_CARDBRAND_Policard = "21";
	/** RedeCompras = 22 */
	public static final String LBR_CARDBRAND_RedeCompras = "22";
	/** Sodexo = 23 */
	public static final String LBR_CARDBRAND_Sodexo = "23";
	/** ValeCard = 24 */
	public static final String LBR_CARDBRAND_ValeCard = "24";
	/** Verocheque = 25 */
	public static final String LBR_CARDBRAND_Verocheque = "25";
	/** VR = 26 */
	public static final String LBR_CARDBRAND_VR = "26";
	/** Ticket = 27 */
	public static final String LBR_CARDBRAND_Ticket = "27";
	/** Outros = 99 */
	public static final String LBR_CARDBRAND_Outros = "99";
	/** Set Bandeira.
		@param LBR_CardBrand Bandeira
	*/
	public void setLBR_CardBrand (String LBR_CardBrand)
	{

		set_Value (COLUMNNAME_LBR_CardBrand, LBR_CardBrand);
	}

	/** Get Bandeira.
		@return Bandeira	  */
	public String getLBR_CardBrand()
	{
		return (String)get_Value(COLUMNNAME_LBR_CardBrand);
	}

	/** Set CNPJ da Credenciadora.
		@param LBR_CardCNPJ CNPJ da Credenciadora
	*/
	public void setLBR_CardCNPJ (String LBR_CardCNPJ)
	{
		set_Value (COLUMNNAME_LBR_CardCNPJ, LBR_CardCNPJ);
	}

	/** Get CNPJ da Credenciadora.
		@return CNPJ da Credenciadora	  */
	public String getLBR_CardCNPJ()
	{
		return (String)get_Value(COLUMNNAME_LBR_CardCNPJ);
	}

	/** Set Data do Pagamento.
		@param LBR_DatePayment Data do Pagamento
	*/
	public void setLBR_DatePayment (Timestamp LBR_DatePayment)
	{
		set_Value (COLUMNNAME_LBR_DatePayment, LBR_DatePayment);
	}

	/** Get Data do Pagamento.
		@return Data do Pagamento	  */
	public Timestamp getLBR_DatePayment()
	{
		return (Timestamp)get_Value(COLUMNNAME_LBR_DatePayment);
	}

	/** Set ID do Terminal de Pagamento.
		@param LBR_IdTermPag ID do Terminal de Pagamento
	*/
	public void setLBR_IdTermPag (String LBR_IdTermPag)
	{
		set_Value (COLUMNNAME_LBR_IdTermPag, LBR_IdTermPag);
	}

	/** Get ID do Terminal de Pagamento.
		@return ID do Terminal de Pagamento	  */
	public String getLBR_IdTermPag()
	{
		return (String)get_Value(COLUMNNAME_LBR_IdTermPag);
	}

	/** Pagamento a vista = 0 */
	public static final String LBR_INDPAG_PagamentoAVista = "0";
	/** Pagamento a prazo = 1 */
	public static final String LBR_INDPAG_PagamentoAPrazo = "1";
	/** Outros = 2 */
	public static final String LBR_INDPAG_Outros = "2";
	/** Set Forma de Pagamento.
		@param LBR_IndPag Forma de Pagamento
	*/
	public void setLBR_IndPag (String LBR_IndPag)
	{

		set_Value (COLUMNNAME_LBR_IndPag, LBR_IndPag);
	}

	/** Get Forma de Pagamento.
		@return Forma de Pagamento	  */
	public String getLBR_IndPag()
	{
		return (String)get_Value(COLUMNNAME_LBR_IndPag);
	}

	/** Set Detalhes de Pagamento de Nota Fiscal.
		@param LBR_NotaFiscalDetPag_ID Detalhes de Pagamento de Nota Fiscal
	*/
	public void setLBR_NotaFiscalDetPag_ID (int LBR_NotaFiscalDetPag_ID)
	{
		if (LBR_NotaFiscalDetPag_ID < 1)
			set_ValueNoCheck (COLUMNNAME_LBR_NotaFiscalDetPag_ID, null);
		else
			set_ValueNoCheck (COLUMNNAME_LBR_NotaFiscalDetPag_ID, Integer.valueOf(LBR_NotaFiscalDetPag_ID));
	}

	/** Get Detalhes de Pagamento de Nota Fiscal.
		@return Detalhes de Pagamento de Nota Fiscal	  */
	public int getLBR_NotaFiscalDetPag_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_NotaFiscalDetPag_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_NotaFiscalDetPag_UU.
		@param LBR_NotaFiscalDetPag_UU LBR_NotaFiscalDetPag_UU
	*/
	public void setLBR_NotaFiscalDetPag_UU (String LBR_NotaFiscalDetPag_UU)
	{
		set_Value (COLUMNNAME_LBR_NotaFiscalDetPag_UU, LBR_NotaFiscalDetPag_UU);
	}

	/** Get LBR_NotaFiscalDetPag_UU.
		@return LBR_NotaFiscalDetPag_UU	  */
	public String getLBR_NotaFiscalDetPag_UU()
	{
		return (String)get_Value(COLUMNNAME_LBR_NotaFiscalDetPag_UU);
	}

	@Deprecated(since="13") // use better methods with cache
	public I_LBR_NotaFiscal getLBR_NotaFiscal() throws RuntimeException
	{
		return (I_LBR_NotaFiscal)MTable.get(getCtx(), I_LBR_NotaFiscal.Table_ID)
			.getPO(getLBR_NotaFiscal_ID(), get_TrxName());
	}

	/** Set Brazilian Fiscal Invoice (Nota Fiscal).
		@param LBR_NotaFiscal_ID Brazilian Fiscal Invoice (Nota Fiscal) Identifier
	*/
	public void setLBR_NotaFiscal_ID (int LBR_NotaFiscal_ID)
	{
		if (LBR_NotaFiscal_ID < 1)
			set_ValueNoCheck (COLUMNNAME_LBR_NotaFiscal_ID, null);
		else
			set_ValueNoCheck (COLUMNNAME_LBR_NotaFiscal_ID, Integer.valueOf(LBR_NotaFiscal_ID));
	}

	/** Get Brazilian Fiscal Invoice (Nota Fiscal).
		@return Brazilian Fiscal Invoice (Nota Fiscal) Identifier
	  */
	public int getLBR_NotaFiscal_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_NotaFiscal_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Tipo de Pagamento.
		@param LBR_TPag Tipo de Pagamento
	*/
	public void setLBR_TPag (String LBR_TPag)
	{
		set_Value (COLUMNNAME_LBR_TPag, LBR_TPag);
	}

	/** Get Tipo de Pagamento.
		@return Tipo de Pagamento	  */
	public String getLBR_TPag()
	{
		return (String)get_Value(COLUMNNAME_LBR_TPag);
	}

	/** LBR_TpIntegra AD_Reference_ID=800079 */
	public static final int LBR_TPINTEGRA_AD_Reference_ID=800079;
	/** Pagamento integrado com o sistema de automação da empresa = 1 */
	public static final String LBR_TPINTEGRA_PagamentoIntegradoComOSistemaDeAutomaçãoDaEmpresa = "1";
	/** Pagamento não integrado com o sistema de automação da empresa (ex.: POS simples) = 2 */
	public static final String LBR_TPINTEGRA_PagamentoNãoIntegradoComOSistemaDeAutomaçãoDaEmpresaExPOSSimples = "2";
	/** Set Tipo de Integração.
		@param LBR_TpIntegra Tipo de Integração
	*/
	public void setLBR_TpIntegra (String LBR_TpIntegra)
	{

		set_Value (COLUMNNAME_LBR_TpIntegra, LBR_TpIntegra);
	}

	/** Get Tipo de Integração.
		@return Tipo de Integração	  */
	public String getLBR_TpIntegra()
	{
		return (String)get_Value(COLUMNNAME_LBR_TpIntegra);
	}

	/** Set Descrição do Meio de Pagamento.
		@param LBR_xPag Descrição do Meio de Pagamento
	*/
	public void setLBR_xPag (String LBR_xPag)
	{
		set_Value (COLUMNNAME_LBR_xPag, LBR_xPag);
	}

	/** Get Descrição do Meio de Pagamento.
		@return Descrição do Meio de Pagamento	  */
	public String getLBR_xPag()
	{
		return (String)get_Value(COLUMNNAME_LBR_xPag);
	}

	/** Set Payment amount.
		@param PayAmt Amount being paid
	*/
	public void setPayAmt (BigDecimal PayAmt)
	{
		set_Value (COLUMNNAME_PayAmt, PayAmt);
	}

	/** Get Payment amount.
		@return Amount being paid
	  */
	public BigDecimal getPayAmt()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_PayAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}
}