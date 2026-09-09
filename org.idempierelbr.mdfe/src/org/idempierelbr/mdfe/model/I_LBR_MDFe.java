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

package org.idempierelbr.mdfe.model;

import java.math.BigDecimal;
import java.sql.Timestamp;
import org.compiere.model.*;
import org.compiere.util.KeyNamePair;

/** Generated Interface for LBR_MDFe
 *  @author iDempiere (generated)
 *  @version Release 13
 */
@SuppressWarnings("all")
public interface I_LBR_MDFe 
{

    /** TableName=LBR_MDFe */
    public static final String Table_Name = "LBR_MDFe";

        public static final int Table_ID = MTable.getTable_ID(Table_Name);

    KeyNamePair Model = new KeyNamePair(Table_ID, Table_Name);

    /** AccessLevel = 3 - Client+Organization
     */
    BigDecimal accessLevel = BigDecimal.valueOf(3);

    /** Load Meta Data */

    /** Column name AD_Client_ID */
    public static final String COLUMNNAME_AD_Client_ID = "AD_Client_ID";

	/** Get Organizacao Cliente.
	  * Organizacao Cliente
	  */
	public int getAD_Client_ID();

    /** Column name AD_Org_ID */
    public static final String COLUMNNAME_AD_Org_ID = "AD_Org_ID";

	/** Set Organizacao.
	  * Organizacao
	  */
	public void setAD_Org_ID (int AD_Org_ID);

	/** Get Organizacao.
	  * Organizacao
	  */
	public int getAD_Org_ID();

    /** Column name Created */
    public static final String COLUMNNAME_Created = "Created";

	/** Get Criado.
	  * Criado
	  */
	public Timestamp getCreated();

    /** Column name CreatedBy */
    public static final String COLUMNNAME_CreatedBy = "CreatedBy";

	/** Get Criado Por.
	  * Criado Por
	  */
	public int getCreatedBy();

    /** Column name C_DocType_ID */
    public static final String COLUMNNAME_C_DocType_ID = "C_DocType_ID";

	/** Set Tipo de Documento.
	  * Tipo ou regras do documento
	  */
	public void setC_DocType_ID (int C_DocType_ID);

	/** Get Tipo de Documento.
	  * Tipo ou regras do documento
	  */
	public int getC_DocType_ID();

	public org.compiere.model.I_C_DocType getC_DocType() throws RuntimeException;

    /** Column name DateDoc */
    public static final String COLUMNNAME_DateDoc = "DateDoc";

	/** Set Data de emissao.
	  * ide/dhEmi
	  */
	public void setDateDoc (Timestamp DateDoc);

	/** Get Data de emissao.
	  * ide/dhEmi
	  */
	public Timestamp getDateDoc();

    /** Column name Description */
    public static final String COLUMNNAME_Description = "Description";

	/** Set Descricao.
	  * Descricao
	  */
	public void setDescription (String Description);

	/** Get Descricao.
	  * Descricao
	  */
	public String getDescription();

    /** Column name DocAction */
    public static final String COLUMNNAME_DocAction = "DocAction";

	/** Set Acao do Documento.
	  * Situacao desejada para o documento
	  */
	public void setDocAction (String DocAction);

	/** Get Acao do Documento.
	  * Situacao desejada para o documento
	  */
	public String getDocAction();

    /** Column name DocStatus */
    public static final String COLUMNNAME_DocStatus = "DocStatus";

	/** Set Situacao do Documento.
	  * Situacao atual do documento
	  */
	public void setDocStatus (String DocStatus);

	/** Get Situacao do Documento.
	  * Situacao atual do documento
	  */
	public String getDocStatus();

    /** Column name DocumentNo */
    public static final String COLUMNNAME_DocumentNo = "DocumentNo";

	/** Set Numero do MDF-e.
	  * ide/nMDF
	  */
	public void setDocumentNo (String DocumentNo);

	/** Get Numero do MDF-e.
	  * ide/nMDF
	  */
	public String getDocumentNo();

    /** Column name IsActive */
    public static final String COLUMNNAME_IsActive = "IsActive";

	/** Set Ativo.
	  * Ativo
	  */
	public void setIsActive (boolean IsActive);

	/** Get Ativo.
	  * Ativo
	  */
	public boolean isActive();

