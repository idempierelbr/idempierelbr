package org.idempierelbr.sped.process;

import java.math.BigDecimal;
import java.math.MathContext;
import java.math.RoundingMode;
import java.util.logging.Level;

import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.idempierelbr.sped.model.MLBRFactFiscal;
import org.idempierelbr.sped.model.X_LBR_TaxAssessment;
import org.idempierelbr.tax.model.MLBRTaxName;


/**
 * 	Apuração de Impostos
 *  Processo de apuração de impostos genérico para IPI e ICMS
 *	
 *  @author Pablo Boff Pigozzo
 *  @version $Id: ProcTaxAssessment.java, 28/08/2012 10:37 pablobp $
 */
public class ProcTaxAssessment extends SvrProcess
{
	
	/**
	 * 	Prepare
	 */
	protected void prepare ()
	{
		ProcessInfoParameter[] para = getParameter();
		for (int i = 0; i < para.length; i++)
		{
			String name = para[i].getParameterName();
			if (para[i].getParameter() == null)
				;
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}
	
	}	//	prepare

	/**
	 * 	Process
	 *	@return Info
	 *	@throws Exception
	 */
	protected String doIt() throws Exception
	{
		//
		MathContext mc = new MathContext(12);
		
		// validar record ID
		int Record_ID  = getRecord_ID();
		if (Record_ID == 0)
			throw new IllegalArgumentException("LBR_Assessment_ID = 0");

		
		// carregar apuração
		X_LBR_TaxAssessment m_taxassesment = new X_LBR_TaxAssessment(getCtx(), Record_ID, get_TrxName());
		
		
		// Fatos Fiscais
		MLBRFactFiscal[] factFiscals = MLBRFactFiscal.get(getCtx(), 
				m_taxassesment.getC_Period().getStartDate(), 
				m_taxassesment.getC_Period().getEndDate(), 
				m_taxassesment.getAD_Org_ID(), 
				null, get_TrxName());
		
		
		// 
		BigDecimal IPIAmtCredit = Env.ZERO;
		BigDecimal IPIAmtDebit = Env.ZERO;
		BigDecimal ICMSAmtCredit = Env.ZERO;
		BigDecimal ICMSAmtDebit = Env.ZERO;
		BigDecimal PISAmtCredit = Env.ZERO;
		BigDecimal PISAmtDebit = Env.ZERO;
		BigDecimal COFINSAmtCredit = Env.ZERO;
		BigDecimal COFINSAmtDebit = Env.ZERO;
		
		// 
		BigDecimal Credit = Env.ZERO;
		BigDecimal Debit = Env.ZERO;
		
		
		// loop fatos fiscais
		for (MLBRFactFiscal m_factfiscal : factFiscals)
		{
			
			/** Conjunto de regras iniciais que não geram valores de apuração */
			
			/*
			 * CFOP - 5/6.929 - NF emitida em substituição do CUPOM FISCAL
			 */
			if (m_factfiscal.getLBR_CFOP_Value()!=null && (m_factfiscal.getLBR_CFOP_Value().equals("5.929")
					|| m_factfiscal.getLBR_CFOP_Value().equals("6.929")))
				continue;
			
			/*
			 * NF cancelada
			 */
			if(m_factfiscal.isCancelled())
				continue;
			
			
			/*
			 * Se a empresa não apura IPI e ST e tem ST na linha, não se creditar do ICMS
			 * pois esse já foi pago anteriormente
			 * 
			 * Obs.: Ver regra no RC100
			 */
			if ((!m_factfiscal.getLBR_SPED_Activity().equals(MLBRFactFiscal.LBR_SPED_ACTIVITY_IndustryOrEquivalent)
					&& m_factfiscal.getLBR_NFE_OperationType().equals(MLBRFactFiscal.LBR_NFE_OPERATIONTYPE_In)))
			{

				// se não tiver ST na linha, se creditar do ICMS
				if (m_factfiscal.getLBR_ICMSST_TaxAmt().signum() < 1)
					ICMSAmtCredit = ICMSAmtCredit.add(m_factfiscal.getLBR_ICMS_TaxAmt(), mc);

				// continuar e não se creditar de IPI
				continue;
			}
			
			
			
			// débitos
			if(m_factfiscal.getLBR_NFE_OperationType().equals("1"))
			{
				ICMSAmtDebit = ICMSAmtDebit.add(m_factfiscal.getLBR_ICMS_TaxAmt(), mc);
				IPIAmtDebit = IPIAmtDebit.add(m_factfiscal.getLBR_IPI_TaxAmt(), mc);
				PISAmtDebit = PISAmtDebit.add(m_factfiscal.getLBR_PIS_TaxAmt(), mc);
				COFINSAmtDebit = COFINSAmtDebit.add(m_factfiscal.getLBR_COFINS_TaxAmt(), mc);
			}
			
			// crédito
			else
			{
				ICMSAmtCredit = ICMSAmtCredit.add(m_factfiscal.getLBR_ICMS_TaxAmt(), mc);
				IPIAmtCredit = IPIAmtCredit.add(m_factfiscal.getLBR_IPI_TaxAmt(), mc);
				PISAmtCredit = PISAmtCredit.add(m_factfiscal.getLBR_PIS_TaxAmt(), mc);
				COFINSAmtCredit = COFINSAmtCredit.add(m_factfiscal.getLBR_COFINS_TaxAmt(), mc);
			}
			
		}
		
		// nome do imposto (ICMS/IPI/PIS/COFINS)
		String taxName = new MLBRTaxName(getCtx(), m_taxassesment.getLBR_TaxName_ID(), get_TrxName()).getName();
		
		// outros crédito/débitos
		BigDecimal otherCredit = getOtherCredit(Record_ID);
		BigDecimal otherDebit  = getOtherDebit(Record_ID);
		
		// valor acumulado do mês anterior
		BigDecimal cumulatedAmt = m_taxassesment.getCumulatedAmt();
		
		// definir imposto que se está apurando
		if(taxName.contains("IPI"))
		{
			Credit = IPIAmtCredit;
			Debit  = IPIAmtDebit;
		} 
		else if (taxName.contains("ICMS"))
		{
			Credit = ICMSAmtCredit;
			Debit  = ICMSAmtDebit;
		}
		
		else if (taxName.contains("PIS"))
		{
			Credit = PISAmtCredit;
			Debit  = PISAmtDebit;
		}
		
		else if (taxName.contains("COFINS"))
		{
			Credit = COFINSAmtCredit;
			Debit  = COFINSAmtDebit;
		}
		
		// crédito e débito
		m_taxassesment.setTotalCr(Credit.setScale(2, RoundingMode.HALF_UP));
		m_taxassesment.setTotalDr(Debit.setScale(2, RoundingMode.HALF_UP));	
		
		// valor total = cumulatedAmt + (credit+otherCredit)-(debit+otherDebit)
		BigDecimal totalAmt = cumulatedAmt.add((m_taxassesment.getTotalCr().add(otherCredit)).subtract(m_taxassesment.getTotalDr().add(otherDebit)));
		
		// salvar total
		if(totalAmt.signum() == -1)
		{
			m_taxassesment.setLBR_SaldoCredorTransportar(Env.ZERO);
			m_taxassesment.setTotalAmt(totalAmt.abs().setScale(2, RoundingMode.HALF_UP));
		}
		else
		{
			m_taxassesment.setLBR_SaldoCredorTransportar(totalAmt.abs().setScale(2, RoundingMode.HALF_UP));
			m_taxassesment.setTotalAmt(Env.ZERO);
		}
		
		// 
		m_taxassesment.save();
		
		
		//
		return "";
	}
	
	
	/**
	 * Outros créditos da apuração.
	 * 
	 * Ajustes e outros
	 * 
	 * @param LBR_TaxAssessment_ID
	 * @return
	 */
	private BigDecimal getOtherCredit(int LBR_TaxAssessment_ID){
		
		BigDecimal amt = null;
		
		String sql = "SELECT SUM(al.Amt) 					" +
				     "  FROM LBR_TaxAssessmentLine al 		" +
				     " WHERE al.LBR_TaxAssessment_ID = ? 	" +
				     "   AND al.Type IN ('2', '3') 		";
		
		
		amt = DB.getSQLValueBD(get_TrxName(), sql, LBR_TaxAssessment_ID);
		
		if (amt == null)
			amt =  Env.ZERO;
		
		return amt;
	} //getOtherCredit
	

	/**
	 * Outros débitos da apuração
	 * 
	 * Ajustes e outros.
	 * 
	 * @param LBR_TaxAssessment_ID
	 * @return
	 */
	private BigDecimal getOtherDebit(int LBR_TaxAssessment_ID){
		
		BigDecimal amt = null;
		
		String sql = "SELECT SUM(al.Amt) 					" +
				     "  FROM LBR_TaxAssessmentLine al 		" +
				     " WHERE al.LBR_TaxAssessment_ID = ? 	" +
				     "   AND al.Type IN ('0','1')		";
		
		amt = DB.getSQLValueBD(get_TrxName(), sql, LBR_TaxAssessment_ID);
		
		if (amt == null)
			amt =  Env.ZERO;
		
		return amt;
	} //getOtherDebit
		
} //ProcApuracaoICMS