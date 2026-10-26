package org.idempierelbr.mdfe.test;

import static org.assertj.core.api.Assertions.assertThat;

import org.assertj.core.api.SoftAssertions;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;
import org.compiere.model.GridWindow;
import org.compiere.model.MDocType;
import org.compiere.model.MQuery;
import org.compiere.model.Query;
import org.compiere.util.Env;
import org.idempierelbr.mdfe.model.X_LBR_MDFe;
import org.idempierelbr.test.AbstractLBRTestCase;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.Test;

/**
 * The "Manifesto Eletronico" window as the dictionary defines it, loaded
 * headless the way the web client loads it: form columns and the values a
 * new manifest starts with.
 * <p>
 * Needs an iDempiere database with the MDF-e migrations; see
 * {@link MDFeCIOTRequiredIT} for how to run it.
 */
class MDFeWindowIT extends AbstractLBRTestCase {

	/** AD_Window_ID of "Manifesto Eletronico" (202609081430_LBRMDFeJanela.sql). */
	private static final int MDFE_WINDOW = 800038;

	private GridWindow window;

	@AfterEach
	void closeWindow() {
		if (window != null)
			window.dispose();
	}

	/** Two columns put every label on the left half and every input on the right. */
	@Test
	void everyTabHasTheSixColumnForm() {
		window = GridWindow.get(Env.getCtx(), 1, MDFE_WINDOW);
		SoftAssertions softly = new SoftAssertions();
		for (int i = 0; i < window.getTabCount(); i++) {
			window.initTab(i);
			GridTab tab = window.getTab(i);
			softly.assertThat(tab.getNumColumns()).as(tab.getName()).isEqualTo(6);
		}
		softly.assertAll();
	}

	/** A button has no label, so it starts where the inputs on the left start. */
	@Test
	void buttonsStartWhereLeftInputsStart() {
		GridTab header = header();
		SoftAssertions softly = new SoftAssertions();
		for (String button : new String[] { "DocAction", "LBR_ProcCancelar", "LBR_ProcEncerrar",
				"LBR_ProcIncluirCondutor" }) {
			GridField field = header.getField(button);
			softly.assertThat(field.getXPosition()).as(button).isEqualTo(2);
			softly.assertThat(field.isSameLine()).as(button + " same line").isFalse();
		}
		GridField description = header.getField("Description");
		softly.assertThat(description.getXPosition() + 1).as("input column of Description").isEqualTo(2);
		softly.assertAll();
	}

	@Test
	void newManifestIsOwnCargoInProductionWithoutMDFeEnvironment() {
		GridTab header = newManifest();

		assertThat(header.getValue(X_LBR_MDFe.COLUMNNAME_LBR_tpEmit))
				.isEqualTo(X_LBR_MDFe.LBR_TPEMIT_TransportadorDeCargaPropria);
		assertThat(header.getValue(X_LBR_MDFe.COLUMNNAME_LBR_tpAmb)).isEqualTo(X_LBR_MDFe.LBR_TPAMB_Producao);
	}

	@Test
	void newManifestTakesTheEnvironmentOfTheMDFeDocumentType() {
		MDocType mdfe = new Query(Env.getCtx(), MDocType.Table_Name, "DocBaseType='MDF' AND IsDefault='Y'",
				getTrxName()).setClient_ID().setOnlyActiveRecords(true).first();
		assertThat(mdfe).as("MDF-e document type of GardenWorld").isNotNull();
		mdfe.set_ValueOfColumn("LBR_NFeEnv", X_LBR_MDFe.LBR_TPAMB_Homologacao);
		mdfe.saveEx();

		GridTab header = newManifest();

		assertThat(header.getValue(X_LBR_MDFe.COLUMNNAME_LBR_tpAmb)).isEqualTo(X_LBR_MDFe.LBR_TPAMB_Homologacao);
	}

	private GridTab header() {
		window = GridWindow.get(Env.getCtx(), 1, MDFE_WINDOW);
		window.initTab(0);
		return window.getTab(0);
	}

	/** The New button: defaults run in the tab's transaction, which is the test's. */
	private GridTab newManifest() {
		GridTab header = header();
		MQuery none = new MQuery(X_LBR_MDFe.Table_Name);
		none.addRestriction("1=2");
		header.setQuery(none);
		header.getTableModel().setImportingMode(false, getTrxName());
		header.query(false);
		assertThat(header.dataNew(false)).as("new record").isTrue();
		return header;
	}
}
