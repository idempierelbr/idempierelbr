package org.idempierelbr.nfe.model;

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
		if (tableName.equals(MLBRNotaFiscal.Table_Name)) // Model MLBRNotaFiscal
			return MLBRNotaFiscal.class;
		else if (tableName.equals(MLBRNotaFiscalLine.Table_Name)) // Model MLBRNotaFiscalLine
			return MLBRNotaFiscalLine.class;
		else if (tableName.equals(MLBRNotaFiscalTax.Table_Name)) // Model MLBRNotaFiscalTax
			return MLBRNotaFiscalTax.class;
		else if (tableName.equals(MLBRNotaFiscalTransp.Table_Name)) // Model MLBRNotaFiscalTransp
			return MLBRNotaFiscalTransp.class;
		else if (tableName.equals(X_LBR_NotaFiscalTrailer.Table_Name)) // Model X_LBR_NotaFiscalTrailer
			return X_LBR_NotaFiscalTrailer.class;
		else if (tableName.equals(MLBRNotaFiscalPackage.Table_Name)) // Model MLBRNotaFiscalPackage
			return MLBRNotaFiscalPackage.class;
		else if (tableName.equals(MLBRNotaFiscalPay.Table_Name)) // Model MLBRNotaFiscalPay
			return MLBRNotaFiscalPay.class;
		else if (tableName.equals(MLBRNotaFiscalPaySched.Table_Name)) // Model MLBRNotaFiscalPaySched
			return MLBRNotaFiscalPaySched.class;
		else if (tableName.equals(X_LBR_NotaFiscalNote.Table_Name)) // Model X_LBR_NotaFiscalNote
			return X_LBR_NotaFiscalNote.class;
		else if (tableName.equals(X_LBR_NotaFiscalProc.Table_Name)) // Model X_LBR_NotaFiscalProc
			return X_LBR_NotaFiscalProc.class;
		else if (tableName.equals(MLBRNotaFiscalDocRef.Table_Name)) // Model MLBRNotaFiscalDocRef
			return MLBRNotaFiscalDocRef.class;
		else if (tableName.equals(MLBRDocLineDetailsNfe.Table_Name)) // Model MLBRDocLineDetails
			return MLBRDocLineDetailsNfe.class;
		else if (tableName.equals(MLBRDigitalCertificate.Table_Name)) // Model MLBRDigitalCertificate
			return MLBRDigitalCertificate.class;
		else if (tableName.equals(MLBRNFeWebService.Table_Name)) // Model MLBRNFeWebService
			return MLBRNFeWebService.class;
		else if (tableName.equals(MLBRNotaFiscalLot.Table_Name)) // Model MLBRNotaFiscalLot
			return MLBRNotaFiscalLot.class;
		else if (tableName.equals(MLBRNotaFiscalLotLine.Table_Name)) // Model MLBRNotaFiscalLotLine
			return MLBRNotaFiscalLotLine.class;
		
		return null;
	}

	@Override
	public PO getPO(String tableName, int Record_ID, String trxName) {
		if (tableName.equals(MLBRNotaFiscal.Table_Name)) // Model MLBRNotaFiscal
			return new MLBRNotaFiscal(Env.getCtx(), Record_ID, trxName);
		else if (tableName.equals(MLBRNotaFiscalLine.Table_Name)) // Model MLBRNotaFiscalLine
			return new MLBRNotaFiscalLine(Env.getCtx(), Record_ID, trxName);
		else if (tableName.equals(MLBRNotaFiscalTax.Table_Name)) // Model MLBRNotaFiscalTax
			return new MLBRNotaFiscalTax(Env.getCtx(), Record_ID, trxName);
		else if (tableName.equals(MLBRNotaFiscalTransp.Table_Name)) // Model MLBRNotaFiscalTransp
			return new MLBRNotaFiscalTransp(Env.getCtx(), Record_ID, trxName);
		else if (tableName.equals(X_LBR_NotaFiscalTrailer.Table_Name)) // Model X_LBR_NotaFiscalTrailer
			return new X_LBR_NotaFiscalTrailer(Env.getCtx(), Record_ID, trxName);
		else if (tableName.equals(MLBRNotaFiscalPackage.Table_Name)) // Model MLBRNotaFiscalPackage
			return new MLBRNotaFiscalPackage(Env.getCtx(), Record_ID, trxName);
		else if (tableName.equals(MLBRNotaFiscalPay.Table_Name)) // Model MLBRNotaFiscalPay
			return new MLBRNotaFiscalPay(Env.getCtx(), Record_ID, trxName);
		else if (tableName.equals(MLBRNotaFiscalPaySched.Table_Name)) // Model MLBRNotaFiscalPaySched
			return new MLBRNotaFiscalPaySched(Env.getCtx(), Record_ID, trxName);
		else if (tableName.equals(X_LBR_NotaFiscalNote.Table_Name)) // Model X_LBR_NotaFiscalNote
			return new X_LBR_NotaFiscalNote(Env.getCtx(), Record_ID, trxName);
		else if (tableName.equals(X_LBR_NotaFiscalProc.Table_Name)) // Model X_LBR_NotaFiscalProc
			return new X_LBR_NotaFiscalProc(Env.getCtx(), Record_ID, trxName);
		else if (tableName.equals(MLBRNotaFiscalDocRef.Table_Name)) // Model MLBRNotaFiscalDocRef
			return new MLBRNotaFiscalDocRef(Env.getCtx(), Record_ID, trxName);
		else if (tableName.equals(MLBRDocLineDetailsNfe.Table_Name)) // Model MLBRDocLineDetails
			return new MLBRDocLineDetailsNfe(Env.getCtx(), Record_ID, trxName);
		else if (tableName.equals(MLBRDigitalCertificate.Table_Name)) // Model MLBRDigitalCertificate
			return new MLBRDigitalCertificate(Env.getCtx(), Record_ID, trxName);
		else if (tableName.equals(MLBRNFeWebService.Table_Name)) // Model MLBRNFeWebService
			return new MLBRNFeWebService(Env.getCtx(), Record_ID, trxName);
		else if (tableName.equals(MLBRNotaFiscalLot.Table_Name)) // Model MLBRNotaFiscalLot
			return new MLBRNotaFiscalLot(Env.getCtx(), Record_ID, trxName);
		else if (tableName.equals(MLBRNotaFiscalLotLine.Table_Name)) // Model MLBRNotaFiscalLotLine
			return new MLBRNotaFiscalLotLine(Env.getCtx(), Record_ID, trxName);
		
		return null;
	}

	@Override
	public PO getPO(String tableName, ResultSet rs, String trxName) {
		if (tableName.equals(MLBRNotaFiscal.Table_Name)) // Model MLBRNotaFiscal
			return new MLBRNotaFiscal(Env.getCtx(), rs, trxName);
		else if (tableName.equals(MLBRNotaFiscalLine.Table_Name)) // Model MLBRNotaFiscalLine
			return new MLBRNotaFiscalLine(Env.getCtx(), rs, trxName);
		else if (tableName.equals(MLBRNotaFiscalTax.Table_Name)) // Model MLBRNotaFiscalTax
			return new MLBRNotaFiscalTax(Env.getCtx(), rs, trxName);
		else if (tableName.equals(MLBRNotaFiscalTransp.Table_Name)) // Model MLBRNotaFiscalTransp
			return new MLBRNotaFiscalTransp(Env.getCtx(), rs, trxName);
		else if (tableName.equals(X_LBR_NotaFiscalTrailer.Table_Name)) // Model X_LBR_NotaFiscalTrailer
			return new X_LBR_NotaFiscalTrailer(Env.getCtx(), rs, trxName);
		else if (tableName.equals(MLBRNotaFiscalPackage.Table_Name)) // Model MLBRNotaFiscalPackage
			return new MLBRNotaFiscalPackage(Env.getCtx(), rs, trxName);
		else if (tableName.equals(MLBRNotaFiscalPay.Table_Name)) // Model MLBRNotaFiscalPay
			return new MLBRNotaFiscalPay(Env.getCtx(), rs, trxName);
		else if (tableName.equals(MLBRNotaFiscalPaySched.Table_Name)) // Model MLBRNotaFiscalPaySched
			return new MLBRNotaFiscalPaySched(Env.getCtx(), rs, trxName);
		else if (tableName.equals(X_LBR_NotaFiscalNote.Table_Name)) // Model X_LBR_NotaFiscalNote
			return new X_LBR_NotaFiscalNote(Env.getCtx(), rs, trxName);
		else if (tableName.equals(X_LBR_NotaFiscalProc.Table_Name)) // Model X_LBR_NotaFiscalProc
			return new X_LBR_NotaFiscalProc(Env.getCtx(), rs, trxName);
		else if (tableName.equals(MLBRNotaFiscalDocRef.Table_Name)) // Model MLBRNotaFiscalDocRef
			return new MLBRNotaFiscalDocRef(Env.getCtx(), rs, trxName);
		else if (tableName.equals(MLBRDocLineDetailsNfe.Table_Name)) // MLBRDocLineDetails
			return new MLBRDocLineDetailsNfe(Env.getCtx(), rs, trxName);
		else if (tableName.equals(MLBRDigitalCertificate.Table_Name)) // MLBRDigitalCertificate
			return new MLBRDigitalCertificate(Env.getCtx(), rs, trxName);
		else if (tableName.equals(MLBRNFeWebService.Table_Name)) // MLBRNFeWebService
			return new MLBRNFeWebService(Env.getCtx(), rs, trxName);
		else if (tableName.equals(MLBRNotaFiscalLot.Table_Name)) // MLBRNotaFiscalLot
			return new MLBRNotaFiscalLot(Env.getCtx(), rs, trxName);
		else if (tableName.equals(MLBRNotaFiscalLotLine.Table_Name)) // MLBRNotaFiscalLotLine
			return new MLBRNotaFiscalLotLine(Env.getCtx(), rs, trxName);
		
		return null;
	}

}
