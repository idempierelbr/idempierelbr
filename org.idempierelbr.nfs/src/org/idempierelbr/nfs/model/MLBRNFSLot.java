package org.idempierelbr.nfs.model;

import java.sql.ResultSet;
import java.util.List;
import java.util.Properties;
import java.util.logging.Level;

import org.compiere.model.MDocType;
import org.compiere.model.Query;

public class MLBRNFSLot extends X_LBR_NFSLot {

	
	// Código de situação de lote de RPS 
	public static String LOTE_RECEBIDO = "1";
	public static String LOTE_NAO_PROCESSADO = "2";
	public static String LOTE_PROCESSADO_COM_ERRO = "3";
	public static String LOTE_PROCESSADO_COM_SUCESSO = "4";
	public static String LOTE_NAO_RECEBIDO = "99";
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 5055719805013474020L;

	public MLBRNFSLot(Properties ctx, int LBR_NFSLot_ID, String trxName) {
		super(ctx, LBR_NFSLot_ID, trxName);
		// TODO Auto-generated constructor stub
	}

	public MLBRNFSLot(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
		// TODO Auto-generated constructor stub
	}

	/**
	 * Get lines
	 * 
	 * @return
	 */
	public MLBRNFSLotLine[] getLines() {

		// where
		String where = "LBR_NFSLot_ID = ? ";

		// query
		Query q = new Query(getCtx(), MLBRNFSLotLine.Table_Name, where,
				get_TrxName());
		q.setParameters(new Object[] { getLBR_NFSLot_ID() });
		q.setOrderBy("Created");

		//
		List<MLBRNFSLotLine> list = q.list();
		return list.toArray(new MLBRNFSLotLine[list.size()]);
	}
	
	/**
	 * Get NFS config
	 * 
	 * @return
	 */
	public MLBRNFSConfig getNFSConfig() {
		
		MLBRNFSLotLine[] lines = getLines();
		if (lines != null && lines.length > 0) {
			
			// get config ID
			int LBR_NFSConfig_ID = MDocType.get(getCtx(),
					lines[0].getLBR_NFS().getC_DocTypeTarget_ID())
					.get_ValueAsInt(MLBRNFSConfig.COLUMNNAME_LBR_NFSConfig_ID);
			
			// has nfs config, return it
			if (LBR_NFSConfig_ID > 0)
				return new MLBRNFSConfig(getCtx(), LBR_NFSConfig_ID, get_TrxName());
		}
		
		return null;
	}
	

	/**
	 * Add a lot line from NFS
	 * 
	 * @param m_nfs
	 * @throws Exception
	 */
	public void addLine(MLBRNFS m_nfs) throws Exception {
		
		// check lot
		if (isLBR_LotSent())
			throw new Exception("Não é possível adicionais mais NFSs a um Lote já enviado");
		
		// check nfs
		if (!m_nfs.getDocStatus().equals("CO"))
			throw new Exception("A NFS precisa estar completada!");
		
		// 
		MLBRNFSLotLine line = new MLBRNFSLotLine(getCtx(), 0, get_TrxName());
		line.setAD_Org_ID(getAD_Org_ID());
		line.setLBR_NFS_ID(m_nfs.get_ID());
		line.setLBR_NFSLot_ID(getLBR_NFSLot_ID());
		line.saveEx();		
	}
	
	
	protected boolean beforeDelete() {
		if (isLBR_LotSent()) {
			log.log(Level.SEVERE, "NF-e Lot had been sent to Sefaz, and thus can not be deleted");
			return false;
		}
		
		return true;
	}
	
	/**
	 * 	Does NF-e Lot have a status that does not allow a change? 
	 *
	 * @param cStatL status returned by Sefaz
	 */
	private boolean isImmutableStatus(String cStatL) {
		
		return false;
	}
}
