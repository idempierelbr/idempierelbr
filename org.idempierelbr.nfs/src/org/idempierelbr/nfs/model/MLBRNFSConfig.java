/**
 * 
 */
package org.idempierelbr.nfs.model;

import java.sql.ResultSet;
import java.util.Properties;

/**
 * @author pablo
 *
 */
public class MLBRNFSConfig extends X_LBR_NFSConfig {

	/**
	 * 
	 */
	private static final long serialVersionUID = 374548022810199104L;

	/**
	 * @param ctx
	 * @param LBR_NFSConfig_ID
	 * @param trxName
	 */
	public MLBRNFSConfig(Properties ctx, int LBR_NFSConfig_ID, String trxName) {
		super(ctx, LBR_NFSConfig_ID, trxName);
		// TODO Auto-generated constructor stub
	}

	/**
	 * @param ctx
	 * @param rs
	 * @param trxName
	 */
	public MLBRNFSConfig(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
		// TODO Auto-generated constructor stub
	}

	
	
}
