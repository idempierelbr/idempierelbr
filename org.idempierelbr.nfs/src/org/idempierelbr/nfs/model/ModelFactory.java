package org.idempierelbr.nfs.model;

import java.sql.ResultSet;

import org.adempiere.base.IModelFactory;
import org.compiere.model.PO;
import org.compiere.util.Env;
import org.idempierelbr.tax.model.MLBRDocLineDetails;

/**
 * Esta classe é uma implementação da model factory. Ela fornece uma forma
 * centralizada para o mecanismo de models.
 *
 * @author Pablo <pablo@roundit.com.br>
 */
public class ModelFactory implements IModelFactory {

	@Override
	public Class<?> getClass(String tableName) {
		if (tableName.equals(MLBRNFS.Table_Name))
			return MLBRNFS.class;
		else if (tableName.equals(MLBRNFSTax.Table_Name))
			return MLBRNFSTax.class;
		else if (tableName.equals(MLBRDocLineDetails.Table_Name))
			return MLBRDocLineDetailsNFS.class;
		else if (tableName.equals(MLBRNFSConfig.Table_Name))
			return MLBRNFSConfig.class;
		else if (tableName.equals(MLBRNFSeWS.Table_Name))
			return MLBRNFSeWS.class;
		else if (tableName.equals(MLBRNFSLot.Table_Name))
			return MLBRNFSLot.class;
		else if (tableName.equals(MLBRNFSLotLine.Table_Name))
			return MLBRNFSLotLine.class;

		return null;
	}

	@Override
	public PO getPO(String tableName, int Record_ID, String trxName) {
		if (tableName.equals(MLBRNFS.Table_Name))
			return new MLBRNFS(Env.getCtx(), Record_ID, trxName);
		else if (tableName.equals(MLBRNFSTax.Table_Name))
			return new MLBRNFSTax(Env.getCtx(), Record_ID, trxName);
		else if (tableName.equals(MLBRDocLineDetails.Table_Name))
			return new MLBRDocLineDetailsNFS(Env.getCtx(), Record_ID, trxName);
		else if (tableName.equals(MLBRNFSConfig.Table_Name))
			return new MLBRNFSConfig(Env.getCtx(), Record_ID, trxName);
		else if (tableName.equals(MLBRNFSeWS.Table_Name))
			return new MLBRNFSeWS(Env.getCtx(), Record_ID, trxName);
		else if (tableName.equals(MLBRNFSLot.Table_Name))
			return new MLBRNFSLot(Env.getCtx(), Record_ID, trxName);
		else if (tableName.equals(MLBRNFSLotLine.Table_Name))
			return new MLBRNFSLotLine(Env.getCtx(), Record_ID, trxName);

		return null;
	}

	@Override
	public PO getPO(String tableName, ResultSet rs, String trxName) {
		if (tableName.equals(MLBRNFS.Table_Name))
			return new MLBRNFS(Env.getCtx(), rs, trxName);
		else if (tableName.equals(MLBRNFSTax.Table_Name))
			return new MLBRNFSTax(Env.getCtx(), rs, trxName);
		else if (tableName.equals(MLBRDocLineDetails.Table_Name))
			return new MLBRDocLineDetailsNFS(Env.getCtx(), rs, trxName);
		else if (tableName.equals(MLBRNFSConfig.Table_Name))
			return new MLBRNFSConfig(Env.getCtx(), rs, trxName);
		else if (tableName.equals(MLBRNFSeWS.Table_Name))
			return new MLBRNFSeWS(Env.getCtx(), rs, trxName);
		else if (tableName.equals(MLBRNFSLot.Table_Name))
			return new MLBRNFSLot(Env.getCtx(), rs, trxName);
		else if (tableName.equals(MLBRNFSLotLine.Table_Name))
			return new MLBRNFSLotLine(Env.getCtx(), rs, trxName);
		return null;
	}

}
