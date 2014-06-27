package org.idempierelbr.nfe.model;

import java.sql.ResultSet;
import java.util.Properties;
import java.util.logging.Level;

import org.compiere.model.MDocType;
import org.compiere.util.Msg;

public class MLBRNotaFiscalEventLine extends X_LBR_NotaFiscalEventLine {
	
	/** Parent					*/
	private MLBRNotaFiscalEvent m_parent = null;

	/**
	 * 
	 */
	private static final long serialVersionUID = 4460131292488970599L;

	public MLBRNotaFiscalEventLine(Properties ctx,
			int LBR_NotaFiscalEventLine_ID, String trxName) {
		super(ctx, LBR_NotaFiscalEventLine_ID, trxName);
	}

	public MLBRNotaFiscalEventLine(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}

	/**
	 * 	Get Parent
	 *	@return parent
	 */
	public MLBRNotaFiscalEvent getParent()
	{
		if (m_parent == null)
			m_parent = new MLBRNotaFiscalEvent (getCtx(), getLBR_NotaFiscalEvent_ID(), get_TrxName());
		return m_parent;
	}	//	getParent
	
	protected boolean beforeSave(boolean newRecord) {
		if (!newRecord)
			return true;
		
		MLBRNotaFiscalEvent lot = getParent();
		MLBRNotaFiscalEventLine[] lines = lot.getLines();
		
		// Adjust same org from parent
		setAD_Org_ID(lot.getAD_Org_ID());
		
		// Check consistency with Lot Org
		MLBRNotaFiscal thisNf = new MLBRNotaFiscal(getCtx(), getLBR_NotaFiscal_ID(), get_TrxName());
		
		if (thisNf.getAD_Org_ID() != getAD_Org_ID()) {
			log.saveError("Error", Msg.parseTranslation(getCtx(), "NF-e org. is different than Lot org."));
			return false;
		}
		
		// Check if NF-e can be added to a Lot
		if (!thisNf.isStatusAutorizado()) {
			log.saveError("Error", Msg.parseTranslation(getCtx(), "NF-e can't be added to a Lot"));
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
			log.log(Level.SEVERE, "NF-e Event Lot had been sent to Sefaz, and thus can not be deleted");
			return false;
		}
		
		return true;
	}

}
