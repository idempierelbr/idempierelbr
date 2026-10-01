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

/** Generated Interface for LBR_MDFeEvento
 *  @author iDempiere (generated)
 *  @version Release 13
 */
@SuppressWarnings("all")
public interface I_LBR_MDFeEvento 
{

    /** TableName=LBR_MDFeEvento */
    public static final String Table_Name = "LBR_MDFeEvento";

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

    /** Column name C_City_ID */
    public static final String COLUMNNAME_C_City_ID = "C_City_ID";

	/** Set Municipio do encerramento.
	  * cMun
	  */
	public void setC_City_ID (int C_City_ID);

	/** Get Municipio do encerramento.
	  * cMun
	  */
	public int getC_City_ID();

    /** Column name C_Region_ID */
    public static final String COLUMNNAME_C_Region_ID = "C_Region_ID";

	/** Set UF do encerramento.
	  * UF
	  */
	public void setC_Region_ID (int C_Region_ID);

	/** Get UF do encerramento.
	  * UF
	  */
	public int getC_Region_ID();

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

    /** Column name LBR_CPF */
    public static final String COLUMNNAME_LBR_CPF = "LBR_CPF";

	/** Set CPF do condutor.
	  * evIncCondutorMDFe/condutor/CPF
	  */
	public void setLBR_CPF (String LBR_CPF);

	/** Get CPF do condutor.
	  * evIncCondutorMDFe/condutor/CPF
	  */
	public String getLBR_CPF();

    /** Column name LBR_DateEncerra */
    public static final String COLUMNNAME_LBR_DateEncerra = "LBR_DateEncerra";

	/** Set Data do encerramento.
	  * dtEnc
	  */
	public void setLBR_DateEncerra (Timestamp LBR_DateEncerra);

	/** Get Data do encerramento.
	  * dtEnc
	  */
	public Timestamp getLBR_DateEncerra();

    /** Column name LBR_DateEvent */
    public static final String COLUMNNAME_LBR_DateEvent = "LBR_DateEvent";

	/** Set Data do evento.
	  * dhEvento
	  */
	public void setLBR_DateEvent (Timestamp LBR_DateEvent);

	/** Get Data do evento.
	  * dhEvento
	  */
	public Timestamp getLBR_DateEvent();

    /** Column name LBR_DateProtocol */
    public static final String COLUMNNAME_LBR_DateProtocol = "LBR_DateProtocol";

	/** Set Data do protocolo.
	  * Data do protocolo
	  */
	public void setLBR_DateProtocol (Timestamp LBR_DateProtocol);

	/** Get Data do protocolo.
	  * Data do protocolo
	  */
	public Timestamp getLBR_DateProtocol();

    /** Column name LBR_EventType */
    public static final String COLUMNNAME_LBR_EventType = "LBR_EventType";

	/** Set Tipo do evento.
	  * tpEvento
	  */
	public void setLBR_EventType (String LBR_EventType);

	/** Get Tipo do evento.
	  * tpEvento
	  */
	public String getLBR_EventType();

    /** Column name LBR_Justification */
    public static final String COLUMNNAME_LBR_Justification = "LBR_Justification";

	/** Set Justificativa.
	  * xJust
	  */
	public void setLBR_Justification (String LBR_Justification);

	/** Get Justificativa.
	  * xJust
	  */
	public String getLBR_Justification();

    /** Column name LBR_MDFeEvento_ID */
    public static final String COLUMNNAME_LBR_MDFeEvento_ID = "LBR_MDFeEvento_ID";

	/** Set LBR_MDFeEvento.
	  * LBR_MDFeEvento
	  */
	public void setLBR_MDFeEvento_ID (int LBR_MDFeEvento_ID);

	/** Get LBR_MDFeEvento.
	  * LBR_MDFeEvento
	  */
	public int getLBR_MDFeEvento_ID();

    /** Column name LBR_MDFeEvento_UU */
    public static final String COLUMNNAME_LBR_MDFeEvento_UU = "LBR_MDFeEvento_UU";

	/** Set LBR_MDFeEvento_UU.
	  * LBR_MDFeEvento_UU
	  */
	public void setLBR_MDFeEvento_UU (String LBR_MDFeEvento_UU);

	/** Get LBR_MDFeEvento_UU.
	  * LBR_MDFeEvento_UU
	  */
	public String getLBR_MDFeEvento_UU();

    /** Column name LBR_MDFe_ID */
    public static final String COLUMNNAME_LBR_MDFe_ID = "LBR_MDFe_ID";

	/** Set MDF-e.
	  * MDF-e
	  */
	public void setLBR_MDFe_ID (int LBR_MDFe_ID);

	/** Get MDF-e.
	  * MDF-e
	  */
	public int getLBR_MDFe_ID();

    /** Column name LBR_NSeqEvento */
    public static final String COLUMNNAME_LBR_NSeqEvento = "LBR_NSeqEvento";

	/** Set Sequencia do evento.
	  * nSeqEvento
	  */
	public void setLBR_NSeqEvento (int LBR_NSeqEvento);

	/** Get Sequencia do evento.
	  * nSeqEvento
	  */
	public int getLBR_NSeqEvento();

    /** Column name LBR_Protocol */
    public static final String COLUMNNAME_LBR_Protocol = "LBR_Protocol";

	/** Set Protocolo.
	  * Protocolo
	  */
	public void setLBR_Protocol (String LBR_Protocol);

	/** Get Protocolo.
	  * Protocolo
	  */
	public String getLBR_Protocol();

    /** Column name LBR_cStat */
    public static final String COLUMNNAME_LBR_cStat = "LBR_cStat";

	/** Set Codigo do status SEFAZ.
	  * Codigo do status SEFAZ
	  */
	public void setLBR_cStat (String LBR_cStat);

	/** Get Codigo do status SEFAZ.
	  * Codigo do status SEFAZ
	  */
	public String getLBR_cStat();

    /** Column name LBR_xMotivo */
    public static final String COLUMNNAME_LBR_xMotivo = "LBR_xMotivo";

	/** Set Motivo.
	  * Motivo
	  */
	public void setLBR_xMotivo (String LBR_xMotivo);

	/** Get Motivo.
	  * Motivo
	  */
	public String getLBR_xMotivo();

    /** Column name Line */
    public static final String COLUMNNAME_Line = "Line";

	/** Set Linha.
	  * Linha
	  */
	public void setLine (int Line);

	/** Get Linha.
	  * Linha
	  */
	public int getLine();

    /** Column name Name */
    public static final String COLUMNNAME_Name = "Name";

	/** Set Nome do condutor.
	  * evIncCondutorMDFe/condutor/xNome
	  */
	public void setName (String Name);

	/** Get Nome do condutor.
	  * evIncCondutorMDFe/condutor/xNome
	  */
	public String getName();

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
