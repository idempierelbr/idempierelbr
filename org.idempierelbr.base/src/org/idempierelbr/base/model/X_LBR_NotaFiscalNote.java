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

/** Generated Model for LBR_NotaFiscalNote
 *  @author iDempiere (generated) 
 *  @version Release 2.0 - $Id$ */
public class X_LBR_NotaFiscalNote extends PO implements I_LBR_NotaFiscalNote, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20140515L;

    /** Standard Constructor */
    public X_LBR_NotaFiscalNote (Properties ctx, int LBR_NotaFiscalNote_ID, String trxName)
    {
      super (ctx, LBR_NotaFiscalNote_ID, trxName);
      /** if (LBR_NotaFiscalNote_ID == 0)
        {
			setColumnName (null);
			setLBR_NFeNoteType (null);
			setLBR_NotaFiscal_ID (0);
			setLBR_NotaFiscalNote_ID (0);
			setNote (null);
        } */
    }

    /** Load Constructor */
    public X_LBR_NotaFiscalNote (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_NotaFiscalNote[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set DB Column Name.
		@param ColumnName 
		Name of the column in the database
	  */
	public void setColumnName (String ColumnName)
	{
		set_Value (COLUMNNAME_ColumnName, ColumnName);
	}

	/** Get DB Column Name.
		@return Name of the column in the database
	  */
	public String getColumnName () 
	{
		return (String)get_Value(COLUMNNAME_ColumnName);
	}

	/** Fiscal = 0 */
	public static final String LBR_NFENOTETYPE_Fiscal = "0";
	/** Tax Payer = 1 */
	public static final String LBR_NFENOTETYPE_TaxPayer = "1";
	/** Set NFe Note Type.
		@param LBR_NFeNoteType NFe Note Type	  */
	public void setLBR_NFeNoteType (String LBR_NFeNoteType)
	{

		set_Value (COLUMNNAME_LBR_NFeNoteType, LBR_NFeNoteType);
	}

	/** Get NFe Note Type.
		@return NFe Note Type	  */
	public String getLBR_NFeNoteType () 
	{
		return (String)get_Value(COLUMNNAME_LBR_NFeNoteType);
	}

	public I_LBR_NotaFiscal getLBR_NotaFiscal() throws RuntimeException
    {
		return (I_LBR_NotaFiscal)MTable.get(getCtx(), I_LBR_NotaFiscal.Table_Name)
			.getPO(getLBR_NotaFiscal_ID(), get_TrxName());	}

	/** Set Brazilian Fiscal Invoice (Nota Fiscal).
		@param LBR_NotaFiscal_ID 
		Brazilian Fiscal Invoice (Nota Fiscal) Identifier
	  */
	public void setLBR_NotaFiscal_ID (int LBR_NotaFiscal_ID)
	{
		if (LBR_NotaFiscal_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_NotaFiscal_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_NotaFiscal_ID, Integer.valueOf(LBR_NotaFiscal_ID));
	}

	/** Get Brazilian Fiscal Invoice (Nota Fiscal).
		@return Brazilian Fiscal Invoice (Nota Fiscal) Identifier
	  */
	public int getLBR_NotaFiscal_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_NotaFiscal_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Brazilian Fiscal Invoice (Nota Fiscal) Note.
		@param LBR_NotaFiscalNote_ID Brazilian Fiscal Invoice (Nota Fiscal) Note	  */
	public void setLBR_NotaFiscalNote_ID (int LBR_NotaFiscalNote_ID)
	{
		if (LBR_NotaFiscalNote_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_NotaFiscalNote_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_NotaFiscalNote_ID, Integer.valueOf(LBR_NotaFiscalNote_ID));
	}

	/** Get Brazilian Fiscal Invoice (Nota Fiscal) Note.
		@return Brazilian Fiscal Invoice (Nota Fiscal) Note	  */
	public int getLBR_NotaFiscalNote_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_NotaFiscalNote_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Brazilian Fiscal Invoice (Nota Fiscal) Note.
		@param LBR_NotaFiscalNote_UU Brazilian Fiscal Invoice (Nota Fiscal) Note	  */
	public void setLBR_NotaFiscalNote_UU (String LBR_NotaFiscalNote_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_NotaFiscalNote_UU, LBR_NotaFiscalNote_UU);
	}

	/** Get Brazilian Fiscal Invoice (Nota Fiscal) Note.
		@return Brazilian Fiscal Invoice (Nota Fiscal) Note	  */
	public String getLBR_NotaFiscalNote_UU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_NotaFiscalNote_UU);
	}

	/** Set Note.
		@param Note 
		Optional additional user defined information
	  */
	public void setNote (String Note)
	{
		set_Value (COLUMNNAME_Note, Note);
	}

	/** Get Note.
		@return Optional additional user defined information
	  */
	public String getNote () 
	{
		return (String)get_Value(COLUMNNAME_Note);
	}
}