    /** Column name LBR_CapKG */
    public static final String COLUMNNAME_LBR_CapKG = "LBR_CapKG";

	/** Set Capacidade (KG).
	  * veicTracao/capKG
	  */
	public void setLBR_CapKG (int LBR_CapKG);

	/** Get Capacidade (KG).
	  * veicTracao/capKG
	  */
	public int getLBR_CapKG();

    /** Column name LBR_CapM3 */
    public static final String COLUMNNAME_LBR_CapM3 = "LBR_CapM3";

	/** Set Capacidade (M3).
	  * veicTracao/capM3
	  */
	public void setLBR_CapM3 (int LBR_CapM3);

	/** Get Capacidade (M3).
	  * veicTracao/capM3
	  */
	public int getLBR_CapM3();

    /** Column name LBR_CarregaCEP */
    public static final String COLUMNNAME_LBR_CarregaCEP = "LBR_CarregaCEP";

	/** Set CEP de carregamento.
	  * prodPred/infLotacao/infLocalCarrega/CEP
	  */
	public void setLBR_CarregaCEP (String LBR_CarregaCEP);

	/** Get CEP de carregamento.
	  * prodPred/infLotacao/infLocalCarrega/CEP
	  */
	public String getLBR_CarregaCEP();

    /** Column name LBR_CarregaLatitude */
    public static final String COLUMNNAME_LBR_CarregaLatitude = "LBR_CarregaLatitude";

	/** Set Latitude de carregamento.
	  * prodPred/infLotacao/infLocalCarrega/latitude
	  */
	public void setLBR_CarregaLatitude (BigDecimal LBR_CarregaLatitude);

	/** Get Latitude de carregamento.
	  * prodPred/infLotacao/infLocalCarrega/latitude
	  */
	public BigDecimal getLBR_CarregaLatitude();

    /** Column name LBR_CarregaLongitude */
    public static final String COLUMNNAME_LBR_CarregaLongitude = "LBR_CarregaLongitude";

	/** Set Longitude de carregamento.
	  * prodPred/infLotacao/infLocalCarrega/longitude
	  */
	public void setLBR_CarregaLongitude (BigDecimal LBR_CarregaLongitude);

	/** Get Longitude de carregamento.
	  * prodPred/infLotacao/infLocalCarrega/longitude
	  */
	public BigDecimal getLBR_CarregaLongitude();

    /** Column name LBR_CategCombVeic */
    public static final String COLUMNNAME_LBR_CategCombVeic = "LBR_CategCombVeic";

	/** Set Categoria de combinacao veicular.
	  * valePed/categCombVeic
	  */
	public void setLBR_CategCombVeic (String LBR_CategCombVeic);

	/** Get Categoria de combinacao veicular.
	  * valePed/categCombVeic
	  */
	public String getLBR_CategCombVeic();

    /** Column name LBR_CodAgPorto */
    public static final String COLUMNNAME_LBR_CodAgPorto = "LBR_CodAgPorto";

	/** Set Codigo de agendamento no porto.
	  * rodo/codAgPorto
	  */
	public void setLBR_CodAgPorto (String LBR_CodAgPorto);

	/** Get Codigo de agendamento no porto.
	  * rodo/codAgPorto
	  */
	public String getLBR_CodAgPorto();

    /** Column name LBR_DateIniViagem */
    public static final String COLUMNNAME_LBR_DateIniViagem = "LBR_DateIniViagem";

	/** Set Inicio da viagem.
	  * ide/dhIniViagem
	  */
	public void setLBR_DateIniViagem (Timestamp LBR_DateIniViagem);

	/** Get Inicio da viagem.
	  * ide/dhIniViagem
	  */
	public Timestamp getLBR_DateIniViagem();

    /** Column name LBR_DateProtocol */
    public static final String COLUMNNAME_LBR_DateProtocol = "LBR_DateProtocol";

	/** Set Data do protocolo.
	  * infProt/dhRecbto
	  */
	public void setLBR_DateProtocol (Timestamp LBR_DateProtocol);

	/** Get Data do protocolo.
	  * infProt/dhRecbto
	  */
	public Timestamp getLBR_DateProtocol();

    /** Column name LBR_DescarregaCEP */
    public static final String COLUMNNAME_LBR_DescarregaCEP = "LBR_DescarregaCEP";

