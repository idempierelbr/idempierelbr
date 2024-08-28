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
 * For the text or an alternative of this public license, you may reach us    *
 * ComPiere, Inc., 2620 Augustine Dr. #245, Santa Clara, CA 95054, USA        *
 * or via info@compiere.org or http://www.compiere.org/license.html           *
 *****************************************************************************/
package org.idempierelbr.base.model;

import java.math.BigDecimal;
import java.sql.Timestamp;
import org.compiere.model.*;
import org.compiere.util.KeyNamePair;

/** Generated Interface for LBR_FiscalDoc
 *  @author iDempiere (generated) 
 *  @version Release 11
 */
@SuppressWarnings("all")
public interface I_LBR_FiscalDoc 
{

    /** TableName=LBR_FiscalDoc */
    public static final String Table_Name = "LBR_FiscalDoc";

    /** AD_Table_ID=800031 */
    public static final int Table_ID = 800031;

    KeyNamePair Model = new KeyNamePair(Table_ID, Table_Name);

    /** AccessLevel = 3 - Client - Org 
     */
    BigDecimal accessLevel = BigDecimal.valueOf(3);

    /** Load Meta Data */

    /** Column name AD_Client_ID */
    public static final String COLUMNNAME_AD_Client_ID = "AD_Client_ID";

	/** Get Tenant.
	  * Tenant for this installation.
	  */
	public int getAD_Client_ID();

    /** Column name AD_Org_ID */
    public static final String COLUMNNAME_AD_Org_ID = "AD_Org_ID";

	/** Set Organization.
	  * Organizational entity within tenant
	  */
	public void setAD_Org_ID (int AD_Org_ID);

	/** Get Organization.
	  * Organizational entity within tenant
	  */
	public int getAD_Org_ID();

    /** Column name C_Invoice_ID */
    public static final String COLUMNNAME_C_Invoice_ID = "C_Invoice_ID";

	/** Set Invoice.
	  * Invoice Identifier
	  */
	public void setC_Invoice_ID (int C_Invoice_ID);

	/** Get Invoice.
	  * Invoice Identifier
	  */
	public int getC_Invoice_ID();

	public org.compiere.model.I_C_Invoice getC_Invoice() throws RuntimeException;

    /** Column name Created */
    public static final String COLUMNNAME_Created = "Created";

	/** Get Created.
	  * Date this record was created
	  */
	public Timestamp getCreated();

    /** Column name CreatedBy */
    public static final String COLUMNNAME_CreatedBy = "CreatedBy";

	/** Get Created By.
	  * User who created this records
	  */
	public int getCreatedBy();

    /** Column name IsActive */
    public static final String COLUMNNAME_IsActive = "IsActive";

	/** Set Active.
	  * The record is active in the system
	  */
	public void setIsActive (boolean IsActive);

	/** Get Active.
	  * The record is active in the system
	  */
	public boolean isActive();

    /** Column name LBR_ChvCTe */
    public static final String COLUMNNAME_LBR_ChvCTe = "LBR_ChvCTe";

	/** Set Chave CT-e	  */
	public void setLBR_ChvCTe (String LBR_ChvCTe);

	/** Get Chave CT-e	  */
	public String getLBR_ChvCTe();

    /** Column name LBR_ChvCTeRef */
    public static final String COLUMNNAME_LBR_ChvCTeRef = "LBR_ChvCTeRef";

	/** Set Chave CT-e referenciada	  */
	public void setLBR_ChvCTeRef (String LBR_ChvCTeRef);

	/** Get Chave CT-e referenciada	  */
	public String getLBR_ChvCTeRef();

    /** Column name LBR_CodCons */
    public static final String COLUMNNAME_LBR_CodCons = "LBR_CodCons";

	/** Set Classe de Consumo	  */
	public void setLBR_CodCons (String LBR_CodCons);

	/** Get Classe de Consumo	  */
	public String getLBR_CodCons();

    /** Column name LBR_CodGrupoTensao */
    public static final String COLUMNNAME_LBR_CodGrupoTensao = "LBR_CodGrupoTensao";

	/** Set Grupo de Tensão	  */
	public void setLBR_CodGrupoTensao (String LBR_CodGrupoTensao);

	/** Get Grupo de Tensão	  */
	public String getLBR_CodGrupoTensao();

