package org.idempierelbr.openitems.callout;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Properties;
import java.util.logging.Level;

import org.adempiere.base.IColumnCallout;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;
import org.compiere.model.MConversionRate;
import org.compiere.model.MCurrency;
import org.compiere.model.MPayment;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.idempierelbr.openitems.model.EventHandler;

public class CalloutPayment implements IColumnCallout {
	protected CLogger		log = CLogger.getCLogger(getClass());

	@Override
	public String start(Properties ctx, int WindowNo, GridTab mTab,
			GridField mField, Object value, Object oldValue) {
		
		if (mTab.getTableName().equals(MPayment.Table_Name))
			if (mField.getColumnName().equals("InterestAmt") || mField.getColumnName().equals("PayAmt")
					 || mField.getColumnName().equals("DiscountAmt") || mField.getColumnName().equals("WriteOffAmt")
					 || mField.getColumnName().equals("OverUnderAmt") || mField.getColumnName().equals("C_Currency_ID")
					 || mField.getColumnName().equals("IsOverUnderPayment")
					 || mField.getColumnName().equals("C_ConversionType_ID"))
				return amounts(ctx, WindowNo, mTab, mField, value, oldValue);
			else if (mField.getColumnName().equals("C_Invoice_ID"))
				return invoice(ctx, WindowNo, mTab, mField, value, oldValue);
			else 
				return null;
		else
			return null;
	}
	
	public String invoice(Properties ctx, int WindowNo, GridTab mTab,
			GridField mField, Object value, Object oldValue) {
		Integer C_Invoice_ID = (Integer) value;
		Integer C_InvoicePaySchedule_ID = null;
		
		if (C_Invoice_ID != null && C_Invoice_ID > 0)
			C_InvoicePaySchedule_ID = Env.getContextAsInt (ctx, WindowNo, Env.TAB_INFO, "C_InvoicePaySchedule_ID");

		// Check if there is any allocation created only to invoice (without C_InvoicePaySchedule_ID)
		if (EventHandler.getNoOfAllocationsToInvoiceOnly(ctx, C_Invoice_ID, null) > 0)
			C_InvoicePaySchedule_ID = null;
		
		mTab.setValue ("C_InvoicePaySchedule_ID", C_InvoicePaySchedule_ID);
		return "";
	}
	
