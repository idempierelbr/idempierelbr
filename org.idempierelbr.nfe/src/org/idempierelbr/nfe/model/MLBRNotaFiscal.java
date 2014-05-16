/******************************************************************************
 * Product: ADempiereLBR - ADempiere Localization Brazil                      *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 *****************************************************************************/
package org.idempierelbr.nfe.model;

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.List;
import java.util.Properties;

import org.compiere.model.MCurrency;
import org.compiere.model.MTable;
import org.compiere.model.Query;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.idempierelbr.core.util.TextUtil;

/**
 *		Nota Fiscal Model
 */
public class MLBRNotaFiscal extends X_LBR_NotaFiscal 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 1L;

	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(MLBRNotaFiscal.class);

	/** CONSTANT */
	public final static int BRAZIL = 139;
	public static final int CURRENCY_BRL = 297;
	
	/**	Tax Lines					*/
	private MLBRNotaFiscalTax[] 	m_taxes = null;

	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MLBRNotaFiscal (Properties ctx, int ID, String trxName)
	{
		super (ctx, ID, trxName);
	}	//	MLBRNotaFiscal

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRNotaFiscal (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}	//	MLBRNotaFiscal

	/**
	 * Retorna as Notas Fiscais por período (compra e venda)
	 * @param dateFrom
	 * @param dateTo
	 * @return MNotaFiscal[]
	 */
	public static MLBRNotaFiscal[] get (Timestamp dateFrom, Timestamp dateTo, String trxName)
	{
		return get (dateFrom, dateTo,null,trxName);
	}	//	get

	/**
	 * Retorna as Notas Fiscais por período (compra, venda ou ambos)
	 * @param dateFrom
	 * @param dateTo
	 * @param isSOTrx: true = venda, false = compra, null = ambos
	 * @return MNotaFiscal[]
	 */
	public static MLBRNotaFiscal[] get (Timestamp dateFrom, Timestamp dateTo, Boolean isSOTrx, String trxName)
	{
		String whereClause = "AD_Client_ID=? AND " +
							 "(CASE WHEN IsSOTrx='Y' THEN TRUNC(DateDoc) " +
							 "ELSE TRUNC(NVL(lbr_DateInOut, DateDoc)) END) BETWEEN ? AND ?";

		String orderBy = "(CASE WHEN IsSOTrx='Y' THEN TRUNC(DateDoc) ELSE TRUNC(NVL(lbr_DateInOut, DateDoc)) END)";
		//
		if (isSOTrx != null)
			whereClause += " AND IsSOTrx='" + (isSOTrx ? "Y" : "N") + "'";

		MTable table = MTable.get(Env.getCtx(), MLBRNotaFiscal.Table_Name);
		Query q =  new Query(Env.getCtx(), table, whereClause.toString(), trxName);
	          q.setOrderBy(orderBy);
		      q.setParameters(new Object[]{Env.getAD_Client_ID(Env.getCtx()),dateFrom,dateTo});

	    List<MLBRNotaFiscal> list = q.list();
	    MLBRNotaFiscal[] nfs = new MLBRNotaFiscal[list.size()];
	    return list.toArray(nfs);
	}	//	get


	public static int getLBR_NotaFiscal_ID(String DocumentNo, boolean IsSOTrx, String trx)
	{

		String sql = "SELECT LBR_NotaFiscal_ID FROM LBR_NotaFiscal " +
				     "WHERE DocumentNo = ? AND AD_Client_ID = ? " +
				     "AND IsSOTrx = ? " +
				     "ORDER BY LBR_NotaFiscal_ID desc";

		Integer LBR_NotaFiscal_ID = DB.getSQLValue (trx, sql, new Object[]{DocumentNo, Env.getAD_Client_ID(Env.getCtx()),IsSOTrx});

		//	RPS
		if (LBR_NotaFiscal_ID < 1)
			LBR_NotaFiscal_ID = DB.getSQLValue (trx, sql, new Object[]{TextUtil.lPad (DocumentNo, 12), Env.getAD_Client_ID(Env.getCtx()),IsSOTrx});
		//
		return LBR_NotaFiscal_ID;
	}	//	getLBR_NotaFiscal_ID

	/**
	 * 	Encontra a NF pelo ID de NF-e
	 *
	 * @param NFeID
	 * @return
	 */
	public static MLBRNotaFiscal getNFe (String NFeID, String trxName)
	{
		String sql =  "SELECT LBR_NotaFiscal_ID FROM LBR_NotaFiscal " +
					   "WHERE lbr_NFeID=? AND AD_Client_ID=?";

		int LBR_NotaFiscal_ID = DB.getSQLValue(trxName, sql,
				new Object[]{NFeID, Env.getAD_Client_ID(Env.getCtx())});

		if (LBR_NotaFiscal_ID > 0)
			return new MLBRNotaFiscal (Env.getCtx(), LBR_NotaFiscal_ID, trxName);
		else
		{
			log.warning("NFe " + NFeID);
			return null;
		}
	}	//	get

	/**
	 * 	Verifica se existe NF registrada com este número para Cliente/Fornecedor
	 *
	 * @param String DocumentNo
	 * @param int C_BPartner_ID
	 * @return true if exists or false if not
	 */
	public static boolean ifExists (String documentno, int C_BPartner_ID, boolean isSOTrx)
	{

		String sql =  "SELECT LBR_NotaFiscal_ID FROM LBR_NotaFiscal " +
					  "WHERE DocumentNo = ? AND C_BPartner_ID = ? " +
					  "AND AD_Client_ID = ? AND IsSOTrx = ?";

		int LBR_NotaFiscal_ID = DB.getSQLValue(null, sql,
				new Object[]{documentno, C_BPartner_ID,
				Env.getAD_Client_ID(Env.getCtx()), isSOTrx});

		return LBR_NotaFiscal_ID == -1 ? false : true;
	}//ifExists

	/**
	 * Extrai a Série da NF
	 *
	 * @param	String	No da NF com a Série
	 * @return	String	Série da NF
	 */
	public static String getSerieNo(String documentNo)
	{
		if (documentNo == null || documentNo.indexOf('-') == -1 ||
			documentNo.endsWith("-"))
			return "";
		//

		return documentNo.substring(1+documentNo.indexOf('-'), documentNo.length());
	}//getserieNo

	public String getSerieNo(){
		return getSerieNo(getDocumentNo());
	}
	
	/**
	 * 	Necessário para ajustar a precisão
	 * 		de casas decimais
	 */
	public void setGrandTotal (BigDecimal GrandTotal)
	{
		if (GrandTotal == null)
			GrandTotal = Env.ZERO;
		
		//	Manual de Integração 4.01 - página 152
		super.setGrandTotal(GrandTotal.setScale(2, BigDecimal.ROUND_HALF_UP));
	}	//	setGrandTotal
	
	/**
	 * 	Necessário para ajustar a precisão
	 * 		de casas decimais
	 */
	public void setTotalLines (BigDecimal TotalLines)
	{
		if (TotalLines == null)
			TotalLines = Env.ZERO;
		
		//	Manual de IntegraÃ§Ã£o 4.01 - pÃ¡gina 152
		super.setTotalLines(TotalLines.setScale(2, BigDecimal.ROUND_HALF_UP));
	}	//	setTotalLines
	
	/**
	 * 	Executed before Delete operation.
	 *	@return true if record can be deleted
	 */
	protected boolean beforeDelete()
	{
		for (MLBRNotaFiscalLine nfl : getLines())
		{
			nfl.deleteEx(true);
		}
		return true;
	}	//	beforeDelete
	
	/**
	 *  getLines
	 *  @param String orderBy or null
	 *  @return MNotaFiscalLine[] lines
	 */
	public MLBRNotaFiscalLine[] getLines()
	{
		MTable table = MTable.get (getCtx(), MLBRNotaFiscalLine.Table_Name);
		Query query =  new Query(getCtx(), table, "LBR_NotaFiscal_ID=?", get_TrxName());
	 		  query.setParameters(new Object[]{getLBR_NotaFiscal_ID()}).setOrderBy("Line");
	 	//
	 	List<MLBRNotaFiscalLine> list = query.list();
	 	return list.toArray(new MLBRNotaFiscalLine[list.size()]);
	}	//	getLines
	
	
	/**
	 * 	Get Taxes of NF
	 *	@param requery requery
	 *	@return array of taxes
	 */
	public MLBRNotaFiscalTax[] getTaxes(boolean requery)
	{
		if (m_taxes != null && !requery)
			return m_taxes;
		//
		List<MLBRNotaFiscalTax> list = new Query(getCtx(), I_LBR_NotaFiscalTax.Table_Name, "LBR_NotaFiscal_ID=?", get_TrxName())
									.setParameters(get_ID())
									.list();
		m_taxes = list.toArray(new MLBRNotaFiscalTax[list.size()]);
		return m_taxes;
	}	//	getTaxes
	
	/**
	 * 	Get Currency Precision
	 *	@return precision
	 */
	public int getPrecision()
	{
		return MCurrency.getStdPrecision(getCtx(), CURRENCY_BRL);
	}	//	getPrecision

	/**
	 * 	Get isSOTrx based on NF Operation Type
	 *	@return precision
	 */
	public boolean isSOTrx() {
		if (getLBR_NFE_OperationType().equals("0"))
			return true;
		
		return false;
	}
	
	/**
	 *  getNotes
	 *  @return X_LBR_NotaFiscalNote[] notes
	 */
    public X_LBR_NotaFiscalNote[] getNotes() {
    	MTable table = MTable.get (getCtx(), X_LBR_NotaFiscalNote.Table_Name);
		Query query =  new Query(getCtx(), table, "LBR_NotaFiscal_ID=?", get_TrxName());
	 		  query.setParameters(new Object[]{get_ID()});
	 	//
	 	List<X_LBR_NotaFiscalNote> list = query.list();
	 	return list.toArray(new X_LBR_NotaFiscalNote[list.size()]);
    }
}
