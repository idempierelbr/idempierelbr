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
package org.adempierelbr.model;

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.util.Properties;
import org.compiere.model.*;
import org.compiere.util.Env;
import org.compiere.util.KeyNamePair;

/** Generated Model for LBR_MDFeToll
 *  @author iDempiere (generated) 
 *  @version Release 4.1 - $Id$ */
public class X_LBR_MDFeToll extends PO implements I_LBR_MDFeToll, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20170626L;

    /** Standard Constructor */
    public X_LBR_MDFeToll (Properties ctx, int LBR_MDFeToll_ID, String trxName)
    {
      super (ctx, LBR_MDFeToll_ID, trxName);
      /** if (LBR_MDFeToll_ID == 0)
        {
			setLBR_MDFeToll_ID (0);
			setLBR_MDFe_ID (0);
			setPOReference (null);
			setlbr_BPCNPJ (null);
        } */
    }

    /** Load Constructor */
    public X_LBR_MDFeToll (Properties ctx, ResultSet rs, String trxName)
    {
      super (ctx, rs, trxName);
    }

    /** AccessLevel
      * @return 3 - Client - Org 
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
      StringBuffer sb = new StringBuffer ("X_LBR_MDFeToll[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set Amount.
		@param Amount 
		Amount in a defined currency
	  */
	public void setAmount (BigDecimal Amount)
	{
		set_Value (COLUMNNAME_Amount, Amount);
	}

	/** Get Amount.
		@return Amount in a defined currency
	  */
	public BigDecimal getAmount () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_Amount);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set MDFe Toll.
		@param LBR_MDFeToll_ID MDFe Toll	  */
	public void setLBR_MDFeToll_ID (int LBR_MDFeToll_ID)
	{
		if (LBR_MDFeToll_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_MDFeToll_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_MDFeToll_ID, Integer.valueOf(LBR_MDFeToll_ID));
	}

	/** Get MDFe Toll.
		@return MDFe Toll	  */
	public int getLBR_MDFeToll_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_MDFeToll_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.adempierelbr.model.I_LBR_MDFe getLBR_MDFe() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_MDFe)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_MDFe.Table_Name)
			.getPO(getLBR_MDFe_ID(), get_TrxName());	}

	/** Set MDF-e.
		@param LBR_MDFe_ID 
		Manifesto Eletrônico de Documentos Fiscais
	  */
	public void setLBR_MDFe_ID (int LBR_MDFe_ID)
	{
		if (LBR_MDFe_ID < 1) 
			set_Value (COLUMNNAME_LBR_MDFe_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_MDFe_ID, Integer.valueOf(LBR_MDFe_ID));
	}

	/** Get MDF-e.
		@return Manifesto Eletrônico de Documentos Fiscais
	  */
	public int getLBR_MDFe_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_MDFe_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Order Reference.
		@param POReference 
		Transaction Reference Number (Sales Order, Purchase Order) of your Business Partner
	  */
	public void setPOReference (String POReference)
	{
		set_Value (COLUMNNAME_POReference, POReference);
	}

	/** Get Order Reference.
		@return Transaction Reference Number (Sales Order, Purchase Order) of your Business Partner
	  */
	public String getPOReference () 
	{
		return (String)get_Value(COLUMNNAME_POReference);
	}

	/** Set BP CNPJ.
		@param lbr_BPCNPJ 
		BP CNPJ - Copied from the BP into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPCNPJ (String lbr_BPCNPJ)
	{
		set_Value (COLUMNNAME_lbr_BPCNPJ, lbr_BPCNPJ);
	}

	/** Get BP CNPJ.
		@return BP CNPJ - Copied from the BP into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPCNPJ () 
	{
		return (String)get_Value(COLUMNNAME_lbr_BPCNPJ);
	}

	/** Set BP Shipper CNPJ.
		@param lbr_BPShipperCNPJ 
		BP Shipper CNPJ - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPShipperCNPJ (String lbr_BPShipperCNPJ)
	{
		set_Value (COLUMNNAME_lbr_BPShipperCNPJ, lbr_BPShipperCNPJ);
	}

	/** Get BP Shipper CNPJ.
		@return BP Shipper CNPJ - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPShipperCNPJ () 
	{
		return (String)get_Value(COLUMNNAME_lbr_BPShipperCNPJ);
	}

    /** Get Record ID/ColumnName
        @return ID/ColumnName pair
      */
    public KeyNamePair getKeyNamePair() 
    {
        return new KeyNamePair(get_ID(), getlbr_BPShipperCNPJ());
    }
}