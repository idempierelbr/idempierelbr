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
package org.idempierelbr.nfe.model;

import java.sql.ResultSet;
import java.util.Properties;
import org.compiere.model.*;

/** Generated Model for LBR_NotaFiscalEventLine
 *  @author iDempiere (generated) 
 *  @version Release 2.0 - $Id$ */
public class X_LBR_NotaFiscalEventLine extends PO implements I_LBR_NotaFiscalEventLine, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20140625L;

    /** Standard Constructor */
    public X_LBR_NotaFiscalEventLine (Properties ctx, int LBR_NotaFiscalEventLine_ID, String trxName)
    {
      super (ctx, LBR_NotaFiscalEventLine_ID, trxName);
      /** if (LBR_NotaFiscalEventLine_ID == 0)
        {
			setLBR_NFeEventSeqNo (0);
// 1
			setLBR_NFeEventType (null);
			setLBR_NotaFiscalEvent_ID (0);
			setLBR_NotaFiscal_ID (0);
        } */
    }

    /** Load Constructor */
    public X_LBR_NotaFiscalEventLine (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_NotaFiscalEventLine[")
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

	/** Set Correction Reason.
		@param LBR_CorrectionReason Correction Reason	  */
	public void setLBR_CorrectionReason (String LBR_CorrectionReason)
	{
		set_Value (COLUMNNAME_LBR_CorrectionReason, LBR_CorrectionReason);
	}

	/** Get Correction Reason.
		@return Correction Reason	  */
	public String getLBR_CorrectionReason () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CorrectionReason);
	}

	/** Set Justification.
		@param LBR_Justification Justification	  */
	public void setLBR_Justification (String LBR_Justification)
	{
		set_Value (COLUMNNAME_LBR_Justification, LBR_Justification);
	}

	/** Get Justification.
		@return Justification	  */
	public String getLBR_Justification () 
	{
		return (String)get_Value(COLUMNNAME_LBR_Justification);
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

	/** Set NF-e Event Sequence Number.
		@param LBR_NFeEventSeqNo NF-e Event Sequence Number	  */
	public void setLBR_NFeEventSeqNo (int LBR_NFeEventSeqNo)
	{
		set_Value (COLUMNNAME_LBR_NFeEventSeqNo, Integer.valueOf(LBR_NFeEventSeqNo));
	}

	/** Get NF-e Event Sequence Number.
		@return NF-e Event Sequence Number	  */
	public int getLBR_NFeEventSeqNo () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_NFeEventSeqNo);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Cancellation = CAN */
	public static final String LBR_NFEEVENTTYPE_Cancellation = "CAN";
	/** Correction = CCE */
	public static final String LBR_NFEEVENTTYPE_Correction = "CCE";
	/** Set NF-e Event Type.
		@param LBR_NFeEventType NF-e Event Type	  */
	public void setLBR_NFeEventType (String LBR_NFeEventType)
	{

		set_ValueNoCheck (COLUMNNAME_LBR_NFeEventType, LBR_NFeEventType);
	}

	/** Get NF-e Event Type.
		@return NF-e Event Type	  */
	public String getLBR_NFeEventType () 
	{
		return (String)get_Value(COLUMNNAME_LBR_NFeEventType);
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

	public I_LBR_NotaFiscalEvent getLBR_NotaFiscalEvent() throws RuntimeException
    {
		return (I_LBR_NotaFiscalEvent)MTable.get(getCtx(), I_LBR_NotaFiscalEvent.Table_Name)
			.getPO(getLBR_NotaFiscalEvent_ID(), get_TrxName());	}

	/** Set NF-e Event Lot.
		@param LBR_NotaFiscalEvent_ID 
		Identifies a NF-e Event Lot
	  */
	public void setLBR_NotaFiscalEvent_ID (int LBR_NotaFiscalEvent_ID)
	{
		if (LBR_NotaFiscalEvent_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_NotaFiscalEvent_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_NotaFiscalEvent_ID, Integer.valueOf(LBR_NotaFiscalEvent_ID));
	}

	/** Get NF-e Event Lot.
		@return Identifies a NF-e Event Lot
	  */
	public int getLBR_NotaFiscalEvent_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_NotaFiscalEvent_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set NF-e Event Lot Line.
		@param LBR_NotaFiscalEventLine_ID 
		Identifies a NF-e Event Lot Line
	  */
	public void setLBR_NotaFiscalEventLine_ID (int LBR_NotaFiscalEventLine_ID)
	{
		if (LBR_NotaFiscalEventLine_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_NotaFiscalEventLine_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_NotaFiscalEventLine_ID, Integer.valueOf(LBR_NotaFiscalEventLine_ID));
	}

	/** Get NF-e Event Lot Line.
		@return Identifies a NF-e Event Lot Line
	  */
	public int getLBR_NotaFiscalEventLine_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_NotaFiscalEventLine_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set NF-e Event Lot Line.
		@param LBR_NotaFiscalEventLine_UU 
		Identifies a NF-e Event Lot Line
	  */
	public void setLBR_NotaFiscalEventLine_UU (String LBR_NotaFiscalEventLine_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_NotaFiscalEventLine_UU, LBR_NotaFiscalEventLine_UU);
	}

	/** Get NF-e Event Lot Line.
		@return Identifies a NF-e Event Lot Line
	  */
	public String getLBR_NotaFiscalEventLine_UU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_NotaFiscalEventLine_UU);
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
}