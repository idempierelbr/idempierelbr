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

/** Generated Model for LBR_NotaFiscalTrailer
 *  @author iDempiere (generated)
 *  @version Release 11 - $Id$ */
@org.adempiere.base.Model(table="LBR_NotaFiscalTrailer")
public class X_LBR_NotaFiscalTrailer extends PO implements I_LBR_NotaFiscalTrailer, I_Persistent
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20240603L;

    /** Standard Constructor */
    public X_LBR_NotaFiscalTrailer (Properties ctx, int LBR_NotaFiscalTrailer_ID, String trxName)
    {
      super (ctx, LBR_NotaFiscalTrailer_ID, trxName);
      /** if (LBR_NotaFiscalTrailer_ID == 0)
        {
			setLBR_NotaFiscalTrailer_ID (0);
			setLBR_NotaFiscalTransp_ID (0);
        } */
    }

    /** Standard Constructor */
    public X_LBR_NotaFiscalTrailer (Properties ctx, int LBR_NotaFiscalTrailer_ID, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_NotaFiscalTrailer_ID, trxName, virtualColumns);
      /** if (LBR_NotaFiscalTrailer_ID == 0)
        {
			setLBR_NotaFiscalTrailer_ID (0);
			setLBR_NotaFiscalTransp_ID (0);
        } */
    }

    /** Standard Constructor */
    public X_LBR_NotaFiscalTrailer (Properties ctx, String LBR_NotaFiscalTrailer_UU, String trxName)
    {
      super (ctx, LBR_NotaFiscalTrailer_UU, trxName);
      /** if (LBR_NotaFiscalTrailer_UU == null)
        {
			setLBR_NotaFiscalTrailer_ID (0);
			setLBR_NotaFiscalTransp_ID (0);
        } */
    }

    /** Standard Constructor */
    public X_LBR_NotaFiscalTrailer (Properties ctx, String LBR_NotaFiscalTrailer_UU, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_NotaFiscalTrailer_UU, trxName, virtualColumns);
      /** if (LBR_NotaFiscalTrailer_UU == null)
        {
			setLBR_NotaFiscalTrailer_ID (0);
			setLBR_NotaFiscalTransp_ID (0);
        } */
    }

    /** Load Constructor */
    public X_LBR_NotaFiscalTrailer (Properties ctx, ResultSet rs, String trxName)
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
      StringBuilder sb = new StringBuilder ("X_LBR_NotaFiscalTrailer[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set License Plate.
		@param LBR_LicensePlate License Plate
	*/
	public void setLBR_LicensePlate (String LBR_LicensePlate)
	{
		set_Value (COLUMNNAME_LBR_LicensePlate, LBR_LicensePlate);
	}

	/** Get License Plate.
		@return License Plate	  */
	public String getLBR_LicensePlate()
	{
		return (String)get_Value(COLUMNNAME_LBR_LicensePlate);
	}

	public org.compiere.model.I_C_Region getLBR_LicensePlateRegion() throws RuntimeException
	{
		return (org.compiere.model.I_C_Region)MTable.get(getCtx(), org.compiere.model.I_C_Region.Table_ID)
			.getPO(getLBR_LicensePlateRegion_ID(), get_TrxName());
	}

	/** Set License Plate Region.
		@param LBR_LicensePlateRegion_ID License Plate Region
	*/
	public void setLBR_LicensePlateRegion_ID (int LBR_LicensePlateRegion_ID)
	{
		if (LBR_LicensePlateRegion_ID < 1)
			set_Value (COLUMNNAME_LBR_LicensePlateRegion_ID, null);
		else
			set_Value (COLUMNNAME_LBR_LicensePlateRegion_ID, Integer.valueOf(LBR_LicensePlateRegion_ID));
	}

	/** Get License Plate Region.
		@return License Plate Region	  */
	public int getLBR_LicensePlateRegion_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_LicensePlateRegion_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Brazilian Fiscal Invoice (Nota Fiscal) Vehicle/Trailer.
		@param LBR_NotaFiscalTrailer_ID Brazilian Fiscal Invoice (Nota Fiscal) Vehicle/Trailer
	*/
	public void setLBR_NotaFiscalTrailer_ID (int LBR_NotaFiscalTrailer_ID)
	{
		if (LBR_NotaFiscalTrailer_ID < 1)
			set_ValueNoCheck (COLUMNNAME_LBR_NotaFiscalTrailer_ID, null);
		else
			set_ValueNoCheck (COLUMNNAME_LBR_NotaFiscalTrailer_ID, Integer.valueOf(LBR_NotaFiscalTrailer_ID));
	}

	/** Get Brazilian Fiscal Invoice (Nota Fiscal) Vehicle/Trailer.
		@return Brazilian Fiscal Invoice (Nota Fiscal) Vehicle/Trailer	  */
	public int getLBR_NotaFiscalTrailer_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_NotaFiscalTrailer_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Brazilian Fiscal Invoice (Nota Fiscal) Vehicle/Trailer.
		@param LBR_NotaFiscalTrailer_UU Brazilian Fiscal Invoice (Nota Fiscal) Vehicle/Trailer
	*/
	public void setLBR_NotaFiscalTrailer_UU (String LBR_NotaFiscalTrailer_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_NotaFiscalTrailer_UU, LBR_NotaFiscalTrailer_UU);
	}

	/** Get Brazilian Fiscal Invoice (Nota Fiscal) Vehicle/Trailer.
		@return Brazilian Fiscal Invoice (Nota Fiscal) Vehicle/Trailer	  */
	public String getLBR_NotaFiscalTrailer_UU()
	{
		return (String)get_Value(COLUMNNAME_LBR_NotaFiscalTrailer_UU);
	}

	public I_LBR_NotaFiscalTransp getLBR_NotaFiscalTransp() throws RuntimeException
	{
		return (I_LBR_NotaFiscalTransp)MTable.get(getCtx(), I_LBR_NotaFiscalTransp.Table_ID)
			.getPO(getLBR_NotaFiscalTransp_ID(), get_TrxName());
	}

	/** Set Brazilian Fiscal Invoice (Nota Fiscal) Transportation.
		@param LBR_NotaFiscalTransp_ID Brazilian Fiscal Invoice (Nota Fiscal) Transportation
	*/
	public void setLBR_NotaFiscalTransp_ID (int LBR_NotaFiscalTransp_ID)
	{
		if (LBR_NotaFiscalTransp_ID < 1)
			set_ValueNoCheck (COLUMNNAME_LBR_NotaFiscalTransp_ID, null);
		else
			set_ValueNoCheck (COLUMNNAME_LBR_NotaFiscalTransp_ID, Integer.valueOf(LBR_NotaFiscalTransp_ID));
	}

	/** Get Brazilian Fiscal Invoice (Nota Fiscal) Transportation.
		@return Brazilian Fiscal Invoice (Nota Fiscal) Transportation	  */
	public int getLBR_NotaFiscalTransp_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_NotaFiscalTransp_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set National Registry of Cargo Carriers.
		@param LBR_RNTC National Registry of Cargo Carriers
	*/
	public void setLBR_RNTC (String LBR_RNTC)
	{
		set_Value (COLUMNNAME_LBR_RNTC, LBR_RNTC);
	}

	/** Get National Registry of Cargo Carriers.
		@return National Registry of Cargo Carriers	  */
	public String getLBR_RNTC()
	{
		return (String)get_Value(COLUMNNAME_LBR_RNTC);
	}
}