    /** Column name LBR_FiscalDoc_ID */
    public static final String COLUMNNAME_LBR_FiscalDoc_ID = "LBR_FiscalDoc_ID";

	/** Set Fiscal Details	  */
	public void setLBR_FiscalDoc_ID (int LBR_FiscalDoc_ID);

	/** Get Fiscal Details	  */
	public int getLBR_FiscalDoc_ID();

    /** Column name LBR_FiscalDoc_UU */
    public static final String COLUMNNAME_LBR_FiscalDoc_UU = "LBR_FiscalDoc_UU";

	/** Set LBR_FiscalDoc_UU	  */
	public void setLBR_FiscalDoc_UU (String LBR_FiscalDoc_UU);

	/** Get LBR_FiscalDoc_UU	  */
	public String getLBR_FiscalDoc_UU();

    /** Column name LBR_IndFrt */
    public static final String COLUMNNAME_LBR_IndFrt = "LBR_IndFrt";

	/** Set Tipo de Frete	  */
	public void setLBR_IndFrt (String LBR_IndFrt);

	/** Get Tipo de Frete	  */
	public String getLBR_IndFrt();

    /** Column name LBR_NFNo */
    public static final String COLUMNNAME_LBR_NFNo = "LBR_NFNo";

	/** Set Fiscal Document Number	  */
	public void setLBR_NFNo (String LBR_NFNo);

	/** Get Fiscal Document Number	  */
	public String getLBR_NFNo();

    /** Column name LBR_NFeModel */
    public static final String COLUMNNAME_LBR_NFeModel = "LBR_NFeModel";

	/** Set NF Model	  */
	public void setLBR_NFeModel (String LBR_NFeModel);

	/** Get NF Model	  */
	public String getLBR_NFeModel();

    /** Column name LBR_NFeSerie */
    public static final String COLUMNNAME_LBR_NFeSerie = "LBR_NFeSerie";

	/** Set NF Serie	  */
	public void setLBR_NFeSerie (String LBR_NFeSerie);

	/** Get NF Serie	  */
	public String getLBR_NFeSerie();

    /** Column name LBR_NFeSubSerie */
    public static final String COLUMNNAME_LBR_NFeSubSerie = "LBR_NFeSubSerie";

	/** Set Sub série	  */
	public void setLBR_NFeSubSerie (String LBR_NFeSubSerie);

	/** Get Sub série	  */
	public String getLBR_NFeSubSerie();

    /** Column name LBR_TpAssinante */
    public static final String COLUMNNAME_LBR_TpAssinante = "LBR_TpAssinante";

	/** Set Tipo de Assinante	  */
	public void setLBR_TpAssinante (String LBR_TpAssinante);

	/** Get Tipo de Assinante	  */
	public String getLBR_TpAssinante();

    /** Column name LBR_TpCTe */
    public static final String COLUMNNAME_LBR_TpCTe = "LBR_TpCTe";

	/** Set Tipo de Conhecimento Eletrônico	  */
	public void setLBR_TpCTe (String LBR_TpCTe);

	/** Get Tipo de Conhecimento Eletrônico	  */
	public String getLBR_TpCTe();

    /** Column name LBR_TpLigacao */
    public static final String COLUMNNAME_LBR_TpLigacao = "LBR_TpLigacao";

	/** Set Tipo de Ligação	  */
	public void setLBR_TpLigacao (String LBR_TpLigacao);

	/** Get Tipo de Ligação	  */
	public String getLBR_TpLigacao();

    /** Column name LBR_VlTerc */
    public static final String COLUMNNAME_LBR_VlTerc = "LBR_VlTerc";

	/** Set Valor de Terceiros	  */
	public void setLBR_VlTerc (BigDecimal LBR_VlTerc);

	/** Get Valor de Terceiros	  */
	public BigDecimal getLBR_VlTerc();

    /** Column name Updated */
    public static final String COLUMNNAME_Updated = "Updated";

	/** Get Updated.
	  * Date this record was updated
	  */
	public Timestamp getUpdated();

    /** Column name UpdatedBy */
    public static final String COLUMNNAME_UpdatedBy = "UpdatedBy";

	/** Get Updated By.
	  * User who updated this records
	  */
	public int getUpdatedBy();
}
