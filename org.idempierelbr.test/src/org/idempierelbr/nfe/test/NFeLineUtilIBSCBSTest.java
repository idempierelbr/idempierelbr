package org.idempierelbr.nfe.test;

import static org.assertj.core.api.Assertions.assertThat;
import static org.assertj.core.api.Assertions.catchThrowable;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.mockStatic;
import static org.mockito.Mockito.when;

import java.math.BigDecimal;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.MTable;
import org.idempierelbr.base.model.I_LBR_CST_IBSCBS;
import org.idempierelbr.base.model.I_LBR_ClassTrib_IBSCBS;
import org.idempierelbr.base.model.MLBRDocLineDetailsNfe;
import org.idempierelbr.base.model.MLBRDocLineIBSCBS;
import org.idempierelbr.base.model.MLBRNotaFiscalLine;
import org.idempierelbr.nfe.beans.IBSCBSBean;
import org.idempierelbr.nfe.beans.RedGrupoBean;
import org.idempierelbr.nfe.beans.TribRegularGrupoBean;
import org.idempierelbr.nfe.util.NFeLineUtil;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.MockedStatic;

/**
 * Grupo {@code gRed} do IBS/CBS (NT 2025.002): o tipo {@code TRed} do XSD exige
 * {@code pRedAliq} e {@code pAliqEfet}. O gerador só preenchia {@code pAliqEfet}
 * quando a linha tinha valor de diferimento, e uma redução sem diferimento (por
 * exemplo, cClassTrib 200034, Anexo VII, redução de 60 %) gerava XML inválido.
 */
class NFeLineUtilIBSCBSTest {

	private MockedStatic<MTable> table;
	private MockedStatic<MLBRDocLineDetailsNfe> details;
	private MockedStatic<MLBRDocLineIBSCBS> ibsCbsOfDetails;

	private MLBRDocLineIBSCBS ibsCbs;
	private NFeLineUtil util;

	@BeforeEach
	void setUp() {
		// As interfaces I_* leem o AD_Table_ID do banco no inicializador estático
		// (MTable.getTable_ID), disparado quando o Mockito cria os mocks.
		table = mockStatic(MTable.class);

		// Os mocks são criados antes de qualquer stubbing: criar um mock dentro de
		// thenReturn(...) dispara aquele inicializador estático no meio do stubbing
		// do MTable e o Mockito acusa UnfinishedStubbingException.
		MLBRDocLineDetailsNfe lineDetails = mock(MLBRDocLineDetailsNfe.class);
		MLBRNotaFiscalLine line = mock(MLBRNotaFiscalLine.class);
		ibsCbs = reductionWithoutDeferral();

		details = mockStatic(MLBRDocLineDetailsNfe.class);
		details.when(() -> MLBRDocLineDetailsNfe.getOfPO(any())).thenReturn(lineDetails);

		ibsCbsOfDetails = mockStatic(MLBRDocLineIBSCBS.class);
		ibsCbsOfDetails.when(() -> MLBRDocLineIBSCBS.getOfDetails(any()))
				.thenReturn(new MLBRDocLineIBSCBS[] { ibsCbs });

		when(line.getLine()).thenReturn(10);
		util = new NFeLineUtil(line);
	}

	@AfterEach
	void tearDown() {
		// Na ordem inversa e tolerando null, para que uma falha no setUp não deixe
		// o mock estático do MTable registrado e derrube os testes seguintes.
		if (ibsCbsOfDetails != null)
			ibsCbsOfDetails.close();
		if (details != null)
			details.close();
		if (table != null)
			table.close();
	}

	@Test
	void reductionWithoutDeferral_informsEffectiveRateInEveryGroup() {
		IBSCBSBean bean = util.getIBSCBSBean();

		assertRed("gIBSUF", bean.getgIBSCBS().getgIBSUF().getgRed(), "60.00", "0.04");
		assertRed("gIBSMun", bean.getgIBSCBS().getgIBSMun().getgRed(), "60.00", "0.00");
		assertRed("gCBS", bean.getgIBSCBS().getgCBS().getgRed(), "60.00", "0.36");
	}

	@Test
	void reductionWithDeferral_stillInformsEffectiveRate() {
		when(ibsCbs.getLBR_CBS_TaxDeferralRate()).thenReturn(new BigDecimal("100"));
		when(ibsCbs.getLBR_CBS_TaxDeferralAmt()).thenReturn(new BigDecimal("0.36"));

		IBSCBSBean bean = util.getIBSCBSBean();

		assertRed("gCBS", bean.getgIBSCBS().getgCBS().getgRed(), "60.00", "0.36");
		assertThat(bean.getgIBSCBS().getgCBS().getgDif().getpDif()).isEqualTo("100.00");
	}

	@Test
	void noReduction_omitsRedGroup() {
		when(ibsCbs.getLBR_CBS_TaxRedRate()).thenReturn(null);
		when(ibsCbs.getLBR_CBS_TaxRedEfetRate()).thenReturn(null);

		IBSCBSBean bean = util.getIBSCBSBean();

		assertThat(bean.getgIBSCBS().getgCBS().getgRed())
				.as("sem redução não há grupo gRed")
				.isNull();
	}

