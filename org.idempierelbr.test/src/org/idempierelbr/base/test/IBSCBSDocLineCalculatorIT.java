package org.idempierelbr.base.test;

import static org.assertj.core.api.Assertions.assertThat;
import static org.assertj.core.api.Assertions.catchThrowable;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.List;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.Query;
import org.compiere.util.Env;
import org.compiere.util.TimeUtil;
import org.idempierelbr.base.ibscbs.IBSCBSCalculator;
import org.idempierelbr.base.model.I_LBR_DocLine_IBSCBS;
import org.idempierelbr.base.model.IBSCBSDocLineCalculator;
import org.idempierelbr.base.model.MLBRDocLineCOFINS;
import org.idempierelbr.base.model.MLBRDocLineDetails;
import org.idempierelbr.base.model.MLBRDocLineICMS;
import org.idempierelbr.base.model.MLBRDocLinePIS;
import org.idempierelbr.base.model.MLBRIBSCBSRate;
import org.idempierelbr.base.model.MLBRTax;
import org.idempierelbr.base.model.MLBRTaxLine;
import org.idempierelbr.base.model.X_LBR_CST_IBSCBS;
import org.idempierelbr.base.model.X_LBR_ClassTrib_IBSCBS;
import org.idempierelbr.test.AbstractLBRTestCase;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

/**
 * Cálculo do IBS/CBS de uma linha: base a partir dos filhos (ICMS, PIS, COFINS, DIFAL),
 * alíquota e redução oficiais do banco, e as validações. O detalhe da linha é gravado
 * sem documento, então vale a alíquota nacional; o local da operação por documento
 * não é coberto aqui.
 * <p>
 * Rode com {@code IDEMPIERE_HOME} apontando para um banco com as migrações em dia:
 * {@code mvn -o clean verify -Dtest=IBSCBSDocLineCalculatorIT -Dsurefire.failIfNoSpecifiedTests=false}.
 */
class IBSCBSDocLineCalculatorIT extends AbstractLBRTestCase {

	private static final Timestamp DOC_DATE = TimeUtil.getDay(2026, 6, 15);

	private int cbs;
	private int ibsUF;

	@BeforeEach
	void groups() {
		cbs = MLBRTax.getTaxGroupID(MLBRTax.TAX_GROUP_CBS_NAME);
		ibsUF = MLBRTax.getTaxGroupID(MLBRTax.TAX_GROUP_IBS_UF_NAME);
	}

	// ------------------------------------------------------------ base unificada

	@Test
	void baseDiscountsTheTaxesPublishedInTheXml() {
		MLBRDocLineDetails details = details("1000", "40", "50", "1");
		icms(details, "TN", "00", "180", null, null);
		pis(details, "16.50");
		cofins(details, "76");

		assertThat(calc(details).getBase())
				.as("1000 + 50 de frete − 40 de desconto − 180 de ICMS − 16,50 de PIS − 76 de COFINS")
				.isEqualByComparingTo("737.50");
	}

	@Test
	void icmsWithoutVICMSInTheXmlStaysInTheBase() {
		MLBRDocLineDetails details = details("1000", null, null, "1");
		icms(details, "TN", "40", "180", null, null);

		assertThat(calc(details).getBase()).as("ICMS 40 não publica vICMS").isEqualByComparingTo("1000");
	}

	@Test
	void difalLeavesTheBase() {
		MLBRDocLineDetails details = details("1000", null, null, "1");
		icms(details, "TN", "00", "120", "20", "5");

		assertThat(calc(details).getBase()).isEqualByComparingTo("855");
	}

	@Test
	void returnsAreCalculatedWithoutSignAndSignedAfterwards() {
		MLBRDocLineDetails details = details("-1000", null, null, "-1");
		icms(details, "TN", "00", "-180", null, null);

		IBSCBSDocLineCalculator calc = calc(details);
		assertThat(calc.getBase()).isEqualByComparingTo("820");
		assertThat(calc.getSign()).isEqualTo(-1);
	}

	// ------------------------------------------------------------ cálculo

	@Test
	void reductionWithHalfEvenRounding() {
		MLBRDocLineDetails details = details("1000", "40", "50", "1");
		icms(details, "TN", "00", "180", null, null);
		pis(details, "16.50");
		cofins(details, "76");
		IBSCBSDocLineCalculator calc = calc(details);
		BigDecimal base = calc.getBase();

		IBSCBSCalculator.Resultado r = calc.calculate(taxLine("200", "200032"), cbs, base);
		assertThat(r.getAliquota()).isEqualByComparingTo("0.9");
		assertThat(r.getPercentualReducao()).isEqualByComparingTo("60");
		assertThat(r.getAliquotaEfetiva()).isEqualByComparingTo("0.36");
		assertThat(r.getValorDevido()).as("737,50 × 0,36 % = 2,655 → 2,66 (HALF_EVEN)").isEqualByComparingTo("2.66");

		r = calc.calculate(taxLine("200", "200032"), ibsUF, base);
		assertThat(r.getAliquotaEfetiva()).isEqualByComparingTo("0.04");
		assertThat(r.getValorDevido()).as("737,50 × 0,04 % = 0,295 → 0,30").isEqualByComparingTo("0.30");
	}

