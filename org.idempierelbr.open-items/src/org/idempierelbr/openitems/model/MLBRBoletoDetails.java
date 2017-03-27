package org.idempierelbr.openitems.model;

import java.sql.ResultSet;
import java.util.Properties;

import org.compiere.model.MDocType;
import org.compiere.model.MInvoicePaySchedule;
import org.compiere.util.Env;
import org.idempierelbr.core.util.AdempiereLBR;

public class MLBRBoletoDetails extends X_LBR_BoletoDetails {

	/**
	 * 
	 */
	private static final long serialVersionUID = 3614319433379370868L;
	private MLBRBoleto p_MLBRBoleto = null;

	public MLBRBoletoDetails(Properties ctx, int LBR_BoletoDetails_ID,
			String trxName) {
		super(ctx, LBR_BoletoDetails_ID, trxName);
	}

	public MLBRBoletoDetails(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}
	
	/**
	 *  Auto populate based on parent information
	 */
	public void populateBasedOnParent() {
		MLBRCollectionDefault def = getParent().getMLBRCollectionDefault();
		
		if (def != null) {
			setLBR_Message5(def.getLBR_Message1());
			setLBR_Message6(def.getLBR_Message2());
			
			// Protest
			if (def.getLBR_ProtestCode() == null)
				setLBR_ProtestCode(MLBRBoletoDetails.LBR_PROTESTCODE_3_NaoProtestar);
			else {
				setLBR_ProtestCode(def.getLBR_ProtestCode());
				setLBR_ProtestDays(def.getLBR_ProtestDays());
			}
			
			// Late Payment Penalty
			updateLatePaymentPenalty();
			
			// Interest
			updateInterest();
			
			// Return
			if (def.getLBR_CollectionReturnCode() == null)
				setLBR_CollectionReturnCode(
						MLBRBoletoDetails.LBR_COLLECTIONRETURNCODE_2_NaoBaixarNaoDevolver);
			else {
				setLBR_CollectionReturnCode(def.getLBR_CollectionReturnCode());
				setLBR_CollectionReturnDays(def.getLBR_CollectionReturnDays());
			}
			
			// Discount
			updateDiscounts();			
		}
		
		MDocType dt = getParent().getMDocType();
		
		if (dt != null) {
			if (dt.get_ValueAsString("LBR_Message3") != null && !dt.get_ValueAsString("LBR_Message3").equals(""))
				setLBR_Message5(dt.get_ValueAsString("LBR_Message3"));
			
			if (dt.get_ValueAsString("LBR_Message4") != null && !dt.get_ValueAsString("LBR_Message4").equals(""))
				setLBR_Message6(dt.get_ValueAsString("LBR_Message4"));
			
			setLBR_Message7(dt.get_ValueAsString("LBR_Message7"));
			setLBR_Message8(dt.get_ValueAsString("LBR_Message8"));
			setLBR_Message9(getParent().getLBR_NumberInOrg());
		}
	}
	
	/**
	 *  Update discount information based on Invoice Payment Schedule
	 */
	public void updateDiscounts() {
		if (getParent().getC_InvoicePaySchedule_ID() > 0) {
			MInvoicePaySchedule sched = new MInvoicePaySchedule(getCtx(),
					getParent().getC_InvoicePaySchedule_ID(), get_TrxName());
			
			if (sched.getDiscountAmt().compareTo(Env.ZERO) == 1) {
				setLBR_CNABDiscount1Code(
						MLBRBoletoDetails.LBR_CNABDISCOUNT1CODE_1_ValorFixoAteADataInformada);
				setLBR_CNABDiscount1Date(sched.getDiscountDate());
				setLBR_CNABDiscount1AP(sched.getDiscountAmt());
			}
		}	
	}
	
	/**
	 *  Update late payment penalty information based on parent
	 */
	public void updateLatePaymentPenalty() {
		MLBRCollectionDefault def = getParent().getMLBRCollectionDefault();
		
		if (def != null) {
			if (def.getLBR_LatePaymentPenaltyCode() != null) {
				setLBR_LatePaymentPenaltyCode(def.getLBR_LatePaymentPenaltyCode());
				
				if (def.getLBR_LatePaymentPenaltyDays() >= 0)
					setLBR_LatePaymentPenaltyDate(AdempiereLBR.addDays(getParent().getDueDate(),
							def.getLBR_LatePaymentPenaltyDays()));
				
				setLBR_LatePaymentPenaltyAP(def.getLBR_LatePaymentPenaltyAP());
			}
		}
	}
	
	/**
	 *  Update interest information based on parent
	 */
	public void updateInterest() {
		MLBRCollectionDefault def = getParent().getMLBRCollectionDefault();
		
		if (def != null) {
			if (def.getLBR_InterestCode() != null) {
				setLBR_InterestCode(def.getLBR_InterestCode());
				
				if (def.getLBR_InterestDays() >= 0)
					setLBR_InterestDate(AdempiereLBR.addDays(getParent().getDueDate(),
							def.getLBR_InterestDays()));
				
				setLBR_InterestAP(def.getLBR_InterestAP());
			}
		}
	}
	
	/**
	 *  Get the parent
	 *  @return MLBRBoleto boleto
	 */
	public MLBRBoleto getParent() {
		if (p_MLBRBoleto == null)
			p_MLBRBoleto = new MLBRBoleto(getCtx(), getLBR_Boleto_ID(), get_TrxName());
		
		return p_MLBRBoleto;
	}

}
