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

import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.Properties;
import org.compiere.model.*;

/** Generated Model for LBR_MDFe_DriverInstance
 *  @author iDempiere (generated) 
 *  @version Release 4.1 - $Id$ */
public class X_LBR_MDFe_DriverInstance extends PO implements I_LBR_MDFe_DriverInstance, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20170626L;

    /** Standard Constructor */
    public X_LBR_MDFe_DriverInstance (Properties ctx, int LBR_MDFe_DriverInstance_ID, String trxName)
    {
      super (ctx, LBR_MDFe_DriverInstance_ID, trxName);
      /** if (LBR_MDFe_DriverInstance_ID == 0)
        {
			setLBR_MDFeDriver_ID (0);
			setLBR_MDFe_DriverInstance_ID (0);
			setLBR_MDFe_ID (0);
			setLine (0);
// @SQL=SELECT COALESCE(MAX(Line),0)+10 AS DefaultValue FROM LBR_MDFe_DriverInstance WHERE LBR_MDFe_ID=@LBR_MDFe_ID@
        } */
    }

    /** Load Constructor */
    public X_LBR_MDFe_DriverInstance (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_MDFe_DriverInstance[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set Transaction Date.
		@param DateTrx 
		Transaction Date
	  */
	public void setDateTrx (Timestamp DateTrx)
	{
		set_Value (COLUMNNAME_DateTrx, DateTrx);
	}

	/** Get Transaction Date.
		@return Transaction Date
	  */
	public Timestamp getDateTrx () 
	{
		return (Timestamp)get_Value(COLUMNNAME_DateTrx);
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

	public org.adempierelbr.model.I_LBR_MDFeDriver getLBR_MDFeDriver() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_MDFeDriver)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_MDFeDriver.Table_Name)
			.getPO(getLBR_MDFeDriver_ID(), get_TrxName());	}

	/** Set MDFe Driver.
		@param LBR_MDFeDriver_ID MDFe Driver	  */
	public void setLBR_MDFeDriver_ID (int LBR_MDFeDriver_ID)
	{
		if (LBR_MDFeDriver_ID < 1) 
			set_Value (COLUMNNAME_LBR_MDFeDriver_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_MDFeDriver_ID, Integer.valueOf(LBR_MDFeDriver_ID));
	}

	/** Get MDFe Driver.
		@return MDFe Driver	  */
	public int getLBR_MDFeDriver_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_MDFeDriver_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set MDFe Driver Instance.
		@param LBR_MDFe_DriverInstance_ID MDFe Driver Instance	  */
	public void setLBR_MDFe_DriverInstance_ID (int LBR_MDFe_DriverInstance_ID)
	{
		if (LBR_MDFe_DriverInstance_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_MDFe_DriverInstance_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_MDFe_DriverInstance_ID, Integer.valueOf(LBR_MDFe_DriverInstance_ID));
	}

	/** Get MDFe Driver Instance.
		@return MDFe Driver Instance	  */
	public int getLBR_MDFe_DriverInstance_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_MDFe_DriverInstance_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.adempierelbr.model.I_LBR_MDFe getLBR_MDFe() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_MDFe)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_MDFe.Table_Name)
			.getPO(getLBR_MDFe_ID(), get_TrxName());	}

	/** Set Manifesto Eletronico de Documentos.
		@param LBR_MDFe_ID Manifesto Eletronico de Documentos	  */
	public void setLBR_MDFe_ID (int LBR_MDFe_ID)
	{
		if (LBR_MDFe_ID < 1) 
			set_Value (COLUMNNAME_LBR_MDFe_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_MDFe_ID, Integer.valueOf(LBR_MDFe_ID));
	}

	/** Get Manifesto Eletronico de Documentos.
		@return Manifesto Eletronico de Documentos	  */
	public int getLBR_MDFe_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_MDFe_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Line No.
		@param Line 
		Unique line for this document
	  */
	public void setLine (int Line)
	{
		set_Value (COLUMNNAME_Line, Integer.valueOf(Line));
	}

	/** Get Line No.
		@return Unique line for this document
	  */
	public int getLine () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_Line);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set NFe Protocol.
		@param lbr_NFeProt NFe Protocol	  */
	public void setlbr_NFeProt (String lbr_NFeProt)
	{
		set_Value (COLUMNNAME_lbr_NFeProt, lbr_NFeProt);
	}

	/** Get NFe Protocol.
		@return NFe Protocol	  */
	public String getlbr_NFeProt () 
	{
		return (String)get_Value(COLUMNNAME_lbr_NFeProt);
	}
}