package org.idempierelbr.tax.provider;

import java.math.BigDecimal;
import java.math.RoundingMode;

import org.compiere.model.MCurrency;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoicePaySchedule;
import org.compiere.model.MOrder;
import org.compiere.model.MOrderPaySchedule;
import org.compiere.util.CLogger;
import org.compiere.util.Env;

/**
 * Keep the payment schedule in sync with the grand total recalculated by the tax provider.
 *
 * MOrder.prepareIt()/MInvoice.prepareIt() call calculateTaxTotal() - and therefore this
 * tax provider - right before validating the payment schedule. Since it is the tax provider
 * that changes GrandTotal (surcharges, freight, insurance, discount), any schedule created
 * earlier - when the payment term was selected - is left holding a stale DueAmt and the
 * document is rejected with @ErrorPaymentSchedule@.
 *
 * Called at the end of calculateOrderTaxTotal()/calculateInvoiceTaxTotal(), while the new
 * grand total is still only in memory.
 */
public class LBRPayScheduleSync {

	/**	Logger			*/
	private static CLogger s_log = CLogger.getCLogger(LBRPayScheduleSync.class);

	/**
	 * 	Sync order pay schedule with the order grand total
	 *	@param order order with the recalculated grand total
	 */
	public static void sync(MOrder order) {
		MOrderPaySchedule[] scheds = MOrderPaySchedule.getOrderPaySchedule(
				order.getCtx(), order.getC_Order_ID(), 0, order.get_TrxName());
		if (scheds.length == 0)
			return;		//	no schedule: MPaymentTerm.applyOrder() creates it from the current total

		BigDecimal grandTotal = order.getGrandTotal();
		BigDecimal total = Env.ZERO;
		for (MOrderPaySchedule sched : scheds)
			total = total.add(sched.getDueAmt() != null ? sched.getDueAmt() : Env.ZERO);

		boolean onCredit = MOrder.PAYMENTRULE_OnCredit.equals(order.getPaymentRule())
						|| MOrder.PAYMENTRULE_DirectDebit.equals(order.getPaymentRule());

		//	Schedule the core rejects on prepareIt: payment rule other than on credit/direct debit,
		//	zero grand total, or a base that cannot be scaled
		if (!onCredit || grandTotal.signum() == 0 || total.signum() == 0) {
			for (MOrderPaySchedule sched : scheds) {
				sched.setParent(order);		//	afterDelete must see the in-memory order
				sched.deleteEx(true, order.get_TrxName());
			}
			order.setIsPayScheduleValid(false);
			s_log.info("Deleted pay schedule of " + order.getDocumentNo()
					+ " - PaymentRule=" + order.getPaymentRule() + ", GrandTotal=" + grandTotal);
			return;
		}

		if (total.compareTo(grandTotal) == 0)
			return;		//	already in sync

		//	Scale the installments to the new grand total, keeping count and due dates
		int scale = MCurrency.getStdPrecision(order.getCtx(), order.getC_Currency_ID());
		BigDecimal remainder = grandTotal;
		for (int i = 0; i < scheds.length; i++) {
			MOrderPaySchedule sched = scheds[i];
			sched.setParent(order);		//	afterSave must validate against the in-memory grand total
			BigDecimal oldDue = sched.getDueAmt();
			BigDecimal due;
			if (i == scheds.length - 1)
				due = remainder;		//	rounding leftovers go to the last installment
			else {
				due = grandTotal.multiply(oldDue).divide(total, scale, RoundingMode.HALF_UP);
				remainder = remainder.subtract(due);
			}
			sched.setDueAmt(due);
			if (sched.getDiscountAmt() != null && sched.getDiscountAmt().signum() != 0
					&& oldDue != null && oldDue.signum() != 0)
				sched.setDiscountAmt(sched.getDiscountAmt().multiply(due)
						.divide(oldDue, scale, RoundingMode.HALF_UP));
			sched.saveEx(order.get_TrxName());
		}
		order.validatePaySchedule();
		s_log.info("Rescaled pay schedule of " + order.getDocumentNo()
				+ " from " + total + " to " + grandTotal);
	}	//	sync

	/**
	 * 	Sync invoice pay schedule with the invoice grand total
	 *	@param invoice invoice with the recalculated grand total
	 */
	public static void sync(MInvoice invoice) {
		MInvoicePaySchedule[] scheds = MInvoicePaySchedule.getInvoicePaySchedule(
				invoice.getCtx(), invoice.getC_Invoice_ID(), 0, invoice.get_TrxName());
		if (scheds.length == 0)
			return;		//	no schedule: MPaymentTerm.apply() creates it from the current total

		BigDecimal grandTotal = invoice.getGrandTotal();
		BigDecimal total = Env.ZERO;
		for (MInvoicePaySchedule sched : scheds)
			total = total.add(sched.getDueAmt() != null ? sched.getDueAmt() : Env.ZERO);

		boolean onCredit = MInvoice.PAYMENTRULE_OnCredit.equals(invoice.getPaymentRule())
						|| MInvoice.PAYMENTRULE_DirectDebit.equals(invoice.getPaymentRule());

		if (!onCredit || grandTotal.signum() == 0 || total.signum() == 0) {
			for (MInvoicePaySchedule sched : scheds) {
				sched.setParent(invoice);
				sched.deleteEx(true, invoice.get_TrxName());
			}
			invoice.setIsPayScheduleValid(false);
			s_log.info("Deleted pay schedule of " + invoice.getDocumentNo()
					+ " - PaymentRule=" + invoice.getPaymentRule() + ", GrandTotal=" + grandTotal);
			return;
		}

		if (total.compareTo(grandTotal) == 0)
			return;

		int scale = MCurrency.getStdPrecision(invoice.getCtx(), invoice.getC_Currency_ID());
		BigDecimal remainder = grandTotal;
		for (int i = 0; i < scheds.length; i++) {
			MInvoicePaySchedule sched = scheds[i];
			sched.setParent(invoice);
			BigDecimal oldDue = sched.getDueAmt();
			BigDecimal due;
			if (i == scheds.length - 1)
				due = remainder;
			else {
				due = grandTotal.multiply(oldDue).divide(total, scale, RoundingMode.HALF_UP);
				remainder = remainder.subtract(due);
			}
			sched.setDueAmt(due);
			if (sched.getDiscountAmt() != null && sched.getDiscountAmt().signum() != 0
					&& oldDue != null && oldDue.signum() != 0)
				sched.setDiscountAmt(sched.getDiscountAmt().multiply(due)
						.divide(oldDue, scale, RoundingMode.HALF_UP));
			sched.saveEx(invoice.get_TrxName());
		}
		invoice.validatePaySchedule();
		s_log.info("Rescaled pay schedule of " + invoice.getDocumentNo()
				+ " from " + total + " to " + grandTotal);
	}	//	sync

}	//	LBRPayScheduleSync
