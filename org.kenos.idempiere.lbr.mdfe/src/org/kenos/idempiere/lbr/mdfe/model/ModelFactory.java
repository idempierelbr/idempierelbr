package org.kenos.idempiere.lbr.mdfe.model;

import java.sql.ResultSet;

import org.adempiere.base.IModelFactory;
import org.compiere.model.PO;
import org.compiere.util.Env;

/**
 * 		Model Factory
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: ModelFactory.java, v1.0 2017/09/04 22:53:49 PM, ralexsander Exp $
 */
public class ModelFactory implements IModelFactory
{
	@Override
	public Class<?> getClass(String tableName)
	{
		if (MLBRMDFe.Table_Name.equals(tableName))
			return MLBRMDFe.class;
		if (MLBRMDFeDriver.Table_Name.equals(tableName))
			return MLBRMDFeDriver.class;
		if (MLBRMDFeDriverInstance.Table_Name.equals(tableName))
			return MLBRMDFeDriverInstance.class;
		if (MLBRMDFeInsurance.Table_Name.equals(tableName))
			return MLBRMDFeInsurance.class;
		if (MLBRMDFeLoad.Table_Name.equals(tableName))
			return MLBRMDFeLoad.class;
		if (MLBRMDFeRoute.Table_Name.equals(tableName))
			return MLBRMDFeRoute.class;
		if (MLBRMDFeSeal.Table_Name.equals(tableName))
			return MLBRMDFeSeal.class;
		if (MLBRMDFeToll.Table_Name.equals(tableName))
			return MLBRMDFeToll.class;
		if (MLBRMDFeUnload.Table_Name.equals(tableName))
			return MLBRMDFeUnload.class;
		if (MLBRMDFeUnloadDoc.Table_Name.equals(tableName))
			return MLBRMDFeUnloadDoc.class;
		if (MLBRMDFeVehicle.Table_Name.equals(tableName))
			return MLBRMDFeVehicle.class;
		return null;
	}	//	getClass

	@Override
	public PO getPO(String tableName, int Record_ID, String trxName)
	{
		if (MLBRMDFe.Table_Name.equals(tableName))
			return new MLBRMDFe (Env.getCtx(), Record_ID, trxName);
		if (MLBRMDFeDriver.Table_Name.equals(tableName))
			return new MLBRMDFeDriver (Env.getCtx(), Record_ID, trxName);
		if (MLBRMDFeDriverInstance.Table_Name.equals(tableName))
			return new MLBRMDFeDriverInstance (Env.getCtx(), Record_ID, trxName);
		if (MLBRMDFeInsurance.Table_Name.equals(tableName))
			return new MLBRMDFeInsurance (Env.getCtx(), Record_ID, trxName);
		if (MLBRMDFeLoad.Table_Name.equals(tableName))
			return new MLBRMDFeLoad (Env.getCtx(), Record_ID, trxName);
		if (MLBRMDFeRoute.Table_Name.equals(tableName))
			return new MLBRMDFeRoute (Env.getCtx(), Record_ID, trxName);
		if (MLBRMDFeSeal.Table_Name.equals(tableName))
			return new MLBRMDFeSeal (Env.getCtx(), Record_ID, trxName);
		if (MLBRMDFeToll.Table_Name.equals(tableName))
			return new MLBRMDFeToll (Env.getCtx(), Record_ID, trxName);
		if (MLBRMDFeUnload.Table_Name.equals(tableName))
			return new MLBRMDFeUnload (Env.getCtx(), Record_ID, trxName);
		if (MLBRMDFeUnloadDoc.Table_Name.equals(tableName))
			return new MLBRMDFeUnloadDoc (Env.getCtx(), Record_ID, trxName);
		if (MLBRMDFeVehicle.Table_Name.equals(tableName))
			return new MLBRMDFeVehicle (Env.getCtx(), Record_ID, trxName);
		return null;
	}	//	getPO

	@Override
	public PO getPO(String tableName, ResultSet rs, String trxName)
	{
		if (MLBRMDFe.Table_Name.equals(tableName))
			return new MLBRMDFe (Env.getCtx(), rs, trxName);
		if (MLBRMDFeDriver.Table_Name.equals(tableName))
			return new MLBRMDFeDriver (Env.getCtx(), rs, trxName);
		if (MLBRMDFeDriverInstance.Table_Name.equals(tableName))
			return new MLBRMDFeDriverInstance (Env.getCtx(), rs, trxName);
		if (MLBRMDFeInsurance.Table_Name.equals(tableName))
			return new MLBRMDFeInsurance (Env.getCtx(), rs, trxName);
		if (MLBRMDFeLoad.Table_Name.equals(tableName))
			return new MLBRMDFeLoad (Env.getCtx(), rs, trxName);
		if (MLBRMDFeRoute.Table_Name.equals(tableName))
			return new MLBRMDFeRoute (Env.getCtx(), rs, trxName);
		if (MLBRMDFeSeal.Table_Name.equals(tableName))
			return new MLBRMDFeSeal (Env.getCtx(), rs, trxName);
		if (MLBRMDFeToll.Table_Name.equals(tableName))
			return new MLBRMDFeToll (Env.getCtx(), rs, trxName);
		if (MLBRMDFeUnload.Table_Name.equals(tableName))
			return new MLBRMDFeUnload (Env.getCtx(), rs, trxName);
		if (MLBRMDFeUnloadDoc.Table_Name.equals(tableName))
			return new MLBRMDFeUnloadDoc (Env.getCtx(), rs, trxName);
		if (MLBRMDFeVehicle.Table_Name.equals(tableName))
			return new MLBRMDFeVehicle (Env.getCtx(), rs, trxName);
		return null;
	}	//	getPO
}	//	ModelFactory
