package org.idempierelbr.nfe.model;

import java.sql.ResultSet;
import java.util.List;
import java.util.Properties;
import java.util.logging.Level;

import org.compiere.model.MDocType;
import org.compiere.model.MTable;
import org.compiere.model.Query;
import org.compiere.util.Msg;

public class MLBRNotaFiscalLotLine extends X_LBR_NotaFiscalLotLine {
	
	/** Parent					*/
	private MLBRNotaFiscalLot m_parent = null;

	/**
	 * Serial
	 */
	private static final long serialVersionUID = -3581645525145118660L;

	public MLBRNotaFiscalLotLine(Properties ctx, int LBR_NotaFiscalLotLine_ID,
			String trxName) {
		super(ctx, LBR_NotaFiscalLotLine_ID, trxName);
	}

	public MLBRNotaFiscalLotLine(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}
	
	/**
	 * 	Get Parent
	 *	@return parent
	 */
	public MLBRNotaFiscalLot getParent()
	{
		if (m_parent == null)
			m_parent = new MLBRNotaFiscalLot (getCtx(), getLBR_NotaFiscalLot_ID(), get_TrxName());
		return m_parent;
	}	//	getParent
	
	
	 protected boolean beforeSave(boolean newRecord) {
		 if (!newRecord)
				return true;
		 
		MLBRNotaFiscalLot lot = getParent();
		MLBRNotaFiscalLotLine[] lines = lot.getLines();
		
		// Adjust same org from parent
		setAD_Org_ID(lot.getAD_Org_ID());
		
		// Sync should have only one line
		if (newRecord && lot.getLBR_ProcessingType().equals("S") && lines != null && lines.length > 0) {
			log.saveError("Error", Msg.parseTranslation(getCtx(), "Synchronous NF-e Lots should have only one line"));
			return false;
		}
		
		// Check consistency with Lot Org
		MLBRNotaFiscal thisNf = new MLBRNotaFiscal(getCtx(), getLBR_NotaFiscal_ID(), get_TrxName());
		
		if (thisNf.getAD_Org_ID() != getAD_Org_ID()) {
			log.saveError("Error", Msg.parseTranslation(getCtx(), "NF-e org. is different than Lot org."));
			return false;
		}
		
		// Check if NF-e can be added to a Lot
		if (thisNf.hasImmutableStatus()) {
			log.saveError("Error", Msg.parseTranslation(getCtx(), "NF-e can't be added to a Lot"));
			return false;
		}
		
		// Check if NF-e ID is already added in another Lot line
		MTable table = MTable.get (getCtx(), MLBRNotaFiscalLotLine.Table_Name);
		Query query =  new Query(getCtx(), table, "LBR_NFeID=? AND LBR_NotaFiscalLotLine_ID<>?", get_TrxName());
	 		  query.setParameters(new Object[]{thisNf.getLBR_NFeID(), get_ID()});
	 	List<MLBRNotaFiscalLotLine> list = query.list();
	 	if (list.size() > 0) {
	 		log.saveError("Error", Msg.parseTranslation(getCtx(), "NF-e ID is already added in another Lot line"));
			return false;
	 	}	 		
		
		// Check consistency with other lines
		if (lines.length > 0) {
			MLBRNotaFiscal firstNf = new MLBRNotaFiscal(getCtx(), lines[0].getLBR_NotaFiscal_ID(), get_TrxName());
			MDocType firstNfDocType = new MDocType(getCtx(), firstNf.getC_DocType_ID(), get_TrxName());
			MDocType thisNfDocType = new MDocType(getCtx(), thisNf.getC_DocType_ID(), get_TrxName());
			
			// Doc Type Environment
			if (!firstNfDocType.get_Value("LBR_NFeEnv").equals(thisNfDocType.get_Value("LBR_NFeEnv"))) {
				log.saveError("Error", Msg.parseTranslation(getCtx(), "NF-e in a Lot should have a same Sefaz NF-e Environment"));
				return false;
			}
			
			// NFe Issue Type
			if (!firstNf.get_Value("LBR_NFeTpEmis").equals(thisNf.get_Value("LBR_NFeTpEmis"))) {
				log.saveError("Error", Msg.parseTranslation(getCtx(), "NF-e in a Lot should have a same Issue Type"));
				return false;
			}
		}
		
		// Fill in NF-e ID
		setLBR_NFeID(thisNf.getLBR_NFeID());
		
		return true;
	}
	 
	 protected boolean beforeDelete() {
		if (getParent().isLBR_LotSent()) {
			log.log(Level.SEVERE, "NF-e Lot had been sent to Sefaz, and thus can not be deleted");
			return false;
		}
		
		return true;
	}

}