	@Test
	void fullDeferral() {
		MLBRDocLineDetails details = details("200", null, null, "1");
		IBSCBSDocLineCalculator calc = calc(details);

		IBSCBSCalculator.Resultado r = calc.calculate(taxLine("510", "510001"), cbs, calc.getBase());
		assertThat(r.getValorCalculado()).isEqualByComparingTo("1.80");
		assertThat(r.getPercentualDiferimento()).isEqualByComparingTo("100");
		assertThat(r.getValorDiferimento()).isEqualByComparingTo("1.80");
		assertThat(r.getValorDevido()).isEqualByComparingTo("0.00");
	}

	@Test
	void cstWithoutIBSCBSGroupHasNoCalculation() {
		MLBRDocLineDetails details = details("200", null, null, "1");
		assertThat(calc(details).calculate(taxLine("410", "410001"), cbs, new BigDecimal("200")))
				.as("CST 410: só CST e cClassTrib no XML")
				.isNull();
	}

	@Test
	void withoutClassTribUsesStandardRate() {
		MLBRDocLineDetails details = details("200", null, null, "1");
		IBSCBSCalculator.Resultado r = calc(details).calculate(taxLine(null, null), cbs, new BigDecimal("200"));
		assertThat(r.getValorDevido()).isEqualByComparingTo("1.80");
	}

	// ------------------------------------------------------------ erros

	@Test
	void fixedRateWithoutOwnRateIsAnError() {
		MLBRDocLineDetails details = details("200", null, null, "1");
		IBSCBSDocLineCalculator calc = calc(details);

		Throwable t = catchThrowable(() -> calc.calculate(taxLine("221", "221001"), cbs, new BigDecimal("200")));
		assertThat(t).isInstanceOf(AdempiereException.class).hasMessageContaining("fixa").hasMessageContaining("221001");

		MLBRIBSCBSRate rate = new MLBRIBSCBSRate(Env.getCtx(), 0, getTrxName());
		rate.setAD_Org_ID(0);
		rate.setLBR_TaxGroup_ID(cbs);
		rate.setLBR_ClassTrib_IBSCBS_ID(classTrib("221001"));
		rate.setLBR_TaxRate(new BigDecimal("3.285"));
		rate.setValidFrom(TimeUtil.getDay(2026, 1, 1));
		rate.saveEx();

		assertThat(calc.calculate(taxLine("221", "221001"), cbs, new BigDecimal("200")).getValorDevido())
				.as("com a alíquota fixa do tenant: 200 × 3,285 % = 6,57")
				.isEqualByComparingTo("6.57");
	}

	@Test
	void monophaseIsNotSupported() {
		MLBRDocLineDetails details = details("200", null, null, "1");
		Throwable t = catchThrowable(() -> calc(details).calculate(taxLine("620", "620001"), cbs, new BigDecimal("200")));
		assertThat(t).isInstanceOf(AdempiereException.class).hasMessageContaining("monofásica");
	}

	@Test
	void expiredClassTribIsAnError() {
		MLBRDocLineDetails details = details("200", null, null, "1");
		Throwable t = catchThrowable(() -> calc(details).calculate(taxLine("510", "510002"), cbs, new BigDecimal("200")));
		assertThat(t).isInstanceOf(AdempiereException.class).hasMessageContaining("não está vigente");
	}

	// ------------------------------------------------------------ validações (aviso / erro na NF)

	@Test
	void validationMessages() {
		MLBRDocLineDetails details = details("200", null, null, "1");
		IBSCBSDocLineCalculator calc = calc(details);

		assertThat(calc.validate(cst("200"), classTrib("200032"))).isEmpty();

		List<String> msgs = calc.validate(cst("000"), classTrib("200032"));
		assertThat(msgs).anySatisfy(m -> assertThat(m).contains("não pertence à CST 000"));

		msgs = calc.validate(cst("200"), classTrib("200034"));
		assertThat(msgs).as("200034 tem anexo de NCM e a linha não tem NCM")
				.anySatisfy(m -> assertThat(m).contains("NCM completo"));

		assertThat(calc.validate(0, 0)).anySatisfy(m -> assertThat(m).contains("Informe a CST e a cClassTrib"));
	}

