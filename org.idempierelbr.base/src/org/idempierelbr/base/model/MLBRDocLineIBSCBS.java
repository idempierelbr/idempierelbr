package org.idempierelbr.base.model;

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.util.List;
import java.util.Properties;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.Query;

public class MLBRDocLineIBSCBS extends X_LBR_DocLine_IBSCBS {
	private static final long serialVersionUID = 1L;

	public MLBRDocLineIBSCBS(Properties ctx, int LBR_DocLine_IBSCBS_ID, String trxName) {
		super(ctx, LBR_DocLine_IBSCBS_ID, trxName);
		// TODO Auto-generated constructor stub
	}

	public MLBRDocLineIBSCBS(Properties ctx, int LBR_DocLine_IBSCBS_ID, String trxName, String... virtualColumns) {
		super(ctx, LBR_DocLine_IBSCBS_ID, trxName, virtualColumns);
		// TODO Auto-generated constructor stub
	}

	public MLBRDocLineIBSCBS(Properties ctx, String LBR_DocLine_IBSCBS_UU, String trxName) {
		super(ctx, LBR_DocLine_IBSCBS_UU, trxName);
		// TODO Auto-generated constructor stub
	}

	public MLBRDocLineIBSCBS(Properties ctx, String LBR_DocLine_IBSCBS_UU, String trxName, String... virtualColumns) {
		super(ctx, LBR_DocLine_IBSCBS_UU, trxName, virtualColumns);
		// TODO Auto-generated constructor stub
	}

	public MLBRDocLineIBSCBS(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
		// TODO Auto-generated constructor stub
	}

