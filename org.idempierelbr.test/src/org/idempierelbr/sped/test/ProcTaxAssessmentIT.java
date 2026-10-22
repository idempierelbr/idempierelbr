package org.idempierelbr.sped.test;

import static org.assertj.core.api.Assertions.assertThat;

import java.math.BigDecimal;
import java.sql.Timestamp;

import org.compiere.model.MProcess;
import org.compiere.model.MTable;
import org.compiere.model.PO;
import org.compiere.model.Query;
import org.compiere.process.ProcessInfo;
import org.compiere.process.ServerProcessCtl;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.TimeUtil;
import org.idempiere.test.DictionaryIDs;
import org.idempierelbr.test.AbstractLBRTestCase;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.CsvSource;

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
		createSPEDOptions();

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

	@Test
	void doIt_ignoresNFeWithoutAuthorization() {
		createSPEDOptions();
		PO assessment = createICMSAssessment();
		Timestamp day = dayInPeriodOf(assessment);
		linkOrgToBPartner();

		addNotaFiscal(day, true, "55", "100", "CO", "100.00"); // own sale, authorized: debit
		addNotaFiscal(day, true, "55", "101", "CO", "50.00"); // own sale, cancelled at SEFAZ
		addNotaFiscal(day, true, "55", null, "CO", "30.00"); // own sale, never transmitted
		addNotaFiscal(day, false, "55", null, "CO", "20.00"); // supplier's sale typed without protocol: our credit
		addNotaFiscal(day, false, "55", "101", "CO", "7.00"); // supplier's sale cancelled at SEFAZ

		ProcessInfo pi = runProcess(assessment.get_ID());

		assertThat(pi.isError()).as(pi.getSummary()).isFalse();
		assessment.load(getTrxName());
		assertThat((BigDecimal) assessment.get_Value("TotalDr")).isEqualByComparingTo("100.00");
		assertThat((BigDecimal) assessment.get_Value("TotalCr")).isEqualByComparingTo("20.00");
	}

	/**
	 * One document per run, so each case says alone whether its ICMS reaches the
	 * assessment: an own sale is a debit, a supplier's sale is our credit (the
	 * organization is commercial and the line has no ST).
	 */
	@ParameterizedTest(name = "issuedByOrg={0} model={1} status=[{2}] docStatus={3} -> counted={4}")
	@CsvSource(nullValues = "NULL", value = {
			// authorized
			"true,  55, 100,     CO, true",
			"true,  55, 150,     CO, true", // authorized out of time
			"true,  55, 100,     CL, true",
			"true,  55, ' 100 ', CO, true", // padded by an import
			"false, 55, 100,     CO, true",
			// not authorized at SEFAZ, though completed in the system
			"true,  55, 101,     CO, false", // cancelled
			"true,  55, 110,     CO, false", // denied
			"true,  55, 302,     CO, false", // denied, recipient irregular
			"true,  55, 748,     CO, false", // rejected
			"false, 55, 101,     CO, false", // supplier cancelled it
			// no status
			"true,  55, NULL,    CO, false", // own NF-e never transmitted
			"true,  55, '',      CO, false",
			"true,  55, '   ',   CO, false",
			"true,  65, NULL,    CO, false", // own NFC-e never transmitted
			"true,  01, NULL,    CO, true", // paper model: there is no SEFAZ status
			"false, 55, NULL,    CO, true", // supplier's document typed without protocol
			// document not completed: out regardless of the NF-e
			"true,  55, 100,     VO, false",
			"true,  55, 100,     DR, false",
	})
	void doIt_countsOnlyAuthorizedNFe(boolean issuedByOrg, String model, String nfeStatus, String docStatus,
			boolean counted) {
		createSPEDOptions();
		PO assessment = createICMSAssessment();
		linkOrgToBPartner();
		addNotaFiscal(dayInPeriodOf(assessment), issuedByOrg, model, nfeStatus, docStatus, "12.34");

		ProcessInfo pi = runProcess(assessment.get_ID());

		assertThat(pi.isError()).as(pi.getSummary()).isFalse();
		assessment.load(getTrxName());
		BigDecimal expected = counted ? new BigDecimal("12.34") : BigDecimal.ZERO;
		assertThat((BigDecimal) assessment.get_Value(issuedByOrg ? "TotalDr" : "TotalCr")).isEqualByComparingTo(expected);
		assertThat((BigDecimal) assessment.get_Value(issuedByOrg ? "TotalCr" : "TotalDr")).isEqualByComparingTo("0");
	}

	/**
	 * The process already left out sales without an access key (never transmitted);
	 * the NF-e status check must not bring them back.
	 */
	@Test
	void doIt_stillIgnoresOwnSaleWithoutAccessKey() {
		createSPEDOptions();
		PO assessment = createICMSAssessment();
		linkOrgToBPartner();
		int nf = addNotaFiscal(dayInPeriodOf(assessment), true, "55", "100", "CO", "12.34");
		DB.executeUpdateEx("UPDATE LBR_NotaFiscal SET LBR_NFeID = NULL WHERE LBR_NotaFiscal_ID = ?",
				new Object[] { nf }, getTrxName());

		assertThat(runProcess(assessment.get_ID()).isError()).isFalse();
		assessment.load(getTrxName());

		assertThat((BigDecimal) assessment.get_Value("TotalDr")).isEqualByComparingTo("0");
	}

	/** Running the assessment again over the same documents gives the same totals. */
	@Test
	void doIt_isRepeatable() {
		createSPEDOptions();
		PO assessment = createICMSAssessment();
		Timestamp day = dayInPeriodOf(assessment);
		linkOrgToBPartner();
		addNotaFiscal(day, true, "55", "100", "CO", "100.00");
		addNotaFiscal(day, true, "55", "101", "CO", "50.00");
		addNotaFiscal(day, false, "55", "100", "CO", "40.00");

		assertThat(runProcess(assessment.get_ID()).isError()).isFalse();
		assessment.load(getTrxName());
		Object[] first = { assessment.get_Value("TotalDr"), assessment.get_Value("TotalCr"), assessment.get_Value("TotalAmt"),
				assessment.get_Value("LBR_SaldoCredorTransportar") };

		assertThat(runProcess(assessment.get_ID()).isError()).isFalse();
		assessment.load(getTrxName());

		assertThat((BigDecimal) assessment.get_Value("TotalDr")).isEqualByComparingTo((BigDecimal) first[0]).isEqualByComparingTo("100.00");
		assertThat((BigDecimal) assessment.get_Value("TotalCr")).isEqualByComparingTo((BigDecimal) first[1]).isEqualByComparingTo("40.00");
		assertThat((BigDecimal) assessment.get_Value("TotalAmt")).isEqualByComparingTo((BigDecimal) first[2]).isEqualByComparingTo("60.00");
		assertThat((BigDecimal) assessment.get_Value("LBR_SaldoCredorTransportar")).isEqualByComparingTo((BigDecimal) first[3]);
	}

	private void createSPEDOptions() {
		PO options = MTable.get(Env.getCtx(), "LBR_SPEDOptions").getPO(0, getTrxName());
		options.setAD_Org_ID(DictionaryIDs.AD_Org.HQ.id);
		options.set_ValueOfColumn("LBR_SPED_Activity", "2"); // Comercial
		options.set_ValueOfColumn("LBR_SPED_Profile", "A");
		options.saveEx();
	}

	private Timestamp dayInPeriodOf(PO assessment) {
		return TimeUtil.addDays(DB.getSQLValueTSEx(getTrxName(),
				"SELECT StartDate FROM C_Period WHERE C_Period_ID = ?", assessment.get_ValueAsInt("C_Period_ID")), 5);
	}

	/** LBR_FactFiscal only lists documents of an organization linked to a business partner */
	private void linkOrgToBPartner() {
		DB.executeUpdateEx("UPDATE C_BPartner SET AD_OrgBP_ID = ? WHERE C_BPartner_ID = ?",
				new Object[] { DictionaryIDs.AD_Org.HQ.id, DictionaryIDs.C_BPartner.SEED_FARM.id }, getTrxName());
	}

	/**
	 * A fiscal document with one line of ICMS, inserted straight in the tables: the
	 * fiscal invoice model validators need a whole fiscal setup that Garden World
	 * does not have, and the process only reads the LBR_FactFiscal view.
	 * LBR_NFE_OperationType is the issuer's tpNF, a sale (1) in every case.
	 *
	 * @return LBR_NotaFiscal_ID
	 */
	private int addNotaFiscal(Timestamp day, boolean issuedByOrg, String model, String nfeStatus, String docStatus,
			String icms) {
		int client = getAD_Client_ID();
		int org = DictionaryIDs.AD_Org.HQ.id;
		int bpartner = DictionaryIDs.C_BPartner.JOE_BLOCK.id;
		int location = DB.getSQLValueEx(getTrxName(),
				"SELECT MIN(C_BPartner_Location_ID) FROM C_BPartner_Location WHERE C_BPartner_ID = ?", bpartner);
		int city = DB.getSQLValueEx(getTrxName(), "SELECT MIN(C_City_ID) FROM C_City");
		int region = DB.getSQLValueEx(getTrxName(), "SELECT MIN(C_Region_ID) FROM C_Region");
		int nf = DB.getNextID(client, "LBR_NotaFiscal", getTrxName());
		int line = DB.getNextID(client, "LBR_NotaFiscalLine", getTrxName());
		int details = DB.getNextID(client, "LBR_DocLine_Details", getTrxName());
		int icmsLine = DB.getNextID(client, "LBR_DocLine_ICMS", getTrxName());
		BigDecimal base = new BigDecimal(icms).multiply(BigDecimal.TEN);

		DB.executeUpdateEx("INSERT INTO LBR_NotaFiscal (LBR_NotaFiscal_ID, AD_Client_ID, AD_Org_ID, IsActive, "
				+ "Created, CreatedBy, Updated, UpdatedBy, DocumentNo, DateDoc, DateAcct, IsTaxIncluded, Processed, "
				+ "DocStatus, LBR_NFeStatus, LBR_IsDocIssuedByOrg, LBR_NFE_OperationType, LBR_NFeModel, LBR_NFeNatOp, "
				+ "C_BPartner_ID, C_BPartner_Location_ID, C_City_ID, C_Region_ID, LBR_NFE_DestinationType, "
				+ "LBR_NFeIndFinal, LBR_NFeIndPres, LBR_NFeID) "
				+ "VALUES (?, ?, ?, 'Y', ?, 0, ?, 0, ?, ?, ?, 'N', 'Y', ?, ?, ?, '1', ?, 'Venda', ?, ?, ?, ?, '1', '0', '1', ?)",
				new Object[] { nf, client, org, day, day, String.valueOf(nf), day, day, docStatus, nfeStatus,
						issuedByOrg ? "Y" : "N", model, bpartner, location, city, region,
						String.format("%044d", nf) },
				getTrxName());
		DB.executeUpdateEx("INSERT INTO LBR_NotaFiscalLine (LBR_NotaFiscalLine_ID, AD_Client_ID, AD_Org_ID, IsActive, "
				+ "LBR_NotaFiscal_ID, Line, C_Tax_ID, C_UOM_ID, Qty, PriceActual, LineNetAmt, Processed) "
				+ "VALUES (?, ?, ?, 'Y', ?, 10, ?, ?, 1, ?, ?, 'Y')",
				new Object[] { line, client, org, nf, DictionaryIDs.C_Tax.EXEMPT.id, DictionaryIDs.C_UOM.EACH.id, base, base },
				getTrxName());
		DB.executeUpdateEx("INSERT INTO LBR_DocLine_Details (LBR_DocLine_Details_ID, AD_Client_ID, AD_Org_ID, IsActive, "
				+ "LBR_NotaFiscalLine_ID) VALUES (?, ?, ?, 'Y', ?)",
				new Object[] { details, client, org, line }, getTrxName());
		DB.executeUpdateEx("INSERT INTO LBR_DocLine_ICMS (LBR_DocLine_ICMS_ID, AD_Client_ID, AD_Org_ID, IsActive, "
				+ "LBR_DocLine_Details_ID, LBR_TaxBaseAmt, LBR_TaxRate, LBR_TaxAmt) VALUES (?, ?, ?, 'Y', ?, ?, 10, ?)",
				new Object[] { icmsLine, client, org, details, base, new BigDecimal(icms) }, getTrxName());
		return nf;
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
