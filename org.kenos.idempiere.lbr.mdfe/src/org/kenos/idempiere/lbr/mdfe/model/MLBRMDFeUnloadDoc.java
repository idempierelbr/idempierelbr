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
import java.util.Properties;

import org.adempierelbr.model.X_LBR_MDFeUnloadDoc;
import org.adempierelbr.util.TextUtil;
import org.compiere.util.DB;
import org.compiere.util.Msg;

/**
 * 		Model for MDF-e Unload Document
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: MLBRMDFeUnloadDoc.java, v1.0 2014/01/28 5:09:44 PM, ralexsander Exp $
 */
public class MLBRMDFeUnloadDoc extends X_LBR_MDFeUnloadDoc
{
	/**
	 * 	Serial
	 */
	private static final long serialVersionUID = -5393317785289128296L;

	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int LBR_Tax_ID (0 create new)
	 *  @param String trx
	 */
	public MLBRMDFeUnloadDoc (Properties ctx, int LBR_MDFeUnloadDoc_ID, String trx)
	{
		super (ctx, LBR_MDFeUnloadDoc_ID, trx);
	}	//	MLBRMDFeUnloadDoc

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRMDFeUnloadDoc (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}	//	MLBRMDFeUnloadDoc
	
	/**
	 *   Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRMDFeUnloadDoc (MLBRMDFeUnload unload)
	{
		this (unload.getCtx(), 0, unload.get_TrxName());
		setLBR_MDFeUnload_ID(unload.getLBR_MDFeUnload_ID());
	}	//	MLBRMDFeUnloadDoc
	
	/**
	 * 	Called before Save for Pre-Save Operation
	 * 	@param newRecord new record
	 *	@return true if record can be saved
	 */
	@Override
	protected boolean beforeSave (boolean newRecord)
	{
		if (TextUtil.match (getLBR_MDFeDocType(), LBR_MDFEDOCTYPE_CT_E, LBR_MDFEDOCTYPE_NF_E)
				&& (getlbr_NFeID() == null || getlbr_NFeID().length() != 44))
		{
			log.saveError("Error", Msg.parseTranslation(getCtx(), "@lbr_NFeID@ inválido"));
			return false;
		}
		
		if (LBR_MDFEDOCTYPE_NFPaper.equals (getLBR_MDFeDocType ()))
		{
			if (getlbr_NFSerie() == null || getlbr_NFSerie().length() == 0)
				log.saveError("FillMandatory", Msg.getElement (getCtx(), "lbr_NFSerie"));
			
			if (getlbr_CNPJ() == null || getlbr_CNPJ().length() == 0)
				log.saveError("FillMandatory", Msg.getElement (getCtx(), "lbr_CNPJ"));
			
			if (getC_Region_ID() == 0)
				log.saveError("FillMandatory", Msg.getElement (getCtx(), "C_Region_ID"));
			
			if (getDateDoc() == null)
				log.saveError("FillMandatory", Msg.getElement (getCtx(), "DateDoc"));
			
			if (getGrandTotal() == null || getGrandTotal().signum() <= 0)
				log.saveError("FillMandatory", Msg.getElement (getCtx(), "GrandTotal"));
		}
		
		if (LBR_MDFEDOCTYPE_CTPaper.equals (getLBR_MDFeDocType ()))
		{
			if (getlbr_NFSerie() == null || getlbr_NFSerie().length() == 0)
				log.saveError("FillMandatory", Msg.getElement (getCtx(), "lbr_NFSerie"));
			
			if (getLBR_SubSerie() == null || getLBR_SubSerie().length() == 0)
				log.saveError("FillMandatory", Msg.getElement (getCtx(), "LBR_SubSerie"));
			
			if (getDateDoc() == null)
				log.saveError("FillMandatory", Msg.getElement (getCtx(), "DateDoc"));
			
			if (getGrandTotal() == null || getGrandTotal().signum() <= 0)
				log.saveError("FillMandatory", Msg.getElement (getCtx(), "GrandTotal"));
		}
		
		return true;
	}	//	beforeSave
	
	/**
	 * 	After Save
	 *	@param newRecord new
	 *	@param success success
	 *	@return saved
	 */
	protected boolean afterSave (boolean newRecord, boolean success)
	{
		if (!success)
			return success;
		return updateHeader();
	}	//	afterSave
	
	/**
	 * 	Executed after Delete operation.
	 * 	@param success true if record deleted
	 *	@return true if delete is a success
	 */
	protected boolean afterDelete (boolean success)
	{
		if (!success)
			return success;
		return updateHeader();
	}	//	afterDelete

	/**
	 *	Update Header
	 *	@return true if header updated
	 */
	private boolean updateHeader()
	{
		//	Update Cash Plan Header
		String sql = "UPDATE LBR_MDFe "
			+ "SET GrandTotal=(SELECT COALESCE(SUM(d.GrandTotal),0) "
							+ "FROM LBR_MDFeUnloadDoc d, LBR_MDFeUnload u "
							+ "WHERE d.LBR_MDFeUnload_ID=u.LBR_MDFeUnload_ID "
							+ "AND LBR_MDFe.LBR_MDFe_ID=u.LBR_MDFe_ID) "
			+ "WHERE LBR_MDFe_ID=" + getLBR_MDFeUnload().getLBR_MDFe_ID();
		int no = DB.executeUpdate(sql, get_TrxName());
		if (no != 1)
			log.warning("(1) #" + no);

		return no == 1;
	}	//	updateHeaderTax
}	//	MLBRMDFeUnloadDoc
