package org.idempierelbr.sped.model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import org.compiere.util.DB;



public class MLBRSPEDOptions extends X_LBR_SPEDOptions {

	/**
	 * 
	 */
	private static final long serialVersionUID = -8835112884247705104L;

	public MLBRSPEDOptions(Properties ctx, int LBR_SPEDOptions_ID, String trxName) {
		super(ctx, LBR_SPEDOptions_ID, trxName);
		// TODO Auto-generated constructor stub
	}

	public MLBRSPEDOptions(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
		// TODO Auto-generated constructor stub
	}

	public static MLBRSPEDOptions getFromOrg( Properties ctx , int AD_Org_ID , String trxName ) throws SQLException {
		String sql =  "SELECT * FROM LBR_SPEDOptions WHERE AD_Org_ID=? AND IsActive = 'Y' ORDER BY isDefault DESC";

		PreparedStatement pstmt = null;
		ResultSet rs = null;

		pstmt = DB.prepareStatement(sql, trxName);
		pstmt.setInt(1, AD_Org_ID);
		//
		rs = pstmt.executeQuery();
		
		if (rs.next()) { 
			MLBRSPEDOptions details = new MLBRSPEDOptions(ctx, rs, trxName);
			DB.close(rs, pstmt);
			return details;
		}

		return null;		
	}
	
}
