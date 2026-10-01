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

/** Generated Interface for LBR_MDFeDoc
 *  @author iDempiere (generated)
 *  @version Release 13
 */
@SuppressWarnings("all")
public interface I_LBR_MDFeDoc 
{

    /** TableName=LBR_MDFeDoc */
    public static final String Table_Name = "LBR_MDFeDoc";

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

    /** Column name C_Order_ID */
    public static final String COLUMNNAME_C_Order_ID = "C_Order_ID";

	/** Set Pedido.
	  * Pedido
	  */
	public void setC_Order_ID (int C_Order_ID);

	/** Get Pedido.
	  * Pedido
	  */
	public int getC_Order_ID();

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

    /** Column name LBR_DFeChave */
    public static final String COLUMNNAME_LBR_DFeChave = "LBR_DFeChave";

	/** Set Chave de acesso.
	  * chNFe / chCTe / chMDFe
	  */
	public void setLBR_DFeChave (String LBR_DFeChave);

	/** Get Chave de acesso.
	  * chNFe / chCTe / chMDFe
	  */
	public String getLBR_DFeChave();

    /** Column name LBR_DFeType */
    public static final String COLUMNNAME_LBR_DFeType = "LBR_DFeType";

	/** Set Tipo do documento.
	  * Tipo do documento
	  */
	public void setLBR_DFeType (String LBR_DFeType);

	/** Get Tipo do documento.
	  * Tipo do documento
	  */
	public String getLBR_DFeType();

    /** Column name LBR_IndReentrega */
    public static final String COLUMNNAME_LBR_IndReentrega = "LBR_IndReentrega";

	/** Set Reentrega.
	  * indReentrega
	  */
	public void setLBR_IndReentrega (boolean LBR_IndReentrega);

	/** Get Reentrega.
	  * indReentrega
	  */
	public boolean isLBR_IndReentrega();

    /** Column name LBR_MDFeDoc_ID */
    public static final String COLUMNNAME_LBR_MDFeDoc_ID = "LBR_MDFeDoc_ID";

	/** Set LBR_MDFeDoc.
	  * LBR_MDFeDoc
	  */
	public void setLBR_MDFeDoc_ID (int LBR_MDFeDoc_ID);

	/** Get LBR_MDFeDoc.
	  * LBR_MDFeDoc
	  */
	public int getLBR_MDFeDoc_ID();

    /** Column name LBR_MDFeDoc_UU */
    public static final String COLUMNNAME_LBR_MDFeDoc_UU = "LBR_MDFeDoc_UU";

	/** Set LBR_MDFeDoc_UU.
	  * LBR_MDFeDoc_UU
	  */
	public void setLBR_MDFeDoc_UU (String LBR_MDFeDoc_UU);

	/** Get LBR_MDFeDoc_UU.
	  * LBR_MDFeDoc_UU
	  */
	public String getLBR_MDFeDoc_UU();

    /** Column name LBR_MDFeMunDescarga_ID */
    public static final String COLUMNNAME_LBR_MDFeMunDescarga_ID = "LBR_MDFeMunDescarga_ID";

	/** Set Municipio de descarregamento.
	  * Municipio de descarregamento
	  */
	public void setLBR_MDFeMunDescarga_ID (int LBR_MDFeMunDescarga_ID);

	/** Get Municipio de descarregamento.
	  * Municipio de descarregamento
	  */
	public int getLBR_MDFeMunDescarga_ID();

    /** Column name LBR_ValueDoc */
    public static final String COLUMNNAME_LBR_ValueDoc = "LBR_ValueDoc";

	/** Set Valor do documento.
	  * Valor total do documento manifestado; soma em tot/vCarga
	  */
	public void setLBR_ValueDoc (BigDecimal LBR_ValueDoc);

	/** Get Valor do documento.
	  * Valor total do documento manifestado; soma em tot/vCarga
	  */
	public BigDecimal getLBR_ValueDoc();

    /** Column name LBR_SegCodBarra */
    public static final String COLUMNNAME_LBR_SegCodBarra = "LBR_SegCodBarra";

	/** Set Segundo codigo de barras.
	  * Segundo codigo de barras
	  */
	public void setLBR_SegCodBarra (String LBR_SegCodBarra);

	/** Get Segundo codigo de barras.
	  * Segundo codigo de barras
	  */
	public String getLBR_SegCodBarra();

    /** Column name LBR_NotaFiscal_ID */
    public static final String COLUMNNAME_LBR_NotaFiscal_ID = "LBR_NotaFiscal_ID";

	/** Set Nota fiscal.
	  * Nota fiscal
	  */
	public void setLBR_NotaFiscal_ID (int LBR_NotaFiscal_ID);

	/** Get Nota fiscal.
	  * Nota fiscal
	  */
	public int getLBR_NotaFiscal_ID();

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
