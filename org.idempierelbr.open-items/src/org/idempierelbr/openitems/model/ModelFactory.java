package org.idempierelbr.openitems.model;

import java.sql.ResultSet;

import org.adempiere.base.IModelFactory;
import org.compiere.model.PO;
import org.compiere.util.Env;

/**
 * Esta classe é uma implementação da model factory.
 * Ela fornece uma forma centralizada para o mecanismo de models.
 *
 * @author Alan <alan.lesc1@gmail.com>
 */
public class ModelFactory implements IModelFactory {

	@Override
	public Class<?> getClass(String tableName) {
		if (tableName.equals(MLBRBankAccountConvenio.Table_Name)) // Model MLBRBankAccountConvenio
			return MLBRBankAccountConvenio.class;
		else if (tableName.equals(MLBRBankAccountCarteira.Table_Name)) // Model MLBRBankAccountCarteira
			return MLBRBankAccountCarteira.class;
		else if (tableName.equals(MLBRCollectionDefault.Table_Name)) // Model MLBRCollectionDefault
			return MLBRCollectionDefault.class;
		else if (tableName.equals(MLBRBoleto.Table_Name)) // Model MLBRBoleto
			return MLBRBoleto.class;
		else if (tableName.equals(MLBRBoletoDetails.Table_Name)) // Model MLBRBoletoDetails
			return MLBRBoletoDetails.class;
		else if (tableName.equals(MLBRBoletoStaticData.Table_Name)) // Model MLBRBoletoStaticData
			return MLBRBoletoStaticData.class;
		else if (tableName.equals(MLBRCobGrupoOcorrencia.Table_Name)) // Model MLBRCobGrupoOcorrencia
			return MLBRCobGrupoOcorrencia.class;
		else if (tableName.equals(MLBRCobOcorrencia.Table_Name)) // Model MLBRCobOcorrencia
			return MLBRCobOcorrencia.class;
		else if (tableName.equals(MLBRCobMovimento.Table_Name)) // Model MLBRCobMovimento
			return MLBRCobMovimento.class;
		else if (tableName.equals(MLBRBoletoMovement.Table_Name)) // Model MLBRBoletoMovement
			return MLBRBoletoMovement.class;
		
		return null;
	}

	@Override
	public PO getPO(String tableName, int Record_ID, String trxName) {
		if (tableName.equals(MLBRBankAccountConvenio.Table_Name)) // Model MLBRBankAccountConvenio
			return new MLBRBankAccountConvenio(Env.getCtx(), Record_ID, trxName);
		else if (tableName.equals(MLBRBankAccountCarteira.Table_Name)) // Model MLBRBankAccountCarteira
			return new MLBRBankAccountCarteira(Env.getCtx(), Record_ID, trxName);
		else if (tableName.equals(MLBRCollectionDefault.Table_Name)) // Model MLBRCollectionDefault
			return new MLBRCollectionDefault(Env.getCtx(), Record_ID, trxName);
		else if (tableName.equals(MLBRBoleto.Table_Name)) // Model MLBRBoleto
			return new MLBRBoleto(Env.getCtx(), Record_ID, trxName);
		else if (tableName.equals(MLBRBoletoDetails.Table_Name)) // Model MLBRBoletoDetails
			return new MLBRBoletoDetails(Env.getCtx(), Record_ID, trxName);
		else if (tableName.equals(MLBRBoletoStaticData.Table_Name)) // Model MLBRBoletoStaticData
			return new MLBRBoletoStaticData(Env.getCtx(), Record_ID, trxName);
		else if (tableName.equals(MLBRCobGrupoOcorrencia.Table_Name)) // Model MLBRCobGrupoOcorrencia
			return new MLBRCobGrupoOcorrencia(Env.getCtx(), Record_ID, trxName);
		else if (tableName.equals(MLBRCobOcorrencia.Table_Name)) // Model MLBRCobOcorrencia
			return new MLBRCobOcorrencia(Env.getCtx(), Record_ID, trxName);
		else if (tableName.equals(MLBRCobMovimento.Table_Name)) // Model MLBRCobMovimento
			return new MLBRCobMovimento(Env.getCtx(), Record_ID, trxName);
		else if (tableName.equals(MLBRBoletoMovement.Table_Name)) // Model MLBRBoletoMovement
			return new MLBRBoletoMovement(Env.getCtx(), Record_ID, trxName);
		
		return null;
	}

	@Override
	public PO getPO(String tableName, ResultSet rs, String trxName) {
		if (tableName.equals(MLBRBankAccountConvenio.Table_Name)) // MLBRBankAccountConvenio
			return new MLBRBankAccountConvenio(Env.getCtx(), rs, trxName);
		else if (tableName.equals(MLBRBankAccountCarteira.Table_Name)) // MLBRBankAccountCarteira
			return new MLBRBankAccountCarteira(Env.getCtx(), rs, trxName);
		else if (tableName.equals(MLBRCollectionDefault.Table_Name)) // MLBRCollectionDefault
			return new MLBRCollectionDefault(Env.getCtx(), rs, trxName);
		else if (tableName.equals(MLBRBoleto.Table_Name)) // MLBRBoleto
			return new MLBRBoleto(Env.getCtx(), rs, trxName);
		else if (tableName.equals(MLBRBoletoDetails.Table_Name)) // MLBRBoletoDetails
			return new MLBRBoletoDetails(Env.getCtx(), rs, trxName);
		else if (tableName.equals(MLBRBoletoStaticData.Table_Name)) // MLBRBoletoStaticData
			return new MLBRBoletoStaticData(Env.getCtx(), rs, trxName);
		else if (tableName.equals(MLBRCobGrupoOcorrencia.Table_Name)) // MLBRCobGrupoOcorrencia
			return new MLBRCobGrupoOcorrencia(Env.getCtx(), rs, trxName);
		else if (tableName.equals(MLBRCobOcorrencia.Table_Name)) // MLBRCobOcorrencia
			return new MLBRCobOcorrencia(Env.getCtx(), rs, trxName);
		else if (tableName.equals(MLBRCobMovimento.Table_Name)) // MLBRCobMovimento
			return new MLBRCobMovimento(Env.getCtx(), rs, trxName);
		else if (tableName.equals(MLBRBoletoMovement.Table_Name)) // MLBRBoletoMovement
			return new MLBRBoletoMovement(Env.getCtx(), rs, trxName);
		
		return null;
	}

}
