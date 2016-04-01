package org.idempierelbr.sped.model;

import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.List;
import java.util.Properties;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.MTable;
import org.compiere.model.Query;
import org.compiere.util.Env;

public class MLBRFiscalDoc extends X_LBR_FiscalDoc {

	/**
	 * 
	 */
	private static final long serialVersionUID = 7386630107579831372L;

	public MLBRFiscalDoc(Properties ctx, int LBR_FiscalDoc_ID, String trxName) {
		super(ctx, LBR_FiscalDoc_ID, trxName);
		// TODO Auto-generated constructor stub
	}

	public MLBRFiscalDoc(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
		// TODO Auto-generated constructor stub
	}

	
	public static MLBRFiscalDoc get (Properties ctx, int C_Invoice_ID, String trxName) throws Exception
	{
		//	Client
		String whereClause = " AD_Client_ID = ? AND isActive='Y'";
		
		//	Nota Fiscal
		if (C_Invoice_ID > 0)
		{
			whereClause += " AND C_Invoice_ID=" + C_Invoice_ID; 
		}

		// 	Query
		MTable table = MTable.get(ctx, MLBRFiscalDoc.Table_Name);
		Query q = new Query(ctx, table, whereClause.toString(), trxName);
		
		// 	Parametros
		q.setParameters(new Object[] { Env.getAD_Client_ID(ctx) });

		// 	Convert to array
		List<MLBRFiscalDoc> list = q.list();
		
		if (list.size() > 1) {
			throw new AdempiereException("Fatura possui mais que um documento fiscal");
		}
		
		if (list.size() == 0) {
			return null;
		}

		return list.get(0);
		
	}
}
