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
/** Generated Model - DO NOT CHANGE */
package org.idempierelbr.base.model;

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.Properties;
import org.compiere.model.*;
import org.compiere.util.Env;
import org.compiere.util.KeyNamePair;

/** Generated Model for LBR_DI
 *  @author iDempiere (generated)
 *  @version Release 11 - $Id$ */
@org.adempiere.base.Model(table="LBR_DI")
public class X_LBR_DI extends PO implements I_LBR_DI, I_Persistent
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20240603L;

    /** Standard Constructor */
    public X_LBR_DI (Properties ctx, int LBR_DI_ID, String trxName)
    {
      super (ctx, LBR_DI_ID, trxName);
      /** if (LBR_DI_ID == 0)
        {
			setC_City_ID (0);
			setC_Region_ID (0);
			setDateDoc (new Timestamp( System.currentTimeMillis() ));
// @#Date@
			setLBR_DI_ID (0);
			setLBR_DI_MediationImpType (null);
			setLBR_DI_No (null);
			setLBR_DI_TranspType (null);
			setLBR_DI_UU (null);
        } */
    }

    /** Standard Constructor */
    public X_LBR_DI (Properties ctx, int LBR_DI_ID, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_DI_ID, trxName, virtualColumns);
      /** if (LBR_DI_ID == 0)
        {
			setC_City_ID (0);
			setC_Region_ID (0);
			setDateDoc (new Timestamp( System.currentTimeMillis() ));
// @#Date@
			setLBR_DI_ID (0);
			setLBR_DI_MediationImpType (null);
			setLBR_DI_No (null);
			setLBR_DI_TranspType (null);
			setLBR_DI_UU (null);
        } */
    }

    /** Standard Constructor */
    public X_LBR_DI (Properties ctx, String LBR_DI_UU, String trxName)
    {
      super (ctx, LBR_DI_UU, trxName);
      /** if (LBR_DI_UU == null)
        {
			setC_City_ID (0);
			setC_Region_ID (0);
			setDateDoc (new Timestamp( System.currentTimeMillis() ));
// @#Date@
			setLBR_DI_ID (0);
			setLBR_DI_MediationImpType (null);
			setLBR_DI_No (null);
			setLBR_DI_TranspType (null);
			setLBR_DI_UU (null);
        } */
    }

    /** Standard Constructor */
    public X_LBR_DI (Properties ctx, String LBR_DI_UU, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_DI_UU, trxName, virtualColumns);
      /** if (LBR_DI_UU == null)
        {
			setC_City_ID (0);
			setC_Region_ID (0);
			setDateDoc (new Timestamp( System.currentTimeMillis() ));
// @#Date@
			setLBR_DI_ID (0);
			setLBR_DI_MediationImpType (null);
			setLBR_DI_No (null);
			setLBR_DI_TranspType (null);
			setLBR_DI_UU (null);
        } */
    }

    /** Load Constructor */
    public X_LBR_DI (Properties ctx, ResultSet rs, String trxName)
    {
      super (ctx, rs, trxName);
    }

    /** AccessLevel
      * @return 1 - Org
      */
    protected int get_AccessLevel()
    {
      return accessLevel.intValue();
    }

    /** Load Meta Data */
    protected POInfo initPO (Properties ctx)
    {
      POInfo poi = POInfo.getPOInfo (ctx, Table_ID, get_TrxName());
      return poi;
    }

    public String toString()
    {
      StringBuilder sb = new StringBuilder ("X_LBR_DI[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	public org.compiere.model.I_C_City getC_City() throws RuntimeException
	{
		return (org.compiere.model.I_C_City)MTable.get(getCtx(), org.compiere.model.I_C_City.Table_ID)
			.getPO(getC_City_ID(), get_TrxName());
	}

	/** Set City.
		@param C_City_ID City
	*/
	public void setC_City_ID (int C_City_ID)
	{
		if (C_City_ID < 1)
			set_Value (COLUMNNAME_C_City_ID, null);
		else
			set_Value (COLUMNNAME_C_City_ID, Integer.valueOf(C_City_ID));
	}

	/** Get City.
		@return City
	  */
	public int getC_City_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_City_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.compiere.model.I_C_Region getC_Region() throws RuntimeException
	{
		return (org.compiere.model.I_C_Region)MTable.get(getCtx(), org.compiere.model.I_C_Region.Table_ID)
			.getPO(getC_Region_ID(), get_TrxName());
	}

	/** Set Region.
		@param C_Region_ID Identifies a geographical Region
	*/
	public void setC_Region_ID (int C_Region_ID)
	{
		if (C_Region_ID < 1)
			set_Value (COLUMNNAME_C_Region_ID, null);
		else
			set_Value (COLUMNNAME_C_Region_ID, Integer.valueOf(C_Region_ID));
	}

	/** Get Region.
		@return Identifies a geographical Region
	  */
	public int getC_Region_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_Region_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Document Date.
		@param DateDoc Date of the Document
	*/
	public void setDateDoc (Timestamp DateDoc)
	{
		set_Value (COLUMNNAME_DateDoc, DateDoc);
	}

	/** Get Document Date.
		@return Date of the Document
	  */
	public Timestamp getDateDoc()
	{
		return (Timestamp)get_Value(COLUMNNAME_DateDoc);
	}

    /** Get Record ID/ColumnName
        @return ID/ColumnName pair
      */
    public KeyNamePair getKeyNamePair()
    {
        return new KeyNamePair(get_ID(), String.valueOf(getDateDoc()));
    }

	/** Set Description.
		@param Description Optional short description of the record
	*/
	public void setDescription (String Description)
	{
		set_Value (COLUMNNAME_Description, Description);
	}

	/** Get Description.
		@return Optional short description of the record
	  */
	public String getDescription()
	{
		return (String)get_Value(COLUMNNAME_Description);
	}

	/** Set AFRMM Amount.
		@param LBR_AfrmmAmt AFRMM Amount
	*/
	public void setLBR_AfrmmAmt (BigDecimal LBR_AfrmmAmt)
	{
		set_Value (COLUMNNAME_LBR_AfrmmAmt, LBR_AfrmmAmt);
	}

	/** Get AFRMM Amount.
		@return AFRMM Amount	  */
	public BigDecimal getLBR_AfrmmAmt()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_AfrmmAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	public org.compiere.model.I_C_BPartner_Location getLBR_BP_BuyerLocation() throws RuntimeException
	{
		return (org.compiere.model.I_C_BPartner_Location)MTable.get(getCtx(), org.compiere.model.I_C_BPartner_Location.Table_ID)
			.getPO(getLBR_BP_BuyerLocation_ID(), get_TrxName());
	}

	/** Set Business Partner (Buyer) Location.
		@param LBR_BP_BuyerLocation_ID Identifies a Business Partner Location
	*/
	public void setLBR_BP_BuyerLocation_ID (int LBR_BP_BuyerLocation_ID)
	{
		if (LBR_BP_BuyerLocation_ID < 1)
			set_Value (COLUMNNAME_LBR_BP_BuyerLocation_ID, null);
		else
			set_Value (COLUMNNAME_LBR_BP_BuyerLocation_ID, Integer.valueOf(LBR_BP_BuyerLocation_ID));
	}

	/** Get Business Partner (Buyer) Location.
		@return Identifies a Business Partner Location
	  */
	public int getLBR_BP_BuyerLocation_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_BP_BuyerLocation_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.compiere.model.I_C_BPartner getLBR_BP_Buyer() throws RuntimeException
	{
		return (org.compiere.model.I_C_BPartner)MTable.get(getCtx(), org.compiere.model.I_C_BPartner.Table_ID)
			.getPO(getLBR_BP_Buyer_ID(), get_TrxName());
	}

	/** Set Business Partner (Buyer).
		@param LBR_BP_Buyer_ID Identifies a Business Partner
	*/
	public void setLBR_BP_Buyer_ID (int LBR_BP_Buyer_ID)
	{
		if (LBR_BP_Buyer_ID < 1)
			set_Value (COLUMNNAME_LBR_BP_Buyer_ID, null);
		else
			set_Value (COLUMNNAME_LBR_BP_Buyer_ID, Integer.valueOf(LBR_BP_Buyer_ID));
	}

	/** Get Business Partner (Buyer).
		@return Identifies a Business Partner
	  */
	public int getLBR_BP_Buyer_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_BP_Buyer_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.compiere.model.I_C_BPartner getLBR_BP_Importer() throws RuntimeException
	{
		return (org.compiere.model.I_C_BPartner)MTable.get(getCtx(), org.compiere.model.I_C_BPartner.Table_ID)
			.getPO(getLBR_BP_Importer_ID(), get_TrxName());
	}

	/** Set Business Partner (Importer).
		@param LBR_BP_Importer_ID Identifies a Business Partner
	*/
	public void setLBR_BP_Importer_ID (int LBR_BP_Importer_ID)
	{
		if (LBR_BP_Importer_ID < 1)
			set_Value (COLUMNNAME_LBR_BP_Importer_ID, null);
		else
			set_Value (COLUMNNAME_LBR_BP_Importer_ID, Integer.valueOf(LBR_BP_Importer_ID));
	}

	/** Get Business Partner (Importer).
		@return Identifies a Business Partner
	  */
	public int getLBR_BP_Importer_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_BP_Importer_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Clearance Date.
		@param LBR_ClearanceDate Date of the clearance
	*/
	public void setLBR_ClearanceDate (Timestamp LBR_ClearanceDate)
	{
		set_Value (COLUMNNAME_LBR_ClearanceDate, LBR_ClearanceDate);
	}

	/** Get Clearance Date.
		@return Date of the clearance
	  */
	public Timestamp getLBR_ClearanceDate()
	{
		return (Timestamp)get_Value(COLUMNNAME_LBR_ClearanceDate);
	}

	/** Set Import Declaration (DI).
		@param LBR_DI_ID Identifies an Import Declaration (DI)
	*/
	public void setLBR_DI_ID (int LBR_DI_ID)
	{
		if (LBR_DI_ID < 1)
			set_ValueNoCheck (COLUMNNAME_LBR_DI_ID, null);
		else
			set_ValueNoCheck (COLUMNNAME_LBR_DI_ID, Integer.valueOf(LBR_DI_ID));
	}

	/** Get Import Declaration (DI).
		@return Identifies an Import Declaration (DI)
	  */
	public int getLBR_DI_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_DI_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** LBR_DI_MediationImpType AD_Reference_ID=800001 */
	public static final int LBR_DI_MEDIATIONIMPTYPE_AD_Reference_ID=800001;
	/** Importacao por Conta Propria = 1 */
	public static final String LBR_DI_MEDIATIONIMPTYPE_ImportacaoPorContaPropria = "1";
	/** Importacao por Conta e Ordem = 2 */
	public static final String LBR_DI_MEDIATIONIMPTYPE_ImportacaoPorContaEOrdem = "2";
	/** Importacao por Encomenda = 3 */
	public static final String LBR_DI_MEDIATIONIMPTYPE_ImportacaoPorEncomenda = "3";
	/** Set Mediation Type.
		@param LBR_DI_MediationImpType Type of mediation
	*/
	public void setLBR_DI_MediationImpType (String LBR_DI_MediationImpType)
	{

		set_Value (COLUMNNAME_LBR_DI_MediationImpType, LBR_DI_MediationImpType);
	}

	/** Get Mediation Type.
		@return Type of mediation
	  */
	public String getLBR_DI_MediationImpType()
	{
		return (String)get_Value(COLUMNNAME_LBR_DI_MediationImpType);
	}

	/** Set Import Declaration (DI) No.
		@param LBR_DI_No Document sequence number of the document
	*/
	public void setLBR_DI_No (String LBR_DI_No)
	{
		set_Value (COLUMNNAME_LBR_DI_No, LBR_DI_No);
	}

	/** Get Import Declaration (DI) No.
		@return Document sequence number of the document
	  */
	public String getLBR_DI_No()
	{
		return (String)get_Value(COLUMNNAME_LBR_DI_No);
	}

	/** LBR_DI_TranspType AD_Reference_ID=800000 */
	public static final int LBR_DI_TRANSPTYPE_AD_Reference_ID=800000;
	/** Maritima = 1 */
	public static final String LBR_DI_TRANSPTYPE_Maritima = "1";
	/** Entrada / Saida Ficta. = 10 */
	public static final String LBR_DI_TRANSPTYPE_EntradaSaidaFicta = "10";
	/** Fluvial = 2 */
	public static final String LBR_DI_TRANSPTYPE_Fluvial = "2";
	/** Lacustre = 3 */
	public static final String LBR_DI_TRANSPTYPE_Lacustre = "3";
	/** Aerea = 4 */
	public static final String LBR_DI_TRANSPTYPE_Aerea = "4";
	/** Postal = 5 */
	public static final String LBR_DI_TRANSPTYPE_Postal = "5";
	/** Ferroviaria = 6 */
	public static final String LBR_DI_TRANSPTYPE_Ferroviaria = "6";
	/** Rodoviaria = 7 */
	public static final String LBR_DI_TRANSPTYPE_Rodoviaria = "7";
	/** Conduto / Rede de Transmissao = 8 */
	public static final String LBR_DI_TRANSPTYPE_CondutoRedeDeTransmissao = "8";
	/** Meios Proprios = 9 */
	public static final String LBR_DI_TRANSPTYPE_MeiosProprios = "9";
	/** Set Transportation Type.
		@param LBR_DI_TranspType Type of transportation
	*/
	public void setLBR_DI_TranspType (String LBR_DI_TranspType)
	{

		set_Value (COLUMNNAME_LBR_DI_TranspType, LBR_DI_TranspType);
	}

	/** Get Transportation Type.
		@return Type of transportation
	  */
	public String getLBR_DI_TranspType()
	{
		return (String)get_Value(COLUMNNAME_LBR_DI_TranspType);
	}

	/** Set Import Declaration (DI).
		@param LBR_DI_UU Identifies an Import Declaration (DI)
	*/
	public void setLBR_DI_UU (String LBR_DI_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_DI_UU, LBR_DI_UU);
	}

	/** Get Import Declaration (DI).
		@return Identifies an Import Declaration (DI)
	  */
	public String getLBR_DI_UU()
	{
		return (String)get_Value(COLUMNNAME_LBR_DI_UU);
	}
}