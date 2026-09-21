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

/** Generated Interface for LBR_MDFeInfPag
 *  @author iDempiere (generated)
 *  @version Release 13
 */
@SuppressWarnings("all")
public interface I_LBR_MDFeInfPag 
{

    /** TableName=LBR_MDFeInfPag */
    public static final String Table_Name = "LBR_MDFeInfPag";

    /** AD_Table_ID=1100010 */
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

    /** Column name LBR_CNPJ */
    public static final String COLUMNNAME_LBR_CNPJ = "LBR_CNPJ";

	/** Set CNPJ do responsavel.
	  * infPag/CNPJ
	  */
	public void setLBR_CNPJ (String LBR_CNPJ);

	/** Get CNPJ do responsavel.
	  * infPag/CNPJ
	  */
	public String getLBR_CNPJ();

    /** Column name LBR_CNPJIPEF */
    public static final String COLUMNNAME_LBR_CNPJIPEF = "LBR_CNPJIPEF";

	/** Set CNPJ da instituicao de pagamento.
	  * infBanc/CNPJIPEF
	  */
	public void setLBR_CNPJIPEF (String LBR_CNPJIPEF);

	/** Get CNPJ da instituicao de pagamento.
	  * infBanc/CNPJIPEF
	  */
	public String getLBR_CNPJIPEF();

    /** Column name LBR_CPF */
    public static final String COLUMNNAME_LBR_CPF = "LBR_CPF";

	/** Set CPF do responsavel.
	  * infPag/CPF
	  */
	public void setLBR_CPF (String LBR_CPF);

	/** Get CPF do responsavel.
	  * infPag/CPF
	  */
	public String getLBR_CPF();

    /** Column name LBR_CodAgencia */
    public static final String COLUMNNAME_LBR_CodAgencia = "LBR_CodAgencia";

	/** Set Codigo da agencia.
	  * infBanc/codAgencia
	  */
	public void setLBR_CodAgencia (String LBR_CodAgencia);

	/** Get Codigo da agencia.
	  * infBanc/codAgencia
	  */
	public String getLBR_CodAgencia();

    /** Column name LBR_CodBanco */
    public static final String COLUMNNAME_LBR_CodBanco = "LBR_CodBanco";

	/** Set Codigo do banco.
	  * infBanc/codBanco
	  */
	public void setLBR_CodBanco (String LBR_CodBanco);

	/** Get Codigo do banco.
	  * infBanc/codBanco
	  */
	public String getLBR_CodBanco();

    /** Column name LBR_IdEstrangeiro */
    public static final String COLUMNNAME_LBR_IdEstrangeiro = "LBR_IdEstrangeiro";

	/** Set Identificador estrangeiro.
	  * infPag/idEstrangeiro
	  */
	public void setLBR_IdEstrangeiro (String LBR_IdEstrangeiro);

	/** Get Identificador estrangeiro.
	  * infPag/idEstrangeiro
	  */
	public String getLBR_IdEstrangeiro();

    /** Column name LBR_IndAltoDesemp */
    public static final String COLUMNNAME_LBR_IndAltoDesemp = "LBR_IndAltoDesemp";

	/** Set Alto desempenho.
	  * infPag/indAltoDesemp
	  */
	public void setLBR_IndAltoDesemp (boolean LBR_IndAltoDesemp);

	/** Get Alto desempenho.
	  * infPag/indAltoDesemp
	  */
	public boolean isLBR_IndAltoDesemp();

    /** Column name LBR_IndAntecipa */
    public static final String COLUMNNAME_LBR_IndAntecipa = "LBR_IndAntecipa";

	/** Set Autoriza antecipar adiantamento.
	  * infPag/indAntecipaAdiant
	  */
	public void setLBR_IndAntecipa (boolean LBR_IndAntecipa);

	/** Get Autoriza antecipar adiantamento.
	  * infPag/indAntecipaAdiant
	  */
	public boolean isLBR_IndAntecipa();

    /** Column name LBR_IndPag */
    public static final String COLUMNNAME_LBR_IndPag = "LBR_IndPag";

	/** Set Forma de pagamento.
	  * infPag/indPag
	  */
	public void setLBR_IndPag (String LBR_IndPag);

	/** Get Forma de pagamento.
	  * infPag/indPag
	  */
	public String getLBR_IndPag();

    /** Column name LBR_MDFeInfPag_ID */
    public static final String COLUMNNAME_LBR_MDFeInfPag_ID = "LBR_MDFeInfPag_ID";

	/** Set LBR_MDFeInfPag.
	  * LBR_MDFeInfPag
	  */
	public void setLBR_MDFeInfPag_ID (int LBR_MDFeInfPag_ID);

	/** Get LBR_MDFeInfPag.
	  * LBR_MDFeInfPag
	  */
	public int getLBR_MDFeInfPag_ID();

    /** Column name LBR_MDFeInfPag_UU */
    public static final String COLUMNNAME_LBR_MDFeInfPag_UU = "LBR_MDFeInfPag_UU";

	/** Set LBR_MDFeInfPag_UU.
	  * LBR_MDFeInfPag_UU
	  */
	public void setLBR_MDFeInfPag_UU (String LBR_MDFeInfPag_UU);

	/** Get LBR_MDFeInfPag_UU.
	  * LBR_MDFeInfPag_UU
	  */
	public String getLBR_MDFeInfPag_UU();

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

    /** Column name LBR_PIX */
    public static final String COLUMNNAME_LBR_PIX = "LBR_PIX";

	/** Set Chave PIX.
	  * infBanc/PIX
	  */
	public void setLBR_PIX (String LBR_PIX);

	/** Get Chave PIX.
	  * infBanc/PIX
	  */
	public String getLBR_PIX();

    /** Column name LBR_TpAntecip */
    public static final String COLUMNNAME_LBR_TpAntecip = "LBR_TpAntecip";

	/** Set Antecipacao das parcelas.
	  * infPag/tpAntecip
	  */
	public void setLBR_TpAntecip (String LBR_TpAntecip);

	/** Get Antecipacao das parcelas.
	  * infPag/tpAntecip
	  */
	public String getLBR_TpAntecip();

    /** Column name LBR_ValueAdiant */
    public static final String COLUMNNAME_LBR_ValueAdiant = "LBR_ValueAdiant";

	/** Set Valor do adiantamento.
	  * infPag/vAdiant
	  */
	public void setLBR_ValueAdiant (BigDecimal LBR_ValueAdiant);

	/** Get Valor do adiantamento.
	  * infPag/vAdiant
	  */
	public BigDecimal getLBR_ValueAdiant();

    /** Column name LBR_ValueContract */
    public static final String COLUMNNAME_LBR_ValueContract = "LBR_ValueContract";

	/** Set Valor do contrato.
	  * infPag/vContrato
	  */
	public void setLBR_ValueContract (BigDecimal LBR_ValueContract);

	/** Get Valor do contrato.
	  * infPag/vContrato
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

	/** Set Nome do responsavel.
	  * infPag/xNome
	  */
	public void setName (String Name);

	/** Get Nome do responsavel.
	  * infPag/xNome
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
