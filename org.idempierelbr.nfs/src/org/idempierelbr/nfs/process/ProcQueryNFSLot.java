package org.idempierelbr.nfs.process;

import java.util.Properties;
import java.util.logging.Level;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.idempierelbr.nfs.factory.INFSe;
import org.idempierelbr.nfs.model.MLBRNFSLot;
import org.idempierelbr.nfs.util.NFSUtils;

/**
 * Process to query NFS-e/RPS lot
 *
 * @author pablo 21/06/2016 pblobp@gmail.com
 */
public class ProcQueryNFSLot extends SvrProcess {

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
		sendRPS(getCtx(), getRecord_ID(), get_TrxName());

		return "Lote enviado com sucesso!";
	} // doIt

	/**
	 * Send RPS
	 * 
	 * obs.: create a static method to use in other classes
	 * 
	 * @param ctx
	 * @param LBR_NFSLot_ID
	 * @param trxName
	 * @throws Exception
	 */
	public static void sendRPS(Properties ctx, int LBR_NFSLot_ID, String trxName)
			throws Exception {

		// lot
		MLBRNFSLot lot = new MLBRNFSLot(ctx, LBR_NFSLot_ID, trxName);

		//
		if (lot.getLines() == null || lot.getLines().length <= 0)
			throw new AdempiereException("Lote não possuí linhas");

		if (lot.getNFSConfig() == null)
			throw new AdempiereException(
					"Nenhuma configuração definida no Tipo de Documento da NFS-e");

		//
		String nfsModel = lot.getNFSConfig().getLBR_NFSModel();

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
			nfsInstance.queryRPSLot(lot);
		}
	}

} // CNABGenerate