	/** Get CBS Tax Amt.
		@return Indicates the CBS Tax Amt
	  */
	public BigDecimal getLBR_CBS_TaxAmt()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_CBS_TaxAmt);
		return bd;
	}

	/** Get CBS Tax Deferral Amt.
		@return Indicates the CBS Tax Deferral Amt
	  */
	public BigDecimal getLBR_CBS_TaxDeferralAmt()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_CBS_TaxDeferralAmt);
		return bd;
	}

	/** Get CBS Tax Deferral Rate.
		@return Indicates the CBS Tax Deferral Rate
	  */
	public BigDecimal getLBR_CBS_TaxDeferralRate()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_CBS_TaxDeferralRate);
		return bd;
	}

	/** Get CBS Tax Dev. Amt.
		@return Indicates the CBS Tax Dev. Amt
	  */
	public BigDecimal getLBR_CBS_TaxDevAmt()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_CBS_TaxDevAmt);
		return bd;
	}

	/** Get CBS Tax Rate.
		@return Indicates the CBS Tax Rate
	  */
	public BigDecimal getLBR_CBS_TaxRate()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_CBS_TaxRate);
		return bd;
	}

	/** Get CBS Tax Red. Efet. Rate.
		@return Indicates the CBS Tax Red. Efet. Rate
	  */
	public BigDecimal getLBR_CBS_TaxRedEfetRate()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_CBS_TaxRedEfetRate);
		return bd;
	}

	/** Get CBS Tax Red. Rate.
		@return Indicates the CBS Tax Red. Rate
	  */
	public BigDecimal getLBR_CBS_TaxRedRate()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_CBS_TaxRedRate);
		return bd;
	}

	/** Get IBS Mun. Tax Amt.
		@return Indicates the IBS Mun. Tax Amt
	  */
	public BigDecimal getLBR_IBS_Mun_TaxAmt()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_IBS_Mun_TaxAmt);
		return bd;
	}

	/** Get IBS Mun. Tax Deferral Amt.
		@return Indicates the IBS Mun. Tax Deferral Amt
	  */
	public BigDecimal getLBR_IBS_Mun_TaxDeferralAmt()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_IBS_Mun_TaxDeferralAmt);
		return bd;
	}

	/** Get IBS Mun. Tax Deferral Rate.
		@return Indicates the IBS Mun. Tax Deferral Rate
	  */
	public BigDecimal getLBR_IBS_Mun_TaxDeferralRate()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_IBS_Mun_TaxDeferralRate);
		return bd;
	}

	/** Get IBS Mun. Tax Dev. Amt.
		@return Indicates the IBS Mun. Tax Dev. Amt
	  */
	public BigDecimal getLBR_IBS_Mun_TaxDevAmt()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_IBS_Mun_TaxDevAmt);
		return bd;
	}

	/** Get IBS Mun. Tax Rate.
		@return Indicates the IBS Mun. Tax Rate
	  */
	public BigDecimal getLBR_IBS_Mun_TaxRate()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_IBS_Mun_TaxRate);
		return bd;
	}

	/** Get IBS Mun. Tax Red. Efet. Rate.
		@return Indicates the IBS Mun. Tax Red. Efet. Rate
	  */
	public BigDecimal getLBR_IBS_Mun_TaxRedEfetRate()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_IBS_Mun_TaxRedEfetRate);
		return bd;
	}

	/** Get IBS Mun. Tax Red. Rate.
		@return Indicates the IBS Mun. Tax Red. Rate
	  */
	public BigDecimal getLBR_IBS_Mun_TaxRedRate()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_IBS_Mun_TaxRedRate);
		return bd;
	}

	/** Get IBS UF Tax Amt.
		@return Indicates the IBS UF Tax Amt
	  */
	public BigDecimal getLBR_IBS_UF_TaxAmt()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_IBS_UF_TaxAmt);
		return bd;
	}

	/** Get IBS UF Tax Deferral Amt.
		@return Indicates the IBS UF Tax Deferral Amt
	  */
	public BigDecimal getLBR_IBS_UF_TaxDeferralAmt()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_IBS_UF_TaxDeferralAmt);
		return bd;
	}

	/** Get IBS UF Tax Deferral Rate.
		@return Indicates the IBS UF Tax Deferral Rate
	  */
	public BigDecimal getLBR_IBS_UF_TaxDeferralRate()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_IBS_UF_TaxDeferralRate);
		return bd;
	}

	/** Get IBS UF Tax Dev. Amt.
		@return Indicates the IBS UF Tax Dev. Amt
	  */
	public BigDecimal getLBR_IBS_UF_TaxDevAmt()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_IBS_UF_TaxDevAmt);
		return bd;
	}

	/** Get IBS UF Tax Rate.
		@return Indicates the IBS UF Tax Rate
	  */
	public BigDecimal getLBR_IBS_UF_TaxRate()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_IBS_UF_TaxRate);
		return bd;
	}

	/** Get IBS UF Tax Red. Efet. Rate.
		@return Indicates the IBS UF Tax Red. Efet. Rate
	  */
	public BigDecimal getLBR_IBS_UF_TaxRedEfetRate()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_IBS_UF_TaxRedEfetRate);
		return bd;
	}

	/** Get IBS UF Tax Red. Rate.
		@return Indicates the IBS UF Tax Red. Rate
	  */
	public BigDecimal getLBR_IBS_UF_TaxRedRate()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_IBS_UF_TaxRedRate);
		return bd;
	}

	/** Get Tax Base Amount.
		@return Defines the Tax Base Amount
	  */
	public BigDecimal getLBR_TaxBaseAmt()
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_TaxBaseAmt);
		return bd;
	}
	
	/**
	 * 	Get IBS/CBS array of a given Doc Line Details.
	 *	@return IBS/CBS array
	 */
	public static MLBRDocLineIBSCBS[] getOfDetails (MLBRDocLineDetails details) {
		if (details == null)
			return null;
		
		List<MLBRDocLineIBSCBS> list = new Query (details.getCtx(), MLBRDocLineIBSCBS.Table_Name,
				"LBR_DocLine_Details_ID=?", details.get_TrxName())
			.setParameters(new Object[]{details.get_ID()})
			.list();
		
		return list.toArray(new MLBRDocLineIBSCBS[list.size()]);	
	}
	
	/**
	 * 	Copy IBS/CBS from a details to another details
	 *	@return true if copied ok
	 */
	public static boolean copy(MLBRDocLineDetails detailsFrom, MLBRDocLineDetails detailsTo) {
		MLBRDocLineIBSCBS[] ibsCbsLinesFrom = getOfDetails(detailsFrom);
		MLBRDocLineIBSCBS[] ibsCbsLinesTo = getOfDetails(detailsTo);
		
		if (ibsCbsLinesFrom.length == 0 || ibsCbsLinesTo.length > 0)
			return false;
		
		MLBRDocLineIBSCBS isFrom = ibsCbsLinesFrom[0];
		MLBRDocLineIBSCBS isTo = new MLBRDocLineIBSCBS(detailsTo.getCtx(), 0, detailsTo.get_TrxName());
		MLBRDocLineIBSCBS.copyValues(isFrom, isTo, detailsTo.getAD_Client_ID(), detailsTo.getAD_Org_ID());
		isTo.setLBR_DocLine_Details_ID(detailsTo.get_ID());
		
		try {
			isTo.saveEx();
			return true;
		} catch (AdempiereException e) {
			return false;
		}
	}

}
