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

/** Generated Interface for LBR_MDFeLacre
 *  @author iDempiere (generated)
 *  @version Release 13
 */
@SuppressWarnings("all")
public interface I_LBR_MDFeLacre 
{

    /** TableName=LBR_MDFeLacre */
    public static final String Table_Name = "LBR_MDFeLacre";

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

    /** Column name LBR_LacreScope */
    public static final String COLUMNNAME_LBR_LacreScope = "LBR_LacreScope";

	/** Set Escopo do lacre.
	  * lacres ou lacRodo
	  */
	public void setLBR_LacreScope (String LBR_LacreScope);

	/** Get Escopo do lacre.
	  * lacres ou lacRodo
	  */
	public String getLBR_LacreScope();

    /** Column name LBR_MDFeLacre_ID */
    public static final String COLUMNNAME_LBR_MDFeLacre_ID = "LBR_MDFeLacre_ID";

	/** Set LBR_MDFeLacre.
	  * LBR_MDFeLacre
	  */
	public void setLBR_MDFeLacre_ID (int LBR_MDFeLacre_ID);

	/** Get LBR_MDFeLacre.
	  * LBR_MDFeLacre
	  */
	public int getLBR_MDFeLacre_ID();

    /** Column name LBR_MDFeLacre_UU */
    public static final String COLUMNNAME_LBR_MDFeLacre_UU = "LBR_MDFeLacre_UU";

	/** Set LBR_MDFeLacre_UU.
	  * LBR_MDFeLacre_UU
	  */
	public void setLBR_MDFeLacre_UU (String LBR_MDFeLacre_UU);

	/** Get LBR_MDFeLacre_UU.
	  * LBR_MDFeLacre_UU
	  */
	public String getLBR_MDFeLacre_UU();

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

    /** Column name LBR_NLacre */
    public static final String COLUMNNAME_LBR_NLacre = "LBR_NLacre";

	/** Set Numero do lacre.
	  * nLacre
	  */
	public void setLBR_NLacre (String LBR_NLacre);

	/** Get Numero do lacre.
	  * nLacre
	  */
	public String getLBR_NLacre();

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
