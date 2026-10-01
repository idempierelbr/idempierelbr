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

/** Generated Interface for LBR_MDFeValePed
 *  @author iDempiere (generated)
 *  @version Release 13
 */
@SuppressWarnings("all")
public interface I_LBR_MDFeValePed 
{

    /** TableName=LBR_MDFeValePed */
    public static final String Table_Name = "LBR_MDFeValePed";

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

    /** Column name LBR_CNPJForn */
    public static final String COLUMNNAME_LBR_CNPJForn = "LBR_CNPJForn";

	/** Set CNPJ do fornecedor.
	  * disp/CNPJForn
	  */
	public void setLBR_CNPJForn (String LBR_CNPJForn);

	/** Get CNPJ do fornecedor.
	  * disp/CNPJForn
	  */
	public String getLBR_CNPJForn();

    /** Column name LBR_CNPJPg */
    public static final String COLUMNNAME_LBR_CNPJPg = "LBR_CNPJPg";

	/** Set CNPJ do pagador.
	  * CNPJ do pagador
	  */
	public void setLBR_CNPJPg (String LBR_CNPJPg);

	/** Get CNPJ do pagador.
	  * CNPJ do pagador
	  */
	public String getLBR_CNPJPg();

    /** Column name LBR_CPFPg */
    public static final String COLUMNNAME_LBR_CPFPg = "LBR_CPFPg";

	/** Set CPF do pagador.
	  * CPF do pagador
	  */
	public void setLBR_CPFPg (String LBR_CPFPg);

	/** Get CPF do pagador.
	  * CPF do pagador
	  */
	public String getLBR_CPFPg();

    /** Column name LBR_MDFeValePed_ID */
    public static final String COLUMNNAME_LBR_MDFeValePed_ID = "LBR_MDFeValePed_ID";

	/** Set LBR_MDFeValePed.
	  * LBR_MDFeValePed
	  */
	public void setLBR_MDFeValePed_ID (int LBR_MDFeValePed_ID);

	/** Get LBR_MDFeValePed.
	  * LBR_MDFeValePed
	  */
	public int getLBR_MDFeValePed_ID();

    /** Column name LBR_MDFeValePed_UU */
    public static final String COLUMNNAME_LBR_MDFeValePed_UU = "LBR_MDFeValePed_UU";

	/** Set LBR_MDFeValePed_UU.
	  * LBR_MDFeValePed_UU
	  */
	public void setLBR_MDFeValePed_UU (String LBR_MDFeValePed_UU);

	/** Get LBR_MDFeValePed_UU.
	  * LBR_MDFeValePed_UU
	  */
	public String getLBR_MDFeValePed_UU();

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

    /** Column name LBR_NCompra */
    public static final String COLUMNNAME_LBR_NCompra = "LBR_NCompra";

	/** Set Numero do comprovante.
	  * Numero do comprovante
	  */
	public void setLBR_NCompra (String LBR_NCompra);

	/** Get Numero do comprovante.
	  * Numero do comprovante
	  */
	public String getLBR_NCompra();

    /** Column name LBR_ValueValePed */
    public static final String COLUMNNAME_LBR_ValueValePed = "LBR_ValueValePed";

	/** Set Valor do vale pedagio.
	  * Valor do vale pedagio
	  */
	public void setLBR_ValueValePed (BigDecimal LBR_ValueValePed);

	/** Get Valor do vale pedagio.
	  * Valor do vale pedagio
	  */
	public BigDecimal getLBR_ValueValePed();

    /** Column name LBR_tpValePed */
    public static final String COLUMNNAME_LBR_tpValePed = "LBR_tpValePed";

	/** Set Tipo do vale pedagio.
	  * Tipo do vale pedagio
	  */
	public void setLBR_tpValePed (String LBR_tpValePed);

	/** Get Tipo do vale pedagio.
	  * Tipo do vale pedagio
	  */
	public String getLBR_tpValePed();

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