	@Test
	void requiredGroupsNotGeneratedAreReported() {
		MLBRDocLineDetails details = details("200", null, null, "1");
		IBSCBSDocLineCalculator calc = calc(details);

		// Indicadores carregados na Fase 1 a partir da base da Receita
		assertThat(calc.validate(cst("800"), classTrib("800001")))
				.as("CST 800 exige gTransfCred (UB13-45)")
				.anySatisfy(m -> assertThat(m).contains("gTransfCred"));
		assertThat(calc.validate(cst("811"), classTrib("811001")))
				.as("CST 811 exige gAjusteCompet (UB112-20)")
				.anySatisfy(m -> assertThat(m).contains("gAjusteCompet"));
		assertThat(calc.validate(cst("410"), classTrib("410026")))
				.as("cClassTrib 410026 exige gEstornoCred (UB116-20)")
				.anySatisfy(m -> assertThat(m).contains("gEstornoCred"));
	}

	// ------------------------------------------------------------ tributação regular (gTribRegular)

	@Test
	void suspensionZeroesTheMainGroupAndCalculatesTheRegularTaxation() {
		// Calculadora Teste_000001_3 e Teste_200032_3: 550001 com a regular 000001 ou 200032, base 200
		MLBRDocLineDetails details = details("200", null, null, "1");
		IBSCBSDocLineCalculator calc = calc(details);

		IBSCBSCalculator.Resultado r = calc.calculate(regular(taxLine("550", "550001"), "000", "000001"), cbs,
				new BigDecimal("200"));
		assertThat(r.getAliquota()).as("pCBS zero (UB56-10, exceção 1)").isEqualByComparingTo("0");
		assertThat(r.getValorDevido()).isEqualByComparingTo("0.00");
		assertThat(r.getPercentualReducao()).as("sem gRed no grupo principal").isNull();
		assertThat(r.getAliquotaEfetivaRegular()).isEqualByComparingTo("0.90");
		assertThat(r.getValorRegular()).isEqualByComparingTo("1.80");

		r = calc.calculate(regular(taxLine("550", "550001"), "200", "200032"), ibsUF, new BigDecimal("200"));
		assertThat(r.getValorDevido()).isEqualByComparingTo("0.00");
		assertThat(r.getAliquotaEfetivaRegular()).as("0,1 % com redução de 60 %").isEqualByComparingTo("0.04");
		assertThat(r.getValorRegular()).isEqualByComparingTo("0.08");
	}

	@Test
	void suspensionWithoutRegularClassificationIsZeroAndReported() {
		MLBRDocLineDetails details = details("200", null, null, "1");
		IBSCBSDocLineCalculator calc = calc(details);

		IBSCBSCalculator.Resultado r = calc.calculate(taxLine("550", "550001"), cbs, new BigDecimal("200"));
		assertThat(r.getValorDevido()).as("mesmo sem a regular, o grupo principal sai zerado").isEqualByComparingTo("0.00");
		assertThat(r.hasTributacaoRegular()).isFalse();

		assertThat(calc.validate(cst("550"), classTrib("550001")))
				.as("UB68-10, rejeição 1065")
				.anySatisfy(m -> assertThat(m).contains("gTribRegular"));
		assertThat(calc.validate(cst("550"), classTrib("550001"), cst("000"), classTrib("000001")))
				.noneSatisfy(m -> assertThat(m).contains("regular"));
		assertThat(calc.validate(cst("550"), classTrib("550001"), cst("550"), classTrib("550002")))
				.as("a regular não pode ser outra suspensão")
				.anySatisfy(m -> assertThat(m).contains("também exige"));
		assertThat(calc.validate(cst("550"), classTrib("550001"), cst("200"), classTrib("000001")))
				.anySatisfy(m -> assertThat(m).contains("não pertence à CST regular"));
	}

	@Test
	void regularTaxationIndicatorMatchesTheReceitaTable() {
		// Base da Receita (V0073): 31 cClassTrib exigem o grupo; 550021–550029 vieram sem o indicador
		for (String value : new String[] { "200022", "200024", "550001", "550020", "550021", "550029" })
			assertThat(IBSCBSDocLineCalculator.requiresRegularTaxation(
					new X_LBR_ClassTrib_IBSCBS(Env.getCtx(), classTrib(value), getTrxName())))
					.as(value).isTrue();
		assertThat(IBSCBSDocLineCalculator.requiresRegularTaxation(
				new X_LBR_ClassTrib_IBSCBS(Env.getCtx(), classTrib("000001"), getTrxName())))
				.isFalse();
	}

	// ------------------------------------------------------------ antes de 2026

