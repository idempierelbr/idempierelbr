package org.idempierelbr.nfs.factory;

import org.idempierelbr.nfs.model.MLBRNFS;
import org.idempierelbr.nfs.model.MLBRNFSLot;

public interface INFSe {

	/**
	 * Generate XML File
	 * 
	 * 
	 * @param m_nfs
	 * @throws Exception
	 */
	public String generateXML(MLBRNFS m_nfs) throws Exception;
	
	/**
	 * Send RPS
	 * 
	 * ABRASF: GERAÇÃO DE NFS-E
	 * 
	 * @param m_nfs
	 * @throws Exception
	 */
	public void sendNFSe(MLBRNFS m_nfs) throws Exception;
	
	/**
	 * Cancel RPS
	 * 
	 * ABRASF: CANCELAMENTO DE NFS-E
	 * 
	 * @param m_nfs
	 * @throws Exception
	 */
	public void cancelNFSe(MLBRNFS m_nfs) throws Exception;

	/**
	 * Send RPS Lot
	 * 
	 * ABRASF: RECEPÇÃO DE LOTE DE RPS
	 * 
	 * @param m_nfslot
	 * @throws Exception
	 */
	public void sendRPSLot(MLBRNFSLot m_nfslot) throws Exception;

	/**
	 * Query RPS Lot
	 * 
	 * ABRASF: CONSULTA DE LOTE DE RPS
	 * 
	 * @param m_nfslot
	 * @throws Exception
	 */
	public void queryRPSLot(MLBRNFSLot m_nfslot) throws Exception;
	
	/**
	 * Substitue NFS-e
	 * 
	 * @param m_nfs
	 * @throws Exception
	 */
	public void substituteNFSe(MLBRNFS m_nfs) throws Exception;
	
	
	/**
	 * Print DANFE
	 * 
	 * @param m_nfs
	 * @throws Exception
	 */
	public void printDANFE(MLBRNFS m_nfs) throws Exception;
	
	/**
	 * Query NFS-e by RPS
	 * 
	 * ABRASF: CONSULTA DE NFS-E POR RPS
	 * 
	 * @param m_nfs
	 * @throws Exception
	 */
	public void queryNFSeByRPS(MLBRNFS m_nfs) throws Exception;
	
	

}
