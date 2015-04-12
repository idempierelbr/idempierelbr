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
package org.idempierelbr.nfe.model;

import java.math.BigDecimal;
import java.sql.Timestamp;
import org.compiere.model.*;
import org.compiere.util.KeyNamePair;

/** Generated Interface for LBR_NotaFiscalLineComb
 *  @author iDempiere (generated) 
 *  @version Release 2.1
 */
@SuppressWarnings("all")
public interface I_LBR_NotaFiscalLineComb 
{

    /** TableName=LBR_NotaFiscalLineComb */
    public static final String Table_Name = "LBR_NotaFiscalLineComb";

    /** AD_Table_ID=1000070 */
    public static final int Table_ID = MTable.getTable_ID(Table_Name);

    KeyNamePair Model = new KeyNamePair(Table_ID, Table_Name);

    /** AccessLevel = 3 - Client - Org 
     */
    BigDecimal accessLevel = BigDecimal.valueOf(3);

    /** Load Meta Data */

    /** Column name AD_Client_ID */
    public static final String COLUMNNAME_AD_Client_ID = "AD_Client_ID";

	/** Get Client.
	  * Client/Tenant for this installation.
	  */
	public int getAD_Client_ID();

    /** Column name AD_Org_ID */
    public static final String COLUMNNAME_AD_Org_ID = "AD_Org_ID";

	/** Set Organization.
	  * Organizational entity within client
	  */
	public void setAD_Org_ID (int AD_Org_ID);

	/** Get Organization.
	  * Organizational entity within client
	  */
	public int getAD_Org_ID();

    /** Column name C_Region_ID */
    public static final String COLUMNNAME_C_Region_ID = "C_Region_ID";

	/** Set Region.
	  * Identifies a geographical Region
	  */
	public void setC_Region_ID (int C_Region_ID);

	/** Get Region.
	  * Identifies a geographical Region
	  */
	public int getC_Region_ID();

	public org.compiere.model.I_C_Region getC_Region() throws RuntimeException;

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

    /** Column name LBR_CODIF */
    public static final String COLUMNNAME_LBR_CODIF = "LBR_CODIF";

	/** Set Código de Autorização.
	  * Código de autorização / registro do CODIF
	  */
	public void setLBR_CODIF (String LBR_CODIF);

	/** Get Código de Autorização.
	  * Código de autorização / registro do CODIF
	  */
	public String getLBR_CODIF();

    /** Column name LBR_CodANP */
    public static final String COLUMNNAME_LBR_CodANP = "LBR_CodANP";

	/** Set Código ANP.
	  * Código da Tabela da Agência Nacional do Petróleo para o produto.
	  */
	public void setLBR_CodANP (String LBR_CodANP);

	/** Get Código ANP.
	  * Código da Tabela da Agência Nacional do Petróleo para o produto.
	  */
	public String getLBR_CodANP();

    /** Column name LBR_NotaFiscalLineComb_ID */
    public static final String COLUMNNAME_LBR_NotaFiscalLineComb_ID = "LBR_NotaFiscalLineComb_ID";

	/** Set Linha de Nota Fiscal - Combustível	  */
	public void setLBR_NotaFiscalLineComb_ID (int LBR_NotaFiscalLineComb_ID);

	/** Get Linha de Nota Fiscal - Combustível	  */
	public int getLBR_NotaFiscalLineComb_ID();

    /** Column name LBR_NotaFiscalLineComb_UU */
    public static final String COLUMNNAME_LBR_NotaFiscalLineComb_UU = "LBR_NotaFiscalLineComb_UU";

	/** Set LBR_NotaFiscalLineComb_UU	  */
	public void setLBR_NotaFiscalLineComb_UU (String LBR_NotaFiscalLineComb_UU);

	/** Get LBR_NotaFiscalLineComb_UU	  */
	public String getLBR_NotaFiscalLineComb_UU();

    /** Column name LBR_NotaFiscalLine_ID */
    public static final String COLUMNNAME_LBR_NotaFiscalLine_ID = "LBR_NotaFiscalLine_ID";

	/** Set Brazilian Fiscal Invoice (Nota Fiscal) Line.
	  * Brazilian Fiscal Invoice (Nota Fiscal) Line Identifier
	  */
	public void setLBR_NotaFiscalLine_ID (int LBR_NotaFiscalLine_ID);

	/** Get Brazilian Fiscal Invoice (Nota Fiscal) Line.
	  * Brazilian Fiscal Invoice (Nota Fiscal) Line Identifier
	  */
	public int getLBR_NotaFiscalLine_ID();

    /** Column name LBR_pMixGN */
    public static final String COLUMNNAME_LBR_pMixGN = "LBR_pMixGN";

	/** Set Percentual Gás Natural.
	  * Percentual de Gás Natural para o produto GLP
	  */
	public void setLBR_pMixGN (BigDecimal LBR_pMixGN);

	/** Get Percentual Gás Natural.
	  * Percentual de Gás Natural para o produto GLP
	  */
	public BigDecimal getLBR_pMixGN();

    /** Column name LBR_qTemp */
    public static final String COLUMNNAME_LBR_qTemp = "LBR_qTemp";

	/** Set Quantidade Combustível Temp. Ambiente.
	  * Quantidade de combustível faturada à temperatura ambiente.
	  */
	public void setLBR_qTemp (BigDecimal LBR_qTemp);

	/** Get Quantidade Combustível Temp. Ambiente.
	  * Quantidade de combustível faturada à temperatura ambiente.
	  */
	public BigDecimal getLBR_qTemp();

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