	/** Set CEP de descarregamento.
	  * prodPred/infLotacao/infLocalDescarrega/CEP
	  */
	public void setLBR_DescarregaCEP (String LBR_DescarregaCEP);

	/** Get CEP de descarregamento.
	  * prodPred/infLotacao/infLocalDescarrega/CEP
	  */
	public String getLBR_DescarregaCEP();

    /** Column name LBR_DescarregaLatitude */
    public static final String COLUMNNAME_LBR_DescarregaLatitude = "LBR_DescarregaLatitude";

	/** Set Latitude de descarregamento.
	  * prodPred/infLotacao/infLocalDescarrega/latitude
	  */
	public void setLBR_DescarregaLatitude (BigDecimal LBR_DescarregaLatitude);

	/** Get Latitude de descarregamento.
	  * prodPred/infLotacao/infLocalDescarrega/latitude
	  */
	public BigDecimal getLBR_DescarregaLatitude();

    /** Column name LBR_DescarregaLongitude */
    public static final String COLUMNNAME_LBR_DescarregaLongitude = "LBR_DescarregaLongitude";

	/** Set Longitude de descarregamento.
	  * prodPred/infLotacao/infLocalDescarrega/longitude
	  */
	public void setLBR_DescarregaLongitude (BigDecimal LBR_DescarregaLongitude);

	/** Get Longitude de descarregamento.
	  * prodPred/infLotacao/infLocalDescarrega/longitude
	  */
	public BigDecimal getLBR_DescarregaLongitude();

    /** Column name LBR_DigestValue */
    public static final String COLUMNNAME_LBR_DigestValue = "LBR_DigestValue";

	/** Set Digest value.
	  * infProt/digVal
	  */
	public void setLBR_DigestValue (String LBR_DigestValue);

	/** Get Digest value.
	  * infProt/digVal
	  */
	public String getLBR_DigestValue();

    /** Column name LBR_EAN */
    public static final String COLUMNNAME_LBR_EAN = "LBR_EAN";

	/** Set EAN.
	  * prodPred/cEAN
	  */
	public void setLBR_EAN (String LBR_EAN);

	/** Get EAN.
	  * prodPred/cEAN
	  */
	public String getLBR_EAN();

    /** Column name LBR_IndCanalVerde */
    public static final String COLUMNNAME_LBR_IndCanalVerde = "LBR_IndCanalVerde";

	/** Set Canal verde.
	  * ide/indCanalVerde
	  */
	public void setLBR_IndCanalVerde (boolean LBR_IndCanalVerde);

	/** Get Canal verde.
	  * ide/indCanalVerde
	  */
	public boolean isLBR_IndCanalVerde();

    /** Column name LBR_IndCargaPosterior */
    public static final String COLUMNNAME_LBR_IndCargaPosterior = "LBR_IndCargaPosterior";

	/** Set Carregamento posterior.
	  * ide/indCarregaPosterior
	  */
	public void setLBR_IndCargaPosterior (boolean LBR_IndCargaPosterior);

	/** Get Carregamento posterior.
	  * ide/indCarregaPosterior
	  */
	public boolean isLBR_IndCargaPosterior();

    /** Column name LBR_InfAdFisco */
    public static final String COLUMNNAME_LBR_InfAdFisco = "LBR_InfAdFisco";

	/** Set Informacoes ao fisco.
	  * infAdic/infAdFisco
	  */
	public void setLBR_InfAdFisco (String LBR_InfAdFisco);

	/** Get Informacoes ao fisco.
	  * infAdic/infAdFisco
	  */
	public String getLBR_InfAdFisco();

    /** Column name LBR_InfCpl */
    public static final String COLUMNNAME_LBR_InfCpl = "LBR_InfCpl";

	/** Set Informacoes complementares.
	  * infAdic/infCpl
	  */
	public void setLBR_InfCpl (String LBR_InfCpl);

	/** Get Informacoes complementares.
	  * infAdic/infCpl
	  */
	public String getLBR_InfCpl();

    /** Column name LBR_IsOwnerNotEmitter */
    public static final String COLUMNNAME_LBR_IsOwnerNotEmitter = "LBR_IsOwnerNotEmitter";

	/** Set Proprietario nao e o emitente.
	  * Habilita o grupo veicTracao/prop
	  */
	public void setLBR_IsOwnerNotEmitter (boolean LBR_IsOwnerNotEmitter);

