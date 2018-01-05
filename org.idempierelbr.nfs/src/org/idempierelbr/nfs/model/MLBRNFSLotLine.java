package org.idempierelbr.nfs.model;

import java.sql.ResultSet;
import java.util.Properties;
import java.util.logging.Level;

import org.compiere.model.MDocType;
import org.compiere.util.Msg;

public class MLBRNFSLotLine extends X_LBR_NFSLotLine {

	/** Parent */
	private MLBRNFSLot m_parent = null;

	/**
	 * 
	 */
	private static final long serialVersionUID = -1563954505349766419L;

	public MLBRNFSLotLine(Properties ctx, int LBR_NFSLotLine_ID, String trxName) {
		super(ctx, LBR_NFSLotLine_ID, trxName);
		// TODO Auto-generated constructor stub
	}

	public MLBRNFSLotLine(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
		// TODO Auto-generated constructor stub
	}

	protected boolean beforeDelete() {
		if (getParent().isLBR_LotSent()) {
			log.log(Level.SEVERE,
					"Lote já foi enviado, portanto não pode ser exluído.");
			return false;
		}

		return true;
	}
	

	public MLBRNFS getNFS() {
		return new MLBRNFS(getCtx(), getLBR_NFS_ID(), get_TrxName());
	}
	
	/**
	 * Get Parent
	 *
	 * @return parent
	 */
	public MLBRNFSLot getParent() {
		if (m_parent == null)
			m_parent = new MLBRNFSLot(getCtx(), getLBR_NFSLot_ID(),
					get_TrxName());
		return m_parent;
	} // getParent

	protected boolean beforeSave(boolean newRecord) {
		if (!newRecord)
			return true;

		MLBRNFSLot lot = getParent();
		MLBRNFSLotLine[] lines = lot.getLines();

		// Adjust same org from parent
		setAD_Org_ID(lot.getAD_Org_ID());

		// Sync should have only one line
		if (newRecord && lot.getLBR_ProcessingType().equals("S")
				&& lines != null && lines.length > 0) {
			log.saveError("Error",
					"Lote de RPS sincrono deve ter somente uma NFS-e");
			return false;
		}

		// Check consistency with Lot Org
		MLBRNFS thisNf = new MLBRNFS(getCtx(), getLBR_NFS_ID(), get_TrxName());
		if (thisNf.getAD_Org_ID() != getAD_Org_ID()) {
			log.saveError("Error", Msg.parseTranslation(getCtx(),
					"NF-e org. is different than Lot org."));
			return false;
		}

		// Check if NF-e can be added to a Lot
		if (thisNf.hasImmutableStatus()) {
			log.saveError("Error", Msg.parseTranslation(getCtx(),
					"NF-e can't be added to a Lot"));
			return false;
		}

		// Check consistency with other lines
		if (lines.length > 0) {

			//
			MLBRNFS firstNf = new MLBRNFS(getCtx(), lines[0].getLBR_NFS_ID(), get_TrxName());
			MDocType firstNfDocType = new MDocType(getCtx(), firstNf.getC_DocTypeTarget_ID(), get_TrxName());
			MDocType thisNfDocType = new MDocType(getCtx(), thisNf.getC_DocTypeTarget_ID(), get_TrxName());

			// NFS Config Type
			if (firstNfDocType.get_ID() != thisNfDocType.get_ID()) {
				log.saveError(
						"Error",
						"As Notas Fiscais de Serviço devem ter o mesmo Tipo de Documento para um único Lote.");
				return false;
			}
		}

		// TODO: VALIDATE IF NFS ALREADY HAS OTHER VALID LOT

		return true;
	}

}
