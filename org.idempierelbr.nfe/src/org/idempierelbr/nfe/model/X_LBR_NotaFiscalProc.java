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

/** Generated Model for LBR_NotaFiscalProc
 *  @author iDempiere (generated) 
 *  @version Release 2.0 - $Id$ */
public class X_LBR_NotaFiscalProc extends PO implements I_LBR_NotaFiscalProc, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20140515L;

    /** Standard Constructor */
    public X_LBR_NotaFiscalProc (Properties ctx, int LBR_NotaFiscalProc_ID, String trxName)
    {
      super (ctx, LBR_NotaFiscalProc_ID, trxName);
      /** if (LBR_NotaFiscalProc_ID == 0)
        {
			setLBR_NFeProcOrigin (null);
			setLBR_NotaFiscal_ID (0);
			setLBR_NotaFiscalProc_ID (0);
			setProcessName (null);
        } */
    }

    /** Load Constructor */
    public X_LBR_NotaFiscalProc (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_NotaFiscalProc[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** SEFAZ = 0 */
	public static final String LBR_NFEPROCORIGIN_SEFAZ = "0";
	/** Justica Federal = 1 */
	public static final String LBR_NFEPROCORIGIN_JusticaFederal = "1";
	/** Justica Estadual = 2 */
	public static final String LBR_NFEPROCORIGIN_JusticaEstadual = "2";
	/** Secex / RFB = 3 */
	public static final String LBR_NFEPROCORIGIN_SecexRFB = "3";
	/** Outros = 9 */
	public static final String LBR_NFEPROCORIGIN_Outros = "9";
	/** Set NFe Process Origin.
		@param LBR_NFeProcOrigin NFe Process Origin	  */
	public void setLBR_NFeProcOrigin (String LBR_NFeProcOrigin)
	{

		set_Value (COLUMNNAME_LBR_NFeProcOrigin, LBR_NFeProcOrigin);
	}

	/** Get NFe Process Origin.
		@return NFe Process Origin	  */
	public String getLBR_NFeProcOrigin () 
	{
		return (String)get_Value(COLUMNNAME_LBR_NFeProcOrigin);
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

	/** Set Brazilian Fiscal Invoice (Nota Fiscal) Referenced Process.
		@param LBR_NotaFiscalProc_ID Brazilian Fiscal Invoice (Nota Fiscal) Referenced Process	  */
	public void setLBR_NotaFiscalProc_ID (int LBR_NotaFiscalProc_ID)
	{
		if (LBR_NotaFiscalProc_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_NotaFiscalProc_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_NotaFiscalProc_ID, Integer.valueOf(LBR_NotaFiscalProc_ID));
	}

	/** Get Brazilian Fiscal Invoice (Nota Fiscal) Referenced Process.
		@return Brazilian Fiscal Invoice (Nota Fiscal) Referenced Process	  */
	public int getLBR_NotaFiscalProc_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_NotaFiscalProc_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Brazilian Fiscal Invoice (Nota Fiscal) Referenced Process.
		@param LBR_NotaFiscalProc_UU Brazilian Fiscal Invoice (Nota Fiscal) Referenced Process	  */
	public void setLBR_NotaFiscalProc_UU (String LBR_NotaFiscalProc_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_NotaFiscalProc_UU, LBR_NotaFiscalProc_UU);
	}

	/** Get Brazilian Fiscal Invoice (Nota Fiscal) Referenced Process.
		@return Brazilian Fiscal Invoice (Nota Fiscal) Referenced Process	  */
	public String getLBR_NotaFiscalProc_UU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_NotaFiscalProc_UU);
	}

	/** Set Process Name.
		@param ProcessName 
		Name of the Process
	  */
	public void setProcessName (String ProcessName)
	{
		set_Value (COLUMNNAME_ProcessName, ProcessName);
	}

	/** Get Process Name.
		@return Name of the Process
	  */
	public String getProcessName () 
	{
		return (String)get_Value(COLUMNNAME_ProcessName);
	}
}