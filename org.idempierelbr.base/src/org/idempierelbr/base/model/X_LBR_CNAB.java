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

import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.Properties;
import org.compiere.model.*;
import org.compiere.util.KeyNamePair;

/** Generated Model for LBR_CNAB
 *  @author iDempiere (generated)
 *  @version Release 11 - $Id$ */
@org.adempiere.base.Model(table="LBR_CNAB")
public class X_LBR_CNAB extends PO implements I_LBR_CNAB, I_Persistent
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20240603L;

    /** Standard Constructor */
    public X_LBR_CNAB (Properties ctx, int LBR_CNAB_ID, String trxName)
    {
      super (ctx, LBR_CNAB_ID, trxName);
      /** if (LBR_CNAB_ID == 0)
        {
			setLBR_CNAB_ID (0);
        } */
    }

    /** Standard Constructor */
    public X_LBR_CNAB (Properties ctx, int LBR_CNAB_ID, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_CNAB_ID, trxName, virtualColumns);
      /** if (LBR_CNAB_ID == 0)
        {
			setLBR_CNAB_ID (0);
        } */
    }

    /** Standard Constructor */
    public X_LBR_CNAB (Properties ctx, String LBR_CNAB_UU, String trxName)
    {
      super (ctx, LBR_CNAB_UU, trxName);
      /** if (LBR_CNAB_UU == null)
        {
			setLBR_CNAB_ID (0);
        } */
    }

    /** Standard Constructor */
    public X_LBR_CNAB (Properties ctx, String LBR_CNAB_UU, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_CNAB_UU, trxName, virtualColumns);
      /** if (LBR_CNAB_UU == null)
        {
			setLBR_CNAB_ID (0);
        } */
    }

    /** Load Constructor */
    public X_LBR_CNAB (Properties ctx, ResultSet rs, String trxName)
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
      StringBuilder sb = new StringBuilder ("X_LBR_CNAB[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	public org.compiere.model.I_C_BankAccount getC_BankAccount() throws RuntimeException
	{
		return (org.compiere.model.I_C_BankAccount)MTable.get(getCtx(), org.compiere.model.I_C_BankAccount.Table_ID)
			.getPO(getC_BankAccount_ID(), get_TrxName());
	}

	/** Set Bank Account.
		@param C_BankAccount_ID Account at the Bank
	*/
	public void setC_BankAccount_ID (int C_BankAccount_ID)
	{
		if (C_BankAccount_ID < 1)
			set_Value (COLUMNNAME_C_BankAccount_ID, null);
		else
			set_Value (COLUMNNAME_C_BankAccount_ID, Integer.valueOf(C_BankAccount_ID));
	}

	/** Get Bank Account.
		@return Account at the Bank
	  */
	public int getC_BankAccount_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_BankAccount_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

    /** Get Record ID/ColumnName
        @return ID/ColumnName pair
      */
    public KeyNamePair getKeyNamePair()
    {
        return new KeyNamePair(get_ID(), String.valueOf(getC_BankAccount_ID()));
    }

	public org.compiere.model.I_C_Bank getC_Bank() throws RuntimeException
	{
		return (org.compiere.model.I_C_Bank)MTable.get(getCtx(), org.compiere.model.I_C_Bank.Table_ID)
			.getPO(getC_Bank_ID(), get_TrxName());
	}

	/** Set Bank.
		@param C_Bank_ID Bank
	*/
	public void setC_Bank_ID (int C_Bank_ID)
	{
		if (C_Bank_ID < 1)
			set_ValueNoCheck (COLUMNNAME_C_Bank_ID, null);
		else
			set_ValueNoCheck (COLUMNNAME_C_Bank_ID, Integer.valueOf(C_Bank_ID));
	}

	/** Get Bank.
		@return Bank
	  */
	public int getC_Bank_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_Bank_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
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

	/** 1 - Remessa (Cliente -&gt; Banco) = 1 */
	public static final String LBR_CNAB240MOVEMENTTYPE_1_RemessaCliente_GtBanco = "1";
	/** 2 - Retorno (Banco -&gt; Cliente) = 2 */
	public static final String LBR_CNAB240MOVEMENTTYPE_2_RetornoBanco_GtCliente = "2";
	/** Set Movement Type.
		@param LBR_CNAB240MovementType Movement Type
	*/
	public void setLBR_CNAB240MovementType (String LBR_CNAB240MovementType)
	{

		set_ValueNoCheck (COLUMNNAME_LBR_CNAB240MovementType, LBR_CNAB240MovementType);
	}

	/** Get Movement Type.
		@return Movement Type	  */
	public String getLBR_CNAB240MovementType()
	{
		return (String)get_Value(COLUMNNAME_LBR_CNAB240MovementType);
	}

	/** Set CNAB 240 Sequence No..
		@param LBR_CNAB240SeqNo CNAB 240 Sequence No.
	*/
	public void setLBR_CNAB240SeqNo (int LBR_CNAB240SeqNo)
	{
		set_Value (COLUMNNAME_LBR_CNAB240SeqNo, Integer.valueOf(LBR_CNAB240SeqNo));
	}

	/** Get CNAB 240 Sequence No..
		@return CNAB 240 Sequence No.	  */
	public int getLBR_CNAB240SeqNo()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_CNAB240SeqNo);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set CNAB Files.
		@param LBR_CNAB_ID CNAB Files
	*/
	public void setLBR_CNAB_ID (int LBR_CNAB_ID)
	{
		if (LBR_CNAB_ID < 1)
			set_ValueNoCheck (COLUMNNAME_LBR_CNAB_ID, null);
		else
			set_ValueNoCheck (COLUMNNAME_LBR_CNAB_ID, Integer.valueOf(LBR_CNAB_ID));
	}

	/** Get CNAB Files.
		@return CNAB Files	  */
	public int getLBR_CNAB_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_CNAB_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_CNAB_UU.
		@param LBR_CNAB_UU LBR_CNAB_UU
	*/
	public void setLBR_CNAB_UU (String LBR_CNAB_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_CNAB_UU, LBR_CNAB_UU);
	}

	/** Get LBR_CNAB_UU.
		@return LBR_CNAB_UU	  */
	public String getLBR_CNAB_UU()
	{
		return (String)get_Value(COLUMNNAME_LBR_CNAB_UU);
	}

	/** Set File Generating Date.
		@param LBR_FileGeneratingDate File Generating Date
	*/
	public void setLBR_FileGeneratingDate (Timestamp LBR_FileGeneratingDate)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_FileGeneratingDate, LBR_FileGeneratingDate);
	}

	/** Get File Generating Date.
		@return File Generating Date	  */
	public Timestamp getLBR_FileGeneratingDate()
	{
		return (Timestamp)get_Value(COLUMNNAME_LBR_FileGeneratingDate);
	}
}