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
import java.util.Properties;
import org.compiere.model.*;

/** Generated Model for LBR_MDFeRoute
 *  @author iDempiere (generated) 
 *  @version Release 4.1 - $Id$ */
public class X_LBR_MDFeRoute extends PO implements I_LBR_MDFeRoute, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20170626L;

    /** Standard Constructor */
    public X_LBR_MDFeRoute (Properties ctx, int LBR_MDFeRoute_ID, String trxName)
    {
      super (ctx, LBR_MDFeRoute_ID, trxName);
      /** if (LBR_MDFeRoute_ID == 0)
        {
			setC_Region_ID (0);
			setLBR_MDFeRoute_ID (0);
        } */
    }

    /** Load Constructor */
    public X_LBR_MDFeRoute (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_MDFeRoute[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	public org.compiere.model.I_C_Region getC_Region() throws RuntimeException
    {
		return (org.compiere.model.I_C_Region)MTable.get(getCtx(), org.compiere.model.I_C_Region.Table_Name)
			.getPO(getC_Region_ID(), get_TrxName());	}

	/** Set Region.
		@param C_Region_ID 
		Identifies a geographical Region
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
	public int getC_Region_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_Region_ID);
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

	/** Set Percurso do Manifesto.
		@param LBR_MDFeRoute_ID Percurso do Manifesto	  */
	public void setLBR_MDFeRoute_ID (int LBR_MDFeRoute_ID)
	{
		if (LBR_MDFeRoute_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_MDFeRoute_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_MDFeRoute_ID, Integer.valueOf(LBR_MDFeRoute_ID));
	}

	/** Get Percurso do Manifesto.
		@return Percurso do Manifesto	  */
	public int getLBR_MDFeRoute_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_MDFeRoute_ID);
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
}