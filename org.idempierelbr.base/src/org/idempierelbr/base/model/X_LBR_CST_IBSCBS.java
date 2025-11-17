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

/** Generated Model for LBR_CST_IBSCBS
 *  @author iDempiere (generated)
 *  @version Release 12 - $Id$ */
@org.adempiere.base.Model(table="LBR_CST_IBSCBS")
public class X_LBR_CST_IBSCBS extends PO implements I_LBR_CST_IBSCBS, I_Persistent
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20251010L;

    /** Standard Constructor */
    public X_LBR_CST_IBSCBS (Properties ctx, int LBR_CST_IBSCBS_ID, String trxName)
    {
      super (ctx, LBR_CST_IBSCBS_ID, trxName);
      /** if (LBR_CST_IBSCBS_ID == 0)
        {
			setName (null);
			setValue (null);
        } */
    }

    /** Standard Constructor */
    public X_LBR_CST_IBSCBS (Properties ctx, int LBR_CST_IBSCBS_ID, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_CST_IBSCBS_ID, trxName, virtualColumns);
      /** if (LBR_CST_IBSCBS_ID == 0)
        {
			setName (null);
			setValue (null);
        } */
    }

    /** Standard Constructor */
    public X_LBR_CST_IBSCBS (Properties ctx, String LBR_CST_IBSCBS_UU, String trxName)
    {
      super (ctx, LBR_CST_IBSCBS_UU, trxName);
      /** if (LBR_CST_IBSCBS_UU == null)
        {
			setName (null);
			setValue (null);
        } */
    }

    /** Standard Constructor */
    public X_LBR_CST_IBSCBS (Properties ctx, String LBR_CST_IBSCBS_UU, String trxName, String ... virtualColumns)
    {
      super (ctx, LBR_CST_IBSCBS_UU, trxName, virtualColumns);
      /** if (LBR_CST_IBSCBS_UU == null)
        {
			setName (null);
			setValue (null);
        } */
    }

    /** Load Constructor */
    public X_LBR_CST_IBSCBS (Properties ctx, ResultSet rs, String trxName)
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
      StringBuilder sb = new StringBuilder ("X_LBR_CST_IBSCBS[")
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

	/** Set CST IBS / CBS.
		@param LBR_CST_IBSCBS_ID CST IBS / CBS
	*/
	public void setLBR_CST_IBSCBS_ID (int LBR_CST_IBSCBS_ID)
	{
		if (LBR_CST_IBSCBS_ID < 1)
			set_ValueNoCheck (COLUMNNAME_LBR_CST_IBSCBS_ID, null);
		else
			set_ValueNoCheck (COLUMNNAME_LBR_CST_IBSCBS_ID, Integer.valueOf(LBR_CST_IBSCBS_ID));
	}

	/** Get CST IBS / CBS.
		@return CST IBS / CBS	  */
	public int getLBR_CST_IBSCBS_ID()
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_CST_IBSCBS_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set CST IBS / CBS.
		@param LBR_CST_IBSCBS_UU CST IBS / CBS
	*/
	public void setLBR_CST_IBSCBS_UU (String LBR_CST_IBSCBS_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_CST_IBSCBS_UU, LBR_CST_IBSCBS_UU);
	}

	/** Get CST IBS / CBS.
		@return CST IBS / CBS	  */
	public String getLBR_CST_IBSCBS_UU()
	{
		return (String)get_Value(COLUMNNAME_LBR_CST_IBSCBS_UU);
	}

	/** LBR_IBSCBSIndBPe AD_Reference_ID=319 */
	public static final int LBR_IBSCBSINDBPE_AD_Reference_ID=319;
	/** No = N */
	public static final String LBR_IBSCBSINDBPE_No = "N";
	/** Yes = Y */
	public static final String LBR_IBSCBSINDBPE_Yes = "Y";
	/** Set IBS/CBS BPe Indicator.
		@param LBR_IBSCBSIndBPe IBS/CBS BPe Indicator
	*/
	public void setLBR_IBSCBSIndBPe (String LBR_IBSCBSIndBPe)
	{

		set_Value (COLUMNNAME_LBR_IBSCBSIndBPe, LBR_IBSCBSIndBPe);
	}

	/** Get IBS/CBS BPe Indicator.
		@return IBS/CBS BPe Indicator	  */
	public String getLBR_IBSCBSIndBPe()
	{
		return (String)get_Value(COLUMNNAME_LBR_IBSCBSIndBPe);
	}

	/** LBR_IBSCBSIndBPeTM AD_Reference_ID=319 */
	public static final int LBR_IBSCBSINDBPETM_AD_Reference_ID=319;
	/** No = N */
	public static final String LBR_IBSCBSINDBPETM_No = "N";
	/** Yes = Y */
	public static final String LBR_IBSCBSINDBPETM_Yes = "Y";
	/** Set IBS/CBS BPeTM Indicator.
		@param LBR_IBSCBSIndBPeTM IBS/CBS BPeTM Indicator
	*/
	public void setLBR_IBSCBSIndBPeTM (String LBR_IBSCBSIndBPeTM)
	{

		set_Value (COLUMNNAME_LBR_IBSCBSIndBPeTM, LBR_IBSCBSIndBPeTM);
	}

	/** Get IBS/CBS BPeTM Indicator.
		@return IBS/CBS BPeTM Indicator	  */
	public String getLBR_IBSCBSIndBPeTM()
	{
		return (String)get_Value(COLUMNNAME_LBR_IBSCBSIndBPeTM);
	}

	/** LBR_IBSCBSIndCTe AD_Reference_ID=319 */
	public static final int LBR_IBSCBSINDCTE_AD_Reference_ID=319;
	/** No = N */
	public static final String LBR_IBSCBSINDCTE_No = "N";
	/** Yes = Y */
	public static final String LBR_IBSCBSINDCTE_Yes = "Y";
	/** Set IBS/CBS CTe Indicator.
		@param LBR_IBSCBSIndCTe IBS/CBS CTe Indicator
	*/
	public void setLBR_IBSCBSIndCTe (String LBR_IBSCBSIndCTe)
	{

		set_Value (COLUMNNAME_LBR_IBSCBSIndCTe, LBR_IBSCBSIndCTe);
	}

	/** Get IBS/CBS CTe Indicator.
		@return IBS/CBS CTe Indicator	  */
	public String getLBR_IBSCBSIndCTe()
	{
		return (String)get_Value(COLUMNNAME_LBR_IBSCBSIndCTe);
	}

	/** LBR_IBSCBSIndCteOS AD_Reference_ID=319 */
	public static final int LBR_IBSCBSINDCTEOS_AD_Reference_ID=319;
	/** No = N */
	public static final String LBR_IBSCBSINDCTEOS_No = "N";
	/** Yes = Y */
	public static final String LBR_IBSCBSINDCTEOS_Yes = "Y";
	/** Set IBS/CBS CteOS Indicator.
		@param LBR_IBSCBSIndCteOS IBS/CBS CteOS Indicator
	*/
	public void setLBR_IBSCBSIndCteOS (String LBR_IBSCBSIndCteOS)
	{

		set_Value (COLUMNNAME_LBR_IBSCBSIndCteOS, LBR_IBSCBSIndCteOS);
	}

	/** Get IBS/CBS CteOS Indicator.
		@return IBS/CBS CteOS Indicator	  */
	public String getLBR_IBSCBSIndCteOS()
	{
		return (String)get_Value(COLUMNNAME_LBR_IBSCBSIndCteOS);
	}

	/** LBR_IBSCBSIndNF3e AD_Reference_ID=319 */
	public static final int LBR_IBSCBSINDNF3E_AD_Reference_ID=319;
	/** No = N */
	public static final String LBR_IBSCBSINDNF3E_No = "N";
	/** Yes = Y */
	public static final String LBR_IBSCBSINDNF3E_Yes = "Y";
	/** Set IBS/CBS NF3e Indicator.
		@param LBR_IBSCBSIndNF3e IBS/CBS NF3e Indicator
	*/
	public void setLBR_IBSCBSIndNF3e (String LBR_IBSCBSIndNF3e)
	{

		set_Value (COLUMNNAME_LBR_IBSCBSIndNF3e, LBR_IBSCBSIndNF3e);
	}

	/** Get IBS/CBS NF3e Indicator.
		@return IBS/CBS NF3e Indicator	  */
	public String getLBR_IBSCBSIndNF3e()
	{
		return (String)get_Value(COLUMNNAME_LBR_IBSCBSIndNF3e);
	}

	/** LBR_IBSCBSIndNFCe AD_Reference_ID=319 */
	public static final int LBR_IBSCBSINDNFCE_AD_Reference_ID=319;
	/** No = N */
	public static final String LBR_IBSCBSINDNFCE_No = "N";
	/** Yes = Y */
	public static final String LBR_IBSCBSINDNFCE_Yes = "Y";
	/** Set IBS/CBS NFCe Indicator.
		@param LBR_IBSCBSIndNFCe IBS/CBS NFCe Indicator
	*/
	public void setLBR_IBSCBSIndNFCe (String LBR_IBSCBSIndNFCe)
	{

		set_Value (COLUMNNAME_LBR_IBSCBSIndNFCe, LBR_IBSCBSIndNFCe);
	}

	/** Get IBS/CBS NFCe Indicator.
		@return IBS/CBS NFCe Indicator	  */
	public String getLBR_IBSCBSIndNFCe()
	{
		return (String)get_Value(COLUMNNAME_LBR_IBSCBSIndNFCe);
	}

	/** LBR_IBSCBSIndNFCom AD_Reference_ID=319 */
	public static final int LBR_IBSCBSINDNFCOM_AD_Reference_ID=319;
	/** No = N */
	public static final String LBR_IBSCBSINDNFCOM_No = "N";
	/** Yes = Y */
	public static final String LBR_IBSCBSINDNFCOM_Yes = "Y";
	/** Set IBS/CBS NFCom Indicator.
		@param LBR_IBSCBSIndNFCom IBS/CBS NFCom Indicator
	*/
	public void setLBR_IBSCBSIndNFCom (String LBR_IBSCBSIndNFCom)
	{

		set_Value (COLUMNNAME_LBR_IBSCBSIndNFCom, LBR_IBSCBSIndNFCom);
	}

	/** Get IBS/CBS NFCom Indicator.
		@return IBS/CBS NFCom Indicator	  */
	public String getLBR_IBSCBSIndNFCom()
	{
		return (String)get_Value(COLUMNNAME_LBR_IBSCBSIndNFCom);
	}

	/** LBR_IBSCBSIndNFSe AD_Reference_ID=319 */
	public static final int LBR_IBSCBSINDNFSE_AD_Reference_ID=319;
	/** No = N */
	public static final String LBR_IBSCBSINDNFSE_No = "N";
	/** Yes = Y */
	public static final String LBR_IBSCBSINDNFSE_Yes = "Y";
	/** Set IBS/CBS NFSe Indicator.
		@param LBR_IBSCBSIndNFSe IBS/CBS NFSe Indicator
	*/
	public void setLBR_IBSCBSIndNFSe (String LBR_IBSCBSIndNFSe)
	{

		set_Value (COLUMNNAME_LBR_IBSCBSIndNFSe, LBR_IBSCBSIndNFSe);
	}

	/** Get IBS/CBS NFSe Indicator.
		@return IBS/CBS NFSe Indicator	  */
	public String getLBR_IBSCBSIndNFSe()
	{
		return (String)get_Value(COLUMNNAME_LBR_IBSCBSIndNFSe);
	}

	/** LBR_IBSCBSIndNFe AD_Reference_ID=319 */
	public static final int LBR_IBSCBSINDNFE_AD_Reference_ID=319;
	/** No = N */
	public static final String LBR_IBSCBSINDNFE_No = "N";
	/** Yes = Y */
	public static final String LBR_IBSCBSINDNFE_Yes = "Y";
	/** Set IBS/CBS NFe Indicator.
		@param LBR_IBSCBSIndNFe IBS/CBS NFe Indicator
	*/
	public void setLBR_IBSCBSIndNFe (String LBR_IBSCBSIndNFe)
	{

		set_Value (COLUMNNAME_LBR_IBSCBSIndNFe, LBR_IBSCBSIndNFe);
	}

	/** Get IBS/CBS NFe Indicator.
		@return IBS/CBS NFe Indicator	  */
	public String getLBR_IBSCBSIndNFe()
	{
		return (String)get_Value(COLUMNNAME_LBR_IBSCBSIndNFe);
	}

	/** LBR_IndgIBSCBS AD_Reference_ID=800060 */
	public static final int LBR_INDGIBSCBS_AD_Reference_ID=800060;
	/** 0 - Not Allowed = 0 */
	public static final String LBR_INDGIBSCBS_0_NotAllowed = "0";
	/** 1 - Required = 1 */
	public static final String LBR_INDGIBSCBS_1_Required = "1";
	/** Set IBS/CBS Group Indicator.
		@param LBR_IndgIBSCBS IBS/CBS Group Indicator
	*/
	public void setLBR_IndgIBSCBS (String LBR_IndgIBSCBS)
	{

		set_Value (COLUMNNAME_LBR_IndgIBSCBS, LBR_IndgIBSCBS);
	}

	/** Get IBS/CBS Group Indicator.
		@return IBS/CBS Group Indicator	  */
	public String getLBR_IndgIBSCBS()
	{
		return (String)get_Value(COLUMNNAME_LBR_IndgIBSCBS);
	}

	/** LBR_IndgIBSCBSDif AD_Reference_ID=800060 */
	public static final int LBR_INDGIBSCBSDIF_AD_Reference_ID=800060;
	/** 0 - Not Allowed = 0 */
	public static final String LBR_INDGIBSCBSDIF_0_NotAllowed = "0";
	/** 1 - Required = 1 */
	public static final String LBR_INDGIBSCBSDIF_1_Required = "1";
	/** Set IBS/CBS Dif Group Indicator.
		@param LBR_IndgIBSCBSDif IBS/CBS Dif Group Indicator
	*/
	public void setLBR_IndgIBSCBSDif (String LBR_IndgIBSCBSDif)
	{

		set_Value (COLUMNNAME_LBR_IndgIBSCBSDif, LBR_IndgIBSCBSDif);
	}

	/** Get IBS/CBS Dif Group Indicator.
		@return IBS/CBS Dif Group Indicator	  */
	public String getLBR_IndgIBSCBSDif()
	{
		return (String)get_Value(COLUMNNAME_LBR_IndgIBSCBSDif);
	}

	/** LBR_IndgIBSCBSMono AD_Reference_ID=800060 */
	public static final int LBR_INDGIBSCBSMONO_AD_Reference_ID=800060;
	/** 0 - Not Allowed = 0 */
	public static final String LBR_INDGIBSCBSMONO_0_NotAllowed = "0";
	/** 1 - Required = 1 */
	public static final String LBR_INDGIBSCBSMONO_1_Required = "1";
	/** Set IBS/CBS Mono Group Indicator.
		@param LBR_IndgIBSCBSMono IBS/CBS Mono Group Indicator
	*/
	public void setLBR_IndgIBSCBSMono (String LBR_IndgIBSCBSMono)
	{

		set_Value (COLUMNNAME_LBR_IndgIBSCBSMono, LBR_IndgIBSCBSMono);
	}

	/** Get IBS/CBS Mono Group Indicator.
		@return IBS/CBS Mono Group Indicator	  */
	public String getLBR_IndgIBSCBSMono()
	{
		return (String)get_Value(COLUMNNAME_LBR_IndgIBSCBSMono);
	}

	/** LBR_IndgIBSCBSRed AD_Reference_ID=800060 */
	public static final int LBR_INDGIBSCBSRED_AD_Reference_ID=800060;
	/** 0 - Not Allowed = 0 */
	public static final String LBR_INDGIBSCBSRED_0_NotAllowed = "0";
	/** 1 - Required = 1 */
	public static final String LBR_INDGIBSCBSRED_1_Required = "1";
	/** Set IBS/CBS Red Group Indicator.
		@param LBR_IndgIBSCBSRed IBS/CBS Red Group Indicator
	*/
	public void setLBR_IndgIBSCBSRed (String LBR_IndgIBSCBSRed)
	{

		set_Value (COLUMNNAME_LBR_IndgIBSCBSRed, LBR_IndgIBSCBSRed);
	}

	/** Get IBS/CBS Red Group Indicator.
		@return IBS/CBS Red Group Indicator	  */
	public String getLBR_IndgIBSCBSRed()
	{
		return (String)get_Value(COLUMNNAME_LBR_IndgIBSCBSRed);
	}

	/** LBR_IndgIBSCBSTransfCred AD_Reference_ID=800060 */
	public static final int LBR_INDGIBSCBSTRANSFCRED_AD_Reference_ID=800060;
	/** 0 - Not Allowed = 0 */
	public static final String LBR_INDGIBSCBSTRANSFCRED_0_NotAllowed = "0";
	/** 1 - Required = 1 */
	public static final String LBR_INDGIBSCBSTRANSFCRED_1_Required = "1";
	/** Set IBS/CBS TransfCred Group Indicator.
		@param LBR_IndgIBSCBSTransfCred IBS/CBS TransfCred Group Indicator
	*/
	public void setLBR_IndgIBSCBSTransfCred (String LBR_IndgIBSCBSTransfCred)
	{

		set_Value (COLUMNNAME_LBR_IndgIBSCBSTransfCred, LBR_IndgIBSCBSTransfCred);
	}

	/** Get IBS/CBS TransfCred Group Indicator.
		@return IBS/CBS TransfCred Group Indicator	  */
	public String getLBR_IndgIBSCBSTransfCred()
	{
		return (String)get_Value(COLUMNNAME_LBR_IndgIBSCBSTransfCred);
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

	/** Set Search Key.
		@param Value Search key for the record in the format required - must be unique
	*/
	public void setValue (String Value)
	{
		set_Value (COLUMNNAME_Value, Value);
	}

	/** Get Search Key.
		@return Search key for the record in the format required - must be unique
	  */
	public String getValue()
	{
		return (String)get_Value(COLUMNNAME_Value);
	}
}