	/**
	 * Esta é uma cópia adaptada (inclusão do InterestAmt) do método de mesmo nome
	 * em org.compiere.model.CallouPayment. Deve ser atualizado sempre que
	 * modificado no iDempiere. 
	 * 
	 * Payment_Amounts. Change of: - IsOverUnderPayment -> set OverUnderAmt to 0 -
	 * C_Currency_ID, C_ConvesionRate_ID -> convert all - PayAmt, DiscountAmt,
	 * WriteOffAmt, OverUnderAmt -> PayAmt make sure that add up to
	 * InvoiceOpenAmt
	 * @param ctx context
	 * @param WindowNo current Window No
	 * @param mTab Grid Tab
	 * @param mField Grid Field
	 * @param value New Value
	 * @param oldValue Old Value
	 * @return null or error message
	 */
	public String amounts(Properties ctx, int WindowNo, GridTab mTab,
			GridField mField, Object value, Object oldValue)
		{
			//if (isCalloutActive ()) // assuming it is resetting value
			if (mTab.getActiveCalloutInstance().length > 0)
				return "";
			int C_Invoice_ID = Env.getContextAsInt (ctx, WindowNo, "C_Invoice_ID");
			// New Payment
			if (Env.getContextAsInt (ctx, WindowNo, "C_Payment_ID") == 0
				&& Env.getContextAsInt (ctx, WindowNo, "C_BPartner_ID") == 0
				&& C_Invoice_ID == 0)
				return "";
			// Changed Column
			String colName = mField.getColumnName ();
			if (colName.equals ("IsOverUnderPayment") // Set Over/Under Amt to
				// Zero
				|| !"Y".equals (Env
					.getContext (ctx, WindowNo, "IsOverUnderPayment")))
				mTab.setValue ("OverUnderAmt", Env.ZERO);
			int C_InvoicePaySchedule_ID = 0;
			if (Env.getContextAsInt (ctx, WindowNo, Env.TAB_INFO, "C_Invoice_ID") == C_Invoice_ID
				&& Env.getContextAsInt (ctx, WindowNo, Env.TAB_INFO, "C_InvoicePaySchedule_ID") != 0)
			{
				C_InvoicePaySchedule_ID = Env.getContextAsInt (ctx, WindowNo, Env.TAB_INFO, "C_InvoicePaySchedule_ID");
			}
			// Get Open Amount & Invoice Currency
			BigDecimal InvoiceOpenAmt = Env.ZERO;
			int C_Currency_Invoice_ID = 0;
			if (C_Invoice_ID != 0)
			{
				Timestamp ts = (Timestamp)mTab.getValue ("DateTrx");
				if (ts == null)
					ts = new Timestamp (System.currentTimeMillis ());
				String sql = "SELECT C_BPartner_ID,C_Currency_ID," // 1..2
					+ " invoiceOpen(C_Invoice_ID,?)," // 3 #1
					+ " invoiceDiscount(C_Invoice_ID,?,?), IsSOTrx " // 4..5 #2/3
					+ "FROM C_Invoice WHERE C_Invoice_ID=?"; // #4
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				try
				{
					pstmt = DB.prepareStatement (sql, null);
					pstmt.setInt (1, C_InvoicePaySchedule_ID);
					pstmt.setTimestamp (2, ts);
					pstmt.setInt (3, C_InvoicePaySchedule_ID);
					pstmt.setInt (4, C_Invoice_ID);
					rs = pstmt.executeQuery ();
					if (rs.next ())
					{
						C_Currency_Invoice_ID = rs.getInt (2);
						InvoiceOpenAmt = rs.getBigDecimal (3); // Set Invoice Open
						// Amount
						if (InvoiceOpenAmt == null)
							InvoiceOpenAmt = Env.ZERO;
					}
				}
				catch (SQLException e)
				{
					log.log (Level.SEVERE, sql, e);
					return e.getLocalizedMessage ();
				}
				finally
				{
					DB.close (rs, pstmt);
					rs = null;
					pstmt = null;
				}
			} // get Invoice Info
			if (log.isLoggable(Level.FINE)) log.fine ("Open=" + InvoiceOpenAmt + ", C_Invoice_ID=" + C_Invoice_ID
				+ ", C_Currency_ID=" + C_Currency_Invoice_ID);
			// Get Info from Tab
			BigDecimal PayAmt = (BigDecimal)mTab.getValue ("PayAmt");
			if (PayAmt == null)
				PayAmt = Env.ZERO;
			BigDecimal DiscountAmt = (BigDecimal)mTab.getValue ("DiscountAmt");
			if (DiscountAmt == null)
				DiscountAmt = Env.ZERO;
			BigDecimal WriteOffAmt = (BigDecimal)mTab.getValue ("WriteOffAmt");
			if (WriteOffAmt == null)
				WriteOffAmt = Env.ZERO;
			BigDecimal OverUnderAmt = (BigDecimal)mTab.getValue ("OverUnderAmt");
			if (OverUnderAmt == null)
				OverUnderAmt = Env.ZERO;
			BigDecimal InterestAmt = (BigDecimal)mTab.getValue ("InterestAmt");
			if (InterestAmt == null)
				InterestAmt = Env.ZERO;
			if (log.isLoggable(Level.FINE)) log.fine ("Pay=" + PayAmt + ", Discount=" + DiscountAmt + ", WriteOff="
				+ WriteOffAmt + ", OverUnderAmt=" + OverUnderAmt);
			// Get Currency Info
			Integer curr_int = (Integer) mTab.getValue ("C_Currency_ID");
			if (curr_int == null)
				curr_int = Integer.valueOf(0);
			int C_Currency_ID = curr_int.intValue ();
			MCurrency currency = MCurrency.get (ctx, C_Currency_ID);
			Timestamp ConvDate = (Timestamp)mTab.getValue ("DateTrx");
			int C_ConversionType_ID = 0;
			Integer ii = (Integer)mTab.getValue ("C_ConversionType_ID");
			if (ii != null)
				C_ConversionType_ID = ii.intValue ();
			int AD_Client_ID = Env.getContextAsInt (ctx, WindowNo, "AD_Client_ID");
			int AD_Org_ID = Env.getContextAsInt (ctx, WindowNo, "AD_Org_ID");
			// Get Currency Rate
			BigDecimal CurrencyRate = Env.ONE;
			if ((C_Currency_ID > 0 && C_Currency_Invoice_ID > 0 && C_Currency_ID != C_Currency_Invoice_ID)
				|| colName.equals ("C_Currency_ID")
				|| colName.equals ("C_ConversionType_ID"))
			{
				if (log.isLoggable(Level.FINE)) log.fine ("InvCurrency=" + C_Currency_Invoice_ID + ", PayCurrency="
					+ C_Currency_ID + ", Date=" + ConvDate + ", Type="
					+ C_ConversionType_ID);
				CurrencyRate = MConversionRate.getRate (C_Currency_Invoice_ID,
					C_Currency_ID, ConvDate, C_ConversionType_ID, AD_Client_ID,
					AD_Org_ID);
				if (CurrencyRate == null || CurrencyRate.compareTo (Env.ZERO) == 0)
				{
					// mTab.setValue("C_Currency_ID", new
					// Integer(C_Currency_Invoice_ID)); // does not work
					if (C_Currency_Invoice_ID == 0)
						return ""; // no error message when no invoice is selected
					return "NoCurrencyConversion";
				}
				//
				InvoiceOpenAmt = InvoiceOpenAmt.multiply (CurrencyRate).setScale (
					currency.getStdPrecision (), BigDecimal.ROUND_HALF_UP);
				if (log.isLoggable(Level.FINE)) log.fine ("Rate=" + CurrencyRate + ", InvoiceOpenAmt="
					+ InvoiceOpenAmt);
			}
			// Currency Changed - convert all
			if (colName.equals ("C_Currency_ID")
				|| colName.equals ("C_ConversionType_ID"))
			{
				PayAmt = PayAmt.multiply (CurrencyRate).setScale (
					currency.getStdPrecision (), BigDecimal.ROUND_HALF_UP);
				mTab.setValue ("PayAmt", PayAmt);
				DiscountAmt = DiscountAmt.multiply (CurrencyRate).setScale (
					currency.getStdPrecision (), BigDecimal.ROUND_HALF_UP);
				mTab.setValue ("DiscountAmt", DiscountAmt);
				WriteOffAmt = WriteOffAmt.multiply (CurrencyRate).setScale (
					currency.getStdPrecision (), BigDecimal.ROUND_HALF_UP);
				mTab.setValue ("WriteOffAmt", WriteOffAmt);
				OverUnderAmt = OverUnderAmt.multiply (CurrencyRate).setScale (
					currency.getStdPrecision (), BigDecimal.ROUND_HALF_UP);
				mTab.setValue ("OverUnderAmt", OverUnderAmt);
				InterestAmt = InterestAmt.multiply (CurrencyRate).setScale (
						currency.getStdPrecision (), BigDecimal.ROUND_HALF_UP);
					mTab.setValue ("InterestAmt", InterestAmt);
			}
			// No Invoice - Set Discount, Witeoff, Under/Over to 0
			else if (C_Invoice_ID == 0)
			{
				if (Env.ZERO.compareTo (DiscountAmt) != 0)
					mTab.setValue ("DiscountAmt", Env.ZERO);
				if (Env.ZERO.compareTo (WriteOffAmt) != 0)
					mTab.setValue ("WriteOffAmt", Env.ZERO);
				if (Env.ZERO.compareTo (OverUnderAmt) != 0)
					mTab.setValue ("OverUnderAmt", Env.ZERO);
				if (Env.ZERO.compareTo (InterestAmt) != 0)
					mTab.setValue ("InterestAmt", Env.ZERO);
			} else {
				boolean processed = mTab.getValueAsBoolean(MPayment.COLUMNNAME_Processed);
				if (colName.equals ("PayAmt")
					&& (!processed)
					&& "Y".equals (Env.getContext (ctx, WindowNo, "IsOverUnderPayment")))
				{
					OverUnderAmt = InvoiceOpenAmt.subtract (PayAmt).subtract (
						DiscountAmt).subtract (WriteOffAmt);
					mTab.setValue ("OverUnderAmt", OverUnderAmt);
				}
				else if (colName.equals ("PayAmt")
					&& (!processed))
				{
					WriteOffAmt = InvoiceOpenAmt.subtract (PayAmt).subtract (
						DiscountAmt).subtract (OverUnderAmt);
					mTab.setValue ("WriteOffAmt", WriteOffAmt);
				}
				else if (colName.equals ("IsOverUnderPayment")
					&& (!processed))
				{
					boolean overUnderPaymentActive = "Y".equals (Env.getContext (ctx,
						WindowNo, "IsOverUnderPayment"));
					if (overUnderPaymentActive)
					{
						OverUnderAmt = InvoiceOpenAmt.subtract (PayAmt).subtract (
							DiscountAmt);
						mTab.setValue ("WriteOffAmt", Env.ZERO);
						mTab.setValue ("OverUnderAmt", OverUnderAmt);
					}else{
						WriteOffAmt = InvoiceOpenAmt.subtract (PayAmt).subtract (
							DiscountAmt);
						mTab.setValue ("WriteOffAmt", WriteOffAmt);
						mTab.setValue ("OverUnderAmt", Env.ZERO);
					}
				}
				// Added Lines By Goodwill (02-03-2006)
				// Reason: we must make the callout is called just when docstatus is
				// draft
				// Old Code : else // calculate PayAmt
				// New Code :
				else if ((!processed)) // calculate
				// PayAmt
				// End By Goodwill
				{
					PayAmt = InvoiceOpenAmt.subtract (DiscountAmt).subtract (
						WriteOffAmt).subtract (OverUnderAmt).add(InterestAmt);
					mTab.setValue ("PayAmt", PayAmt);
				}
			}
			return "";
		} // amounts
}