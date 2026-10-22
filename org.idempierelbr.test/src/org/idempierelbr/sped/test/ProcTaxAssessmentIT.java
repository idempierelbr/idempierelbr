package org.idempierelbr.sped.test;

import static org.assertj.core.api.Assertions.assertThat;

import java.math.BigDecimal;

import org.compiere.model.MProcess;
import org.compiere.model.MTable;
import org.compiere.model.PO;
import org.compiere.model.Query;
import org.compiere.process.ProcessInfo;
import org.compiere.process.ServerProcessCtl;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.idempiere.test.DictionaryIDs;
import org.idempierelbr.test.AbstractLBRTestCase;
import org.junit.jupiter.api.Test;

/**
 * DB integration tests for the "Process Tax Assessment" process (ProcTaxAssessment).
 * <p>
 * The process is run through its AD_Process, because org.idempierelbr.sped exports no packages.
 */
class ProcTaxAssessmentIT extends AbstractLBRTestCase {

	@Test
	void doIt_failsWithClearMessage_whenOrgHasNoSPEDOptions() {
		PO assessment = createICMSAssessment();

		ProcessInfo pi = runProcess(assessment.get_ID());

		assertThat(pi.isError()).as(pi.getSummary()).isTrue();
		assertThat(pi.getSummary()).contains("SPED");
	}

	@Test
	void doIt_savesTotals_whenOrgHasSPEDOptions() {
		PO options = MTable.get(Env.getCtx(), "LBR_SPEDOptions").getPO(0, getTrxName());
		options.setAD_Org_ID(DictionaryIDs.AD_Org.HQ.id);
		options.set_ValueOfColumn("LBR_SPED_Activity", "2"); // Comercial
		options.set_ValueOfColumn("LBR_SPED_Profile", "A");
		options.saveEx();

		PO assessment = createICMSAssessment();
		assessment.set_ValueOfColumn("CumulatedAmt", new BigDecimal("10.00"));
		assessment.saveEx();

		ProcessInfo pi = runProcess(assessment.get_ID());

		assertThat(pi.isError()).as(pi.getSummary()).isFalse();
		assessment.load(getTrxName());
		// Garden World has no fiscal documents: the previous balance is carried forward untouched
		assertThat((BigDecimal) assessment.get_Value("LBR_SaldoCredorTransportar")).isEqualByComparingTo("10.00");
		assertThat((BigDecimal) assessment.get_Value("TotalAmt")).isEqualByComparingTo("0");
	}

	private PO createICMSAssessment() {
		int taxNameId = DB.getSQLValueEx(getTrxName(),
				"SELECT LBR_TaxName_ID FROM LBR_TaxName WHERE Name='ICMSPROD' AND AD_Client_ID=0");
		int periodId = DB.getSQLValueEx(getTrxName(),
				"SELECT MIN(C_Period_ID) FROM C_Period WHERE AD_Client_ID=?", getAD_Client_ID());

		PO assessment = MTable.get(Env.getCtx(), "LBR_TaxAssessment").getPO(0, getTrxName());
		assessment.setAD_Org_ID(DictionaryIDs.AD_Org.HQ.id);
		assessment.set_ValueOfColumn("LBR_TaxName_ID", taxNameId);
		assessment.set_ValueOfColumn("C_Period_ID", periodId);
		assessment.set_ValueOfColumn("CumulatedAmt", Env.ZERO);
		assessment.set_ValueOfColumn("LBR_SaldoCredorTransportar", Env.ZERO);
		assessment.set_ValueOfColumn("TotalAmt", Env.ZERO);
		assessment.saveEx();
		return assessment;
	}

	private ProcessInfo runProcess(int recordId) {
		MProcess process = new Query(Env.getCtx(), MProcess.Table_Name, "Value=?", null)
				.setParameters("LBR_ProcTaxAssessment").first();
		ProcessInfo pi = new ProcessInfo(process.getName(), process.get_ID());
		pi.setAD_Client_ID(getAD_Client_ID());
		pi.setAD_User_ID(getAD_User_ID());
		pi.setTable_ID(MTable.getTable_ID("LBR_TaxAssessment"));
		pi.setRecord_ID(recordId);
		pi.setTransactionName(getTrxName());
		// managedTrx=false: otherwise the process commits the test transaction and the per-test rollback is lost
		ServerProcessCtl.process(pi, getTrx(), false);
		return pi;
	}
}
