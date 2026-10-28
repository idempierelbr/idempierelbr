package org.idempierelbr.mdfe.test;

import static org.assertj.core.api.Assertions.assertThat;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import org.assertj.core.api.SoftAssertions;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;
import org.compiere.model.GridWindow;
import org.compiere.model.MDocType;
import org.compiere.model.MQuery;
import org.compiere.model.PO;
import org.compiere.model.Query;
import org.compiere.model.X_AD_FieldGroup;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.DisplayType;
import org.compiere.util.Env;
import org.compiere.util.Util;
import org.idempierelbr.mdfe.model.MLBRMDFe;
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

	/**
	 * Replays the placement loop of ADTabpanel (desktop, label beside input)
	 * over every tab: a field opens a row when its XPosition is not past the
	 * cursor, a field group resets the row, a span larger than what is left
	 * is cut. No row may open past the left input, cut a span, or end past
	 * the last column.
	 */
	@Test
	void everyRowStartsAtTheLeftAndFitsTheForm() {
		window = GridWindow.get(Env.getCtx(), 1, MDFE_WINDOW);
		List<String> problems = new ArrayList<>();

		for (int t = 0; t < window.getTabCount(); t++) {
			window.initTab(t);
			GridTab tab = window.getTab(t);
			int numCols = tab.getNumColumns() > 0 ? tab.getNumColumns() : 6;
			int cursor = 0;
			String group = null;

			for (GridField field : tab.getFields()) {
				if (!field.isDisplayed() || (field.isToolbarButton() && field.isToolbarOnlyButton()))
					continue;

				String fieldGroup = field.getFieldGroup();
				if (!Util.isEmpty(fieldGroup) && !fieldGroup.equals(group)
						&& !X_AD_FieldGroup.FIELDGROUPTYPE_DoNothing.equals(field.getFieldGroupType())) {
					group = fieldGroup;
					cursor = 0;
				}

				boolean label = !(field.getDisplayType() == DisplayType.Button
						|| field.getDisplayType() == DisplayType.YesNo || field.isFieldOnly());
				int span = field.getColumnSpan();
				int xpos = field.getXPosition();
				String where = tab.getName() + "/" + field.getColumnName() + " (x=" + xpos + ", span=" + span + ")";

				if (xpos <= cursor)
					cursor = 0;
				if (cursor == 0 && xpos > (label ? 1 : 2))
					problems.add(where + ": opens a row with the left half empty");
				if (span > numCols - cursor)
					problems.add(where + ": span cut to " + (numCols - cursor));

				cursor = field.isHeading() ? xpos : xpos + span - 1 + (label ? 1 : 0);
				if (cursor > numCols)
					problems.add(where + ": ends at column " + cursor + " of " + numCols);
			}
		}

		assertThat(problems).isEmpty();
	}

	/**
	 * Random MDF document types of the client: 0 to 4, any environment,
	 * default and active flag. The suggestion follows the rule of
	 * 202610261720_LBRMDFetpAmbPadrao.sql and never says Production when the
	 * document type the manifest gets (MLBRMDFe.getC_DocTypeMDFe_ID) says
	 * Homologation.
	 */
	@Test
	void suggestedEnvironmentUnderRandomDocumentTypes() {
		MDocType template = new Query(Env.getCtx(), MDocType.Table_Name, "DocBaseType='MDF'", getTrxName())
				.setClient_ID().setOrderBy(MDocType.COLUMNNAME_C_DocType_ID).first();
		assertThat(template).as("MDF-e document type of GardenWorld").isNotNull();
		Random random = new Random(20261027L);
		String[] environments = { null, X_LBR_MDFe.LBR_TPAMB_Producao, X_LBR_MDFe.LBR_TPAMB_Homologacao };
		SoftAssertions softly = new SoftAssertions();

		for (int round = 0; round < 60; round++) {
			DB.executeUpdateEx("UPDATE C_DocType SET IsActive='N' WHERE AD_Client_ID=? AND DocBaseType='MDF'",
					new Object[] { Env.getAD_Client_ID(Env.getCtx()) }, getTrxName());
			List<MDocType> types = new ArrayList<>();
			for (int i = random.nextInt(5); i > 0; i--) {
				MDocType type = new MDocType(Env.getCtx(), 0, getTrxName());
				PO.copyValues(template, type);
				type.setName("MDF-e " + round + "." + i);
				type.setIsDefault(random.nextInt(3) == 0);
				type.setIsActive(random.nextInt(5) != 0);
				type.set_ValueOfColumn("LBR_NFeEnv", environments[random.nextInt(environments.length)]);
				type.saveEx();
				types.add(type);
			}

			String suggested = (String) newManifest().getValue(X_LBR_MDFe.COLUMNNAME_LBR_tpAmb);
			window.dispose();
			window = null;
			int assignedId = new MLBRMDFe(Env.getCtx(), 0, getTrxName()).getC_DocTypeMDFe_ID();
			String assigned = types.stream().filter(type -> type.getC_DocType_ID() == assignedId)
					.findFirst().map(MDFeWindowIT::environment).orElse(null);
			String label = "round " + round + " " + types.stream().map(MDFeWindowIT::describe).toList();

			softly.assertThat(suggested).as(label).isEqualTo(expectedSuggestion(types));
			softly.assertThat(X_LBR_MDFe.LBR_TPAMB_Producao.equals(suggested)
					&& X_LBR_MDFe.LBR_TPAMB_Homologacao.equals(assigned))
					.as(label + ": Production while the document type says Homologation").isFalse();
		}
		softly.assertAll();
	}

	/**
	 * A manifest saved through the window keeps both suggestions. Production
	 * on purpose: beforeSave fills an empty environment with Homologation, so
	 * Homologation would pass even if the suggestion were lost.
	 */
	@Test
	void savedThroughTheWindowKeepsTheSuggestions() {
		DB.executeUpdateEx("UPDATE C_DocType SET LBR_NFeEnv=NULL WHERE AD_Client_ID=? AND DocBaseType='MDF'",
				new Object[] { Env.getAD_Client_ID(Env.getCtx()) }, getTrxName());
		GridTab header = newManifest();
		// GridTable.dataSavePO drops the transaction unless importing: without this the save commits.
		header.getTableModel().setImportingMode(true, getTrxName());

		boolean saved = header.dataSave(true);

		assertThat(saved).as("saved: %s", CLogger.retrieveErrorString("")).isTrue();
		int id = header.getRecord_ID();
		assertThat(DB.getSQLValueEx(null, "SELECT COUNT(*) FROM LBR_MDFe WHERE LBR_MDFe_ID=?", id))
				.as("visible outside the test transaction").isZero();
		MLBRMDFe manifest = new MLBRMDFe(Env.getCtx(), id, getTrxName());
		assertThat(manifest.getLBR_tpEmit()).isEqualTo(X_LBR_MDFe.LBR_TPEMIT_TransportadorDeCargaPropria);
		assertThat(manifest.getLBR_tpAmb()).isEqualTo(X_LBR_MDFe.LBR_TPAMB_Producao);
	}

	/**
	 * The rule of the SQL default: active default types first, then any active
	 * type, then Production. '2' wins a tie, as MAX does.
	 */
	private static String expectedSuggestion(List<MDocType> types) {
		String fromDefaults = types.stream().filter(type -> type.isActive() && type.isDefault())
				.map(MDFeWindowIT::environment).filter(env -> env != null).max(String::compareTo).orElse(null);
		if (fromDefaults != null)
			return fromDefaults;
		return types.stream().filter(MDocType::isActive).map(MDFeWindowIT::environment).filter(env -> env != null)
				.max(String::compareTo).orElse(X_LBR_MDFe.LBR_TPAMB_Producao);
	}

	private static String environment(MDocType type) {
		return (String) type.get_Value("LBR_NFeEnv");
	}

	private static String describe(MDocType type) {
		return (type.isDefault() ? "default " : "") + (type.isActive() ? "" : "inactive ") + "env=" + environment(type);
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
