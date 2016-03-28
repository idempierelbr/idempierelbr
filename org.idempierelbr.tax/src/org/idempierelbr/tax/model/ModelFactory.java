package org.idempierelbr.tax.model;

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
		if (tableName.equals(X_LBR_LegalMessage.Table_Name)) // Model X_LBR_LegalMessage
			return X_LBR_LegalMessage.class;
		else if (tableName.equals(X_LBR_TaxGroup.Table_Name)) // Model X_LBR_TaxGroup
			return X_LBR_TaxGroup.class;
		else if (tableName.equals(X_LBR_FiscalGroup_Product.Table_Name)) // Model X_LBR_FiscalGroup_Product
			return X_LBR_FiscalGroup_Product.class;
		else if (tableName.equals(X_LBR_FiscalGroup_BPartner.Table_Name)) // Model X_LBR_FiscalGroup_BPartner
			return X_LBR_FiscalGroup_BPartner.class;
		else if (tableName.equals(X_LBR_ProductCategory.Table_Name)) // Model X_LBR_ProductCategory
			return X_LBR_ProductCategory.class;
		else if (tableName.equals(X_LBR_BPartnerCategory.Table_Name)) // Model X_LBR_BPartnerCategory
			return X_LBR_BPartnerCategory.class;
		else if (tableName.equals(MLBRTaxName.Table_Name)) // Model MLBRTaxName
			return MLBRTaxName.class;
		else if (tableName.equals(MLBRFormula.Table_Name)) // Model MLBRFormula
			return MLBRFormula.class;
		else if (tableName.equals(MLBRTaxFormula.Table_Name)) // Model MLBRTaxFormula
			return MLBRTaxFormula.class;
		else if (tableName.equals(X_LBR_TaxStatus.Table_Name)) // Model X_LBR_TaxStatus
			return X_LBR_TaxStatus.class;
		else if (tableName.equals(X_LBR_TaxBaseType.Table_Name)) // Model X_LBR_TaxBaseType
			return X_LBR_TaxBaseType.class;
		else if (tableName.equals(MLBRTax.Table_Name)) // Model MLBRTax
			return MLBRTax.class;
		else if (tableName.equals(MLBRTaxLine.Table_Name)) // Model MLBRTaxLine
			return MLBRTaxLine.class;
		else if (tableName.equals(X_LBR_NCMTax.Table_Name)) // Model X_LBR_NCMTax
			return X_LBR_NCMTax.class;
		else if (tableName.equals(MLBRICMSMatrix.Table_Name)) // Model MLBRICMSMatrix
			return MLBRICMSMatrix.class;
		else if (tableName.equals(MLBRISSMatrix.Table_Name)) // Model MLBRISSMatrix
			return MLBRISSMatrix.class;
		else if (tableName.equals(MLBRTaxConfiguration.Table_Name)) // Model MLBRTaxConfiguration
			return MLBRTaxConfiguration.class;
		else if (tableName.equals(X_LBR_TaxConfig_BPartner.Table_Name)) // Model X_LBR_TaxConfig_BPartner
			return X_LBR_TaxConfig_BPartner.class;
		else if (tableName.equals(X_LBR_TaxConfig_BPGroup.Table_Name)) // Model X_LBR_TaxConfig_BPGroup
			return X_LBR_TaxConfig_BPGroup.class;
		else if (tableName.equals(X_LBR_TaxConfig_Region.Table_Name)) // Model X_LBR_TaxConfig_Region
			return X_LBR_TaxConfig_Region.class;
		else if (tableName.equals(X_LBR_TaxConfig_Product.Table_Name)) // Model X_LBR_TaxConfig_Product
			return X_LBR_TaxConfig_Product.class;
		else if (tableName.equals(X_LBR_TaxConfig_ProductGroup.Table_Name)) // Model X_LBR_TaxConfig_ProductGroup
			return X_LBR_TaxConfig_ProductGroup.class;
		else if (tableName.equals(MLBRTaxDefinition.Table_Name)) // Model MLBRTaxDefinition
			return MLBRTaxDefinition.class;
		else if (tableName.equals(MLBRCFOP.Table_Name)) // Model MLBRCFOP
			return MLBRCFOP.class;
		else if (tableName.equals(X_LBR_CFOPLine.Table_Name)) // Model X_LBR_CFOPLine
			return X_LBR_CFOPLine.class;
		else if (tableName.equals(MLBRDocLineDetailsTax.Table_Name)) // Model MLBRDocLineDetails
			return MLBRDocLineDetailsTax.class;
		else if (tableName.equals(MLBRDocLineICMS.Table_Name)) // Model MLBRDocLineICMS
			return MLBRDocLineICMS.class;
		else if (tableName.equals(MLBRDocLineIPI.Table_Name)) // Model MLBRDocLineIPI
			return MLBRDocLineIPI.class;
		else if (tableName.equals(MLBRDocLinePIS.Table_Name)) // Model MLBRDocLinePIS
			return MLBRDocLinePIS.class;
		else if (tableName.equals(MLBRDocLineCOFINS.Table_Name)) // Model MLBRDocLineCOFINS
			return MLBRDocLineCOFINS.class;
		else if (tableName.equals(MLBRDocLineImportTax.Table_Name)) // Model MLBRDocLineImportTax
			return MLBRDocLineImportTax.class;
		else if (tableName.equals(MLBRDocLineISSQN.Table_Name)) // Model MLBRDocLineISSQN
			return MLBRDocLineISSQN.class;
		else if (tableName.equals(X_LBR_DI.Table_Name)) // Model MLBRDocLineISSQN
			return X_LBR_DI.class;
		else if (tableName.equals(X_LBR_DI_Addition.Table_Name)) // Model MLBRDocLineISSQN
			return X_LBR_DI_Addition.class;
		else if (tableName.equals(X_LBR_DI_AdditionProd.Table_Name)) // Model MLBRDocLineISSQN
			return X_LBR_DI_AdditionProd.class;
		else if (tableName.equals(MLBRCestNCMProd.Table_Name)) // Model MLBRDocLineISSQN
			return MLBRCestNCMProd.class;
		
		return null;
	}

	@Override
	public PO getPO(String tableName, int Record_ID, String trxName) {
		if (tableName.equals(X_LBR_LegalMessage.Table_Name)) // Model X_LBR_LegalMessage
			return new X_LBR_LegalMessage(Env.getCtx(), Record_ID, trxName);
		else if (tableName.equals(X_LBR_TaxGroup.Table_Name)) // Model X_LBR_TaxGroup
			return new X_LBR_TaxGroup(Env.getCtx(), Record_ID, trxName);
		else if (tableName.equals(X_LBR_FiscalGroup_Product.Table_Name)) // Model X_LBR_FiscalGroup_Product
			return new X_LBR_FiscalGroup_Product(Env.getCtx(), Record_ID, trxName);
		else if (tableName.equals(X_LBR_FiscalGroup_BPartner.Table_Name)) // Model X_LBR_FiscalGroup_BPartner
			return new X_LBR_FiscalGroup_BPartner(Env.getCtx(), Record_ID, trxName);
		else if (tableName.equals(X_LBR_ProductCategory.Table_Name)) // Model X_LBR_ProductCategory
			return new X_LBR_ProductCategory(Env.getCtx(), Record_ID, trxName);
		else if (tableName.equals(X_LBR_BPartnerCategory.Table_Name)) // Model X_LBR_BPartnerCategory
			return new X_LBR_BPartnerCategory(Env.getCtx(), Record_ID, trxName);
		else if (tableName.equals(MLBRTaxName.Table_Name)) // Model MLBRTaxName
			return new MLBRTaxName(Env.getCtx(), Record_ID, trxName);
		else if (tableName.equals(MLBRFormula.Table_Name)) // Model MLBRFormula
			return new MLBRFormula(Env.getCtx(), Record_ID, trxName);
		else if (tableName.equals(MLBRTaxFormula.Table_Name)) // Model MLBRTaxFormula
			return new MLBRTaxFormula(Env.getCtx(), Record_ID, trxName);
		else if (tableName.equals(X_LBR_TaxStatus.Table_Name)) // Model X_LBR_TaxStatus
			return new X_LBR_TaxStatus(Env.getCtx(), Record_ID, trxName);
		else if (tableName.equals(X_LBR_TaxBaseType.Table_Name)) // Model X_LBR_TaxBaseType
			return new X_LBR_TaxBaseType(Env.getCtx(), Record_ID, trxName);
		else if (tableName.equals(MLBRTax.Table_Name)) // Model MLBRTax
			return new MLBRTax(Env.getCtx(), Record_ID, trxName);
		else if (tableName.equals(MLBRTaxLine.Table_Name)) // Model MLBRTaxLine
			return new MLBRTaxLine(Env.getCtx(), Record_ID, trxName);
		else if (tableName.equals(X_LBR_NCMTax.Table_Name)) // Model X_LBR_NCMTax
			return new X_LBR_NCMTax(Env.getCtx(), Record_ID, trxName);
		else if (tableName.equals(MLBRICMSMatrix.Table_Name)) // Model MLBRICMSMatrix
			return new MLBRICMSMatrix(Env.getCtx(), Record_ID, trxName);
		else if (tableName.equals(MLBRISSMatrix.Table_Name)) // Model MLBRISSMatrix
			return new MLBRISSMatrix(Env.getCtx(), Record_ID, trxName);
		else if (tableName.equals(MLBRTaxConfiguration.Table_Name)) // Model MLBRTaxConfiguration
			return new MLBRTaxConfiguration(Env.getCtx(), Record_ID, trxName);
		else if (tableName.equals(X_LBR_TaxConfig_BPartner.Table_Name)) // Model X_LBR_TaxConfig_BPartner
			return new X_LBR_TaxConfig_BPartner(Env.getCtx(), Record_ID, trxName);
		else if (tableName.equals(X_LBR_TaxConfig_BPGroup.Table_Name)) // Model X_LBR_TaxConfig_BPGroup
			return new X_LBR_TaxConfig_BPGroup(Env.getCtx(), Record_ID, trxName);
		else if (tableName.equals(X_LBR_TaxConfig_Region.Table_Name)) // Model X_LBR_TaxConfig_Region
			return new X_LBR_TaxConfig_Region(Env.getCtx(), Record_ID, trxName);
		else if (tableName.equals(X_LBR_TaxConfig_Product.Table_Name)) // Model X_LBR_TaxConfig_Product
			return new X_LBR_TaxConfig_Product(Env.getCtx(), Record_ID, trxName);
		else if (tableName.equals(X_LBR_TaxConfig_ProductGroup.Table_Name)) // Model X_LBR_TaxConfig_ProductGroup
			return new X_LBR_TaxConfig_ProductGroup(Env.getCtx(), Record_ID, trxName);
		else if (tableName.equals(MLBRTaxDefinition.Table_Name)) // Model MLBRTaxDefinition
			return new MLBRTaxDefinition(Env.getCtx(), Record_ID, trxName);
		else if (tableName.equals(MLBRCFOP.Table_Name)) // Model MLBRCFOP
			return new MLBRCFOP(Env.getCtx(), Record_ID, trxName);
		else if (tableName.equals(X_LBR_CFOPLine.Table_Name)) // Model X_LBR_CFOPLine
			return new X_LBR_CFOPLine(Env.getCtx(), Record_ID, trxName);
		else if (tableName.equals(MLBRDocLineDetailsTax.Table_Name)) // Model MLBRDocLineDetails
			return new MLBRDocLineDetailsTax(Env.getCtx(), Record_ID, trxName);
		else if (tableName.equals(MLBRDocLineICMS.Table_Name)) // Model MLBRDocLineICMS
			return new MLBRDocLineICMS(Env.getCtx(), Record_ID, trxName);
		else if (tableName.equals(MLBRDocLineIPI.Table_Name)) // Model MLBRDocLineIPI
			return new MLBRDocLineIPI(Env.getCtx(), Record_ID, trxName);
		else if (tableName.equals(MLBRDocLinePIS.Table_Name)) // Model MLBRDocLinePIS
			return new MLBRDocLinePIS(Env.getCtx(), Record_ID, trxName);
		else if (tableName.equals(MLBRDocLineCOFINS.Table_Name)) // Model MLBRDocLineCOFINS
			return new MLBRDocLineCOFINS(Env.getCtx(), Record_ID, trxName);
		else if (tableName.equals(MLBRDocLineImportTax.Table_Name)) // Model MLBRDocLineImportTax
			return new MLBRDocLineImportTax(Env.getCtx(), Record_ID, trxName);
		else if (tableName.equals(MLBRDocLineISSQN.Table_Name)) // Model MLBRDocLineISSQN
			return new MLBRDocLineISSQN(Env.getCtx(), Record_ID, trxName);
		else if (tableName.equals(X_LBR_DI.Table_Name)) // Model MLBRDocLineISSQN
			return new X_LBR_DI(Env.getCtx(), Record_ID, trxName);
		else if (tableName.equals(X_LBR_DI_Addition.Table_Name)) // Model MLBRDocLineISSQN
			return new X_LBR_DI_Addition(Env.getCtx(), Record_ID, trxName);
		else if (tableName.equals(X_LBR_DI_AdditionProd.Table_Name)) // Model MLBRDocLineISSQN
			return new X_LBR_DI_AdditionProd(Env.getCtx(), Record_ID, trxName);
		else if (tableName.equals(MLBRCestNCMProd.Table_Name)) // Model MLBRDocLineISSQN
			return new MLBRCestNCMProd(Env.getCtx(), Record_ID, trxName);
		
		return null;
	}

	@Override
	public PO getPO(String tableName, ResultSet rs, String trxName) {
		if (tableName.equals(X_LBR_LegalMessage.Table_Name)) // Model X_LBR_LegalMessage
			return new X_LBR_LegalMessage(Env.getCtx(), rs, trxName);
		else if (tableName.equals(X_LBR_TaxGroup.Table_Name)) // Model X_LBR_TaxGroup
			return new X_LBR_TaxGroup(Env.getCtx(), rs, trxName);
		else if (tableName.equals(X_LBR_FiscalGroup_Product.Table_Name)) // Model X_LBR_FiscalGroup_Product
			return new X_LBR_FiscalGroup_Product(Env.getCtx(), rs, trxName);
		else if (tableName.equals(X_LBR_FiscalGroup_BPartner.Table_Name)) // Model X_LBR_FiscalGroup_BPartner
			return new X_LBR_FiscalGroup_BPartner(Env.getCtx(), rs, trxName);
		else if (tableName.equals(X_LBR_ProductCategory.Table_Name)) // Model X_LBR_ProductCategory
			return new X_LBR_ProductCategory(Env.getCtx(), rs, trxName);
		else if (tableName.equals(X_LBR_BPartnerCategory.Table_Name)) // Model X_LBR_BPartnerCategory
			return new X_LBR_BPartnerCategory(Env.getCtx(), rs, trxName);
		else if (tableName.equals(MLBRTaxName.Table_Name)) // Model MLBRTaxName
			return new MLBRTaxName(Env.getCtx(), rs, trxName);
		else if (tableName.equals(MLBRFormula.Table_Name)) // Model MLBRFormula
			return new MLBRFormula(Env.getCtx(), rs, trxName);
		else if (tableName.equals(MLBRTaxFormula.Table_Name)) // Model MLBRTaxFormula
			return new MLBRTaxFormula(Env.getCtx(), rs, trxName);
		else if (tableName.equals(X_LBR_TaxStatus.Table_Name)) // Model X_LBR_TaxStatus
			return new X_LBR_TaxStatus(Env.getCtx(), rs, trxName);
		else if (tableName.equals(X_LBR_TaxBaseType.Table_Name)) // Model X_LBR_TaxBaseType
			return new X_LBR_TaxBaseType(Env.getCtx(), rs, trxName);
		else if (tableName.equals(MLBRTax.Table_Name)) // Model MLBRTax
			return new MLBRTax(Env.getCtx(), rs, trxName);
		else if (tableName.equals(MLBRTaxLine.Table_Name)) // Model MLBRTaxLine
			return new MLBRTaxLine(Env.getCtx(), rs, trxName);
		else if (tableName.equals(X_LBR_NCMTax.Table_Name)) // Model X_LBR_NCMTax
			return new X_LBR_NCMTax(Env.getCtx(), rs, trxName);
		else if (tableName.equals(MLBRICMSMatrix.Table_Name)) // MLBRICMSMatrix
			return new MLBRICMSMatrix(Env.getCtx(), rs, trxName);
		else if (tableName.equals(MLBRISSMatrix.Table_Name)) // MLBRISSMatrix
			return new MLBRISSMatrix(Env.getCtx(), rs, trxName);
		else if (tableName.equals(MLBRTaxConfiguration.Table_Name)) // MLBRTaxConfiguration
			return new MLBRTaxConfiguration(Env.getCtx(), rs, trxName);
		else if (tableName.equals(X_LBR_TaxConfig_BPartner.Table_Name)) // X_LBR_TaxConfig_BPartner
			return new X_LBR_TaxConfig_BPartner(Env.getCtx(), rs, trxName);
		else if (tableName.equals(X_LBR_TaxConfig_BPGroup.Table_Name)) // X_LBR_TaxConfig_BPGroup
			return new X_LBR_TaxConfig_BPGroup(Env.getCtx(), rs, trxName);
		else if (tableName.equals(X_LBR_TaxConfig_Region.Table_Name)) // X_LBR_TaxConfig_Region
			return new X_LBR_TaxConfig_Region(Env.getCtx(), rs, trxName);
		else if (tableName.equals(X_LBR_TaxConfig_Product.Table_Name)) // X_LBR_TaxConfig_Product
			return new X_LBR_TaxConfig_Product(Env.getCtx(), rs, trxName);
		else if (tableName.equals(X_LBR_TaxConfig_ProductGroup.Table_Name)) // X_LBR_TaxConfig_ProductGroup
			return new X_LBR_TaxConfig_ProductGroup(Env.getCtx(), rs, trxName);
		else if (tableName.equals(MLBRTaxDefinition.Table_Name)) // MLBRTaxDefinition
			return new MLBRTaxDefinition(Env.getCtx(), rs, trxName);
		else if (tableName.equals(MLBRCFOP.Table_Name)) // MLBRCFOP
			return new MLBRCFOP(Env.getCtx(), rs, trxName);
		else if (tableName.equals(X_LBR_CFOPLine.Table_Name)) // X_LBR_CFOPLine
			return new X_LBR_CFOPLine(Env.getCtx(), rs, trxName);
		else if (tableName.equals(MLBRDocLineDetailsTax.Table_Name)) // MLBRDocLineDetails
			return new MLBRDocLineDetailsTax(Env.getCtx(), rs, trxName);
		else if (tableName.equals(MLBRDocLineICMS.Table_Name)) // MLBRDocLineICMS
			return new MLBRDocLineICMS(Env.getCtx(), rs, trxName);
		else if (tableName.equals(MLBRDocLineIPI.Table_Name)) // MLBRDocLineIPI
			return new MLBRDocLineIPI(Env.getCtx(), rs, trxName);
		else if (tableName.equals(MLBRDocLinePIS.Table_Name)) // MLBRDocLinePIS
			return new MLBRDocLinePIS(Env.getCtx(), rs, trxName);
		else if (tableName.equals(MLBRDocLineCOFINS.Table_Name)) // MLBRDocLineCOFINS
			return new MLBRDocLineCOFINS(Env.getCtx(), rs, trxName);
		else if (tableName.equals(MLBRDocLineImportTax.Table_Name)) // MLBRDocLineImportTax
			return new MLBRDocLineImportTax(Env.getCtx(), rs, trxName);
		else if (tableName.equals(MLBRDocLineISSQN.Table_Name)) // MLBRDocLineISSQN
			return new MLBRDocLineISSQN(Env.getCtx(), rs, trxName);
		else if (tableName.equals(X_LBR_DI.Table_Name)) // Model MLBRDocLineISSQN
			return new X_LBR_DI(Env.getCtx(), rs, trxName);
		else if (tableName.equals(X_LBR_DI_Addition.Table_Name)) // Model MLBRDocLineISSQN
			return new X_LBR_DI_Addition(Env.getCtx(), rs, trxName);
		else if (tableName.equals(X_LBR_DI_AdditionProd.Table_Name)) // Model MLBRDocLineISSQN
			return new X_LBR_DI_AdditionProd(Env.getCtx(), rs, trxName);
		else if (tableName.equals(MLBRCestNCMProd.Table_Name)) // Model MLBRCestNCMProd
			return new MLBRCestNCMProd(Env.getCtx(), rs, trxName);
		
		return null;
	}

}
