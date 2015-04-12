package org.idempierelbr.nfe.model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import org.compiere.model.PO;
import org.compiere.util.CLogger;
import org.compiere.util.DB;

public class MLBRNotaFiscalLineComb extends X_LBR_NotaFiscalLineComb {

	/**
	 * 
	 */
	private static final long serialVersionUID = 6568209326440664124L;
	private static final CLogger log = CLogger.getCLogger(MLBRNotaFiscalLineComb.class);

	public MLBRNotaFiscalLineComb(Properties ctx, int LBR_NotaFiscalLineComb_ID,
			String trxName) {
		super(ctx, LBR_NotaFiscalLineComb_ID, trxName);
	}

	public MLBRNotaFiscalLineComb(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}
	
	public static MLBRNotaFiscalLineComb getOfPO (PO po)
	{	
		String sql =  " SELECT LBR_NotaFiscalLineComb_ID"
			+ " FROM LBR_NotaFiscalLineComb"
			+ " WHERE " + po.get_TableName() + "_ID=?";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try	{
			pstmt = DB.prepareStatement(sql, po.get_TrxName());
			pstmt.setInt(1, po.get_ID());
			rs = pstmt.executeQuery();
			while (rs.next()) {	
				MLBRNotaFiscalLineComb comb = new MLBRNotaFiscalLineComb(po.getCtx(), rs.getInt("LBR_NotaFiscalLineComb_ID"), po.get_TrxName());
				return comb;
			}
		}
		catch (SQLException e)
		{
			log.severe("Couldn't get LBR_NotaFiscalLineComb of PO " + po);
			e.printStackTrace();
		}
		finally
		{
			DB.close(rs, pstmt);
			rs = null; pstmt = null;
		}
		
		return null;
	}
	
	/**
	 * 	Create new Nota Fiscal Line Comb record from a given PO.
	 * 	@param po line
	 *	@return true if it could be created successfully
	 */
	public static MLBRNotaFiscalLineComb createFromPO (PO po)
	{	
		MLBRNotaFiscalLineComb comb;
		comb = getOfPO(po);
		
		if (comb != null)
			return comb;		
		
		String columnName = po.get_TableName() + "_ID";
		
		comb = new MLBRNotaFiscalLineComb(po.getCtx(), 0, po.get_TrxName());		
		comb.setAD_Org_ID(po.getAD_Org_ID());
		comb.set_ValueOfColumn(columnName, po.get_ID());
		
		return comb;
	}
}
