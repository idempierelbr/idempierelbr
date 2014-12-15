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
package org.idempierelbr.openitems.model;

import java.sql.ResultSet;
import java.util.Properties;
import org.compiere.model.*;

/** Generated Model for LBR_BankAccount_Convenio
 *  @author iDempiere (generated) 
 *  @version Release 2.1 - $Id$ */
public class X_LBR_BankAccount_Convenio extends PO implements I_LBR_BankAccount_Convenio, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20141215L;

    /** Standard Constructor */
    public X_LBR_BankAccount_Convenio (Properties ctx, int LBR_BankAccount_Convenio_ID, String trxName)
    {
      super (ctx, LBR_BankAccount_Convenio_ID, trxName);
      /** if (LBR_BankAccount_Convenio_ID == 0)
        {
			setC_BankAccount_ID (0);
			setIsDefault (false);
// N
        } */
    }

    /** Load Constructor */
    public X_LBR_BankAccount_Convenio (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_BankAccount_Convenio[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	public org.compiere.model.I_C_BankAccount getC_BankAccount() throws RuntimeException
    {
		return (org.compiere.model.I_C_BankAccount)MTable.get(getCtx(), org.compiere.model.I_C_BankAccount.Table_Name)
			.getPO(getC_BankAccount_ID(), get_TrxName());	}

	/** Set Bank Account.
		@param C_BankAccount_ID 
		Account at the Bank
	  */
	public void setC_BankAccount_ID (int C_BankAccount_ID)
	{
		if (C_BankAccount_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_C_BankAccount_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_C_BankAccount_ID, Integer.valueOf(C_BankAccount_ID));
	}

	/** Get Bank Account.
		@return Account at the Bank
	  */
	public int getC_BankAccount_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_BankAccount_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Description.
		@param Description 
		Optional short description of the record
	  */
	public void setDescription (String Description)
	{
		set_Value (COLUMNNAME_Description, Description);
	}

	/** Get Description.
		@return Optional short description of the record
	  */
	public String getDescription () 
	{
		return (String)get_Value(COLUMNNAME_Description);
	}

	/** Set Default.
		@param IsDefault 
		Default value
	  */
	public void setIsDefault (boolean IsDefault)
	{
		set_Value (COLUMNNAME_IsDefault, Boolean.valueOf(IsDefault));
	}

	/** Get Default.
		@return Default value
	  */
	public boolean isDefault () 
	{
		Object oo = get_Value(COLUMNNAME_IsDefault);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Bank Account Convênio.
		@param LBR_BankAccount_Convenio_ID Bank Account Convênio	  */
	public void setLBR_BankAccount_Convenio_ID (int LBR_BankAccount_Convenio_ID)
	{
		if (LBR_BankAccount_Convenio_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_BankAccount_Convenio_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_BankAccount_Convenio_ID, Integer.valueOf(LBR_BankAccount_Convenio_ID));
	}

	/** Get Bank Account Convênio.
		@return Bank Account Convênio	  */
	public int getLBR_BankAccount_Convenio_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_BankAccount_Convenio_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Bank Account Convênio.
		@param LBR_BankAccount_Convenio_UU Bank Account Convênio	  */
	public void setLBR_BankAccount_Convenio_UU (String LBR_BankAccount_Convenio_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_BankAccount_Convenio_UU, LBR_BankAccount_Convenio_UU);
	}

	/** Get Bank Account Convênio.
		@return Bank Account Convênio	  */
	public String getLBR_BankAccount_Convenio_UU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_BankAccount_Convenio_UU);
	}

	/** Set Convênio No..
		@param LBR_ConvenioNo Convênio No.	  */
	public void setLBR_ConvenioNo (String LBR_ConvenioNo)
	{
		set_Value (COLUMNNAME_LBR_ConvenioNo, LBR_ConvenioNo);
	}

	/** Get Convênio No..
		@return Convênio No.	  */
	public String getLBR_ConvenioNo () 
	{
		return (String)get_Value(COLUMNNAME_LBR_ConvenioNo);
	}

	public org.compiere.model.I_AD_Sequence getLBR_SeqCNAB240File() throws RuntimeException
    {
		return (org.compiere.model.I_AD_Sequence)MTable.get(getCtx(), org.compiere.model.I_AD_Sequence.Table_Name)
			.getPO(getLBR_SeqCNAB240File_ID(), get_TrxName());	}

	/** Set Sequence for File (CNAB).
		@param LBR_SeqCNAB240File_ID 
		Sequence for File (CNAB)
	  */
	public void setLBR_SeqCNAB240File_ID (int LBR_SeqCNAB240File_ID)
	{
		if (LBR_SeqCNAB240File_ID < 1) 
			set_Value (COLUMNNAME_LBR_SeqCNAB240File_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_SeqCNAB240File_ID, Integer.valueOf(LBR_SeqCNAB240File_ID));
	}

	/** Get Sequence for File (CNAB).
		@return Sequence for File (CNAB)
	  */
	public int getLBR_SeqCNAB240File_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_SeqCNAB240File_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.compiere.model.I_AD_Sequence getLBR_SeqCNAB240Lot() throws RuntimeException
    {
		return (org.compiere.model.I_AD_Sequence)MTable.get(getCtx(), org.compiere.model.I_AD_Sequence.Table_Name)
			.getPO(getLBR_SeqCNAB240Lot_ID(), get_TrxName());	}

	/** Set Sequence for Lot (CNAB).
		@param LBR_SeqCNAB240Lot_ID 
		Sequence for Lot (CNAB)
	  */
	public void setLBR_SeqCNAB240Lot_ID (int LBR_SeqCNAB240Lot_ID)
	{
		if (LBR_SeqCNAB240Lot_ID < 1) 
			set_Value (COLUMNNAME_LBR_SeqCNAB240Lot_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_SeqCNAB240Lot_ID, Integer.valueOf(LBR_SeqCNAB240Lot_ID));
	}

	/** Get Sequence for Lot (CNAB).
		@return Sequence for Lot (CNAB)
	  */
	public int getLBR_SeqCNAB240Lot_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_SeqCNAB240Lot_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Name.
		@param Name 
		Alphanumeric identifier of the entity
	  */
	public void setName (String Name)
	{
		set_Value (COLUMNNAME_Name, Name);
	}

	/** Get Name.
		@return Alphanumeric identifier of the entity
	  */
	public String getName () 
	{
		return (String)get_Value(COLUMNNAME_Name);
	}
}