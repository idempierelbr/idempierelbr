package org.idempierelbr.base.test;

import static org.assertj.core.api.Assertions.assertThat;

import java.math.BigDecimal;
import java.sql.Timestamp;

import org.compiere.model.MRegion;
import org.compiere.model.Query;
import org.compiere.model.X_C_City;
import org.compiere.util.Env;
import org.compiere.util.TimeUtil;
import org.idempierelbr.base.ibscbs.NcmAplicavel;
import org.idempierelbr.base.model.MLBRClassTribNCM;
import org.idempierelbr.base.model.MLBRClassTribRed;
import org.idempierelbr.base.model.MLBRIBSCBSRate;
import org.idempierelbr.base.model.MLBRTax;
import org.idempierelbr.base.model.X_LBR_ClassTrib_IBSCBS;
import org.idempierelbr.base.util.AdempiereLBR;
import org.idempierelbr.test.AbstractLBRTestCase;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

/**
 * Busca de alíquota, redução e NCM aplicável do IBS/CBS contra o banco, com os dados
 * oficiais de System carregados pela migração da Calculadora RTC (base V0073 da
 * Receita). Os registros do tenant ficam na transação do teste, desfeita no fim.
 * <p>
 * Rode com {@code IDEMPIERE_HOME} apontando para um banco com as migrações em dia:
 * {@code mvn -o clean verify -Dtest=IBSCBSRateIT -Dsurefire.failIfNoSpecifiedTests=false}.
 */
class IBSCBSRateIT extends AbstractLBRTestCase {

	private static final Timestamp DOC_DATE = TimeUtil.getDay(2026, 6, 15);
	private static final Timestamp YEAR_START = TimeUtil.getDay(2026, 1, 1);

	private int cbs;
	private int ibsUF;
	private int ibsMun;
	private int sp;
	private int ms;
	private int saoPaulo;
	private int campinas;

	@BeforeEach
	void setUpData() {
		cbs = MLBRTax.getTaxGroupID(MLBRTax.TAX_GROUP_CBS_NAME);
		ibsUF = MLBRTax.getTaxGroupID(MLBRTax.TAX_GROUP_IBS_UF_NAME);
		ibsMun = MLBRTax.getTaxGroupID(MLBRTax.TAX_GROUP_IBS_MUN_NAME);
		assertThat(cbs).as("grupos de IBS/CBS no banco").isPositive();
		assertThat(ibsUF).isPositive();
		assertThat(ibsMun).isPositive();

		sp = region("SP");
		ms = region("MS");
		saoPaulo = city("3550308");
		campinas = city("3509502");
		assertThat(saoPaulo).as("municípios de System com código IBGE").isPositive();
	}

	// ------------------------------------------------------------ alíquotas oficiais

	@Test
	void officialRatesOf2026() {
		assertThat(rate(MLBRIBSCBSRate.getStandard(Env.getCtx(), cbs, sp, saoPaulo, DOC_DATE, getTrxName())))
				.isEqualByComparingTo("0.9");
		assertThat(rate(MLBRIBSCBSRate.getStandard(Env.getCtx(), ibsUF, sp, saoPaulo, DOC_DATE, getTrxName())))
				.isEqualByComparingTo("0.1");
		assertThat(rate(MLBRIBSCBSRate.getStandard(Env.getCtx(), ibsMun, sp, saoPaulo, DOC_DATE, getTrxName())))
				.isEqualByComparingTo("0");
		assertThat(rate(MLBRIBSCBSRate.getStandard(Env.getCtx(), cbs, 0, 0, DOC_DATE, getTrxName())))
				.as("sem local conhecido, vale a nacional")
				.isEqualByComparingTo("0.9");
	}

	// ------------------------------------------------------------ precedência

	@Test
	void tenantOverridesSystemWithSameKey() {
		newRate(cbs, 0, 0, 0, "1.5", YEAR_START, null).saveEx();

		assertThat(rate(MLBRIBSCBSRate.getStandard(Env.getCtx(), cbs, sp, saoPaulo, DOC_DATE, getTrxName())))
				.isEqualByComparingTo("1.5");
		assertThat(rate(MLBRIBSCBSRate.getReference(Env.getCtx(), cbs, DOC_DATE, getTrxName())))
				.isEqualByComparingTo("1.5");
	}

