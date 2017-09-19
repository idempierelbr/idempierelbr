package org.idempierelbr.core.util;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;

import org.compiere.model.MAccount;
import org.compiere.model.MAcctSchema;
import org.compiere.util.CLogger;
import org.compiere.util.DB;

public class MLBRAccountUtil {
	/**	Logger					*/
	private static CLogger 	log = CLogger.getCLogger (MLBRAccountUtil.class);
	
	/** Product Revenue Acct    */
	public static final int ACCTTYPE_LBR_P_RevenueReturn      = 1;
	
	public static MAccount getProductAccount(int M_Product_ID, int AcctType, MAcctSchema as)
	{
		if (AcctType < ACCTTYPE_LBR_P_RevenueReturn || AcctType > ACCTTYPE_LBR_P_RevenueReturn)
			return null;

		//  No Product - get Default from Product Category
		if (M_Product_ID == 0)
			return getProductAccountDefault(AcctType, as);

		String sql = "SELECT LBR_P_RevenueReturn_Acct "
			+ "FROM M_Product_Acct "
			+ "WHERE M_Product_ID=? AND C_AcctSchema_ID=?";
		//
		int validCombination_ID = 0;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(sql, null);
			pstmt.setInt(1, M_Product_ID);
			pstmt.setInt(2, as.getC_AcctSchema_ID());
			rs = pstmt.executeQuery();
			if (rs.next())
				validCombination_ID = rs.getInt(AcctType);
		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, sql, e);
		}
		finally {
			DB.close(rs, pstmt);
			rs = null; pstmt = null;
		}
		if (validCombination_ID == 0)
			return null;
		return MAccount.get(as.getCtx(), validCombination_ID);
	}
	
	public static MAccount getProductAccountDefault (int AcctType, MAcctSchema as)
	{
		if (AcctType < ACCTTYPE_LBR_P_RevenueReturn || AcctType > ACCTTYPE_LBR_P_RevenueReturn)
			return null;

		String sql = "SELECT LBR_P_RevenueReturn_Acct "
			+ "FROM M_Product_Category pc, M_Product_Category_Acct pca "
			+ "WHERE pc.M_Product_Category_ID=pca.M_Product_Category_ID"
			+ " AND pca.C_AcctSchema_ID=? "
			+ "ORDER BY pc.IsDefault DESC, pc.Created";
		//
		int validCombination_ID = 0;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(sql, null);
			pstmt.setInt(1, as.getC_AcctSchema_ID());
			rs = pstmt.executeQuery();
			if (rs.next())
				validCombination_ID = rs.getInt(AcctType);
		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, sql, e);
		}
		finally {
			DB.close(rs, pstmt);
			rs = null; pstmt = null;
		}
		if (validCombination_ID == 0)
			return null;
		return MAccount.get(as.getCtx(), validCombination_ID);
	}
}