	/** Get Proprietario nao e o emitente.
	  * Habilita o grupo veicTracao/prop
	  */
	public boolean isLBR_IsOwnerNotEmitter();

    /** Column name LBR_MDFeChave */
    public static final String COLUMNNAME_LBR_MDFeChave = "LBR_MDFeChave";

	/** Set Chave de acesso.
	  * Chave de acesso de 44 posicoes
	  */
	public void setLBR_MDFeChave (String LBR_MDFeChave);

	/** Get Chave de acesso.
	  * Chave de acesso de 44 posicoes
	  */
	public String getLBR_MDFeChave();

    /** Column name LBR_MDFeStatus */
    public static final String COLUMNNAME_LBR_MDFeStatus = "LBR_MDFeStatus";

	/** Set Situacao.
	  * Situacao interna do manifesto
	  */
	public void setLBR_MDFeStatus (String LBR_MDFeStatus);

	/** Get Situacao.
	  * Situacao interna do manifesto
	  */
	public String getLBR_MDFeStatus();

    /** Column name LBR_MDFe_ID */
    public static final String COLUMNNAME_LBR_MDFe_ID = "LBR_MDFe_ID";

	/** Set LBR_MDFe.
	  * LBR_MDFe
	  */
	public void setLBR_MDFe_ID (int LBR_MDFe_ID);

	/** Get LBR_MDFe.
	  * LBR_MDFe
	  */
	public int getLBR_MDFe_ID();

    /** Column name LBR_MDFe_UU */
    public static final String COLUMNNAME_LBR_MDFe_UU = "LBR_MDFe_UU";

	/** Set LBR_MDFe_UU.
	  * LBR_MDFe_UU
	  */
	public void setLBR_MDFe_UU (String LBR_MDFe_UU);

	/** Get LBR_MDFe_UU.
	  * LBR_MDFe_UU
	  */
	public String getLBR_MDFe_UU();

    /** Column name LBR_Modal */
    public static final String COLUMNNAME_LBR_Modal = "LBR_Modal";

	/** Set Modal.
	  * ide/modal
	  */
	public void setLBR_Modal (String LBR_Modal);

	/** Get Modal.
	  * ide/modal
	  */
	public String getLBR_Modal();

    /** Column name LBR_NCM */
    public static final String COLUMNNAME_LBR_NCM = "LBR_NCM";

	/** Set NCM.
	  * prodPred/NCM
	  */
	public void setLBR_NCM (String LBR_NCM);

	/** Get NCM.
	  * prodPred/NCM
	  */
	public String getLBR_NCM();

    /** Column name LBR_Placa */
    public static final String COLUMNNAME_LBR_Placa = "LBR_Placa";

	/** Set Placa.
	  * veicTracao/placa
	  */
	public void setLBR_Placa (String LBR_Placa);

	/** Get Placa.
	  * veicTracao/placa
	  */
	public String getLBR_Placa();

    /** Column name LBR_ProcTransmitir */
    public static final String COLUMNNAME_LBR_ProcTransmitir = "LBR_ProcTransmitir";

	/** Set Transmitir.
	  * Dispara a transmissao do MDF-e para a SEFAZ
	  */
	public void setLBR_ProcTransmitir (String LBR_ProcTransmitir);

	/** Get Transmitir.
	  * Dispara a transmissao do MDF-e para a SEFAZ
	  */
	public String getLBR_ProcTransmitir();

    /** Column name LBR_ProdPred */
    public static final String COLUMNNAME_LBR_ProdPred = "LBR_ProdPred";

	/** Set Produto predominante.
	  * prodPred/xProd
	  */
	public void setLBR_ProdPred (String LBR_ProdPred);

	/** Get Produto predominante.
	  * prodPred/xProd
	  */
	public String getLBR_ProdPred();

    /** Column name LBR_PropCNPJ */
    public static final String COLUMNNAME_LBR_PropCNPJ = "LBR_PropCNPJ";

	/** Set CNPJ do proprietario.
	  * prop/CNPJ
	  */
	public void setLBR_PropCNPJ (String LBR_PropCNPJ);

	/** Get CNPJ do proprietario.
	  * prop/CNPJ
	  */
	public String getLBR_PropCNPJ();