	@Test
	void reductionWithoutEffectiveRate_namesTheMissingField() {
		when(ibsCbs.getLBR_IBS_UF_TaxRedEfetRate()).thenReturn(null);

		Throwable failure = catchThrowable(util::getIBSCBSBean);

		assertThat(failure)
				.as("pAliqEfet é obrigatório no gRed: falhar com o campo, não no XSD")
				.isInstanceOf(AdempiereException.class)
				.hasMessageContaining("@Line@ 10")
				.hasMessageContaining("@LBR_IBS_UF_TaxRedEfetRate@");
	}

	@Test
	void reductionWithoutEffectiveRate_checksEachGroup() {
		when(ibsCbs.getLBR_IBS_Mun_TaxRedEfetRate()).thenReturn(null);
		assertThat(catchThrowable(util::getIBSCBSBean)).hasMessageContaining("@LBR_IBS_Mun_TaxRedEfetRate@");

		when(ibsCbs.getLBR_IBS_Mun_TaxRedEfetRate()).thenReturn(BigDecimal.ZERO);
		when(ibsCbs.getLBR_CBS_TaxRedEfetRate()).thenReturn(null);
		assertThat(catchThrowable(util::getIBSCBSBean)).hasMessageContaining("@LBR_CBS_TaxRedEfetRate@");
	}

	@Test
	void ordinaryClassTrib_omitsRegularTaxationGroup() {
		assertThat(util.getIBSCBSBean().getgIBSCBS().getgTribRegular())
				.as("só a cClassTrib com ind_gTribRegular = 1 leva o grupo")
				.isNull();
	}

	@Test
	void suspension_informsRegularTaxationGroup() {
		I_LBR_CST_IBSCBS cstReg = mock(I_LBR_CST_IBSCBS.class);
		I_LBR_ClassTrib_IBSCBS classTribReg = mock(I_LBR_ClassTrib_IBSCBS.class);
		suspension(cstReg, classTribReg);

		IBSCBSBean bean = util.getIBSCBSBean();
		TribRegularGrupoBean g = bean.getgIBSCBS().getgTribRegular();

		assertThat(g).as("UB68-10: a cClassTrib exige o grupo gTribRegular").isNotNull();
		assertThat(g.getCSTReg()).isEqualTo("000");
		assertThat(g.getcClassTribReg()).isEqualTo("000001");
		assertThat(g.getpAliqEfetRegIBSUF()).isEqualTo("0.10");
		assertThat(g.getvTribRegIBSUF()).isEqualTo("0.10");
		assertThat(g.getpAliqEfetRegIBSMun()).isEqualTo("0.00");
		assertThat(g.getvTribRegIBSMun()).isEqualTo("0.00");
		assertThat(g.getpAliqEfetRegCBS()).isEqualTo("0.90");
		assertThat(g.getvTribRegCBS()).isEqualTo("0.90");
		assertThat(bean.getgIBSCBS().getgCBS().getpCBS()).as("UB56-10, exceção 1").isEqualTo("0.00");
		assertThat(bean.getgIBSCBS().getgCBS().getgRed()).as("sem gRed com alíquota zero").isNull();
	}

	@Test
	void suspensionWithoutRegularClassification_namesTheMissingField() {
		when(ibsCbs.getLBR_ClassTrib_IBSCBS().getLBR_IndgIBSCBSTribRegular()).thenReturn("1");

		assertThat(catchThrowable(util::getIBSCBSBean))
				.as("sem a classificação regular, falhar com o campo e não com a rejeição 1065")
				.isInstanceOf(AdempiereException.class)
				.hasMessageContaining("@LBR_CSTReg_IBSCBS_ID@");
	}

	@Test
	void suspensionWithoutRegularValue_namesTheMissingField() {
		I_LBR_CST_IBSCBS cstReg = mock(I_LBR_CST_IBSCBS.class);
		I_LBR_ClassTrib_IBSCBS classTribReg = mock(I_LBR_ClassTrib_IBSCBS.class);
		suspension(cstReg, classTribReg);
		when(ibsCbs.getLBR_CBS_TaxRegAmt()).thenReturn(null);

		assertThat(catchThrowable(util::getIBSCBSBean)).hasMessageContaining("@LBR_CBS_TaxRegAmt@");
	}

