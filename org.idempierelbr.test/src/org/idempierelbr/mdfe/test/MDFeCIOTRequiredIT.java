package org.idempierelbr.mdfe.test;

import static org.assertj.core.api.Assertions.assertThat;
import static org.assertj.core.api.Assertions.catchThrowable;

import java.math.BigDecimal;
import java.sql.Timestamp;

import org.assertj.core.api.SoftAssertions;
import org.compiere.model.MBPartner;
import org.compiere.model.MCity;
import org.compiere.model.MLocation;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MRegion;
import org.compiere.model.Query;
import org.compiere.process.DocAction;
import org.compiere.util.Env;
import org.idempierelbr.base.util.AdempiereLBR;
import org.idempierelbr.mdfe.base.MDFeXMLGenerator;
import org.idempierelbr.mdfe.model.MLBRMDFe;
import org.idempierelbr.mdfe.model.X_LBR_MDFe;
import org.idempierelbr.mdfe.model.X_LBR_MDFeCIOT;
import org.idempierelbr.mdfe.model.X_LBR_MDFeComp;
import org.idempierelbr.mdfe.model.X_LBR_MDFeCondutor;
import org.idempierelbr.mdfe.model.X_LBR_MDFeDoc;
import org.idempierelbr.mdfe.model.X_LBR_MDFeInfPag;
import org.idempierelbr.mdfe.model.X_LBR_MDFeMunCarrega;
import org.idempierelbr.mdfe.model.X_LBR_MDFeMunDescarga;
import org.idempierelbr.mdfe.util.MDFeXsdValidator;
import org.idempierelbr.test.AbstractLBRTestCase;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.Test;

/**
 * The CIOT check of rejection 684 against a real database: real dictionary,
 * real queries, real model classes. GardenWorld HQ plays a carrier from
 * Curitiba/PR, and every row lives in the test transaction, rolled back at
 * the end. Nothing is transmitted: only the XML generator runs.
 * <p>
 * Needs an iDempiere database with the MDF-e migrations; point
 * {@code IDEMPIERE_HOME} at its idempiere.properties and run
 * {@code mvn -o verify -Dtest=MDFeCIOTRequiredIT -DfailIfNoTests=false}.
 * <p>
 * Tests named {@code finding_*} assert what the operator needs and fail
 * against the current code: each one reproduces a defect found while
 * attacking the feature, and stays disabled until the defect is fixed.
 */
class MDFeCIOTRequiredIT extends AbstractLBRTestCase {

	private static final String ISSUER_CNPJ = "11222333000181";
	private static final String CIOT = "123456789012";
	private static final String REJECTION_684 = "rejeicao 684";
	private static final String SERVICE_PROVIDER = X_LBR_MDFe.LBR_TPEMIT_PrestadorDeServicoDeTransporte;

	private int pr;

	@BeforeEach
	void carrierFromCuritiba() {
		pr = new Query(Env.getCtx(), MRegion.Table_Name, "C_Country_ID=? AND Name=?", getTrxName())
				.setParameters(AdempiereLBR.BRASIL, "PR").firstIdOnly();
		int curitiba = new Query(Env.getCtx(), MCity.Table_Name, "C_Region_ID=? AND Name=?", getTrxName())
				.setParameters(pr, "Curitiba").firstIdOnly();

		MLocation address = new MLocation(Env.getCtx(),
				MOrgInfo.get(Env.getCtx(), GARDEN_WORLD_HQ_ORG, getTrxName()).getC_Location_ID(), getTrxName());
		address.setC_Country_ID(AdempiereLBR.BRASIL);
		address.setC_Region_ID(pr);
		address.setC_City_ID(curitiba);
		address.setCity("Curitiba");
		address.setAddress1("RUA XV DE NOVEMBRO");
		address.setAddress2("100");
		address.setAddress3("CENTRO");
		address.setPostal("80020310");
		address.saveEx();

		MBPartner carrier = new MBPartner(Env.getCtx(), 0, getTrxName());
		carrier.setValue("MDFE-CIOT-IT");
		carrier.setName("TRANSPORTADORA TESTE LTDA");
		carrier.setAD_OrgBP_ID(GARDEN_WORLD_HQ_ORG);
		carrier.set_ValueOfColumn("LBR_CNPJ", ISSUER_CNPJ);
		carrier.saveEx();
	}

	// ------------------------------------------------- the rule, on real rows

	@Test
	void blocksServiceProviderWithoutCIOT() {
		MLBRMDFe mdfe = manifest(SERVICE_PROVIDER);

		assertThat(catchThrowable(() -> generate(mdfe))).hasMessageContaining(REJECTION_684);
	}

	@Test
	void writesCIOTFromRealRows() {
		MLBRMDFe mdfe = manifest(SERVICE_PROVIDER);
		ciot(mdfe, CIOT, ISSUER_CNPJ);

		assertThat(generate(mdfe)).contains("<infCIOT><CIOT>" + CIOT + "</CIOT><CNPJ>" + ISSUER_CNPJ
				+ "</CNPJ></infCIOT>");
	}

