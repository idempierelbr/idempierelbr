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
 * Process to print DANFE of NFS
 *
 * @author pablo 21/06/2016 pblobp@gmail.com
 */
public class ProcPrintDANFE extends SvrProcess {

	/**
	 * Prepare - e.g., get Parameters.
	 */
	protected void prepare() {
		ProcessInfoParameter[] para = getParameter();
		for (int i = 0; i < para.length; i++) {
			String name = para[i].getParameterName();
			if (para[i].getParameter() == null)
				;
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
		process(getCtx(), getRecord_ID(), get_TrxName());

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
	public static void process(Properties ctx, int LBR_NFS_ID, String trxName)
			throws Exception {

		// lot
		MLBRNFS nfs = new MLBRNFS(ctx, LBR_NFS_ID, trxName);

		//
		if (!nfs.getDocStatus().equals(MLBRNFS.DOCSTATUS_Completed))
			throw new AdempiereException("NFS-e inválida!");

		if (!nfs.hasImmutableStatus())
			throw new AdempiereException("Estado da NFS-e é inválido!");

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
			nfsInstance.printDANFE(nfs);
		}
	}

} // CNABGenerate
