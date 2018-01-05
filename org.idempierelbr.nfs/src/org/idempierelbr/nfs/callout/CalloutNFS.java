package org.idempierelbr.nfs.callout;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.Properties;

import org.adempiere.base.IColumnCallout;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;
import org.compiere.model.MDocType;
import org.compiere.model.MProduct;
import org.compiere.model.MProductPricing;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.idempierelbr.nfs.model.MLBRNFS;

/**
 * Callout for LBR_NFS table
 * 
 * @author pablo 09/01/2017
 */
public class CalloutNFS implements IColumnCallout {

	@Override
	public String start(Properties ctx, int WindowNo, GridTab mTab,
			GridField mField, Object value, Object oldValue) {

		// LBR_NFS
		if (mTab.getTableName().equals(MLBRNFS.Table_Name)) {

			if (mField.getColumnName().equals("M_Product_ID")) {
				product(ctx, WindowNo, mTab, mField, value);

			} else if (mField.getColumnName().equals("C_DocTypeTarget_ID")) {
				setDocTypeRelated(ctx, mTab, value);
			}
		}

		//
		return "";
	}

	/*************************************************************************
	 * NFS - Product. - PriceStd - UOM - Qty
	 *
	 * @param ctx
	 *            context
	 * @param WindowNo
	 *            current Window No
	 * @param mTab
	 *            Grid Tab
	 * @param mField
	 *            Grid Field
	 * @param value
	 *            New Value
	 * @return null or error message
	 */
	public String product(Properties ctx, int WindowNo, GridTab mTab,
			GridField mField, Object value) {
		
		//
		mTab.setValue("Price", null);
		mTab.setValue("C_UOM_ID", null);
		mTab.setValue("Qty", null);
		mTab.setValue("Description", null);

		
		//
		Integer M_Product_ID = (Integer) value;
		if (M_Product_ID == null || M_Product_ID.intValue() == 0)
			return "";

		/***** Price Calculation see also qty ****/
		int C_BPartner_ID = Env.getContextAsInt(ctx, WindowNo, "C_BPartner_ID");
		BigDecimal Qty = (BigDecimal) mTab.getValue("QtyOrdered");
		boolean IsSOTrx = Env.getContext(ctx, WindowNo, "IsSOTrx").equals("Y");
		MProductPricing pp = new MProductPricing(M_Product_ID.intValue(),
				C_BPartner_ID, Qty, IsSOTrx);

		//
		int M_PriceList_ID = Env.getContextAsInt(ctx, WindowNo,
				"M_PriceList_ID");
		pp.setM_PriceList_ID(M_PriceList_ID);
		Timestamp orderDate = (Timestamp) mTab.getValue("DateOrdered");

		/** PLV is only accurate if PL selected in header */
		int M_PriceList_Version_ID = Env.getContextAsInt(ctx, WindowNo,
				"M_PriceList_Version_ID");
		if (M_PriceList_Version_ID == 0 && M_PriceList_ID > 0) {
			String sql = "SELECT plv.M_PriceList_Version_ID "
					+ "FROM M_PriceList_Version plv "
					+ "WHERE plv.M_PriceList_ID=? " // 1
					+ " AND plv.ValidFrom <= ? "
					+ "ORDER BY plv.ValidFrom DESC";
			// Use newest price list - may not be future

			M_PriceList_Version_ID = DB.getSQLValueEx(null, sql,
					M_PriceList_ID, orderDate);
			if (M_PriceList_Version_ID > 0)
				Env.setContext(ctx, WindowNo, "M_PriceList_Version_ID",
						M_PriceList_Version_ID);
		}

		pp.setM_PriceList_Version_ID(M_PriceList_Version_ID);
		pp.setPriceDate(orderDate);

		//
		mTab.setValue("Price", pp.getPriceStd());
		mTab.setValue("C_UOM_ID", pp.getC_UOM_ID());
		mTab.setValue("Qty", new BigDecimal(1));
		mTab.setValue("Description", MProduct.get(ctx, M_Product_ID)
				.getDescription());

		return "";
	} // product

	/**
	 * Define campos relacionados ao DocType
	 */
	private String setDocTypeRelated(Properties ctx, GridTab mTab, Object value) {

		Integer C_DocType_ID = (Integer) value;
		if (C_DocType_ID == null || C_DocType_ID == 0) {
			mTab.setValue("LBR_NFSSerie", null);
			mTab.setValue("LBR_RPSStatus", null);
			mTab.setValue("LBR_RPSNumero", null);
			mTab.setValue("LBR_RPSTipo", null);
			mTab.setValue("LBR_RPSSerie", null);
			return "";
		}

		MDocType dt = new MDocType(ctx, C_DocType_ID, null);
		mTab.setValue("LBR_NFSSerie", dt.get_Value("LBR_NFeSerie"));
		mTab.setValue("LBR_IsDocIssuedByOrg",
				dt.get_Value("LBR_IsDocIssuedByOrg"));

		return "";
	}

}
