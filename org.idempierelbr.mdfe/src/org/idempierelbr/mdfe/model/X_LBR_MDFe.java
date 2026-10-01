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

/** Generated Model for LBR_MDFe
 *  @author iDempiere (generated)
 *  @version Release 13 - $Id$ */
@org.adempiere.base.Model(table="LBR_MDFe")
public class X_LBR_MDFe extends PO implements I_LBR_MDFe, I_Persistent
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20260828L;

    /** Standard Constructor */
    public X_LBR_MDFe (Properties ctx, int LBR_MDFe_ID, String trxName)
    {
      super (ctx, LBR_MDFe_ID, trxName);
      /** if (LBR_MDFe_ID == 0)
        {
			setLBR_MDFe_ID (0);
        } */
    }

    /** Standard Constructor */
    public X_LBR_MDFe (Properties ctx, int LBR_MDFe_ID, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_MDFe_ID, trxName, virtualColumns);
      /** if (LBR_MDFe_ID == 0)
        {
			setLBR_MDFe_ID (0);
        } */
    }

    /** Standard Constructor */
    public X_LBR_MDFe (Properties ctx, String LBR_MDFe_UU, String trxName)
    {
      super (ctx, LBR_MDFe_UU, trxName);
      /** if (LBR_MDFe_UU == null)
        {
			setLBR_MDFe_ID (0);
        } */
    }

    /** Standard Constructor */
    public X_LBR_MDFe (Properties ctx, String LBR_MDFe_UU, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_MDFe_UU, trxName, virtualColumns);
      /** if (LBR_MDFe_UU == null)
        {
			setLBR_MDFe_ID (0);
        } */
    }

    /** Load Constructor */
    public X_LBR_MDFe (Properties ctx, ResultSet rs, String trxName)
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
      StringBuilder sb = new StringBuilder ("X_LBR_MDFe[")
        .append(get_ID()).append(",DocumentNo=").append(getDocumentNo()).append("]");
      return sb.toString();
    }

	@Deprecated(since="13") // use better methods with cache
	public org.compiere.model.I_C_DocType getC_DocType() throws RuntimeException
	{
		return (org.compiere.model.I_C_DocType)MTable.get(getCtx(), org.compiere.model.I_C_DocType.Table_ID)
			.getPO(getC_DocType_ID(), get_TrxName());
	}

	/** Set Tipo de Documento.
		@param C_DocType_ID Tipo ou regras do documento
	*/
	public void setC_DocType_ID (int C_DocType_ID)
	{
		if (C_DocType_ID < 1)
			set_Value (COLUMNNAME_C_DocType_ID, null);
		else
			set_Value (COLUMNNAME_C_DocType_ID, Integer.valueOf(C_DocType_ID));
	}

	/** Get Tipo de Documento.
		@return Tipo ou regras do documento
	  */
	public int getC_DocType_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_DocType_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Data de emissao.
		@param DateDoc ide/dhEmi
	*/
	public void setDateDoc (Timestamp DateDoc)
	{
		set_Value (COLUMNNAME_DateDoc, DateDoc);
	}

	/** Get Data de emissao.
		@return ide/dhEmi
	  */
	public Timestamp getDateDoc()
	{
		return (Timestamp)get_Value(COLUMNNAME_DateDoc);
	}

	/** Set Descricao.
		@param Description Descricao
	*/
	public void setDescription (String Description)
	{
		set_Value (COLUMNNAME_Description, Description);
	}

	/** Get Descricao.
		@return Descricao
	  */
	public String getDescription()
	{
		return (String)get_Value(COLUMNNAME_Description);
	}

	/** DocAction AD_Reference_ID=135 */
	public static final int DOCACTION_AD_Reference_ID=135;
	/** &lt;None&gt; = -- */
	public static final String DOCACTION_None = "--";
	/** Approve = AP */
	public static final String DOCACTION_Approve = "AP";
	/** Close = CL */
	public static final String DOCACTION_Close = "CL";
	/** Complete = CO */
	public static final String DOCACTION_Complete = "CO";
	/** Invalidate = IN */
	public static final String DOCACTION_Invalidate = "IN";
	/** Post = PO */
	public static final String DOCACTION_Post = "PO";
	/** Prepare = PR */
	public static final String DOCACTION_Prepare = "PR";
	/** Reverse - Accrual = RA */
	public static final String DOCACTION_Reverse_Accrual = "RA";
	/** Reverse - Correct = RC */
	public static final String DOCACTION_Reverse_Correct = "RC";
	/** Re-activate = RE */
	public static final String DOCACTION_Re_Activate = "RE";
	/** Reject = RJ */
	public static final String DOCACTION_Reject = "RJ";
	/** Void = VO */
	public static final String DOCACTION_Void = "VO";
	/** Wait Complete = WC */
	public static final String DOCACTION_WaitComplete = "WC";
	/** Unlock = XL */
	public static final String DOCACTION_Unlock = "XL";
	/** Set Acao do Documento.
		@param DocAction Situacao desejada para o documento
	*/
	public void setDocAction (String DocAction)
	{
		set_Value (COLUMNNAME_DocAction, DocAction);
	}

	/** Get Acao do Documento.
		@return Situacao desejada para o documento
	  */
	public String getDocAction()
	{
		return (String)get_Value(COLUMNNAME_DocAction);
	}

	/** DocStatus AD_Reference_ID=131 */
	public static final int DOCSTATUS_AD_Reference_ID=131;
	/** Unknown = ?? */
	public static final String DOCSTATUS_Unknown = "??";
	/** Approved = AP */
	public static final String DOCSTATUS_Approved = "AP";
	/** Closed = CL */
	public static final String DOCSTATUS_Closed = "CL";
	/** Completed = CO */
	public static final String DOCSTATUS_Completed = "CO";
	/** Drafted = DR */
	public static final String DOCSTATUS_Drafted = "DR";
	/** Invalid = IN */
	public static final String DOCSTATUS_Invalid = "IN";
	/** In Progress = IP */
	public static final String DOCSTATUS_InProgress = "IP";
	/** Not Approved = NA */
	public static final String DOCSTATUS_NotApproved = "NA";
	/** Reversed = RE */
	public static final String DOCSTATUS_Reversed = "RE";
	/** Voided = VO */
	public static final String DOCSTATUS_Voided = "VO";
	/** Waiting Confirmation = WC */
	public static final String DOCSTATUS_WaitingConfirmation = "WC";
	/** Waiting Payment = WP */
	public static final String DOCSTATUS_WaitingPayment = "WP";
	/** Set Situacao do Documento.
		@param DocStatus Situacao atual do documento
	*/
	public void setDocStatus (String DocStatus)
	{
		set_Value (COLUMNNAME_DocStatus, DocStatus);
	}

	/** Get Situacao do Documento.
		@return Situacao atual do documento
	  */
	public String getDocStatus()
	{
		return (String)get_Value(COLUMNNAME_DocStatus);
	}

	/** Set Numero do MDF-e.
		@param DocumentNo ide/nMDF
	*/
	public void setDocumentNo (String DocumentNo)
	{
		set_Value (COLUMNNAME_DocumentNo, DocumentNo);
	}

	/** Get Numero do MDF-e.
		@return ide/nMDF
	  */
	public String getDocumentNo()
	{
		return (String)get_Value(COLUMNNAME_DocumentNo);
	}

	/** Set Capacidade (KG).
		@param LBR_CapKG veicTracao/capKG
	*/
	public void setLBR_CapKG (int LBR_CapKG)
	{
		set_Value (COLUMNNAME_LBR_CapKG, Integer.valueOf(LBR_CapKG));
	}

	/** Get Capacidade (KG).
		@return veicTracao/capKG
	  */
	public int getLBR_CapKG()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_CapKG);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Capacidade (M3).
		@param LBR_CapM3 veicTracao/capM3
	*/
	public void setLBR_CapM3 (int LBR_CapM3)
	{
		set_Value (COLUMNNAME_LBR_CapM3, Integer.valueOf(LBR_CapM3));
	}

	/** Get Capacidade (M3).
		@return veicTracao/capM3
	  */
	public int getLBR_CapM3()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_CapM3);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set CEP de carregamento.
		@param LBR_CarregaCEP prodPred/infLotacao/infLocalCarrega/CEP
	*/
	public void setLBR_CarregaCEP (String LBR_CarregaCEP)
	{
		set_Value (COLUMNNAME_LBR_CarregaCEP, LBR_CarregaCEP);
	}

	/** Get CEP de carregamento.
		@return prodPred/infLotacao/infLocalCarrega/CEP
	  */
	public String getLBR_CarregaCEP()
	{
		return (String)get_Value(COLUMNNAME_LBR_CarregaCEP);
	}

	/** Set Latitude de carregamento.
		@param LBR_CarregaLatitude prodPred/infLotacao/infLocalCarrega/latitude
	*/
	public void setLBR_CarregaLatitude (BigDecimal LBR_CarregaLatitude)
	{
		set_Value (COLUMNNAME_LBR_CarregaLatitude, LBR_CarregaLatitude);
	}

	/** Get Latitude de carregamento.
		@return prodPred/infLotacao/infLocalCarrega/latitude
	  */
	public BigDecimal getLBR_CarregaLatitude()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_CarregaLatitude);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Longitude de carregamento.
		@param LBR_CarregaLongitude prodPred/infLotacao/infLocalCarrega/longitude
	*/
	public void setLBR_CarregaLongitude (BigDecimal LBR_CarregaLongitude)
	{
		set_Value (COLUMNNAME_LBR_CarregaLongitude, LBR_CarregaLongitude);
	}

	/** Get Longitude de carregamento.
		@return prodPred/infLotacao/infLocalCarrega/longitude
	  */
	public BigDecimal getLBR_CarregaLongitude()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_CarregaLongitude);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** LBR_CategCombVeic */
	/** Veiculo comercial 2 eixos = 02 */
	public static final String LBR_CATEGCOMBVEIC_VeiculoComercial2Eixos = "02";
	/** Veiculo comercial 3 eixos = 04 */
	public static final String LBR_CATEGCOMBVEIC_VeiculoComercial3Eixos = "04";
	/** Veiculo comercial 4 eixos = 06 */
	public static final String LBR_CATEGCOMBVEIC_VeiculoComercial4Eixos = "06";
	/** Veiculo comercial 5 eixos = 07 */
	public static final String LBR_CATEGCOMBVEIC_VeiculoComercial5Eixos = "07";
	/** Veiculo comercial 6 eixos = 08 */
	public static final String LBR_CATEGCOMBVEIC_VeiculoComercial6Eixos = "08";
	/** Veiculo comercial 7 eixos = 10 */
	public static final String LBR_CATEGCOMBVEIC_VeiculoComercial7Eixos = "10";
	/** Veiculo comercial 8 eixos = 11 */
	public static final String LBR_CATEGCOMBVEIC_VeiculoComercial8Eixos = "11";
	/** Veiculo comercial 9 eixos = 12 */
	public static final String LBR_CATEGCOMBVEIC_VeiculoComercial9Eixos = "12";
	/** Veiculo comercial 10 eixos = 13 */
	public static final String LBR_CATEGCOMBVEIC_VeiculoComercial10Eixos = "13";
	/** Veiculo comercial acima de 10 eixos = 14 */
	public static final String LBR_CATEGCOMBVEIC_VeiculoComercialAcimaDe10Eixos = "14";
	/** Set Categoria de combinacao veicular.
		@param LBR_CategCombVeic valePed/categCombVeic
	*/
	public void setLBR_CategCombVeic (String LBR_CategCombVeic)
	{
		set_Value (COLUMNNAME_LBR_CategCombVeic, LBR_CategCombVeic);
	}

	/** Get Categoria de combinacao veicular.
		@return valePed/categCombVeic
	  */
	public String getLBR_CategCombVeic()
	{
		return (String)get_Value(COLUMNNAME_LBR_CategCombVeic);
	}

	/** Set Codigo de agendamento no porto.
		@param LBR_CodAgPorto rodo/codAgPorto
	*/
	public void setLBR_CodAgPorto (String LBR_CodAgPorto)
	{
		set_Value (COLUMNNAME_LBR_CodAgPorto, LBR_CodAgPorto);
	}

	/** Get Codigo de agendamento no porto.
		@return rodo/codAgPorto
	  */
	public String getLBR_CodAgPorto()
	{
		return (String)get_Value(COLUMNNAME_LBR_CodAgPorto);
	}

	/** Set Inicio da viagem.
		@param LBR_DateIniViagem ide/dhIniViagem
	*/
	public void setLBR_DateIniViagem (Timestamp LBR_DateIniViagem)
	{
		set_Value (COLUMNNAME_LBR_DateIniViagem, LBR_DateIniViagem);
	}

	/** Get Inicio da viagem.
		@return ide/dhIniViagem
	  */
	public Timestamp getLBR_DateIniViagem()
	{
		return (Timestamp)get_Value(COLUMNNAME_LBR_DateIniViagem);
	}

	/** Set Data do protocolo.
		@param LBR_DateProtocol infProt/dhRecbto
	*/
	public void setLBR_DateProtocol (Timestamp LBR_DateProtocol)
	{
		set_Value (COLUMNNAME_LBR_DateProtocol, LBR_DateProtocol);
	}

	/** Get Data do protocolo.
		@return infProt/dhRecbto
	  */
	public Timestamp getLBR_DateProtocol()
	{
		return (Timestamp)get_Value(COLUMNNAME_LBR_DateProtocol);
	}

	/** Set CEP de descarregamento.
		@param LBR_DescarregaCEP prodPred/infLotacao/infLocalDescarrega/CEP
	*/
	public void setLBR_DescarregaCEP (String LBR_DescarregaCEP)
	{
		set_Value (COLUMNNAME_LBR_DescarregaCEP, LBR_DescarregaCEP);
	}

	/** Get CEP de descarregamento.
		@return prodPred/infLotacao/infLocalDescarrega/CEP
	  */
	public String getLBR_DescarregaCEP()
	{
		return (String)get_Value(COLUMNNAME_LBR_DescarregaCEP);
	}

	/** Set Latitude de descarregamento.
		@param LBR_DescarregaLatitude prodPred/infLotacao/infLocalDescarrega/latitude
	*/
	public void setLBR_DescarregaLatitude (BigDecimal LBR_DescarregaLatitude)
	{
		set_Value (COLUMNNAME_LBR_DescarregaLatitude, LBR_DescarregaLatitude);
	}

	/** Get Latitude de descarregamento.
		@return prodPred/infLotacao/infLocalDescarrega/latitude
	  */
	public BigDecimal getLBR_DescarregaLatitude()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_DescarregaLatitude);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Longitude de descarregamento.
		@param LBR_DescarregaLongitude prodPred/infLotacao/infLocalDescarrega/longitude
	*/
	public void setLBR_DescarregaLongitude (BigDecimal LBR_DescarregaLongitude)
	{
		set_Value (COLUMNNAME_LBR_DescarregaLongitude, LBR_DescarregaLongitude);
	}

	/** Get Longitude de descarregamento.
		@return prodPred/infLotacao/infLocalDescarrega/longitude
	  */
	public BigDecimal getLBR_DescarregaLongitude()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_DescarregaLongitude);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Digest value.
		@param LBR_DigestValue infProt/digVal
	*/
	public void setLBR_DigestValue (String LBR_DigestValue)
	{
		set_Value (COLUMNNAME_LBR_DigestValue, LBR_DigestValue);
	}

	/** Get Digest value.
		@return infProt/digVal
	  */
	public String getLBR_DigestValue()
	{
		return (String)get_Value(COLUMNNAME_LBR_DigestValue);
	}

	/** Set EAN.
		@param LBR_EAN prodPred/cEAN
	*/
	public void setLBR_EAN (String LBR_EAN)
	{
		set_Value (COLUMNNAME_LBR_EAN, LBR_EAN);
	}

	/** Get EAN.
		@return prodPred/cEAN
	  */
	public String getLBR_EAN()
	{
		return (String)get_Value(COLUMNNAME_LBR_EAN);
	}

	/** Set Canal verde.
		@param LBR_IndCanalVerde ide/indCanalVerde
	*/
	public void setLBR_IndCanalVerde (boolean LBR_IndCanalVerde)
	{
		set_Value (COLUMNNAME_LBR_IndCanalVerde, Boolean.valueOf(LBR_IndCanalVerde));
	}

	/** Get Canal verde.
		@return ide/indCanalVerde
	  */
	public boolean isLBR_IndCanalVerde()
	{
		Object oo = get_Value(COLUMNNAME_LBR_IndCanalVerde);
		if (oo != null)
		{
			 if (oo instanceof Boolean)
				 return ((Boolean)oo).booleanValue();
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Carregamento posterior.
		@param LBR_IndCargaPosterior ide/indCarregaPosterior
	*/
	public void setLBR_IndCargaPosterior (boolean LBR_IndCargaPosterior)
	{
		set_Value (COLUMNNAME_LBR_IndCargaPosterior, Boolean.valueOf(LBR_IndCargaPosterior));
	}

	/** Get Carregamento posterior.
		@return ide/indCarregaPosterior
	  */
	public boolean isLBR_IndCargaPosterior()
	{
		Object oo = get_Value(COLUMNNAME_LBR_IndCargaPosterior);
		if (oo != null)
		{
			 if (oo instanceof Boolean)
				 return ((Boolean)oo).booleanValue();
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Informacoes ao fisco.
		@param LBR_InfAdFisco infAdic/infAdFisco
	*/
	public void setLBR_InfAdFisco (String LBR_InfAdFisco)
	{
		set_Value (COLUMNNAME_LBR_InfAdFisco, LBR_InfAdFisco);
	}

	/** Get Informacoes ao fisco.
		@return infAdic/infAdFisco
	  */
	public String getLBR_InfAdFisco()
	{
		return (String)get_Value(COLUMNNAME_LBR_InfAdFisco);
	}

	/** Set Informacoes complementares.
		@param LBR_InfCpl infAdic/infCpl
	*/
	public void setLBR_InfCpl (String LBR_InfCpl)
	{
		set_Value (COLUMNNAME_LBR_InfCpl, LBR_InfCpl);
	}

	/** Get Informacoes complementares.
		@return infAdic/infCpl
	  */
	public String getLBR_InfCpl()
	{
		return (String)get_Value(COLUMNNAME_LBR_InfCpl);
	}

	/** Set Proprietario nao e o emitente.
		@param LBR_IsOwnerNotEmitter Habilita o grupo veicTracao/prop
	*/
	public void setLBR_IsOwnerNotEmitter (boolean LBR_IsOwnerNotEmitter)
	{
		set_Value (COLUMNNAME_LBR_IsOwnerNotEmitter, Boolean.valueOf(LBR_IsOwnerNotEmitter));
	}

	/** Get Proprietario nao e o emitente.
		@return Habilita o grupo veicTracao/prop
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

	/** Set Chave de acesso.
		@param LBR_MDFeChave Chave de acesso de 44 posicoes
	*/
	public void setLBR_MDFeChave (String LBR_MDFeChave)
	{
		set_Value (COLUMNNAME_LBR_MDFeChave, LBR_MDFeChave);
	}

	/** Get Chave de acesso.
		@return Chave de acesso de 44 posicoes
	  */
	public String getLBR_MDFeChave()
	{
		return (String)get_Value(COLUMNNAME_LBR_MDFeChave);
	}

	/** LBR_MDFeStatus */
	/** Assinado = AS */
	public static final String LBR_MDFESTATUS_Assinado = "AS";
	/** Autorizado = AU */
	public static final String LBR_MDFESTATUS_Autorizado = "AU";
	/** Cancelado = CA */
	public static final String LBR_MDFESTATUS_Cancelado = "CA";
	/** Em digitacao = DR */
	public static final String LBR_MDFESTATUS_EmDigitacao = "DR";
	/** Encerrado = EC */
	public static final String LBR_MDFESTATUS_Encerrado = "EC";
	/** Enviado = EN */
	public static final String LBR_MDFESTATUS_Enviado = "EN";
	/** Rejeitado = RE */
	public static final String LBR_MDFESTATUS_Rejeitado = "RE";
	/** Set Situacao.
		@param LBR_MDFeStatus Situacao interna do manifesto
	*/
	public void setLBR_MDFeStatus (String LBR_MDFeStatus)
	{
		set_Value (COLUMNNAME_LBR_MDFeStatus, LBR_MDFeStatus);
	}

	/** Get Situacao.
		@return Situacao interna do manifesto
	  */
	public String getLBR_MDFeStatus()
	{
		return (String)get_Value(COLUMNNAME_LBR_MDFeStatus);
	}

	/** Set LBR_MDFe.
		@param LBR_MDFe_ID LBR_MDFe
	*/
	public void setLBR_MDFe_ID (int LBR_MDFe_ID)
	{
		if (LBR_MDFe_ID < 1)
			set_ValueNoCheck (COLUMNNAME_LBR_MDFe_ID, null);
		else
			set_ValueNoCheck (COLUMNNAME_LBR_MDFe_ID, Integer.valueOf(LBR_MDFe_ID));
	}

	/** Get LBR_MDFe.
		@return LBR_MDFe
	  */
	public int getLBR_MDFe_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_MDFe_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_MDFe_UU.
		@param LBR_MDFe_UU LBR_MDFe_UU
	*/
	public void setLBR_MDFe_UU (String LBR_MDFe_UU)
	{
		set_Value (COLUMNNAME_LBR_MDFe_UU, LBR_MDFe_UU);
	}

	/** Get LBR_MDFe_UU.
		@return LBR_MDFe_UU
	  */
	public String getLBR_MDFe_UU()
	{
		return (String)get_Value(COLUMNNAME_LBR_MDFe_UU);
	}

	/** LBR_Modal */
	/** Rodoviario = 1 */
	public static final String LBR_MODAL_Rodoviario = "1";
	/** Aereo = 2 */
	public static final String LBR_MODAL_Aereo = "2";
	/** Aquaviario = 3 */
	public static final String LBR_MODAL_Aquaviario = "3";
	/** Ferroviario = 4 */
	public static final String LBR_MODAL_Ferroviario = "4";
	/** Set Modal.
		@param LBR_Modal ide/modal
	*/
	public void setLBR_Modal (String LBR_Modal)
	{
		set_Value (COLUMNNAME_LBR_Modal, LBR_Modal);
	}

	/** Get Modal.
		@return ide/modal
	  */
	public String getLBR_Modal()
	{
		return (String)get_Value(COLUMNNAME_LBR_Modal);
	}

	/** Set NCM.
		@param LBR_NCM prodPred/NCM
	*/
	public void setLBR_NCM (String LBR_NCM)
	{
		set_Value (COLUMNNAME_LBR_NCM, LBR_NCM);
	}

	/** Get NCM.
		@return prodPred/NCM
	  */
	public String getLBR_NCM()
	{
		return (String)get_Value(COLUMNNAME_LBR_NCM);
	}

	/** Set Placa.
		@param LBR_Placa veicTracao/placa
	*/
	public void setLBR_Placa (String LBR_Placa)
	{
		set_Value (COLUMNNAME_LBR_Placa, LBR_Placa);
	}

	/** Get Placa.
		@return veicTracao/placa
	  */
	public String getLBR_Placa()
	{
		return (String)get_Value(COLUMNNAME_LBR_Placa);
	}

	/** Set Transmitir.
		@param LBR_ProcTransmitir Dispara a transmissao do MDF-e para a SEFAZ
	*/
	public void setLBR_ProcTransmitir (String LBR_ProcTransmitir)
	{
		set_Value (COLUMNNAME_LBR_ProcTransmitir, LBR_ProcTransmitir);
	}

	/** Get Transmitir.
		@return Dispara a transmissao do MDF-e para a SEFAZ
	  */
	public String getLBR_ProcTransmitir()
	{
		return (String)get_Value(COLUMNNAME_LBR_ProcTransmitir);
	}

	/** Set Produto predominante.
		@param LBR_ProdPred prodPred/xProd
	*/
	public void setLBR_ProdPred (String LBR_ProdPred)
	{
		set_Value (COLUMNNAME_LBR_ProdPred, LBR_ProdPred);
	}

	/** Get Produto predominante.
		@return prodPred/xProd
	  */
	public String getLBR_ProdPred()
	{
		return (String)get_Value(COLUMNNAME_LBR_ProdPred);
	}

	/** Set CNPJ do proprietario.
		@param LBR_PropCNPJ prop/CNPJ
	*/
	public void setLBR_PropCNPJ (String LBR_PropCNPJ)
	{
		set_Value (COLUMNNAME_LBR_PropCNPJ, LBR_PropCNPJ);
	}

	/** Get CNPJ do proprietario.
		@return prop/CNPJ
	  */
	public String getLBR_PropCNPJ()
	{
		return (String)get_Value(COLUMNNAME_LBR_PropCNPJ);
	}

	/** Set CPF do proprietario.
		@param LBR_PropCPF prop/CPF
	*/
	public void setLBR_PropCPF (String LBR_PropCPF)
	{
		set_Value (COLUMNNAME_LBR_PropCPF, LBR_PropCPF);
	}

	/** Get CPF do proprietario.
		@return prop/CPF
	  */
	public String getLBR_PropCPF()
	{
		return (String)get_Value(COLUMNNAME_LBR_PropCPF);
	}

	/** Set IE do proprietario.
		@param LBR_PropIE prop/IE
	*/
	public void setLBR_PropIE (String LBR_PropIE)
	{
		set_Value (COLUMNNAME_LBR_PropIE, LBR_PropIE);
	}

	/** Get IE do proprietario.
		@return prop/IE
	  */
	public String getLBR_PropIE()
	{
		return (String)get_Value(COLUMNNAME_LBR_PropIE);
	}

	/** Set Nome do proprietario.
		@param LBR_PropName prop/xNome
	*/
	public void setLBR_PropName (String LBR_PropName)
	{
		set_Value (COLUMNNAME_LBR_PropName, LBR_PropName);
	}

	/** Get Nome do proprietario.
		@return prop/xNome
	  */
	public String getLBR_PropName()
	{
		return (String)get_Value(COLUMNNAME_LBR_PropName);
	}

	/** Set RNTRC do proprietario.
		@param LBR_PropRNTRC prop/RNTRC
	*/
	public void setLBR_PropRNTRC (String LBR_PropRNTRC)
	{
		set_Value (COLUMNNAME_LBR_PropRNTRC, LBR_PropRNTRC);
	}

	/** Get RNTRC do proprietario.
		@return prop/RNTRC
	  */
	public String getLBR_PropRNTRC()
	{
		return (String)get_Value(COLUMNNAME_LBR_PropRNTRC);
	}

	/** Set UF do proprietario.
		@param LBR_PropUF_ID prop/UF
	*/
	public void setLBR_PropUF_ID (int LBR_PropUF_ID)
	{
		if (LBR_PropUF_ID < 1)
			set_Value (COLUMNNAME_LBR_PropUF_ID, null);
		else
			set_Value (COLUMNNAME_LBR_PropUF_ID, Integer.valueOf(LBR_PropUF_ID));
	}

	/** Get UF do proprietario.
		@return prop/UF
	  */
	public int getLBR_PropUF_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_PropUF_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Protocolo.
		@param LBR_Protocol infProt/nProt
	*/
	public void setLBR_Protocol (String LBR_Protocol)
	{
		set_Value (COLUMNNAME_LBR_Protocol, LBR_Protocol);
	}

	/** Get Protocolo.
		@return infProt/nProt
	  */
	public String getLBR_Protocol()
	{
		return (String)get_Value(COLUMNNAME_LBR_Protocol);
	}

	/** Set QR Code.
		@param LBR_QrCodMDFe infMDFeSupl/qrCodMDFe
	*/
	public void setLBR_QrCodMDFe (String LBR_QrCodMDFe)
	{
		set_Value (COLUMNNAME_LBR_QrCodMDFe, LBR_QrCodMDFe);
	}

	/** Get QR Code.
		@return infMDFeSupl/qrCodMDFe
	  */
	public String getLBR_QrCodMDFe()
	{
		return (String)get_Value(COLUMNNAME_LBR_QrCodMDFe);
	}

	/** Set Quantidade de CT-e.
		@param LBR_QtyCTe tot/qCTe
	*/
	public void setLBR_QtyCTe (int LBR_QtyCTe)
	{
		set_Value (COLUMNNAME_LBR_QtyCTe, Integer.valueOf(LBR_QtyCTe));
	}

	/** Get Quantidade de CT-e.
		@return tot/qCTe
	  */
	public int getLBR_QtyCTe()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_QtyCTe);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Peso bruto da carga.
		@param LBR_QtyCargo tot/qCarga
	*/
	public void setLBR_QtyCargo (BigDecimal LBR_QtyCargo)
	{
		set_Value (COLUMNNAME_LBR_QtyCargo, LBR_QtyCargo);
	}

	/** Get Peso bruto da carga.
		@return tot/qCarga
	  */
	public BigDecimal getLBR_QtyCargo()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_QtyCargo);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Quantidade de MDF-e.
		@param LBR_QtyMDFe tot/qMDFe
	*/
	public void setLBR_QtyMDFe (int LBR_QtyMDFe)
	{
		set_Value (COLUMNNAME_LBR_QtyMDFe, Integer.valueOf(LBR_QtyMDFe));
	}

	/** Get Quantidade de MDF-e.
		@return tot/qMDFe
	  */
	public int getLBR_QtyMDFe()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_QtyMDFe);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Quantidade de NF-e.
		@param LBR_QtyNFe tot/qNFe
	*/
	public void setLBR_QtyNFe (int LBR_QtyNFe)
	{
		set_Value (COLUMNNAME_LBR_QtyNFe, Integer.valueOf(LBR_QtyNFe));
	}

	/** Get Quantidade de NF-e.
		@return tot/qNFe
	  */
	public int getLBR_QtyNFe()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_QtyNFe);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set RNTRC.
		@param LBR_RNTRC rodo/infANTT/RNTRC
	*/
	public void setLBR_RNTRC (String LBR_RNTRC)
	{
		set_Value (COLUMNNAME_LBR_RNTRC, LBR_RNTRC);
	}

	/** Get RNTRC.
		@return rodo/infANTT/RNTRC
	  */
	public String getLBR_RNTRC()
	{
		return (String)get_Value(COLUMNNAME_LBR_RNTRC);
	}

	/** Set Recibo do lote.
		@param LBR_Recibo retEnviMDFe/infRec/nRec
	*/
	public void setLBR_Recibo (String LBR_Recibo)
	{
		set_Value (COLUMNNAME_LBR_Recibo, LBR_Recibo);
	}

	/** Get Recibo do lote.
		@return retEnviMDFe/infRec/nRec
	  */
	public String getLBR_Recibo()
	{
		return (String)get_Value(COLUMNNAME_LBR_Recibo);
	}

	/** Set RENAVAM.
		@param LBR_Renavam veicTracao/RENAVAM
	*/
	public void setLBR_Renavam (String LBR_Renavam)
	{
		set_Value (COLUMNNAME_LBR_Renavam, LBR_Renavam);
	}

	/** Get RENAVAM.
		@return veicTracao/RENAVAM
	  */
	public String getLBR_Renavam()
	{
		return (String)get_Value(COLUMNNAME_LBR_Renavam);
	}

	/** Set CNPJ do responsavel tecnico.
		@param LBR_RespTecCNPJ infRespTec/CNPJ
	*/
	public void setLBR_RespTecCNPJ (String LBR_RespTecCNPJ)
	{
		set_Value (COLUMNNAME_LBR_RespTecCNPJ, LBR_RespTecCNPJ);
	}

	/** Get CNPJ do responsavel tecnico.
		@return infRespTec/CNPJ
	  */
	public String getLBR_RespTecCNPJ()
	{
		return (String)get_Value(COLUMNNAME_LBR_RespTecCNPJ);
	}

	/** Set Contato do responsavel tecnico.
		@param LBR_RespTecContact infRespTec/xContato
	*/
	public void setLBR_RespTecContact (String LBR_RespTecContact)
	{
		set_Value (COLUMNNAME_LBR_RespTecContact, LBR_RespTecContact);
	}

	/** Get Contato do responsavel tecnico.
		@return infRespTec/xContato
	  */
	public String getLBR_RespTecContact()
	{
		return (String)get_Value(COLUMNNAME_LBR_RespTecContact);
	}

	/** Set E-mail do responsavel tecnico.
		@param LBR_RespTecEMail infRespTec/email
	*/
	public void setLBR_RespTecEMail (String LBR_RespTecEMail)
	{
		set_Value (COLUMNNAME_LBR_RespTecEMail, LBR_RespTecEMail);
	}

	/** Get E-mail do responsavel tecnico.
		@return infRespTec/email
	  */
	public String getLBR_RespTecEMail()
	{
		return (String)get_Value(COLUMNNAME_LBR_RespTecEMail);
	}

	/** Set Telefone do responsavel tecnico.
		@param LBR_RespTecPhone infRespTec/fone
	*/
	public void setLBR_RespTecPhone (String LBR_RespTecPhone)
	{
		set_Value (COLUMNNAME_LBR_RespTecPhone, LBR_RespTecPhone);
	}

	/** Get Telefone do responsavel tecnico.
		@return infRespTec/fone
	  */
	public String getLBR_RespTecPhone()
	{
		return (String)get_Value(COLUMNNAME_LBR_RespTecPhone);
	}

	/** Set Serie.
		@param LBR_Serie ide/serie
	*/
	public void setLBR_Serie (String LBR_Serie)
	{
		set_Value (COLUMNNAME_LBR_Serie, LBR_Serie);
	}

	/** Get Serie.
		@return ide/serie
	  */
	public String getLBR_Serie()
	{
		return (String)get_Value(COLUMNNAME_LBR_Serie);
	}

	/** Set Tara (KG).
		@param LBR_Tara veicTracao/tara
	*/
	public void setLBR_Tara (int LBR_Tara)
	{
		set_Value (COLUMNNAME_LBR_Tara, Integer.valueOf(LBR_Tara));
	}

	/** Get Tara (KG).
		@return veicTracao/tara
	  */
	public int getLBR_Tara()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_Tara);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set UF de fim.
		@param LBR_UFFim_ID ide/UFFim
	*/
	public void setLBR_UFFim_ID (int LBR_UFFim_ID)
	{
		if (LBR_UFFim_ID < 1)
			set_Value (COLUMNNAME_LBR_UFFim_ID, null);
		else
			set_Value (COLUMNNAME_LBR_UFFim_ID, Integer.valueOf(LBR_UFFim_ID));
	}

	/** Get UF de fim.
		@return ide/UFFim
	  */
	public int getLBR_UFFim_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_UFFim_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set UF de inicio.
		@param LBR_UFIni_ID ide/UFIni
	*/
	public void setLBR_UFIni_ID (int LBR_UFIni_ID)
	{
		if (LBR_UFIni_ID < 1)
			set_Value (COLUMNNAME_LBR_UFIni_ID, null);
		else
			set_Value (COLUMNNAME_LBR_UFIni_ID, Integer.valueOf(LBR_UFIni_ID));
	}

	/** Get UF de inicio.
		@return ide/UFIni
	  */
	public int getLBR_UFIni_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_UFIni_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Valor total da carga.
		@param LBR_ValueCargo tot/vCarga
	*/
	public void setLBR_ValueCargo (BigDecimal LBR_ValueCargo)
	{
		set_Value (COLUMNNAME_LBR_ValueCargo, LBR_ValueCargo);
	}

	/** Get Valor total da carga.
		@return tot/vCarga
	  */
	public BigDecimal getLBR_ValueCargo()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_ValueCargo);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set UF do veiculo.
		@param LBR_VeicUF_ID veicTracao/UF
	*/
	public void setLBR_VeicUF_ID (int LBR_VeicUF_ID)
	{
		if (LBR_VeicUF_ID < 1)
			set_Value (COLUMNNAME_LBR_VeicUF_ID, null);
		else
			set_Value (COLUMNNAME_LBR_VeicUF_ID, Integer.valueOf(LBR_VeicUF_ID));
	}

	/** Get UF do veiculo.
		@return veicTracao/UF
	  */
	public int getLBR_VeicUF_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_VeicUF_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Digito verificador.
		@param LBR_cDV ide/cDV
	*/
	public void setLBR_cDV (String LBR_cDV)
	{
		set_Value (COLUMNNAME_LBR_cDV, LBR_cDV);
	}

	/** Get Digito verificador.
		@return ide/cDV
	  */
	public String getLBR_cDV()
	{
		return (String)get_Value(COLUMNNAME_LBR_cDV);
	}

	/** Set Codigo interno do veiculo.
		@param LBR_cInt veicTracao/cInt
	*/
	public void setLBR_cInt (String LBR_cInt)
	{
		set_Value (COLUMNNAME_LBR_cInt, LBR_cInt);
	}

	/** Get Codigo interno do veiculo.
		@return veicTracao/cInt
	  */
	public String getLBR_cInt()
	{
		return (String)get_Value(COLUMNNAME_LBR_cInt);
	}

	/** Set Codigo numerico.
		@param LBR_cMDF ide/cMDF
	*/
	public void setLBR_cMDF (String LBR_cMDF)
	{
		set_Value (COLUMNNAME_LBR_cMDF, LBR_cMDF);
	}

	/** Get Codigo numerico.
		@return ide/cMDF
	  */
	public String getLBR_cMDF()
	{
		return (String)get_Value(COLUMNNAME_LBR_cMDF);
	}

	/** Set Codigo do status SEFAZ.
		@param LBR_cStat infProt/cStat
	*/
	public void setLBR_cStat (String LBR_cStat)
	{
		set_Value (COLUMNNAME_LBR_cStat, LBR_cStat);
	}

	/** Get Codigo do status SEFAZ.
		@return infProt/cStat
	  */
	public String getLBR_cStat()
	{
		return (String)get_Value(COLUMNNAME_LBR_cStat);
	}

	/** LBR_cUnid */
	/** KG = 01 */
	public static final String LBR_CUNID_KG = "01";
	/** TON = 02 */
	public static final String LBR_CUNID_TON = "02";
	/** Set Unidade do peso bruto.
		@param LBR_cUnid tot/cUnid
	*/
	public void setLBR_cUnid (String LBR_cUnid)
	{
		set_Value (COLUMNNAME_LBR_cUnid, LBR_cUnid);
	}

	/** Get Unidade do peso bruto.
		@return tot/cUnid
	  */
	public String getLBR_cUnid()
	{
		return (String)get_Value(COLUMNNAME_LBR_cUnid);
	}

	/** LBR_procEmi */
	/** Aplicativo do contribuinte = 0 */
	public static final String LBR_PROCEMI_AplicativoDoContribuinte = "0";
	/** Provedor de Assinatura e Autorizacao (PAA) = 4 */
	public static final String LBR_PROCEMI_ProvedorDeAssinaturaEAutorizacaoPAA = "4";
	/** Set Processo de emissao.
		@param LBR_procEmi ide/procEmi
	*/
	public void setLBR_procEmi (String LBR_procEmi)
	{
		set_Value (COLUMNNAME_LBR_procEmi, LBR_procEmi);
	}

	/** Get Processo de emissao.
		@return ide/procEmi
	  */
	public String getLBR_procEmi()
	{
		return (String)get_Value(COLUMNNAME_LBR_procEmi);
	}

	/** LBR_tpAmb */
	/** Producao = 1 */
	public static final String LBR_TPAMB_Producao = "1";
	/** Homologacao = 2 */
	public static final String LBR_TPAMB_Homologacao = "2";
	/** Set Ambiente.
		@param LBR_tpAmb ide/tpAmb
	*/
	public void setLBR_tpAmb (String LBR_tpAmb)
	{
		set_Value (COLUMNNAME_LBR_tpAmb, LBR_tpAmb);
	}

	/** Get Ambiente.
		@return ide/tpAmb
	  */
	public String getLBR_tpAmb()
	{
		return (String)get_Value(COLUMNNAME_LBR_tpAmb);
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
		@param LBR_tpCar veicTracao/tpCar
	*/
	public void setLBR_tpCar (String LBR_tpCar)
	{
		set_Value (COLUMNNAME_LBR_tpCar, LBR_tpCar);
	}

	/** Get Tipo de carroceria.
		@return veicTracao/tpCar
	  */
	public String getLBR_tpCar()
	{
		return (String)get_Value(COLUMNNAME_LBR_tpCar);
	}

	/** LBR_tpCarga */
	/** Granel solido = 01 */
	public static final String LBR_TPCARGA_GranelSolido = "01";
	/** Granel liquido = 02 */
	public static final String LBR_TPCARGA_GranelLiquido = "02";
	/** Frigorificada = 03 */
	public static final String LBR_TPCARGA_Frigorificada = "03";
	/** Conteinerizada = 04 */
	public static final String LBR_TPCARGA_Conteinerizada = "04";
	/** Carga geral = 05 */
	public static final String LBR_TPCARGA_CargaGeral = "05";
	/** Neogranel = 06 */
	public static final String LBR_TPCARGA_Neogranel = "06";
	/** Perigosa (granel solido) = 07 */
	public static final String LBR_TPCARGA_PerigosaGranelSolido = "07";
	/** Perigosa (granel liquido) = 08 */
	public static final String LBR_TPCARGA_PerigosaGranelLiquido = "08";
	/** Perigosa (frigorificada) = 09 */
	public static final String LBR_TPCARGA_PerigosaFrigorificada = "09";
	/** Perigosa (conteinerizada) = 10 */
	public static final String LBR_TPCARGA_PerigosaConteinerizada = "10";
	/** Perigosa (carga geral) = 11 */
	public static final String LBR_TPCARGA_PerigosaCargaGeral = "11";
	/** Granel pressurizada = 12 */
	public static final String LBR_TPCARGA_GranelPressurizada = "12";
	/** Set Tipo de carga.
		@param LBR_tpCarga prodPred/tpCarga
	*/
	public void setLBR_tpCarga (String LBR_tpCarga)
	{
		set_Value (COLUMNNAME_LBR_tpCarga, LBR_tpCarga);
	}

	/** Get Tipo de carga.
		@return prodPred/tpCarga
	  */
	public String getLBR_tpCarga()
	{
		return (String)get_Value(COLUMNNAME_LBR_tpCarga);
	}

	/** LBR_tpEmis */
	/** Normal = 1 */
	public static final String LBR_TPEMIS_Normal = "1";
	/** Contingencia = 2 */
	public static final String LBR_TPEMIS_Contingencia = "2";
	/** Regime Especial NFF = 3 */
	public static final String LBR_TPEMIS_RegimeEspecialNFF = "3";
	/** Set Forma de emissao.
		@param LBR_tpEmis ide/tpEmis
	*/
	public void setLBR_tpEmis (String LBR_tpEmis)
	{
		set_Value (COLUMNNAME_LBR_tpEmis, LBR_tpEmis);
	}

	/** Get Forma de emissao.
		@return ide/tpEmis
	  */
	public String getLBR_tpEmis()
	{
		return (String)get_Value(COLUMNNAME_LBR_tpEmis);
	}

	/** LBR_tpEmit */
	/** Prestador de servico de transporte = 1 */
	public static final String LBR_TPEMIT_PrestadorDeServicoDeTransporte = "1";
	/** Transportador de carga propria = 2 */
	public static final String LBR_TPEMIT_TransportadorDeCargaPropria = "2";
	/** Prestador que emitira CT-e Globalizado = 3 */
	public static final String LBR_TPEMIT_PrestadorQueEmitiraCT_EGlobalizado = "3";
	/** Set Tipo do emitente.
		@param LBR_tpEmit ide/tpEmit
	*/
	public void setLBR_tpEmit (String LBR_tpEmit)
	{
		set_Value (COLUMNNAME_LBR_tpEmit, LBR_tpEmit);
	}

	/** Get Tipo do emitente.
		@return ide/tpEmit
	  */
	public String getLBR_tpEmit()
	{
		return (String)get_Value(COLUMNNAME_LBR_tpEmit);
	}

	/** LBR_tpProp */
	/** TAC agregado = 0 */
	public static final String LBR_TPPROP_TACAgregado = "0";
	/** TAC independente = 1 */
	public static final String LBR_TPPROP_TACIndependente = "1";
	/** Outros = 2 */
	public static final String LBR_TPPROP_Outros = "2";
	/** Set Tipo de proprietario.
		@param LBR_tpProp prop/tpProp
	*/
	public void setLBR_tpProp (String LBR_tpProp)
	{
		set_Value (COLUMNNAME_LBR_tpProp, LBR_tpProp);
	}

	/** Get Tipo de proprietario.
		@return prop/tpProp
	  */
	public String getLBR_tpProp()
	{
		return (String)get_Value(COLUMNNAME_LBR_tpProp);
	}

	/** LBR_tpRod */
	/** Truck = 01 */
	public static final String LBR_TPROD_Truck = "01";
	/** Toco = 02 */
	public static final String LBR_TPROD_Toco = "02";
	/** Cavalo mecanico = 03 */
	public static final String LBR_TPROD_CavaloMecanico = "03";
	/** VAN = 04 */
	public static final String LBR_TPROD_VAN = "04";
	/** Utilitario = 05 */
	public static final String LBR_TPROD_Utilitario = "05";
	/** Outros = 06 */
	public static final String LBR_TPROD_Outros = "06";
	/** Set Tipo de rodado.
		@param LBR_tpRod veicTracao/tpRod
	*/
	public void setLBR_tpRod (String LBR_tpRod)
	{
		set_Value (COLUMNNAME_LBR_tpRod, LBR_tpRod);
	}

	/** Get Tipo de rodado.
		@return veicTracao/tpRod
	  */
	public String getLBR_tpRod()
	{
		return (String)get_Value(COLUMNNAME_LBR_tpRod);
	}

	/** LBR_tpTransp */
	/** ETC - Empresa de Transporte de Cargas = 1 */
	public static final String LBR_TPTRANSP_ETC_EmpresaDeTransporteDeCargas = "1";
	/** TAC - Transportador Autonomo de Cargas = 2 */
	public static final String LBR_TPTRANSP_TAC_TransportadorAutonomoDeCargas = "2";
	/** CTC - Cooperativa de Transporte de Cargas = 3 */
	public static final String LBR_TPTRANSP_CTC_CooperativaDeTransporteDeCargas = "3";
	/** Set Tipo do transportador.
		@param LBR_tpTransp ide/tpTransp
	*/
	public void setLBR_tpTransp (String LBR_tpTransp)
	{
		set_Value (COLUMNNAME_LBR_tpTransp, LBR_tpTransp);
	}

	/** Get Tipo do transportador.
		@return ide/tpTransp
	  */
	public String getLBR_tpTransp()
	{
		return (String)get_Value(COLUMNNAME_LBR_tpTransp);
	}

	/** Set Versao do aplicativo.
		@param LBR_verProc ide/verProc
	*/
	public void setLBR_verProc (String LBR_verProc)
	{
		set_Value (COLUMNNAME_LBR_verProc, LBR_verProc);
	}

	/** Get Versao do aplicativo.
		@return ide/verProc
	  */
	public String getLBR_verProc()
	{
		return (String)get_Value(COLUMNNAME_LBR_verProc);
	}

	/** Set Motivo.
		@param LBR_xMotivo infProt/xMotivo
	*/
	public void setLBR_xMotivo (String LBR_xMotivo)
	{
		set_Value (COLUMNNAME_LBR_xMotivo, LBR_xMotivo);
	}

	/** Get Motivo.
		@return infProt/xMotivo
	  */
	public String getLBR_xMotivo()
	{
		return (String)get_Value(COLUMNNAME_LBR_xMotivo);
	}

	/** Set Processado.
		@param Processed Processado
	*/
	public void setProcessed (boolean Processed)
	{
		set_Value (COLUMNNAME_Processed, Boolean.valueOf(Processed));
	}

	/** Get Processado.
		@return Processado
	  */
	public boolean isProcessed()
	{
		Object oo = get_Value(COLUMNNAME_Processed);
		if (oo != null)
		{
			 if (oo instanceof Boolean)
				 return ((Boolean)oo).booleanValue();
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Processado em.
		@param ProcessedOn Data e hora (em formato decimal) em que o documento foi processado
	*/
	public void setProcessedOn (BigDecimal ProcessedOn)
	{
		set_Value (COLUMNNAME_ProcessedOn, ProcessedOn);
	}

	/** Get Processado em.
		@return Data e hora (em formato decimal) em que o documento foi processado
	  */
	public BigDecimal getProcessedOn()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_ProcessedOn);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Processando.
		@param Processing Processando
	*/
	public void setProcessing (boolean Processing)
	{
		set_Value (COLUMNNAME_Processing, Boolean.valueOf(Processing));
	}

	/** Get Processando.
		@return Processando
	  */
	public boolean isProcessing()
	{
		Object oo = get_Value(COLUMNNAME_Processing);
		if (oo != null)
		{
			 if (oo instanceof Boolean)
				 return ((Boolean)oo).booleanValue();
			return "Y".equals(oo);
		}
		return false;
	}

}
