/******************************************************************************
 * Copyright (C) 2011 Kenos Assessoria e Consultoria de Sistemas Ltda         *
 * Copyright (C) 2011 Ricardo Santana                                         *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 *****************************************************************************/
package org.kenos.idempiere.lbr.mdfe.model;

import java.sql.ResultSet;
import java.util.List;
import java.util.Properties;

import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.model.X_LBR_MDFeUnload;
import org.adempierelbr.util.BPartnerUtil;
import org.compiere.model.MBPartnerLocation;
import org.compiere.model.MTable;
import org.compiere.model.Query;
import org.compiere.model.X_C_City;

/**
 * 		Model for MDF-e Unload
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: MLBRMDFeUnload.java, v1.0 2014/01/28 5:09:44 PM, ralexsander Exp $
 */
public class MLBRMDFeUnload extends X_LBR_MDFeUnload
{
	/**
	 * 	Serial
	 */
	private static final long serialVersionUID = -3586002090546425444L;

	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int LBR_Tax_ID (0 create new)
	 *  @param String trx
	 */
	public MLBRMDFeUnload (Properties ctx, int LBR_MDFeUnload_ID, String trx)
	{
		super (ctx, LBR_MDFeUnload_ID, trx);
	}	//	MLBRMDFeUnload

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRMDFeUnload (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}	//	MLBRMDFeUnload
	
	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRMDFeUnload (Properties ctx, String trxName, int LBR_MDFe_ID, int C_Region_ID, int C_City_ID)
	{
		this (ctx, 0, trxName);
		setLBR_MDFe_ID(LBR_MDFe_ID);
		setC_Region_ID(C_Region_ID);
		setC_City_ID(C_City_ID);
	}	//	MLBRMDFeUnload
	
	/**
	 *  Get Unload Docs
	 *  @return MLBRMDFeUnloadDoc[] lines
	 */
	public MLBRMDFeUnloadDoc[] getUnloadDocs (String LBR_MDFeDocType)
	{
		MTable table = MTable.get (getCtx(), MLBRMDFeUnloadDoc.Table_Name);
		Query query =  new Query (getCtx(), table, "LBR_MDFeUnload_ID=? AND LBR_MDFeDocType=?", get_TrxName());
	 		  query.setParameters(new Object[]{getLBR_MDFeUnload_ID(), LBR_MDFeDocType});
	 	//
	 	List<MLBRMDFeUnloadDoc> list = query.list();
	 	return list.toArray(new MLBRMDFeUnloadDoc[list.size()]);
	}	//	getUnloadDocs
	
	/**
	 * 	Unload Document
	 * 	@return
	 */
	public static MLBRMDFeUnloadDoc addDocument (MLBRMDFe mdfe, MLBRNotaFiscal nf)
	{
		if (mdfe == null || nf == null)
			return null;
		
		X_C_City city = BPartnerUtil.getX_C_City (mdfe.getCtx(), new MBPartnerLocation (mdfe.getCtx(), nf.getC_BPartner_Location_ID(), nf.get_TrxName()).getLocation(false), mdfe.get_TrxName());
		//
		MLBRMDFeUnload unload = get (mdfe.getCtx(), mdfe.get_TrxName(), mdfe.getLBR_MDFe_ID(), city);
		
		if (unload.getLBR_MDFeUnload_ID() == 0)	//	New Record
			unload.save();
		
		MLBRMDFeUnloadDoc doc = new MLBRMDFeUnloadDoc(unload);
		doc.setLBR_MDFeDocType(MLBRMDFeUnloadDoc.LBR_MDFEDOCTYPE_NF_E);
		doc.setlbr_NFeID(nf.getlbr_NFeID());
		doc.setGrandTotal(nf.getGrandTotal());
		doc.save();
		
		return doc;
	}	//	add
	
	public static MLBRMDFeUnload get (Properties ctx, String trxName, int LBR_MDFe_ID, X_C_City city)
	{
		Query query = new Query (ctx, MTable.get (ctx, MLBRMDFeUnload.Table_Name), "LBR_MDFe_ID=? AND C_City_ID=?", trxName);
 		query.setParameters(new Object[]{LBR_MDFe_ID, city.getC_City_ID()});
 		List<MLBRMDFeUnload> unload = query.list();
 		
 		if (unload.size() == 1)
 			return unload.get(0);
 		
		return new MLBRMDFeUnload (ctx, trxName, LBR_MDFe_ID, city.getC_Region_ID(), city.getC_City_ID());
	}	//	get
}	//	MLBRMDFeUnload
