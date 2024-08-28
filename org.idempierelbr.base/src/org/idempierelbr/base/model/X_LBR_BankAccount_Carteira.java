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
import java.util.Properties;
import org.compiere.model.*;

/** Generated Model for LBR_BankAccount_Carteira
 *  @author iDempiere (generated)
 *  @version Release 11 - $Id$ */
@org.adempiere.base.Model(table="LBR_BankAccount_Carteira")
public class X_LBR_BankAccount_Carteira extends PO implements I_LBR_BankAccount_Carteira, I_Persistent
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20240603L;

    /** Standard Constructor */
    public X_LBR_BankAccount_Carteira (Properties ctx, int LBR_BankAccount_Carteira_ID, String trxName)
    {
      super (ctx, LBR_BankAccount_Carteira_ID, trxName);
      /** if (LBR_BankAccount_Carteira_ID == 0)
        {
			setIsDefault (false);
// N
			setLBR_BankAccount_Convenio_ID (0);
			setLBR_CarteiraNo (null);
        } */
    }

    /** Standard Constructor */
    public X_LBR_BankAccount_Carteira (Properties ctx, int LBR_BankAccount_Carteira_ID, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_BankAccount_Carteira_ID, trxName, virtualColumns);
      /** if (LBR_BankAccount_Carteira_ID == 0)
        {
			setIsDefault (false);
// N
			setLBR_BankAccount_Convenio_ID (0);
			setLBR_CarteiraNo (null);
        } */
    }

    /** Standard Constructor */
    public X_LBR_BankAccount_Carteira (Properties ctx, String LBR_BankAccount_Carteira_UU, String trxName)
    {
      super (ctx, LBR_BankAccount_Carteira_UU, trxName);
      /** if (LBR_BankAccount_Carteira_UU == null)
        {
			setIsDefault (false);
// N
			setLBR_BankAccount_Convenio_ID (0);
			setLBR_CarteiraNo (null);
        } */
    }

    /** Standard Constructor */
    public X_LBR_BankAccount_Carteira (Properties ctx, String LBR_BankAccount_Carteira_UU, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_BankAccount_Carteira_UU, trxName, virtualColumns);
      /** if (LBR_BankAccount_Carteira_UU == null)
        {
			setIsDefault (false);
// N
			setLBR_BankAccount_Convenio_ID (0);
			setLBR_CarteiraNo (null);
        } */
    }

    /** Load Constructor */
    public X_LBR_BankAccount_Carteira (Properties ctx, ResultSet rs, String trxName)
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
      StringBuilder sb = new StringBuilder ("X_LBR_BankAccount_Carteira[")
        .append(get_ID()).append(",Name=").append(getName()).append("]");
      return sb.toString();
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

	/** Set Default.
		@param IsDefault Default value
	*/
	public void setIsDefault (boolean IsDefault)
	{
		set_Value (COLUMNNAME_IsDefault, Boolean.valueOf(IsDefault));
	}

	/** Get Default.
		@return Default value
	  */
	public boolean isDefault()
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

	/** Set Bank Account Carteira.
		@param LBR_BankAccount_Carteira_ID Bank Account Carteira
	*/
	public void setLBR_BankAccount_Carteira_ID (int LBR_BankAccount_Carteira_ID)
	{
		if (LBR_BankAccount_Carteira_ID < 1)
			set_ValueNoCheck (COLUMNNAME_LBR_BankAccount_Carteira_ID, null);
		else
			set_ValueNoCheck (COLUMNNAME_LBR_BankAccount_Carteira_ID, Integer.valueOf(LBR_BankAccount_Carteira_ID));
	}

	/** Get Bank Account Carteira.
		@return Bank Account Carteira	  */
	public int getLBR_BankAccount_Carteira_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_BankAccount_Carteira_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Bank Account Carteira.
		@param LBR_BankAccount_Carteira_UU Bank Account Carteira
	*/
	public void setLBR_BankAccount_Carteira_UU (String LBR_BankAccount_Carteira_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_BankAccount_Carteira_UU, LBR_BankAccount_Carteira_UU);
	}

	/** Get Bank Account Carteira.
		@return Bank Account Carteira	  */
	public String getLBR_BankAccount_Carteira_UU()
	{
		return (String)get_Value(COLUMNNAME_LBR_BankAccount_Carteira_UU);
	}

	public I_LBR_BankAccount_Convenio getLBR_BankAccount_Convenio() throws RuntimeException
	{
		return (I_LBR_BankAccount_Convenio)MTable.get(getCtx(), I_LBR_BankAccount_Convenio.Table_ID)
			.getPO(getLBR_BankAccount_Convenio_ID(), get_TrxName());
	}

	/** Set Bank Account Convênio.
		@param LBR_BankAccount_Convenio_ID Bank Account Convênio
	*/
	public void setLBR_BankAccount_Convenio_ID (int LBR_BankAccount_Convenio_ID)
	{
		if (LBR_BankAccount_Convenio_ID < 1)
			set_ValueNoCheck (COLUMNNAME_LBR_BankAccount_Convenio_ID, null);
		else
			set_ValueNoCheck (COLUMNNAME_LBR_BankAccount_Convenio_ID, Integer.valueOf(LBR_BankAccount_Convenio_ID));
	}

	/** Get Bank Account Convênio.
		@return Bank Account Convênio	  */
	public int getLBR_BankAccount_Convenio_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_BankAccount_Convenio_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Carteira Code.
		@param LBR_CarteiraCode Carteira Code
	*/
	public void setLBR_CarteiraCode (String LBR_CarteiraCode)
	{
		set_Value (COLUMNNAME_LBR_CarteiraCode, LBR_CarteiraCode);
	}

	/** Get Carteira Code.
		@return Carteira Code	  */
	public String getLBR_CarteiraCode()
	{
		return (String)get_Value(COLUMNNAME_LBR_CarteiraCode);
	}

	/** Set Carteira No..
		@param LBR_CarteiraNo Carteira No.
	*/
	public void setLBR_CarteiraNo (String LBR_CarteiraNo)
	{
		set_Value (COLUMNNAME_LBR_CarteiraNo, LBR_CarteiraNo);
	}

	/** Get Carteira No..
		@return Carteira No.	  */
	public String getLBR_CarteiraNo()
	{
		return (String)get_Value(COLUMNNAME_LBR_CarteiraNo);
	}

	/** Simples = 1 */
	public static final String LBR_CARTEIRATYPE_Simples = "1";
	/** Vinculada = 2 */
	public static final String LBR_CARTEIRATYPE_Vinculada = "2";
	/** Caucionada = 3 */
	public static final String LBR_CARTEIRATYPE_Caucionada = "3";
	/** Descontada = 4 */
	public static final String LBR_CARTEIRATYPE_Descontada = "4";
	/** Vendor = 5 */
	public static final String LBR_CARTEIRATYPE_Vendor = "5";
	/** Set Bank Account Carteira Type.
		@param LBR_CarteiraType Bank Account Carteira Type
	*/
	public void setLBR_CarteiraType (String LBR_CarteiraType)
	{

		set_Value (COLUMNNAME_LBR_CarteiraType, LBR_CarteiraType);
	}

	/** Get Bank Account Carteira Type.
		@return Bank Account Carteira Type	  */
	public String getLBR_CarteiraType()
	{
		return (String)get_Value(COLUMNNAME_LBR_CarteiraType);
	}

	public org.compiere.model.I_AD_Sequence getLBR_SeqNumberInBank() throws RuntimeException
	{
		return (org.compiere.model.I_AD_Sequence)MTable.get(getCtx(), org.compiere.model.I_AD_Sequence.Table_ID)
			.getPO(getLBR_SeqNumberInBank_ID(), get_TrxName());
	}

	/** Set Sequence for Number in Bank.
		@param LBR_SeqNumberInBank_ID Sequence for Number in Bank
	*/
	public void setLBR_SeqNumberInBank_ID (int LBR_SeqNumberInBank_ID)
	{
		if (LBR_SeqNumberInBank_ID < 1)
			set_Value (COLUMNNAME_LBR_SeqNumberInBank_ID, null);
		else
			set_Value (COLUMNNAME_LBR_SeqNumberInBank_ID, Integer.valueOf(LBR_SeqNumberInBank_ID));
	}

	/** Get Sequence for Number in Bank.
		@return Sequence for Number in Bank
	  */
	public int getLBR_SeqNumberInBank_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_SeqNumberInBank_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Name.
		@param Name Alphanumeric identifier of the entity
	*/
	public void setName (String Name)
	{
		set_Value (COLUMNNAME_Name, Name);
	}

	/** Get Name.
		@return Alphanumeric identifier of the entity
	  */
	public String getName()
	{
		return (String)get_Value(COLUMNNAME_Name);
	}
}