    /** Column name LBR_PropCPF */
    public static final String COLUMNNAME_LBR_PropCPF = "LBR_PropCPF";

	/** Set CPF do proprietario.
	  * prop/CPF
	  */
	public void setLBR_PropCPF (String LBR_PropCPF);

	/** Get CPF do proprietario.
	  * prop/CPF
	  */
	public String getLBR_PropCPF();

    /** Column name LBR_PropIE */
    public static final String COLUMNNAME_LBR_PropIE = "LBR_PropIE";

	/** Set IE do proprietario.
	  * prop/IE
	  */
	public void setLBR_PropIE (String LBR_PropIE);

	/** Get IE do proprietario.
	  * prop/IE
	  */
	public String getLBR_PropIE();

    /** Column name LBR_PropName */
    public static final String COLUMNNAME_LBR_PropName = "LBR_PropName";

	/** Set Nome do proprietario.
	  * prop/xNome
	  */
	public void setLBR_PropName (String LBR_PropName);

	/** Get Nome do proprietario.
	  * prop/xNome
	  */
	public String getLBR_PropName();

    /** Column name LBR_PropRNTRC */
    public static final String COLUMNNAME_LBR_PropRNTRC = "LBR_PropRNTRC";

	/** Set RNTRC do proprietario.
	  * prop/RNTRC
	  */
	public void setLBR_PropRNTRC (String LBR_PropRNTRC);

	/** Get RNTRC do proprietario.
	  * prop/RNTRC
	  */
	public String getLBR_PropRNTRC();

    /** Column name LBR_PropUF_ID */
    public static final String COLUMNNAME_LBR_PropUF_ID = "LBR_PropUF_ID";

	/** Set UF do proprietario.
	  * prop/UF
	  */
	public void setLBR_PropUF_ID (int LBR_PropUF_ID);

	/** Get UF do proprietario.
	  * prop/UF
	  */
	public int getLBR_PropUF_ID();

    /** Column name LBR_Protocol */
    public static final String COLUMNNAME_LBR_Protocol = "LBR_Protocol";

	/** Set Protocolo.
	  * infProt/nProt
	  */
	public void setLBR_Protocol (String LBR_Protocol);

	/** Get Protocolo.
	  * infProt/nProt
	  */
	public String getLBR_Protocol();

    /** Column name LBR_QrCodMDFe */
    public static final String COLUMNNAME_LBR_QrCodMDFe = "LBR_QrCodMDFe";

	/** Set QR Code.
	  * infMDFeSupl/qrCodMDFe
	  */
	public void setLBR_QrCodMDFe (String LBR_QrCodMDFe);

	/** Get QR Code.
	  * infMDFeSupl/qrCodMDFe
	  */
	public String getLBR_QrCodMDFe();

    /** Column name LBR_QtyCTe */
    public static final String COLUMNNAME_LBR_QtyCTe = "LBR_QtyCTe";

	/** Set Quantidade de CT-e.
	  * tot/qCTe
	  */
	public void setLBR_QtyCTe (int LBR_QtyCTe);

	/** Get Quantidade de CT-e.
	  * tot/qCTe
	  */
	public int getLBR_QtyCTe();

    /** Column name LBR_QtyCargo */
    public static final String COLUMNNAME_LBR_QtyCargo = "LBR_QtyCargo";

	/** Set Peso bruto da carga.
	  * tot/qCarga
	  */
	public void setLBR_QtyCargo (BigDecimal LBR_QtyCargo);

	/** Get Peso bruto da carga.
	  * tot/qCarga
	  */
	public BigDecimal getLBR_QtyCargo();

    /** Column name LBR_QtyMDFe */
    public static final String COLUMNNAME_LBR_QtyMDFe = "LBR_QtyMDFe";

	/** Set Quantidade de MDF-e.
	  * tot/qMDFe
	  */
	public void setLBR_QtyMDFe (int LBR_QtyMDFe);

	/** Get Quantidade de MDF-e.
	  * tot/qMDFe
	  */
	public int getLBR_QtyMDFe();

    /** Column name LBR_QtyNFe */
    public static final String COLUMNNAME_LBR_QtyNFe = "LBR_QtyNFe";

	/** Set Quantidade de NF-e.
	  * tot/qNFe
	  */
	public void setLBR_QtyNFe (int LBR_QtyNFe);

