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

/** Generated Model for LBR_NFeWebService
 *  @author iDempiere (generated)
 *  @version Release 11 - $Id$ */
@org.adempiere.base.Model(table="LBR_NFeWebService")
public class X_LBR_NFeWebService extends PO implements I_LBR_NFeWebService, I_Persistent
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20240603L;

    /** Standard Constructor */
    public X_LBR_NFeWebService (Properties ctx, int LBR_NFeWebService_ID, String trxName)
    {
      super (ctx, LBR_NFeWebService_ID, trxName);
      /** if (LBR_NFeWebService_ID == 0)
        {
			setLBR_NFeEnv (null);
			setLBR_NFeModel (null);
// 55
			setLBR_NFeWebService_ID (0);
			setName (null);
			setURL (null);
        } */
    }

    /** Standard Constructor */
    public X_LBR_NFeWebService (Properties ctx, int LBR_NFeWebService_ID, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_NFeWebService_ID, trxName, virtualColumns);
      /** if (LBR_NFeWebService_ID == 0)
        {
			setLBR_NFeEnv (null);
			setLBR_NFeModel (null);
// 55
			setLBR_NFeWebService_ID (0);
			setName (null);
			setURL (null);
        } */
    }

    /** Standard Constructor */
    public X_LBR_NFeWebService (Properties ctx, String LBR_NFeWebService_UU, String trxName)
    {
      super (ctx, LBR_NFeWebService_UU, trxName);
      /** if (LBR_NFeWebService_UU == null)
        {
			setLBR_NFeEnv (null);
			setLBR_NFeModel (null);
// 55
			setLBR_NFeWebService_ID (0);
			setName (null);
			setURL (null);
        } */
    }

    /** Standard Constructor */
    public X_LBR_NFeWebService (Properties ctx, String LBR_NFeWebService_UU, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_NFeWebService_UU, trxName, virtualColumns);
      /** if (LBR_NFeWebService_UU == null)
        {
			setLBR_NFeEnv (null);
			setLBR_NFeModel (null);
// 55
			setLBR_NFeWebService_ID (0);
			setName (null);
			setURL (null);
        } */
    }

    /** Load Constructor */
    public X_LBR_NFeWebService (Properties ctx, ResultSet rs, String trxName)
    {
      super (ctx, rs, trxName);
    }

    /** AccessLevel
      * @return 4 - System
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
      StringBuilder sb = new StringBuilder ("X_LBR_NFeWebService[")
        .append(get_ID()).append(",Name=").append(getName()).append("]");
      return sb.toString();
    }

	public org.compiere.model.I_C_Region getC_Region() throws RuntimeException
	{
		return (org.compiere.model.I_C_Region)MTable.get(getCtx(), org.compiere.model.I_C_Region.Table_ID)
			.getPO(getC_Region_ID(), get_TrxName());
	}

	/** Set Region.
		@param C_Region_ID Identifies a geographical Region
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
	public int getC_Region_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_Region_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Production = 1 */
	public static final String LBR_NFEENV_Production = "1";
	/** Homologation = 2 */
	public static final String LBR_NFEENV_Homologation = "2";
	/** Set Sefaz NF-e Environment.
		@param LBR_NFeEnv Sefaz NF-e Environment
	*/
	public void setLBR_NFeEnv (String LBR_NFeEnv)
	{

		set_Value (COLUMNNAME_LBR_NFeEnv, LBR_NFeEnv);
	}

	/** Get Sefaz NF-e Environment.
		@return Sefaz NF-e Environment	  */
	public String getLBR_NFeEnv()
	{
		return (String)get_Value(COLUMNNAME_LBR_NFeEnv);
	}

	/** 55 - NF-e = 55 */
	public static final String LBR_NFEMODEL_55_NF_E = "55";
	/** 65 - NFC-e = 65 */
	public static final String LBR_NFEMODEL_65_NFC_E = "65";
	/** Set NF Model.
		@param LBR_NFeModel NF Model
	*/
	public void setLBR_NFeModel (String LBR_NFeModel)
	{

		set_Value (COLUMNNAME_LBR_NFeModel, LBR_NFeModel);
	}

	/** Get NF Model.
		@return NF Model	  */
	public String getLBR_NFeModel()
	{
		return (String)get_Value(COLUMNNAME_LBR_NFeModel);
	}

	/** Set NF-e Web Service.
		@param LBR_NFeWebService_ID Web Service used to communicate with Sefaz
	*/
	public void setLBR_NFeWebService_ID (int LBR_NFeWebService_ID)
	{
		if (LBR_NFeWebService_ID < 1)
			set_ValueNoCheck (COLUMNNAME_LBR_NFeWebService_ID, null);
		else
			set_ValueNoCheck (COLUMNNAME_LBR_NFeWebService_ID, Integer.valueOf(LBR_NFeWebService_ID));
	}

	/** Get NF-e Web Service.
		@return Web Service used to communicate with Sefaz
	  */
	public int getLBR_NFeWebService_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_NFeWebService_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set NF-e Web Service.
		@param LBR_NFeWebService_UU Web Service used to communicate with Sefaz
	*/
	public void setLBR_NFeWebService_UU (String LBR_NFeWebService_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_NFeWebService_UU, LBR_NFeWebService_UU);
	}

	/** Get NF-e Web Service.
		@return Web Service used to communicate with Sefaz
	  */
	public String getLBR_NFeWebService_UU()
	{
		return (String)get_Value(COLUMNNAME_LBR_NFeWebService_UU);
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

	/** Set URL.
		@param URL Full URL address - e.g. http://www.idempiere.org
	*/
	public void setURL (String URL)
	{
		set_Value (COLUMNNAME_URL, URL);
	}

	/** Get URL.
		@return Full URL address - e.g. http://www.idempiere.org
	  */
	public String getURL()
	{
		return (String)get_Value(COLUMNNAME_URL);
	}

	/** Set Version No.
		@param VersionNo Version Number
	*/
	public void setVersionNo (String VersionNo)
	{
		set_Value (COLUMNNAME_VersionNo, VersionNo);
	}

	/** Get Version No.
		@return Version Number
	  */
	public String getVersionNo()
	{
		return (String)get_Value(COLUMNNAME_VersionNo);
	}
}