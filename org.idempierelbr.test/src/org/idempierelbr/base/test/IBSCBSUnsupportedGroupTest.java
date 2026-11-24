package org.idempierelbr.base.test;

import static org.assertj.core.api.Assertions.assertThat;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.mockStatic;
import static org.mockito.Mockito.when;

import org.compiere.model.MTable;
import org.idempierelbr.base.model.IBSCBSDocLineCalculator;
import org.idempierelbr.base.model.X_LBR_CST_IBSCBS;
import org.idempierelbr.base.model.X_LBR_ClassTrib_IBSCBS;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.MockedStatic;

/**
 * Grupos do IBSCBS que a CST ou a cClassTrib tornam obrigatórios e que o LBR ainda não gera
 * (NT 2025.002-RTC v1.53). Sem eles a SEFAZ rejeita a nota: transferência de crédito (CST 800,
 * UB13-45, rejeição 1132), crédito presumido do IBS na ZFM (CST 810), ajuste de competência
 * (CST 811, UB112-20, rejeição 1170) e estorno de crédito (cClassTrib 200054, 410026 e 410030,
 * UB116-20, rejeição 1173).
 */
class IBSCBSUnsupportedGroupTest {

	private static final String REQUIRED = "1";
	private static final String NOT_ALLOWED = "0";

	private MockedStatic<MTable> table;
	private X_LBR_CST_IBSCBS cst;
	private X_LBR_ClassTrib_IBSCBS classTrib;

	@BeforeEach
	void setUp() {
		// As interfaces I_* leem o AD_Table_ID do banco no inicializador estático (MTable.getTable_ID).
		// Os mocks são criados antes de qualquer stubbing, senão o Mockito acusa UnfinishedStubbingException.
		table = mockStatic(MTable.class);
		cst = mock(X_LBR_CST_IBSCBS.class);
		classTrib = mock(X_LBR_ClassTrib_IBSCBS.class);

		when(cst.getLBR_IndgIBSCBSTransfCred()).thenReturn(NOT_ALLOWED);
		when(cst.getLBR_IndgCredPresIBSZFM()).thenReturn(NOT_ALLOWED);
		when(cst.getLBR_IndgAjusteCompet()).thenReturn(NOT_ALLOWED);
		when(classTrib.getLBR_IndgEstornoCred()).thenReturn(NOT_ALLOWED);
	}

	@AfterEach
	void tearDown() {
		if (table != null)
			table.close();
	}

	@Test
	void regularTaxation_hasNoUnsupportedGroup() {
		assertThat(IBSCBSDocLineCalculator.getUnsupportedGroup(cst, classTrib)).isNull();
	}

	@Test
	void missingCstAndClassTrib_haveNoUnsupportedGroup() {
		assertThat(IBSCBSDocLineCalculator.getUnsupportedGroup(null, null)).isNull();
	}

	@Test
	void indicatorsNotLoaded_areNotTreatedAsRequired() {
		// cClassTrib antigas podem ter o indicador vazio
		when(classTrib.getLBR_IndgEstornoCred()).thenReturn(null);
		when(cst.getLBR_IndgAjusteCompet()).thenReturn(null);

		assertThat(IBSCBSDocLineCalculator.getUnsupportedGroup(cst, classTrib)).isNull();
	}

	@Test
	void creditTransferCst_requiresGTransfCred() {
		when(cst.getLBR_IndgIBSCBSTransfCred()).thenReturn(REQUIRED);

		assertThat(IBSCBSDocLineCalculator.getUnsupportedGroup(cst, classTrib)).startsWith("gTransfCred");
	}

	@Test
	void zfmPresumedCreditCst_requiresGCredPresIBSZFM() {
		when(cst.getLBR_IndgCredPresIBSZFM()).thenReturn(REQUIRED);

		assertThat(IBSCBSDocLineCalculator.getUnsupportedGroup(cst, classTrib)).startsWith("gCredPresIBSZFM");
	}

	@Test
	void competenceAdjustmentCst_requiresGAjusteCompet() {
		when(cst.getLBR_IndgAjusteCompet()).thenReturn(REQUIRED);

		assertThat(IBSCBSDocLineCalculator.getUnsupportedGroup(cst, classTrib)).startsWith("gAjusteCompet");
	}

	@Test
	void creditReversalClassTrib_requiresGEstornoCred() {
		when(classTrib.getLBR_IndgEstornoCred()).thenReturn(REQUIRED);

		assertThat(IBSCBSDocLineCalculator.getUnsupportedGroup(cst, classTrib)).startsWith("gEstornoCred");
		assertThat(IBSCBSDocLineCalculator.getUnsupportedGroup(null, classTrib))
				.as("sem CST, a cClassTrib basta").startsWith("gEstornoCred");
	}
}