	@Test
	void ignoresInactiveCIOT() {
		MLBRMDFe mdfe = manifest(SERVICE_PROVIDER);
		X_LBR_MDFeCIOT row = ciot(mdfe, CIOT, ISSUER_CNPJ);
		row.setIsActive(false);
		row.saveEx();

		assertThat(catchThrowable(() -> generate(mdfe))).hasMessageContaining(REJECTION_684);
	}

	@Test
	void allowsOwnCargoInOwnTruckWithoutCIOT() {
		MLBRMDFe mdfe = manifest(X_LBR_MDFe.LBR_TPEMIT_TransportadorDeCargaPropria);

		assertThat(generate(mdfe)).doesNotContain("<infCIOT>");
	}

	// ----------------------- findings: what the window tab saves gets through

	/** The window's CIOT tab saves through the model: no length rule on LBR_CIOT. */
	@Test
	@Disabled("Defect: a CIOT of the wrong length passes the 684 check and fails in the XSD with a schema message")
	void finding_windowSavedShortCIOTGetsAReadableMessage() {
		MLBRMDFe mdfe = manifest(SERVICE_PROVIDER);
		ciot(mdfe, "12345678901", ISSUER_CNPJ);

		assertThat(catchThrowable(() -> generate(mdfe))).isNotNull().hasMessageNotContaining("cvc-");
	}

	/** CNPJ and CPF are optional in the dictionary, so the window saves a CIOT with neither. */
	@Test
	@Disabled("Defect: a CIOT without CNPJ/CPF passes the 684 check and fails in the XSD with a schema message")
	void finding_windowSavedCIOTWithoutResponsibleGetsAReadableMessage() {
		MLBRMDFe mdfe = manifest(SERVICE_PROVIDER);
		ciot(mdfe, CIOT, null);

		assertThat(catchThrowable(() -> generate(mdfe))).isNotNull().hasMessageNotContaining("cvc-");
	}

	// -------------------------------- findings: document flow and lifecycle

	/** prepareIt lists what is missing; Complete is where 684 shows up. */
	@Test
	@Disabled("Defect: Prepare passes without CIOT; only Complete, at transmission, blocks")
	void finding_prepareReportsMissingCIOT() throws Exception {
		MLBRMDFe mdfe = manifest(SERVICE_PROVIDER);

		assertThat(mdfe.processIt(DocAction.ACTION_Prepare)).as("Prepare without CIOT").isFalse();
	}

	/** Nothing in the model stops CIOT rows of an authorized MDF-e from changing. */
	@Test
	@Disabled("Defect: CIOT rows of an authorized MDF-e can still be changed and removed")
	void finding_authorizedManifestKeepsItsCIOT() {
		MLBRMDFe mdfe = manifest(SERVICE_PROVIDER);
		X_LBR_MDFeCIOT row = ciot(mdfe, CIOT, ISSUER_CNPJ);
		mdfe.setLBR_MDFeStatus(X_LBR_MDFe.LBR_MDFESTATUS_Autorizado);
		mdfe.saveEx();

		SoftAssertions softly = new SoftAssertions();
		row.setLBR_CIOT("999999999999");
		softly.assertThat(catchThrowable(row::saveEx)).as("changing the CIOT").isNotNull();
		softly.assertThat(catchThrowable(() -> row.deleteEx(true))).as("removing the CIOT").isNotNull();
		softly.assertAll();
	}

	/** Collateral: the modal XSD declares infPag inside rodo/infANTT; prodPred has no infPag. */
	@Test
	@Disabled("Defect (predates the CIOT check): infPag is written inside prodPred")
	void finding_freightPaymentGoesWhereTheSchemaExpectsIt() {
		MLBRMDFe mdfe = manifest(SERVICE_PROVIDER);
		ciot(mdfe, CIOT, ISSUER_CNPJ);

		X_LBR_MDFeInfPag payment = new X_LBR_MDFeInfPag(Env.getCtx(), 0, getTrxName());
		payment.setAD_Org_ID(GARDEN_WORLD_HQ_ORG);
		payment.setLBR_MDFe_ID(mdfe.get_ID());
		payment.setName("TRANSPORTADOR AUTONOMO");
		payment.setLBR_CPF("12345678909");
		payment.setLBR_ValueContract(new BigDecimal("100.00"));
		payment.setLBR_IndPag(X_LBR_MDFeInfPag.LBR_INDPAG_AVista);
		payment.setLBR_PIX("pix@transportadora.com.br");
		payment.saveEx();

		X_LBR_MDFeComp freight = new X_LBR_MDFeComp(Env.getCtx(), 0, getTrxName());
		freight.setAD_Org_ID(GARDEN_WORLD_HQ_ORG);
		freight.setLBR_MDFeInfPag_ID(payment.get_ID());
		freight.setLBR_TpComp(X_LBR_MDFeComp.LBR_TPCOMP_Frete);
		freight.setLBR_ValueComp(new BigDecimal("100.00"));
		freight.saveEx();

		assertThat(MDFeXsdValidator.validar(generate(mdfe), MDFeXsdValidator.XSD_MDFE))
				.noneMatch(error -> error.contains("infPag"));
	}

