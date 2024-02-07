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

/** Generated Model for LBR_NotaFiscalLotLine
 *  @author iDempiere (generated) 
 *  @version Release 2.0 - $Id$ */
public class X_LBR_NotaFiscalLotLine extends PO implements I_LBR_NotaFiscalLotLine, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20140606L;

    /** Standard Constructor */
    public X_LBR_NotaFiscalLotLine (Properties ctx, int LBR_NotaFiscalLotLine_ID, String trxName)
    {
      super (ctx, LBR_NotaFiscalLotLine_ID, trxName);
      /** if (LBR_NotaFiscalLotLine_ID == 0)
        {
			setLBR_NotaFiscal_ID (0);
			setLBR_NotaFiscalLot_ID (0);
        } */
    }

    /** Load Constructor */
    public X_LBR_NotaFiscalLotLine (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_NotaFiscalLotLine[")
        .append(get_ID()).append("]");
      return sb.toString();
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

	/** Set DigestValue.
		@param LBR_DigestValue 
		Identifies a DigestValue
	  */
	public void setLBR_DigestValue (String LBR_DigestValue)
	{
		set_Value (COLUMNNAME_LBR_DigestValue, LBR_DigestValue);
	}

	/** Get DigestValue.
		@return Identifies a DigestValue
	  */
	public String getLBR_DigestValue () 
	{
		return (String)get_Value(COLUMNNAME_LBR_DigestValue);
	}

	/** Set NF-e Lot Sending Protocol.
		@param LBR_LotSendingProt 
		Indicates the protocol of the sending process to Sefaz
	  */
	public void setLBR_LotSendingProt (String LBR_LotSendingProt)
	{
		set_Value (COLUMNNAME_LBR_LotSendingProt, LBR_LotSendingProt);
	}

	/** Get NF-e Lot Sending Protocol.
		@return Indicates the protocol of the sending process to Sefaz
	  */
	public String getLBR_LotSendingProt () 
	{
		return (String)get_Value(COLUMNNAME_LBR_LotSendingProt);
	}

	/** Set NFe ID.
		@param LBR_NFeID NFe ID	  */
	public void setLBR_NFeID (String LBR_NFeID)
	{
		set_Value (COLUMNNAME_LBR_NFeID, LBR_NFeID);
	}

	/** Get NFe ID.
		@return NFe ID	  */
	public String getLBR_NFeID () 
	{
		return (String)get_Value(COLUMNNAME_LBR_NFeID);
	}

	/** 100 - Autorizado o uso da NF-e = 100 */
	public static final String LBR_NFESTATUS_100_AutorizadoOUsoDaNF_E = "100";
	/** Set NFe Status.
		@param LBR_NFeStatus NFe Status	  */
	public void setLBR_NFeStatus (String LBR_NFeStatus)
	{

		set_Value (COLUMNNAME_LBR_NFeStatus, LBR_NFeStatus);
	}

	/** Get NFe Status.
		@return NFe Status	  */
	public String getLBR_NFeStatus () 
	{
		return (String)get_Value(COLUMNNAME_LBR_NFeStatus);
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

	public I_LBR_NotaFiscalLot getLBR_NotaFiscalLot() throws RuntimeException
    {
		return (I_LBR_NotaFiscalLot)MTable.get(getCtx(), I_LBR_NotaFiscalLot.Table_Name)
			.getPO(getLBR_NotaFiscalLot_ID(), get_TrxName());	}

	/** Set NF-e Lot.
		@param LBR_NotaFiscalLot_ID 
		Identifies a NF-e Lot
	  */
	public void setLBR_NotaFiscalLot_ID (int LBR_NotaFiscalLot_ID)
	{
		if (LBR_NotaFiscalLot_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_NotaFiscalLot_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_NotaFiscalLot_ID, Integer.valueOf(LBR_NotaFiscalLot_ID));
	}

	/** Get NF-e Lot.
		@return Identifies a NF-e Lot
	  */
	public int getLBR_NotaFiscalLot_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_NotaFiscalLot_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set NF-e Lot Line.
		@param LBR_NotaFiscalLotLine_ID 
		Identifies a NF-e Lot Line
	  */
	public void setLBR_NotaFiscalLotLine_ID (int LBR_NotaFiscalLotLine_ID)
	{
		if (LBR_NotaFiscalLotLine_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_NotaFiscalLotLine_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_NotaFiscalLotLine_ID, Integer.valueOf(LBR_NotaFiscalLotLine_ID));
	}

	/** Get NF-e Lot Line.
		@return Identifies a NF-e Lot Line
	  */
	public int getLBR_NotaFiscalLotLine_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_NotaFiscalLotLine_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set NF-e Lot Line.
		@param LBR_NotaFiscalLotLine_UU 
		Identifies a NF-e Lot Line
	  */
	public void setLBR_NotaFiscalLotLine_UU (String LBR_NotaFiscalLotLine_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_NotaFiscalLotLine_UU, LBR_NotaFiscalLotLine_UU);
	}

	/** Get NF-e Lot Line.
		@return Identifies a NF-e Lot Line
	  */
	public String getLBR_NotaFiscalLotLine_UU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_NotaFiscalLotLine_UU);
	}
}