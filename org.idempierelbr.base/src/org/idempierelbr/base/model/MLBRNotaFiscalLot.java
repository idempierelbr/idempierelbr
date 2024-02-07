package org.idempierelbr.base.model;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
import java.util.logging.Level;

import org.compiere.model.MAttachment;
import org.compiere.model.MTable;
import org.compiere.model.Query;

public class MLBRNotaFiscalLot extends X_LBR_NotaFiscalLot {

	/**
	 * 
	 */
	private static final long serialVersionUID = 8204166675147122969L;
	
	public static final String PEDIDO_FILE_EXT = "-env-lot.xml";
	public static final String RESPOSTA_PEDIDO_FILE_EXT = "-rec.xml";
	public static final String CONSULTA_RECIBO_FILE_EXT = "-ped-rec.xml";
	public static final String RESPOSTA_RECIBO_FILE_EXT = "-proc-rec.xml";

	public MLBRNotaFiscalLot(Properties ctx, int LBR_NotaFiscalLot_ID,
			String trxName) {
		super(ctx, LBR_NotaFiscalLot_ID, trxName);
	}

	public MLBRNotaFiscalLot(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}
	
	/**
	 *  getLines
	 *  @return MNotaFiscalLotLine[] lines
	 */
	public MLBRNotaFiscalLotLine[] getLines()
	{
		MTable table = MTable.get (getCtx(), MLBRNotaFiscalLotLine.Table_Name);
		Query query =  new Query(getCtx(), table, "LBR_NotaFiscalLot_ID=?", get_TrxName());
	 		  query.setParameters(new Object[]{getLBR_NotaFiscalLot_ID()});
	 	//
	 	List<MLBRNotaFiscalLotLine> list = query.list();
	 	return list.toArray(new MLBRNotaFiscalLotLine[list.size()]);
	}	//	getLines
	
	
	/**
	 * Get XMLs array obtained from Lot lines
	 * @return String[] XML
	 */
	public String[] getXMLs ()
	{
		MLBRNotaFiscalLotLine[] lines = getLines();
		
		if (lines == null || lines.length == 0)
			return null;
		
		ArrayList<String> xmlArray = new ArrayList<String>();
		
		for (MLBRNotaFiscalLotLine line : lines) {
			if (line.getLBR_NotaFiscal_ID() > 0) {
				MLBRNotaFiscal nf = new MLBRNotaFiscal(getCtx(), line.getLBR_NotaFiscal_ID(), get_TrxName());
				
				MAttachment attachNFe = nf.getAttachment();
				
				for (int i = attachNFe.getEntryCount() - 1; i >= 0; i--) {
					if (attachNFe.getEntry(i).getName().endsWith(MLBRNotaFiscal.INDIVIDUAL_FILE_EXT)) {
						//xmlArray.add(convertStreamToString(attachNFe.getEntry(i).getInputStream()));
						xmlArray.add(attachNFe.getEntry(i).getFile().toString());
					}
				}
			}
		}
		
		String[] result = new String[xmlArray.size()];
	 	xmlArray.toArray(result);
		return result;
	}	//	getXMLs
	
	protected boolean beforeDelete() {
		if (isLBR_LotSent()) {
			log.log(Level.SEVERE, "NF-e Lot had been sent to Sefaz, and thus can not be deleted");
			return false;
		}
		
		return true;
	}
	
	
	
	/**
	 * Returns the model of the NF inside this Lote.
	 * @return
	 */
	public String getNFeModel ()
	{
		MLBRNotaFiscalLotLine[] lines = getLines();
		
		if (lines == null || lines.length == 0)
			return null;
		
		for (MLBRNotaFiscalLotLine line : lines) {
			if (line.getLBR_NotaFiscal_ID() > 0) {
				MLBRNotaFiscal nf = new MLBRNotaFiscal(getCtx(), line.getLBR_NotaFiscal_ID(), get_TrxName());
				
				return nf.getLBR_NFeModel();
			}
		}

		return null;
	}
}