	/** Get Quantidade de NF-e.
	  * tot/qNFe
	  */
	public int getLBR_QtyNFe();

    /** Column name LBR_RNTRC */
    public static final String COLUMNNAME_LBR_RNTRC = "LBR_RNTRC";

	/** Set RNTRC.
	  * rodo/infANTT/RNTRC
	  */
	public void setLBR_RNTRC (String LBR_RNTRC);

	/** Get RNTRC.
	  * rodo/infANTT/RNTRC
	  */
	public String getLBR_RNTRC();

    /** Column name LBR_Recibo */
    public static final String COLUMNNAME_LBR_Recibo = "LBR_Recibo";

	/** Set Recibo do lote.
	  * retEnviMDFe/infRec/nRec
	  */
	public void setLBR_Recibo (String LBR_Recibo);

	/** Get Recibo do lote.
	  * retEnviMDFe/infRec/nRec
	  */
	public String getLBR_Recibo();

    /** Column name LBR_Renavam */
    public static final String COLUMNNAME_LBR_Renavam = "LBR_Renavam";

	/** Set RENAVAM.
	  * veicTracao/RENAVAM
	  */
	public void setLBR_Renavam (String LBR_Renavam);

	/** Get RENAVAM.
	  * veicTracao/RENAVAM
	  */
	public String getLBR_Renavam();

    /** Column name LBR_RespTecCNPJ */
    public static final String COLUMNNAME_LBR_RespTecCNPJ = "LBR_RespTecCNPJ";

	/** Set CNPJ do responsavel tecnico.
	  * infRespTec/CNPJ
	  */
	public void setLBR_RespTecCNPJ (String LBR_RespTecCNPJ);

	/** Get CNPJ do responsavel tecnico.
	  * infRespTec/CNPJ
	  */
	public String getLBR_RespTecCNPJ();

    /** Column name LBR_RespTecContact */
    public static final String COLUMNNAME_LBR_RespTecContact = "LBR_RespTecContact";

	/** Set Contato do responsavel tecnico.
	  * infRespTec/xContato
	  */
	public void setLBR_RespTecContact (String LBR_RespTecContact);

	/** Get Contato do responsavel tecnico.
	  * infRespTec/xContato
	  */
	public String getLBR_RespTecContact();

    /** Column name LBR_RespTecEMail */
    public static final String COLUMNNAME_LBR_RespTecEMail = "LBR_RespTecEMail";

	/** Set E-mail do responsavel tecnico.
	  * infRespTec/email
	  */
	public void setLBR_RespTecEMail (String LBR_RespTecEMail);

	/** Get E-mail do responsavel tecnico.
	  * infRespTec/email
	  */
	public String getLBR_RespTecEMail();

    /** Column name LBR_RespTecPhone */
    public static final String COLUMNNAME_LBR_RespTecPhone = "LBR_RespTecPhone";

	/** Set Telefone do responsavel tecnico.
	  * infRespTec/fone
	  */
	public void setLBR_RespTecPhone (String LBR_RespTecPhone);

	/** Get Telefone do responsavel tecnico.
	  * infRespTec/fone
	  */
	public String getLBR_RespTecPhone();

    /** Column name LBR_Serie */
    public static final String COLUMNNAME_LBR_Serie = "LBR_Serie";

	/** Set Serie.
	  * ide/serie
	  */
	public void setLBR_Serie (String LBR_Serie);

	/** Get Serie.
	  * ide/serie
	  */
	public String getLBR_Serie();

    /** Column name LBR_Tara */
    public static final String COLUMNNAME_LBR_Tara = "LBR_Tara";

	/** Set Tara (KG).
	  * veicTracao/tara
	  */
	public void setLBR_Tara (int LBR_Tara);

	/** Get Tara (KG).
	  * veicTracao/tara
	  */
	public int getLBR_Tara();

    /** Column name LBR_UFFim_ID */
    public static final String COLUMNNAME_LBR_UFFim_ID = "LBR_UFFim_ID";

	/** Set UF de fim.
	  * ide/UFFim
	  */
	public void setLBR_UFFim_ID (int LBR_UFFim_ID);

	/** Get UF de fim.
	  * ide/UFFim
	  */
	public int getLBR_UFFim_ID();

    /** Column name LBR_UFIni_ID */
    public static final String COLUMNNAME_LBR_UFIni_ID = "LBR_UFIni_ID";

