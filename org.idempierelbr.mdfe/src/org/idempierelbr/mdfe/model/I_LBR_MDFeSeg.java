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

/** Generated Interface for LBR_MDFeSeg
 *  @author iDempiere (generated)
 *  @version Release 13
 */
@SuppressWarnings("all")
public interface I_LBR_MDFeSeg 
{

    /** TableName=LBR_MDFeSeg */
    public static final String Table_Name = "LBR_MDFeSeg";

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

    /** Column name LBR_MDFeSeg_ID */
    public static final String COLUMNNAME_LBR_MDFeSeg_ID = "LBR_MDFeSeg_ID";

	/** Set LBR_MDFeSeg.
	  * LBR_MDFeSeg
	  */
	public void setLBR_MDFeSeg_ID (int LBR_MDFeSeg_ID);

	/** Get LBR_MDFeSeg.
	  * LBR_MDFeSeg
	  */
	public int getLBR_MDFeSeg_ID();

    /** Column name LBR_MDFeSeg_UU */
    public static final String COLUMNNAME_LBR_MDFeSeg_UU = "LBR_MDFeSeg_UU";

	/** Set LBR_MDFeSeg_UU.
	  * LBR_MDFeSeg_UU
	  */
	public void setLBR_MDFeSeg_UU (String LBR_MDFeSeg_UU);

	/** Get LBR_MDFeSeg_UU.
	  * LBR_MDFeSeg_UU
	  */
	public String getLBR_MDFeSeg_UU();

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

    /** Column name LBR_NApol */
    public static final String COLUMNNAME_LBR_NApol = "LBR_NApol";

	/** Set Numero da apolice.
	  * Numero da apolice
	  */
	public void setLBR_NApol (String LBR_NApol);

	/** Get Numero da apolice.
	  * Numero da apolice
	  */
	public String getLBR_NApol();

    /** Column name LBR_RespCNPJ */
    public static final String COLUMNNAME_LBR_RespCNPJ = "LBR_RespCNPJ";

	/** Set CNPJ do responsavel.
	  * CNPJ do responsavel
	  */
	public void setLBR_RespCNPJ (String LBR_RespCNPJ);

	/** Get CNPJ do responsavel.
	  * CNPJ do responsavel
	  */
	public String getLBR_RespCNPJ();

    /** Column name LBR_RespCPF */
    public static final String COLUMNNAME_LBR_RespCPF = "LBR_RespCPF";

	/** Set CPF do responsavel.
	  * CPF do responsavel
	  */
	public void setLBR_RespCPF (String LBR_RespCPF);

	/** Get CPF do responsavel.
	  * CPF do responsavel
	  */
	public String getLBR_RespCPF();

    /** Column name LBR_RespSeg */
    public static final String COLUMNNAME_LBR_RespSeg = "LBR_RespSeg";

	/** Set Responsavel pelo seguro.
	  * infResp/respSeg
	  */
	public void setLBR_RespSeg (String LBR_RespSeg);

	/** Get Responsavel pelo seguro.
	  * infResp/respSeg
	  */
	public String getLBR_RespSeg();

    /** Column name LBR_SegCNPJ */
    public static final String COLUMNNAME_LBR_SegCNPJ = "LBR_SegCNPJ";

	/** Set CNPJ da seguradora.
	  * CNPJ da seguradora
	  */
	public void setLBR_SegCNPJ (String LBR_SegCNPJ);

	/** Get CNPJ da seguradora.
	  * CNPJ da seguradora
	  */
	public String getLBR_SegCNPJ();

    /** Column name LBR_SegName */
    public static final String COLUMNNAME_LBR_SegName = "LBR_SegName";

	/** Set Seguradora.
	  * infSeg/xSeg
	  */
	public void setLBR_SegName (String LBR_SegName);

	/** Get Seguradora.
	  * infSeg/xSeg
	  */
	public String getLBR_SegName();

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
