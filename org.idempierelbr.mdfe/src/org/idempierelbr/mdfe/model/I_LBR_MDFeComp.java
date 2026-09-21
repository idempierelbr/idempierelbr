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

/** Generated Interface for LBR_MDFeComp
 *  @author iDempiere (generated)
 *  @version Release 13
 */
@SuppressWarnings("all")
public interface I_LBR_MDFeComp 
{

    /** TableName=LBR_MDFeComp */
    public static final String Table_Name = "LBR_MDFeComp";

    /** AD_Table_ID=1100005 */
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

    /** Column name LBR_MDFeComp_ID */
    public static final String COLUMNNAME_LBR_MDFeComp_ID = "LBR_MDFeComp_ID";

	/** Set LBR_MDFeComp.
	  * LBR_MDFeComp
	  */
	public void setLBR_MDFeComp_ID (int LBR_MDFeComp_ID);

	/** Get LBR_MDFeComp.
	  * LBR_MDFeComp
	  */
	public int getLBR_MDFeComp_ID();

    /** Column name LBR_MDFeComp_UU */
    public static final String COLUMNNAME_LBR_MDFeComp_UU = "LBR_MDFeComp_UU";

	/** Set LBR_MDFeComp_UU.
	  * LBR_MDFeComp_UU
	  */
	public void setLBR_MDFeComp_UU (String LBR_MDFeComp_UU);

	/** Get LBR_MDFeComp_UU.
	  * LBR_MDFeComp_UU
	  */
	public String getLBR_MDFeComp_UU();

    /** Column name LBR_MDFeInfPag_ID */
    public static final String COLUMNNAME_LBR_MDFeInfPag_ID = "LBR_MDFeInfPag_ID";

	/** Set Pagamento.
	  * Pagamento
	  */
	public void setLBR_MDFeInfPag_ID (int LBR_MDFeInfPag_ID);

	/** Get Pagamento.
	  * Pagamento
	  */
	public int getLBR_MDFeInfPag_ID();

    /** Column name LBR_TpComp */
    public static final String COLUMNNAME_LBR_TpComp = "LBR_TpComp";

	/** Set Tipo do componente.
	  * Comp/tpComp
	  */
	public void setLBR_TpComp (String LBR_TpComp);

	/** Get Tipo do componente.
	  * Comp/tpComp
	  */
	public String getLBR_TpComp();

    /** Column name LBR_ValueComp */
    public static final String COLUMNNAME_LBR_ValueComp = "LBR_ValueComp";

	/** Set Valor do componente.
	  * Comp/vComp
	  */
	public void setLBR_ValueComp (BigDecimal LBR_ValueComp);

	/** Get Valor do componente.
	  * Comp/vComp
	  */
	public BigDecimal getLBR_ValueComp();

    /** Column name LBR_XComp */
    public static final String COLUMNNAME_LBR_XComp = "LBR_XComp";

	/** Set Descricao do componente.
	  * Comp/xComp
	  */
	public void setLBR_XComp (String LBR_XComp);

	/** Get Descricao do componente.
	  * Comp/xComp
	  */
	public String getLBR_XComp();

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
