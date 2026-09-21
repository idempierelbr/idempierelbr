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

/** Generated Interface for LBR_MDFeReboque
 *  @author iDempiere (generated)
 *  @version Release 13
 */
@SuppressWarnings("all")
public interface I_LBR_MDFeReboque 
{

    /** TableName=LBR_MDFeReboque */
    public static final String Table_Name = "LBR_MDFeReboque";

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
	  * Capacidade (KG)
	  */
	public void setLBR_CapKG (int LBR_CapKG);

	/** Get Capacidade (KG).
	  * Capacidade (KG)
	  */
	public int getLBR_CapKG();

    /** Column name LBR_CapM3 */
    public static final String COLUMNNAME_LBR_CapM3 = "LBR_CapM3";

	/** Set Capacidade (M3).
	  * Capacidade (M3)
	  */
	public void setLBR_CapM3 (int LBR_CapM3);

	/** Get Capacidade (M3).
	  * Capacidade (M3)
	  */
	public int getLBR_CapM3();

    /** Column name LBR_IsOwnerNotEmitter */
    public static final String COLUMNNAME_LBR_IsOwnerNotEmitter = "LBR_IsOwnerNotEmitter";

	/** Set Proprietario nao e o emitente.
	  * Proprietario nao e o emitente
	  */
	public void setLBR_IsOwnerNotEmitter (boolean LBR_IsOwnerNotEmitter);

	/** Get Proprietario nao e o emitente.
	  * Proprietario nao e o emitente
	  */
	public boolean isLBR_IsOwnerNotEmitter();

    /** Column name LBR_MDFeReboque_ID */
    public static final String COLUMNNAME_LBR_MDFeReboque_ID = "LBR_MDFeReboque_ID";

	/** Set LBR_MDFeReboque.
	  * LBR_MDFeReboque
	  */
	public void setLBR_MDFeReboque_ID (int LBR_MDFeReboque_ID);

	/** Get LBR_MDFeReboque.
	  * LBR_MDFeReboque
	  */
	public int getLBR_MDFeReboque_ID();

    /** Column name LBR_MDFeReboque_UU */
    public static final String COLUMNNAME_LBR_MDFeReboque_UU = "LBR_MDFeReboque_UU";

	/** Set LBR_MDFeReboque_UU.
	  * LBR_MDFeReboque_UU
	  */
	public void setLBR_MDFeReboque_UU (String LBR_MDFeReboque_UU);

	/** Get LBR_MDFeReboque_UU.
	  * LBR_MDFeReboque_UU
	  */
	public String getLBR_MDFeReboque_UU();

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

    /** Column name LBR_Placa */
    public static final String COLUMNNAME_LBR_Placa = "LBR_Placa";

	/** Set Placa.
	  * veicReboque/placa
	  */
	public void setLBR_Placa (String LBR_Placa);

	/** Get Placa.
	  * veicReboque/placa
	  */
	public String getLBR_Placa();

    /** Column name LBR_PropCNPJ */
    public static final String COLUMNNAME_LBR_PropCNPJ = "LBR_PropCNPJ";

	/** Set CNPJ do proprietario.
	  * CNPJ do proprietario
	  */
	public void setLBR_PropCNPJ (String LBR_PropCNPJ);

	/** Get CNPJ do proprietario.
	  * CNPJ do proprietario
	  */
	public String getLBR_PropCNPJ();

    /** Column name LBR_PropCPF */
    public static final String COLUMNNAME_LBR_PropCPF = "LBR_PropCPF";

	/** Set CPF do proprietario.
	  * CPF do proprietario
	  */
	public void setLBR_PropCPF (String LBR_PropCPF);

	/** Get CPF do proprietario.
	  * CPF do proprietario
	  */
	public String getLBR_PropCPF();

    /** Column name LBR_PropIE */
    public static final String COLUMNNAME_LBR_PropIE = "LBR_PropIE";

	/** Set IE do proprietario.
	  * IE do proprietario
	  */
	public void setLBR_PropIE (String LBR_PropIE);

	/** Get IE do proprietario.
	  * IE do proprietario
	  */
	public String getLBR_PropIE();

    /** Column name LBR_PropName */
    public static final String COLUMNNAME_LBR_PropName = "LBR_PropName";

	/** Set Nome do proprietario.
	  * Nome do proprietario
	  */
	public void setLBR_PropName (String LBR_PropName);

	/** Get Nome do proprietario.
	  * Nome do proprietario
	  */
	public String getLBR_PropName();

    /** Column name LBR_PropRNTRC */
    public static final String COLUMNNAME_LBR_PropRNTRC = "LBR_PropRNTRC";

	/** Set RNTRC do proprietario.
	  * RNTRC do proprietario
	  */
	public void setLBR_PropRNTRC (String LBR_PropRNTRC);

	/** Get RNTRC do proprietario.
	  * RNTRC do proprietario
	  */
	public String getLBR_PropRNTRC();

    /** Column name LBR_PropUF_ID */
    public static final String COLUMNNAME_LBR_PropUF_ID = "LBR_PropUF_ID";

	/** Set UF do proprietario.
	  * UF do proprietario
	  */
	public void setLBR_PropUF_ID (int LBR_PropUF_ID);

	/** Get UF do proprietario.
	  * UF do proprietario
	  */
	public int getLBR_PropUF_ID();

    /** Column name LBR_Renavam */
    public static final String COLUMNNAME_LBR_Renavam = "LBR_Renavam";

	/** Set RENAVAM.
	  * RENAVAM
	  */
	public void setLBR_Renavam (String LBR_Renavam);

	/** Get RENAVAM.
	  * RENAVAM
	  */
	public String getLBR_Renavam();

    /** Column name LBR_Tara */
    public static final String COLUMNNAME_LBR_Tara = "LBR_Tara";

	/** Set Tara (KG).
	  * Tara (KG)
	  */
	public void setLBR_Tara (int LBR_Tara);

	/** Get Tara (KG).
	  * Tara (KG)
	  */
	public int getLBR_Tara();

    /** Column name LBR_VeicUF_ID */
    public static final String COLUMNNAME_LBR_VeicUF_ID = "LBR_VeicUF_ID";

	/** Set UF do veiculo.
	  * UF do veiculo
	  */
	public void setLBR_VeicUF_ID (int LBR_VeicUF_ID);

	/** Get UF do veiculo.
	  * UF do veiculo
	  */
	public int getLBR_VeicUF_ID();

    /** Column name LBR_cInt */
    public static final String COLUMNNAME_LBR_cInt = "LBR_cInt";

	/** Set Codigo interno.
	  * Codigo interno
	  */
	public void setLBR_cInt (String LBR_cInt);

	/** Get Codigo interno.
	  * Codigo interno
	  */
	public String getLBR_cInt();

    /** Column name LBR_tpCar */
    public static final String COLUMNNAME_LBR_tpCar = "LBR_tpCar";

	/** Set Tipo de carroceria.
	  * Tipo de carroceria
	  */
	public void setLBR_tpCar (String LBR_tpCar);

	/** Get Tipo de carroceria.
	  * Tipo de carroceria
	  */
	public String getLBR_tpCar();

    /** Column name LBR_tpProp */
    public static final String COLUMNNAME_LBR_tpProp = "LBR_tpProp";

	/** Set Tipo de proprietario.
	  * Tipo de proprietario
	  */
	public void setLBR_tpProp (String LBR_tpProp);

	/** Get Tipo de proprietario.
	  * Tipo de proprietario
	  */
	public String getLBR_tpProp();

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
