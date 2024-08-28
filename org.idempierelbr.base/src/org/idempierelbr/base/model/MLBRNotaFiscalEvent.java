package org.idempierelbr.base.model;

import java.sql.ResultSet;
import java.util.List;
import java.util.Properties;
import java.util.logging.Level;

import org.compiere.model.MTable;
import org.compiere.model.Query;

public class MLBRNotaFiscalEvent extends X_LBR_NotaFiscalEvent {

	/**
	 * 
	 */
	private static final long serialVersionUID = -5008981170781809596L;
	
	public static final String INDIVIDUAL_CORRECAO_FILE_EXT = "-cce.xml";
	public static final String INDIVIDUAL_CANCELAMENTO_FILE_EXT = "-can.xml";
	public static final String RESPOSTA_FILE_EXT = "-pro-eve.xml";
	public static final String DISTRIBUICAO_FILE_EXT = "-procEventoNfe.xml";

	public MLBRNotaFiscalEvent(Properties ctx, int LBR_NotaFiscalEvent_ID,
			String trxName) {
		super(ctx, LBR_NotaFiscalEvent_ID, trxName);
	}

	public MLBRNotaFiscalEvent(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}
	
	/**
	 *  getLines
	 *  @return MNotaFiscalEventLine[] lines
	 */
	public MLBRNotaFiscalEventLine[] getLines()
	{
		MTable table = MTable.get (getCtx(), MLBRNotaFiscalEventLine.Table_Name);
		Query query =  new Query(getCtx(), table, "LBR_NotaFiscalEvent_ID=?", get_TrxName());
	 		  query.setParameters(new Object[]{getLBR_NotaFiscalEvent_ID()});
	 	//
	 	List<MLBRNotaFiscalEventLine> list = query.list();
	 	return list.toArray(new MLBRNotaFiscalEventLine[list.size()]);
	}	//	getLines
	
	protected boolean beforeDelete() {
		if (isLBR_LotSent()) {
			log.log(Level.SEVERE, "NF-e Event Lot had been sent to Sefaz, and thus can not be deleted");
			return false;
		}
		
		return true;
	}
}
