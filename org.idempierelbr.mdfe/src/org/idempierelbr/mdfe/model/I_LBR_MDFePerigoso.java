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

/** Generated Interface for LBR_MDFePerigoso
 *  @author iDempiere (generated)
 *  @version Release 13
 */
@SuppressWarnings("all")
public interface I_LBR_MDFePerigoso 
{

    /** TableName=LBR_MDFePerigoso */
    public static final String Table_Name = "LBR_MDFePerigoso";

    /** AD_Table_ID=1100015 */
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

    /** Column name LBR_GrEmb */
    public static final String COLUMNNAME_LBR_GrEmb = "LBR_GrEmb";

	/** Set Grupo de embalagem.
	  * peri/grEmb
	  */
	public void setLBR_GrEmb (String LBR_GrEmb);

	/** Get Grupo de embalagem.
	  * peri/grEmb
	  */
	public String getLBR_GrEmb();

    /** Column name LBR_MDFeDoc_ID */
    public static final String COLUMNNAME_LBR_MDFeDoc_ID = "LBR_MDFeDoc_ID";

	/** Set Documento.
	  * Documento
	  */
	public void setLBR_MDFeDoc_ID (int LBR_MDFeDoc_ID);

	/** Get Documento.
	  * Documento
	  */
	public int getLBR_MDFeDoc_ID();

    /** Column name LBR_MDFePerigoso_ID */
    public static final String COLUMNNAME_LBR_MDFePerigoso_ID = "LBR_MDFePerigoso_ID";

	/** Set LBR_MDFePerigoso.
	  * LBR_MDFePerigoso
	  */
	public void setLBR_MDFePerigoso_ID (int LBR_MDFePerigoso_ID);

	/** Get LBR_MDFePerigoso.
	  * LBR_MDFePerigoso
	  */
	public int getLBR_MDFePerigoso_ID();

    /** Column name LBR_MDFePerigoso_UU */
    public static final String COLUMNNAME_LBR_MDFePerigoso_UU = "LBR_MDFePerigoso_UU";

	/** Set LBR_MDFePerigoso_UU.
	  * LBR_MDFePerigoso_UU
	  */
	public void setLBR_MDFePerigoso_UU (String LBR_MDFePerigoso_UU);

	/** Get LBR_MDFePerigoso_UU.
	  * LBR_MDFePerigoso_UU
	  */
	public String getLBR_MDFePerigoso_UU();

    /** Column name LBR_NONU */
    public static final String COLUMNNAME_LBR_NONU = "LBR_NONU";

	/** Set Numero ONU.
	  * peri/nONU
	  */
	public void setLBR_NONU (String LBR_NONU);

	/** Get Numero ONU.
	  * peri/nONU
	  */
	public String getLBR_NONU();

    /** Column name LBR_QTotProd */
    public static final String COLUMNNAME_LBR_QTotProd = "LBR_QTotProd";

	/** Set Quantidade total.
	  * peri/qTotProd
	  */
	public void setLBR_QTotProd (String LBR_QTotProd);

	/** Get Quantidade total.
	  * peri/qTotProd
	  */
	public String getLBR_QTotProd();

    /** Column name LBR_QVolTipo */
    public static final String COLUMNNAME_LBR_QVolTipo = "LBR_QVolTipo";

	/** Set Quantidade e tipo de volumes.
	  * peri/qVolTipo
	  */
	public void setLBR_QVolTipo (String LBR_QVolTipo);

	/** Get Quantidade e tipo de volumes.
	  * peri/qVolTipo
	  */
	public String getLBR_QVolTipo();

    /** Column name LBR_XClaRisco */
    public static final String COLUMNNAME_LBR_XClaRisco = "LBR_XClaRisco";

	/** Set Classe de risco.
	  * peri/xClaRisco
	  */
	public void setLBR_XClaRisco (String LBR_XClaRisco);

	/** Get Classe de risco.
	  * peri/xClaRisco
	  */
	public String getLBR_XClaRisco();

    /** Column name LBR_XNomeAE */
    public static final String COLUMNNAME_LBR_XNomeAE = "LBR_XNomeAE";

	/** Set Nome para embarque.
	  * peri/xNomeAE
	  */
	public void setLBR_XNomeAE (String LBR_XNomeAE);

	/** Get Nome para embarque.
	  * peri/xNomeAE
	  */
	public String getLBR_XNomeAE();

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