	@Test
	void moreSpecificLocationWins() {
		newRate(ibsUF, sp, 0, 0, "0.2", YEAR_START, null).saveEx();
		newRate(ibsMun, sp, saoPaulo, 0, "0.05", YEAR_START, null).saveEx();

		assertThat(rate(MLBRIBSCBSRate.getStandard(Env.getCtx(), ibsUF, sp, saoPaulo, DOC_DATE, getTrxName())))
				.as("UF antes de nacional")
				.isEqualByComparingTo("0.2");
		assertThat(rate(MLBRIBSCBSRate.getStandard(Env.getCtx(), ibsUF, ms, 0, DOC_DATE, getTrxName())))
				.as("outra UF continua com a nacional de System")
				.isEqualByComparingTo("0.1");
		assertThat(rate(MLBRIBSCBSRate.getStandard(Env.getCtx(), ibsMun, sp, saoPaulo, DOC_DATE, getTrxName())))
				.as("município antes de UF e de nacional")
				.isEqualByComparingTo("0.05");
		assertThat(rate(MLBRIBSCBSRate.getStandard(Env.getCtx(), ibsMun, sp, campinas, DOC_DATE, getTrxName())))
				.isEqualByComparingTo("0");
		assertThat(rate(MLBRIBSCBSRate.getReference(Env.getCtx(), ibsUF, DOC_DATE, getTrxName())))
				.as("a de referência ignora a alíquota da UF")
				.isEqualByComparingTo("0.1");
	}

	@Test
	void validityByDocumentDate() {
		newRate(cbs, 0, 0, 0, "1.2", TimeUtil.getDay(2026, 7, 1), null).saveEx();

		assertThat(rate(MLBRIBSCBSRate.getStandard(Env.getCtx(), cbs, sp, 0, DOC_DATE, getTrxName())))
				.as("antes da vigência do registro do tenant")
				.isEqualByComparingTo("0.9");
		assertThat(rate(MLBRIBSCBSRate.getStandard(Env.getCtx(), cbs, sp, 0, TimeUtil.getDay(2026, 8, 1),
				getTrxName()))).isEqualByComparingTo("1.2");
	}

	@Test
	void fixedRateOfClassTribDoesNotChangeStandardRate() {
		int classTrib = classTrib("221001");
		newRate(cbs, 0, 0, classTrib, "3.285", YEAR_START, null).saveEx();

		assertThat(rate(MLBRIBSCBSRate.getOfClassTrib(Env.getCtx(), cbs, classTrib, DOC_DATE, getTrxName())))
				.isEqualByComparingTo("3.285");
		assertThat(MLBRIBSCBSRate.getOfClassTrib(Env.getCtx(), ibsUF, classTrib, DOC_DATE, getTrxName()))
				.as("sem alíquota da cClassTrib para o IBS")
				.isNull();
		assertThat(rate(MLBRIBSCBSRate.getStandard(Env.getCtx(), cbs, sp, 0, DOC_DATE, getTrxName())))
				.isEqualByComparingTo("0.9");
	}

	// ------------------------------------------------------------ validações do cadastro

	@Test
	void overlappingValidityIsRejected() {
		newRate(cbs, 0, 0, 0, "1.5", YEAR_START, TimeUtil.getDay(2026, 12, 31)).saveEx();

		assertThat(newRate(cbs, 0, 0, 0, "1.6", TimeUtil.getDay(2026, 6, 1), null).save())
				.as("vigência que se cruza com a do registro anterior")
				.isFalse();
		assertThat(newRate(cbs, 0, 0, 0, "1.6", TimeUtil.getDay(2027, 1, 1), null).save())
				.as("vigência seguinte")
				.isTrue();
		assertThat(newRate(cbs, sp, 0, 0, "1.6", YEAR_START, null).save())
				.as("outra chave (UF)")
				.isTrue();
	}

	@Test
	void cityOfAnotherRegionIsRejected() {
		assertThat(newRate(ibsMun, ms, saoPaulo, 0, "0.05", YEAR_START, null).save()).isFalse();
	}

	// ------------------------------------------------------------ redução e NCM (só System)

	@Test
	void reductionOfClassTrib() {
		assertThat(MLBRClassTribRed.get(Env.getCtx(), classTrib("200032"), cbs, DOC_DATE, getTrxName())
				.getLBR_TaxRedRate()).isEqualByComparingTo("60");
		assertThat(MLBRClassTribRed.get(Env.getCtx(), classTrib("200002"), ibsUF, DOC_DATE, getTrxName())
				.getLBR_TaxRedRate()).isEqualByComparingTo("100");
		assertThat(MLBRClassTribRed.get(Env.getCtx(), classTrib("000001"), ibsMun, DOC_DATE, getTrxName())
				.getLBR_TaxRedRate()).isEqualByComparingTo("0");
		assertThat(MLBRClassTribRed.get(Env.getCtx(), classTrib("000001"), cbs, TimeUtil.getDay(2025, 6, 1),
				getTrxName())).as("antes da vigência").isNull();
	}