	/** Set UF de inicio.
	  * ide/UFIni
	  */
	public void setLBR_UFIni_ID (int LBR_UFIni_ID);

	/** Get UF de inicio.
	  * ide/UFIni
	  */
	public int getLBR_UFIni_ID();

    /** Column name LBR_ValueCargo */
    public static final String COLUMNNAME_LBR_ValueCargo = "LBR_ValueCargo";

	/** Set Valor total da carga.
	  * tot/vCarga
	  */
	public void setLBR_ValueCargo (BigDecimal LBR_ValueCargo);

	/** Get Valor total da carga.
	  * tot/vCarga
	  */
	public BigDecimal getLBR_ValueCargo();

    /** Column name LBR_VeicUF_ID */
    public static final String COLUMNNAME_LBR_VeicUF_ID = "LBR_VeicUF_ID";

	/** Set UF do veiculo.
	  * veicTracao/UF
	  */
	public void setLBR_VeicUF_ID (int LBR_VeicUF_ID);

	/** Get UF do veiculo.
	  * veicTracao/UF
	  */
	public int getLBR_VeicUF_ID();

    /** Column name LBR_cDV */
    public static final String COLUMNNAME_LBR_cDV = "LBR_cDV";

	/** Set Digito verificador.
	  * ide/cDV
	  */
	public void setLBR_cDV (String LBR_cDV);

	/** Get Digito verificador.
	  * ide/cDV
	  */
	public String getLBR_cDV();

    /** Column name LBR_cInt */
    public static final String COLUMNNAME_LBR_cInt = "LBR_cInt";

	/** Set Codigo interno do veiculo.
	  * veicTracao/cInt
	  */
	public void setLBR_cInt (String LBR_cInt);

	/** Get Codigo interno do veiculo.
	  * veicTracao/cInt
	  */
	public String getLBR_cInt();

    /** Column name LBR_cMDF */
    public static final String COLUMNNAME_LBR_cMDF = "LBR_cMDF";

	/** Set Codigo numerico.
	  * ide/cMDF
	  */
	public void setLBR_cMDF (String LBR_cMDF);

	/** Get Codigo numerico.
	  * ide/cMDF
	  */
	public String getLBR_cMDF();

    /** Column name LBR_cStat */
    public static final String COLUMNNAME_LBR_cStat = "LBR_cStat";

	/** Set Codigo do status SEFAZ.
	  * infProt/cStat
	  */
	public void setLBR_cStat (String LBR_cStat);

	/** Get Codigo do status SEFAZ.
	  * infProt/cStat
	  */
	public String getLBR_cStat();

    /** Column name LBR_cUnid */
    public static final String COLUMNNAME_LBR_cUnid = "LBR_cUnid";

	/** Set Unidade do peso bruto.
	  * tot/cUnid
	  */
	public void setLBR_cUnid (String LBR_cUnid);

	/** Get Unidade do peso bruto.
	  * tot/cUnid
	  */
	public String getLBR_cUnid();

    /** Column name LBR_procEmi */
    public static final String COLUMNNAME_LBR_procEmi = "LBR_procEmi";

	/** Set Processo de emissao.
	  * ide/procEmi
	  */
	public void setLBR_procEmi (String LBR_procEmi);

	/** Get Processo de emissao.
	  * ide/procEmi
	  */
	public String getLBR_procEmi();

    /** Column name LBR_tpAmb */
    public static final String COLUMNNAME_LBR_tpAmb = "LBR_tpAmb";

	/** Set Ambiente.
	  * ide/tpAmb
	  */
	public void setLBR_tpAmb (String LBR_tpAmb);

	/** Get Ambiente.
	  * ide/tpAmb
	  */
	public String getLBR_tpAmb();

    /** Column name LBR_tpCar */
    public static final String COLUMNNAME_LBR_tpCar = "LBR_tpCar";

	/** Set Tipo de carroceria.
	  * veicTracao/tpCar
	  */
	public void setLBR_tpCar (String LBR_tpCar);

	/** Get Tipo de carroceria.
	  * veicTracao/tpCar
	  */
	public String getLBR_tpCar();

    /** Column name LBR_tpCarga */
    public static final String COLUMNNAME_LBR_tpCarga = "LBR_tpCarga";