	/**
	 * cClassTrib 550001 (suspensão) com a regular 000/000001 sobre a base de 100,00: grupo
	 * principal zerado e sem gRed; regular com IBS UF 0,1 %, IBS Mun 0 % e CBS 0,9 %.
	 */
	private void suspension(I_LBR_CST_IBSCBS cstReg, I_LBR_ClassTrib_IBSCBS classTribReg) {
		when(cstReg.getValue()).thenReturn("000");
		when(classTribReg.getValue()).thenReturn("000001");
		when(ibsCbs.getLBR_ClassTrib_IBSCBS().getLBR_IndgIBSCBSTribRegular()).thenReturn("1");

		when(ibsCbs.getLBR_IBS_UF_TaxRate()).thenReturn(BigDecimal.ZERO);
		when(ibsCbs.getLBR_IBS_UF_TaxRedRate()).thenReturn(null);
		when(ibsCbs.getLBR_IBS_UF_TaxRedEfetRate()).thenReturn(null);
		when(ibsCbs.getLBR_IBS_UF_TaxAmt()).thenReturn(BigDecimal.ZERO);
		when(ibsCbs.getLBR_IBS_Mun_TaxRedRate()).thenReturn(null);
		when(ibsCbs.getLBR_IBS_Mun_TaxRedEfetRate()).thenReturn(null);
		when(ibsCbs.getLBR_CBS_TaxRate()).thenReturn(BigDecimal.ZERO);
		when(ibsCbs.getLBR_CBS_TaxRedRate()).thenReturn(null);
		when(ibsCbs.getLBR_CBS_TaxRedEfetRate()).thenReturn(null);
		when(ibsCbs.getLBR_CBS_TaxAmt()).thenReturn(BigDecimal.ZERO);

		when(ibsCbs.getLBR_CSTReg_IBSCBS_ID()).thenReturn(1);
		when(ibsCbs.getLBR_CSTReg_IBSCBS()).thenReturn(cstReg);
		when(ibsCbs.getLBR_ClassTribReg_IBSCBS_ID()).thenReturn(1);
		when(ibsCbs.getLBR_ClassTribReg_IBSCBS()).thenReturn(classTribReg);
		when(ibsCbs.getLBR_IBS_UF_TaxRegEfetRate()).thenReturn(new BigDecimal("0.1"));
		when(ibsCbs.getLBR_IBS_UF_TaxRegAmt()).thenReturn(new BigDecimal("0.10"));
		when(ibsCbs.getLBR_IBS_Mun_TaxRegEfetRate()).thenReturn(BigDecimal.ZERO);
		when(ibsCbs.getLBR_IBS_Mun_TaxRegAmt()).thenReturn(BigDecimal.ZERO);
		when(ibsCbs.getLBR_CBS_TaxRegEfetRate()).thenReturn(new BigDecimal("0.9"));
		when(ibsCbs.getLBR_CBS_TaxRegAmt()).thenReturn(new BigDecimal("0.90"));
	}

	private static void assertRed(String group, RedGrupoBean gRed, String pRedAliq, String pAliqEfet) {
		assertThat(gRed).as("%s deve ter o grupo gRed", group).isNotNull();
		assertThat(gRed.getpRedAliq()).as("%s/gRed/pRedAliq", group).isEqualTo(pRedAliq);
		assertThat(gRed.getpAliqEfet()).as("%s/gRed/pAliqEfet é obrigatório no XSD (TRed)", group)
				.isEqualTo(pAliqEfet);
	}

	/**
	 * Linha de 2026 com cClassTrib 200034 (Anexo VII, redução de 60 %): base 100,00,
	 * IBS UF 0,1 %, IBS Mun 0 % e CBS 0,9 %, sem diferimento.
	 */
	private static MLBRDocLineIBSCBS reductionWithoutDeferral() {
		I_LBR_CST_IBSCBS cst = mock(I_LBR_CST_IBSCBS.class);
		when(cst.getValue()).thenReturn("200");
		I_LBR_ClassTrib_IBSCBS classTrib = mock(I_LBR_ClassTrib_IBSCBS.class);
		when(classTrib.getValue()).thenReturn("200034");

		MLBRDocLineIBSCBS line = mock(MLBRDocLineIBSCBS.class);
		when(line.getLBR_CST_IBSCBS()).thenReturn(cst);
		when(line.getLBR_ClassTrib_IBSCBS()).thenReturn(classTrib);
		when(line.getLBR_TaxBaseAmt()).thenReturn(new BigDecimal("100.00"));

		when(line.getLBR_IBS_UF_TaxRate()).thenReturn(new BigDecimal("0.1"));
		when(line.getLBR_IBS_UF_TaxRedRate()).thenReturn(new BigDecimal("60"));
		when(line.getLBR_IBS_UF_TaxRedEfetRate()).thenReturn(new BigDecimal("0.04"));
		when(line.getLBR_IBS_UF_TaxAmt()).thenReturn(new BigDecimal("0.04"));

		when(line.getLBR_IBS_Mun_TaxRate()).thenReturn(BigDecimal.ZERO);
		when(line.getLBR_IBS_Mun_TaxRedRate()).thenReturn(new BigDecimal("60"));
		when(line.getLBR_IBS_Mun_TaxRedEfetRate()).thenReturn(BigDecimal.ZERO);
		when(line.getLBR_IBS_Mun_TaxAmt()).thenReturn(BigDecimal.ZERO);

		when(line.getLBR_CBS_TaxRate()).thenReturn(new BigDecimal("0.9"));
		when(line.getLBR_CBS_TaxRedRate()).thenReturn(new BigDecimal("60"));
		when(line.getLBR_CBS_TaxRedEfetRate()).thenReturn(new BigDecimal("0.36"));
		when(line.getLBR_CBS_TaxAmt()).thenReturn(new BigDecimal("0.36"));

		return line;
	}
}
