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

/** Generated Interface for LBR_MDFeContratante
 *  @author iDempiere (generated)
 *  @version Release 13
 */
@SuppressWarnings("all")
public interface I_LBR_MDFeContratante 
{

    /** TableName=LBR_MDFeContratante */
    public static final String Table_Name = "LBR_MDFeContratante";

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

    /** Column name C_BPartner_ID */
    public static final String COLUMNNAME_C_BPartner_ID = "C_BPartner_ID";

	/** Set Parceiro de negocio.
	  * Parceiro de negocio
	  */
	public void setC_BPartner_ID (int C_BPartner_ID);

	/** Get Parceiro de negocio.
	  * Parceiro de negocio
	  */
	public int getC_BPartner_ID();

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

    /** Column name LBR_CNPJ */
    public static final String COLUMNNAME_LBR_CNPJ = "LBR_CNPJ";

	/** Set CNPJ.
	  * CNPJ
	  */
	public void setLBR_CNPJ (String LBR_CNPJ);

	/** Get CNPJ.
	  * CNPJ
	  */
	public String getLBR_CNPJ();

    /** Column name LBR_CPF */
    public static final String COLUMNNAME_LBR_CPF = "LBR_CPF";

	/** Set CPF.
	  * CPF
	  */
	public void setLBR_CPF (String LBR_CPF);

	/** Get CPF.
	  * CPF
	  */
	public String getLBR_CPF();

    /** Column name LBR_IdEstrangeiro */
    public static final String COLUMNNAME_LBR_IdEstrangeiro = "LBR_IdEstrangeiro";

	/** Set Identificador estrangeiro.
	  * infContratante/idEstrangeiro
	  */
	public void setLBR_IdEstrangeiro (String LBR_IdEstrangeiro);

	/** Get Identificador estrangeiro.
	  * infContratante/idEstrangeiro
	  */
	public String getLBR_IdEstrangeiro();

    /** Column name LBR_MDFeContratante_ID */
    public static final String COLUMNNAME_LBR_MDFeContratante_ID = "LBR_MDFeContratante_ID";

	/** Set LBR_MDFeContratante.
	  * LBR_MDFeContratante
	  */
	public void setLBR_MDFeContratante_ID (int LBR_MDFeContratante_ID);

	/** Get LBR_MDFeContratante.
	  * LBR_MDFeContratante
	  */
	public int getLBR_MDFeContratante_ID();

    /** Column name LBR_MDFeContratante_UU */
    public static final String COLUMNNAME_LBR_MDFeContratante_UU = "LBR_MDFeContratante_UU";

	/** Set LBR_MDFeContratante_UU.
	  * LBR_MDFeContratante_UU
	  */
	public void setLBR_MDFeContratante_UU (String LBR_MDFeContratante_UU);

	/** Get LBR_MDFeContratante_UU.
	  * LBR_MDFeContratante_UU
	  */
	public String getLBR_MDFeContratante_UU();

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

    /** Column name LBR_NroContrato */
    public static final String COLUMNNAME_LBR_NroContrato = "LBR_NroContrato";

	/** Set Numero do contrato.
	  * Numero do contrato
	  */
	public void setLBR_NroContrato (String LBR_NroContrato);

	/** Get Numero do contrato.
	  * Numero do contrato
	  */
	public String getLBR_NroContrato();

    /** Column name LBR_ValueContract */
    public static final String COLUMNNAME_LBR_ValueContract = "LBR_ValueContract";

	/** Set Valor global do contrato.
	  * Valor global do contrato
	  */
	public void setLBR_ValueContract (BigDecimal LBR_ValueContract);

	/** Get Valor global do contrato.
	  * Valor global do contrato
	  */
	public BigDecimal getLBR_ValueContract();

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

	/** Set Nome.
	  * infContratante/xNome
	  */
	public void setName (String Name);

	/** Get Nome.
	  * infContratante/xNome
	  */
	public String getName();

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