	@Test
	void applicableNcm() {
		// 200034: anexo com 03073100, e 03061 com as exceções 03061500 e 030611 (um vínculo por exceção)
		int classTrib = classTrib("200034");
		assertThat(MLBRClassTribNCM.check(Env.getCtx(), classTrib, "0307.31.00", DOC_DATE, getTrxName()))
				.isEqualTo(NcmAplicavel.Resultado.ACEITO);
		assertThat(MLBRClassTribNCM.check(Env.getCtx(), classTrib, "0306.14.00", DOC_DATE, getTrxName()))
				.as("coberto pelo prefixo 03061, fora das exceções")
				.isEqualTo(NcmAplicavel.Resultado.ACEITO);
		assertThat(MLBRClassTribNCM.check(Env.getCtx(), classTrib, "0306.15.00", DOC_DATE, getTrxName()))
				.as("exceção")
				.isEqualTo(NcmAplicavel.Resultado.NAO_VINCULADO);
		assertThat(MLBRClassTribNCM.check(Env.getCtx(), classTrib, "0306.11.00", DOC_DATE, getTrxName()))
				.as("exceção por prefixo (030611)")
				.isEqualTo(NcmAplicavel.Resultado.NAO_VINCULADO);
		assertThat(MLBRClassTribNCM.check(Env.getCtx(), classTrib, "9999.99.99", DOC_DATE, getTrxName()))
				.isEqualTo(NcmAplicavel.Resultado.NAO_VINCULADO);
		assertThat(MLBRClassTribNCM.check(Env.getCtx(), classTrib, null, DOC_DATE, getTrxName()))
				.isEqualTo(NcmAplicavel.Resultado.NCM_INCOMPLETO);
		assertThat(MLBRClassTribNCM.check(Env.getCtx(), classTrib("000001"), "9999.99.99", DOC_DATE, getTrxName()))
				.as("cClassTrib sem anexo")
				.isEqualTo(NcmAplicavel.Resultado.SEM_ANEXO);
	}

	// ------------------------------------------------------------ apoio

	private MLBRIBSCBSRate newRate(int LBR_TaxGroup_ID, int C_Region_ID, int C_City_ID, int LBR_ClassTrib_IBSCBS_ID,
			String rate, Timestamp validFrom, Timestamp validTo) {
		MLBRIBSCBSRate r = new MLBRIBSCBSRate(Env.getCtx(), 0, getTrxName());
		r.setAD_Org_ID(0);
		r.setLBR_TaxGroup_ID(LBR_TaxGroup_ID);
		if (C_Region_ID > 0)
			r.setC_Region_ID(C_Region_ID);
		if (C_City_ID > 0)
			r.setC_City_ID(C_City_ID);
		if (LBR_ClassTrib_IBSCBS_ID > 0)
			r.setLBR_ClassTrib_IBSCBS_ID(LBR_ClassTrib_IBSCBS_ID);
		r.setLBR_TaxRate(new BigDecimal(rate));
		r.setValidFrom(validFrom);
		r.setValidTo(validTo);
		return r;
	}

	private static BigDecimal rate(MLBRIBSCBSRate r) {
		assertThat(r).as("alíquota encontrada").isNotNull();
		return r.getLBR_TaxRate();
	}

	private int region(String name) {
		return new Query(Env.getCtx(), MRegion.Table_Name, "C_Country_ID=? AND Name=?", getTrxName())
				.setParameters(AdempiereLBR.BRASIL, name).firstIdOnly();
	}

	private int city(String ibgeCode) {
		return new Query(Env.getCtx(), X_C_City.Table_Name, "AD_Client_ID=0 AND LBR_CityCode=?", getTrxName())
				.setParameters(ibgeCode).firstIdOnly();
	}

	private int classTrib(String value) {
		int id = new Query(Env.getCtx(), X_LBR_ClassTrib_IBSCBS.Table_Name, "Value=?", getTrxName())
				.setParameters(value).firstIdOnly();
		assertThat(id).as("cClassTrib %s no banco", value).isPositive();
		return id;
	}
}