	// ----------------------------------------------------------------- helpers

	private String generate(MLBRMDFe mdfe) {
		return new MDFeXMLGenerator(mdfe).gerar();
	}

	/** What the window's CIOT tab does on save: the model, with the dictionary rules. */
	private X_LBR_MDFeCIOT ciot(MLBRMDFe mdfe, String number, String cnpj) {
		X_LBR_MDFeCIOT row = new X_LBR_MDFeCIOT(Env.getCtx(), 0, getTrxName());
		row.setAD_Org_ID(GARDEN_WORLD_HQ_ORG);
		row.setLBR_MDFe_ID(mdfe.get_ID());
		row.setLBR_CIOT(number);
		row.setLBR_CNPJ(cnpj);
		row.saveEx();
		return row;
	}

	/** Road manifest, one NF-e from Curitiba to Londrina, one driver, numbered and keyed. */
	private MLBRMDFe manifest(String tpEmit) {
		MLBRMDFe mdfe = new MLBRMDFe(Env.getCtx(), 0, getTrxName());
		mdfe.setAD_Org_ID(GARDEN_WORLD_HQ_ORG);
		mdfe.setDocumentNo("1");
		mdfe.setDateDoc(Timestamp.valueOf("2026-10-22 08:00:00"));
		mdfe.setLBR_tpAmb(X_LBR_MDFe.LBR_TPAMB_Homologacao);
		mdfe.setLBR_tpEmit(tpEmit);
		mdfe.setLBR_Modal(X_LBR_MDFe.LBR_MODAL_Rodoviario);
		mdfe.setLBR_tpEmis(X_LBR_MDFe.LBR_TPEMIS_Normal);
		mdfe.setLBR_procEmi(X_LBR_MDFe.LBR_PROCEMI_AplicativoDoContribuinte);
		mdfe.setLBR_UFIni_ID(pr);
		mdfe.setLBR_UFFim_ID(pr);
		mdfe.setLBR_RNTRC("12345678");
		mdfe.setLBR_Placa("ABC1D23");
		mdfe.setLBR_Tara(10000);
		mdfe.setLBR_tpRod(X_LBR_MDFe.LBR_TPROD_Truck);
		mdfe.setLBR_tpCar(X_LBR_MDFe.LBR_TPCAR_FechadaBau);
		mdfe.setLBR_ProdPred("SOJA EM GRAOS");
		mdfe.setLBR_tpCarga(X_LBR_MDFe.LBR_TPCARGA_GranelSolido);
		mdfe.setLBR_QtyNFe(1);
		mdfe.setLBR_ValueCargo(new BigDecimal("1000.00"));
		mdfe.setLBR_QtyCargo(new BigDecimal("500"));
		mdfe.setLBR_cUnid(X_LBR_MDFe.LBR_CUNID_KG);
		mdfe.saveEx();
		mdfe.gerarChaveAcesso();
		mdfe.saveEx();

		X_LBR_MDFeMunCarrega loading = new X_LBR_MDFeMunCarrega(Env.getCtx(), 0, getTrxName());
		loading.setAD_Org_ID(GARDEN_WORLD_HQ_ORG);
		loading.setLBR_MDFe_ID(mdfe.get_ID());
		loading.setLBR_cMun("4106902");
		loading.setLBR_xMun("CURITIBA");
		loading.saveEx();

		X_LBR_MDFeMunDescarga unloading = new X_LBR_MDFeMunDescarga(Env.getCtx(), 0, getTrxName());
		unloading.setAD_Org_ID(GARDEN_WORLD_HQ_ORG);
		unloading.setLBR_MDFe_ID(mdfe.get_ID());
		unloading.setLBR_cMun("4113700");
		unloading.setLBR_xMun("LONDRINA");
		unloading.saveEx();

		X_LBR_MDFeDoc nfe = new X_LBR_MDFeDoc(Env.getCtx(), 0, getTrxName());
		nfe.setAD_Org_ID(GARDEN_WORLD_HQ_ORG);
		nfe.setLBR_MDFeMunDescarga_ID(unloading.get_ID());
		nfe.setLBR_DFeType(X_LBR_MDFeDoc.LBR_DFETYPE_NF_E);
		nfe.setLBR_DFeChave("41261011222333000181550010000000011000000014");
		nfe.saveEx();

		X_LBR_MDFeCondutor driver = new X_LBR_MDFeCondutor(Env.getCtx(), 0, getTrxName());
		driver.setAD_Org_ID(GARDEN_WORLD_HQ_ORG);
		driver.setLBR_MDFe_ID(mdfe.get_ID());
		driver.setName("JOAO DA SILVA");
		driver.setLBR_CPF("12345678909");
		driver.saveEx();

		return mdfe;
	}
}
