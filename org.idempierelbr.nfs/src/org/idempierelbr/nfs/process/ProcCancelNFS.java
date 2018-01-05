package org.idempierelbr.nfs.process;

import java.util.Properties;
import java.util.logging.Level;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.idempierelbr.nfs.factory.INFSe;
import org.idempierelbr.nfs.model.MLBRNFS;
import org.idempierelbr.nfs.util.NFSUtils;

/**
 * Process to cancel NFS
 *
 * @author pablo 21/06/2016 pblobp@gmail.com
 */
public class ProcCancelNFS extends SvrProcess {

	private String motivoCancel = "1";
	
	/**
	 * Prepare - e.g., get Parameters.
	 */
	protected void prepare() {
		ProcessInfoParameter[] para = getParameter();
		for (int i = 0; i < para.length; i++) {
			String name = para[i].getParameterName();
			if (para[i].getParameter() == null)
				;
			else if (name.equals("LBR_MotivoCancelamentoNFS"))
				motivoCancel = para[i].getParameterAsString();
			
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}
	} // prepare

	/**
	 * Do it
	 *
	 * @return info
	 * @throws Exception
	 */
	protected String doIt() throws Exception {

		if (getRecord_ID() < 1)
			throw new AdempiereException("Lote inválido");

		// send rps
		process(getCtx(), getRecord_ID(), motivoCancel, get_TrxName());

		return "Lote enviado com sucesso!";
	} // doIt

	/**
	 * Send Sync NFS
	 * 
	 * @param ctx
	 * @param LBR_NFSLot_ID
	 * @param trxName
	 * @throws Exception
	 */
	public static void process(Properties ctx, int LBR_NFS_ID, String motivoCancel, String trxName)
			throws Exception {

		// lot
		MLBRNFS nfs = new MLBRNFS(ctx, LBR_NFS_ID, trxName);

		//
		if (!nfs.getDocStatus().equals(MLBRNFS.DOCSTATUS_Completed))
			throw new AdempiereException("NFS-e inválida!");

		//
		if (nfs.getLBR_NFSeStatus().equals(MLBRNFS.LBR_NFSESTATUS_Cancelado))
			throw new AdempiereException("NFS-e já foi cancelada!");

		// 
		if (!nfs.hasImmutableStatus())
			throw new AdempiereException("NFS-e transmitida!");
		
		if (motivoCancel != null) {
			nfs.setLBR_MotivoCancelamentoNFS(motivoCancel);
			nfs.save();
		}
		

		//
		String nfsModel = nfs.getNFSConfig().getLBR_NFSModel();

		// check nfs model
		if (nfsModel != null) {

			// get instance
			INFSe nfsInstance = NFSUtils.getNFSeInstance(nfsModel);
			if (nfsInstance == null) {
				throw new AdempiereException(
						"Plugin não encontrado para para o modelo de NFS-e "
								+ nfsModel);
			}

			// process 
			nfsInstance.cancelNFSe(nfs);
		}
	}

} // CNABGenerate