	@Test
	void documentBefore2026HasNoIBSCBS() {
		// Ex.: devolução (RMA) de uma remessa de 2025, calculada na data da remessa original
		MLBRDocLineDetails details = details("200", null, null, "1");
		IBSCBSDocLineCalculator calc = new IBSCBSDocLineCalculator(details, null, TimeUtil.getDay(2025, 6, 15));

		assertThat(calc.calculate(taxLine("000", "000001"), cbs, new BigDecimal("200")))
				.as("sem IBS/CBS antes de 2026, e sem erro de cClassTrib fora de vigência")
				.isNull();
		assertThat(calc.validate(cst("000"), classTrib("200034"))).as("sem validações antes de 2026").isEmpty();
	}

	// ------------------------------------------------------------ apoio

	private IBSCBSDocLineCalculator calc(MLBRDocLineDetails details) {
		return new IBSCBSDocLineCalculator(details, null, DOC_DATE);
	}

	private MLBRDocLineDetails details(String gross, String discount, String freight, String qty) {
		MLBRDocLineDetails d = new MLBRDocLineDetails(Env.getCtx(), 0, getTrxName());
		d.setAD_Org_ID(0);
		d.setLBR_GrossAmt(new BigDecimal(gross));
		if (discount != null)
			d.setDiscountAmt(new BigDecimal(discount));
		if (freight != null)
			d.setFreightAmt(new BigDecimal(freight));
		d.setLBR_QtyTax(new BigDecimal(qty));
		d.saveEx();
		return d;
	}

	private void icms(MLBRDocLineDetails d, String regime, String cst, String amt, String difal, String fcpDifal) {
		MLBRDocLineICMS icms = new MLBRDocLineICMS(Env.getCtx(), 0, getTrxName());
		icms.setAD_Org_ID(0);
		icms.setLBR_DocLine_Details_ID(d.get_ID());
		icms.setLBR_ICMSRegime(regime);
		if ("TN".equals(regime))
			icms.setLBR_ICMS_TaxStatusTN(cst);
		else
			icms.setLBR_ICMS_TaxStatusSN(cst);
		icms.setLBR_TaxAmt(new BigDecimal(amt));
		if (difal != null)
			icms.setLBR_DIFAL_TaxAmtICMSUFDest(new BigDecimal(difal));
		if (fcpDifal != null)
			icms.setLBR_DIFAL_TaxAmtFCPUFDest(new BigDecimal(fcpDifal));
		icms.saveEx();
	}

	private void pis(MLBRDocLineDetails d, String amt) {
		MLBRDocLinePIS pis = new MLBRDocLinePIS(Env.getCtx(), 0, getTrxName());
		pis.setAD_Org_ID(0);
		pis.setLBR_DocLine_Details_ID(d.get_ID());
		pis.setLBR_TaxAmt(new BigDecimal(amt));
		pis.saveEx();
	}

	private void cofins(MLBRDocLineDetails d, String amt) {
		MLBRDocLineCOFINS cofins = new MLBRDocLineCOFINS(Env.getCtx(), 0, getTrxName());
		cofins.setAD_Org_ID(0);
		cofins.setLBR_DocLine_Details_ID(d.get_ID());
		cofins.setLBR_TaxAmt(new BigDecimal(amt));
		cofins.saveEx();
	}

	/** Linha de imposto só em memória, com a CST e a cClassTrib da Definição de Impostos */
	private MLBRTaxLine taxLine(String cst, String classTrib) {
		MLBRTaxLine tl = new MLBRTaxLine(Env.getCtx(), 0, getTrxName());
		if (cst != null)
			tl.set_ValueOfColumn(I_LBR_DocLine_IBSCBS.COLUMNNAME_LBR_CST_IBSCBS_ID, cst(cst));
		if (classTrib != null)
			tl.set_ValueOfColumn(I_LBR_DocLine_IBSCBS.COLUMNNAME_LBR_ClassTrib_IBSCBS_ID, classTrib(classTrib));
		return tl;
	}

	/** Acrescenta à linha a CST e a cClassTrib regulares (gTribRegular) */
	private MLBRTaxLine regular(MLBRTaxLine tl, String cst, String classTrib) {
		tl.setLBR_CSTReg_IBSCBS_ID(cst(cst));
		tl.setLBR_ClassTribReg_IBSCBS_ID(classTrib(classTrib));
		return tl;
	}

	private int cst(String value) {
		return new Query(Env.getCtx(), X_LBR_CST_IBSCBS.Table_Name, "Value=?", getTrxName())
				.setParameters(value).firstIdOnly();
	}

	private int classTrib(String value) {
		return new Query(Env.getCtx(), X_LBR_ClassTrib_IBSCBS.Table_Name, "Value=?", getTrxName())
				.setParameters(value).firstIdOnly();
	}
}