	/** Set Tipo de carga.
	  * prodPred/tpCarga
	  */
	public void setLBR_tpCarga (String LBR_tpCarga);

	/** Get Tipo de carga.
	  * prodPred/tpCarga
	  */
	public String getLBR_tpCarga();

    /** Column name LBR_tpEmis */
    public static final String COLUMNNAME_LBR_tpEmis = "LBR_tpEmis";

	/** Set Forma de emissao.
	  * ide/tpEmis
	  */
	public void setLBR_tpEmis (String LBR_tpEmis);

	/** Get Forma de emissao.
	  * ide/tpEmis
	  */
	public String getLBR_tpEmis();

    /** Column name LBR_tpEmit */
    public static final String COLUMNNAME_LBR_tpEmit = "LBR_tpEmit";

	/** Set Tipo do emitente.
	  * ide/tpEmit
	  */
	public void setLBR_tpEmit (String LBR_tpEmit);

	/** Get Tipo do emitente.
	  * ide/tpEmit
	  */
	public String getLBR_tpEmit();

    /** Column name LBR_tpProp */
    public static final String COLUMNNAME_LBR_tpProp = "LBR_tpProp";

	/** Set Tipo de proprietario.
	  * prop/tpProp
	  */
	public void setLBR_tpProp (String LBR_tpProp);

	/** Get Tipo de proprietario.
	  * prop/tpProp
	  */
	public String getLBR_tpProp();

    /** Column name LBR_tpRod */
    public static final String COLUMNNAME_LBR_tpRod = "LBR_tpRod";

	/** Set Tipo de rodado.
	  * veicTracao/tpRod
	  */
	public void setLBR_tpRod (String LBR_tpRod);

	/** Get Tipo de rodado.
	  * veicTracao/tpRod
	  */
	public String getLBR_tpRod();

    /** Column name LBR_tpTransp */
    public static final String COLUMNNAME_LBR_tpTransp = "LBR_tpTransp";

	/** Set Tipo do transportador.
	  * ide/tpTransp
	  */
	public void setLBR_tpTransp (String LBR_tpTransp);

	/** Get Tipo do transportador.
	  * ide/tpTransp
	  */
	public String getLBR_tpTransp();

    /** Column name LBR_verProc */
    public static final String COLUMNNAME_LBR_verProc = "LBR_verProc";

	/** Set Versao do aplicativo.
	  * ide/verProc
	  */
	public void setLBR_verProc (String LBR_verProc);

	/** Get Versao do aplicativo.
	  * ide/verProc
	  */
	public String getLBR_verProc();

    /** Column name LBR_xMotivo */
    public static final String COLUMNNAME_LBR_xMotivo = "LBR_xMotivo";

	/** Set Motivo.
	  * infProt/xMotivo
	  */
	public void setLBR_xMotivo (String LBR_xMotivo);

	/** Get Motivo.
	  * infProt/xMotivo
	  */
	public String getLBR_xMotivo();

    /** Column name Processed */
    public static final String COLUMNNAME_Processed = "Processed";

	/** Set Processado.
	  * Processado
	  */
	public void setProcessed (boolean Processed);

	/** Get Processado.
	  * Processado
	  */
	public boolean isProcessed();

    /** Column name ProcessedOn */
    public static final String COLUMNNAME_ProcessedOn = "ProcessedOn";

	/** Set Processado em.
	  * Data e hora (em formato decimal) em que o documento foi processado
	  */
	public void setProcessedOn (BigDecimal ProcessedOn);

	/** Get Processado em.
	  * Data e hora (em formato decimal) em que o documento foi processado
	  */
	public BigDecimal getProcessedOn();

    /** Column name Processing */
    public static final String COLUMNNAME_Processing = "Processing";

	/** Set Processando.
	  * Processando
	  */
	public void setProcessing (boolean Processing);

	/** Get Processando.
	  * Processando
	  */
	public boolean isProcessing();

    /** Column name Updated */
    public static final String COLUMNNAME_Updated = "Updated";

	/** Get Atualizado.
	  * Atualizado
	  */
	public Timestamp getUpdated();

    /** Column name UpdatedBy */
    public static final String COLUMNNAME_UpdatedBy = "UpdatedBy";

	/** Get Atualizado Por.
	  * Atualizado Por
	  */
	public int getUpdatedBy();

}
