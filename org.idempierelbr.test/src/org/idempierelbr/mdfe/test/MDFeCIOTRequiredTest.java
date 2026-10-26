package org.idempierelbr.mdfe.test;

import static org.assertj.core.api.Assertions.assertThat;
import static org.assertj.core.api.Assertions.catchThrowable;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.ArgumentMatchers.anyInt;
import static org.mockito.Mockito.RETURNS_SELF;
import static org.mockito.Mockito.doAnswer;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.mockConstruction;
import static org.mockito.Mockito.mockStatic;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;
import static org.mockito.Mockito.withSettings;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.function.Supplier;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.MBPartner;
import org.compiere.model.MLocation;
import org.compiere.model.MRegion;
import org.compiere.model.MSysConfig;
import org.compiere.model.Query;
import org.compiere.model.X_C_City;
import org.idempierelbr.base.util.AdempiereLBR;
import org.idempierelbr.base.util.BPartnerUtil;
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
import org.idempierelbr.mdfe.util.MDFeUtil;
import org.idempierelbr.mdfe.util.MDFeXsdValidator;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.NullAndEmptySource;
import org.junit.jupiter.params.provider.ValueSource;
import org.mockito.MockedConstruction;
import org.mockito.MockedStatic;

/**
 * Adversarial tests for the local check of SEFAZ rejection 684 (NT MDF-e
 * 2026.001): road transport for hire must carry at least one CIOT.
 * <p>
 * No DB, no network, no iDempiere container required. The manifest and its
 * child rows are Mockito mocks, and every {@code new Query(...)} the generator
 * builds answers the rows registered for its table. That runs the real
 * {@link MDFeXMLGenerator#gerar()} end to end, including the XSD check of the
 * road modal.
 * <p>
 * Tests named {@code finding_*} assert what the operator needs and fail
 * against the current code: each one reproduces a defect found while
 * attacking the feature, and stays disabled until the defect is fixed.
 */
class MDFeCIOTRequiredTest {

	private static final String ISSUER_CNPJ = "12345678000199";
	private static final String CIOT = "123456789012";
	private static final String REJECTION_684 = "rejeicao 684";

	/** What each child table answers, read by read; tables not listed have no rows. */
	private final Map<String, Supplier<List<?>>> children = new HashMap<>();

	/** Every Query the generator built, by table. */
	private final Map<String, List<Query>> queries = new HashMap<>();

	private MockedStatic<MSysConfig> sysConfig;
	private MockedStatic<AdempiereLBR> adempiereLBR;
	private MockedStatic<BPartnerUtil> bpartnerUtil;
	private MockedConstruction<Query> queryConstruction;
	private MockedConstruction<MRegion> regionConstruction;

	private MLBRMDFe mdfe;

	@BeforeEach
	void setUp() {
		// MLocation reads AD_SysConfig in its static initializer.
		sysConfig = mockStatic(MSysConfig.class);

		adempiereLBR = mockStatic(AdempiereLBR.class);
		adempiereLBR.when(() -> AdempiereLBR.getTimezone(anyInt(), anyInt())).thenReturn("-03:00");

		X_C_City city = mock(X_C_City.class);
		when(city.get_Value("LBR_CityCode")).thenReturn("4106902");
		when(city.get_ValueAsString("LBR_CityCode")).thenReturn("4106902");
		bpartnerUtil = mockStatic(BPartnerUtil.class);
		bpartnerUtil.when(() -> BPartnerUtil.getX_C_City(any(), any(MLocation.class), any()))
				.thenReturn(city);

		queryConstruction = mockConstruction(Query.class, withSettings().defaultAnswer(RETURNS_SELF),
				(query, context) -> {
					String table = (String) context.arguments().get(1);
					queries.computeIfAbsent(table, t -> new ArrayList<>()).add(query);
					Supplier<List<?>> rows = children.getOrDefault(table, List::of);
					doAnswer(invocation -> rows.get()).when(query).list();
				});

		regionConstruction = mockConstruction(MRegion.class,
				(region, context) -> when(region.getName()).thenReturn("PR"));

		mdfe = ownCargoInOwnTruck();
	}

	@AfterEach
	void tearDown() {
		regionConstruction.close();
		queryConstruction.close();
		bpartnerUtil.close();
		adempiereLBR.close();
		sysConfig.close();
	}

	@Test
	void fixtureGeneratesSchemaValidRoadModal() {
		assertThat(generate()).contains("<rodo>").doesNotContain("<infCIOT>");
	}

	// ----------------------------------------------------- who must inform it

	@Test
	void blocks_serviceProviderWithoutCIOT() {
		serviceProvider();

		assertThat(failure()).isInstanceOf(AdempiereException.class)
				.hasMessageContaining(REJECTION_684);
	}

	@Test
	void blocks_globalizedCTeIssuerWithoutCIOT() {
		when(mdfe.getLBR_tpEmit()).thenReturn(X_LBR_MDFe.LBR_TPEMIT_PrestadorQueEmitiraCT_EGlobalizado);

		assertThat(failure()).hasMessageContaining(REJECTION_684);
	}

	@ParameterizedTest(name = "tpTransp={0}")
	@ValueSource(strings = { X_LBR_MDFe.LBR_TPTRANSP_ETC_EmpresaDeTransporteDeCargas,
			X_LBR_MDFe.LBR_TPTRANSP_TAC_TransportadorAutonomoDeCargas,
			X_LBR_MDFe.LBR_TPTRANSP_CTC_CooperativaDeTransporteDeCargas })
	void blocks_ownCargoByHiredCarrierWithoutCIOT(String tpTransp) {
		ownCargoByHiredCarrier(tpTransp);

		assertThat(failure()).hasMessageContaining(REJECTION_684);
	}

	@ParameterizedTest(name = "tpTransp={0}")
	@ValueSource(strings = { X_LBR_MDFe.LBR_TPTRANSP_ETC_EmpresaDeTransporteDeCargas,
			X_LBR_MDFe.LBR_TPTRANSP_TAC_TransportadorAutonomoDeCargas,
			X_LBR_MDFe.LBR_TPTRANSP_CTC_CooperativaDeTransporteDeCargas })
	void allows_ownCargoByHiredCarrierWithCIOT(String tpTransp) {
		ownCargoByHiredCarrier(tpTransp);
		ciots(ciot(CIOT, ISSUER_CNPJ));

		assertThat(generate()).contains("<CIOT>" + CIOT + "</CIOT>");
	}

	// --------------------------------------------------------- who is exempt

	@ParameterizedTest(name = "tpTransp=[{0}]")
	@NullAndEmptySource
	void allows_ownCargoInOwnTruckWithoutCIOT(String tpTransp) {
		when(mdfe.getLBR_tpTransp()).thenReturn(tpTransp);

		assertThat(generate()).doesNotContain("<infCIOT>");
	}

	@ParameterizedTest(name = "modal={0}")
	@ValueSource(strings = { X_LBR_MDFe.LBR_MODAL_Aereo, X_LBR_MDFe.LBR_MODAL_Aquaviario,
			X_LBR_MDFe.LBR_MODAL_Ferroviario })
	void allows_otherModalsWithoutCIOT(String modal) {
		serviceProvider();
		when(mdfe.getLBR_Modal()).thenReturn(modal);

		assertThat(failure()).isNull();
	}

	// ------------------------------------------ what counts as an informed CIOT

	@Test
	void writesCIOTGroup() {
		serviceProvider();
		ciots(ciot(CIOT, ISSUER_CNPJ));

		assertThat(generate()).contains("<infCIOT><CIOT>" + CIOT + "</CIOT><CNPJ>" + ISSUER_CNPJ
				+ "</CNPJ></infCIOT>");
	}

	@Test
	void stripsMaskFromCIOT() {
		serviceProvider();
		ciots(ciot("1234.5678-9012", ISSUER_CNPJ));

		assertThat(generate()).contains("<CIOT>" + CIOT + "</CIOT>");
	}

	/** Only ASCII digits count: the XSD type TCIOT is [0-9]{12}. */
	@ParameterizedTest(name = "CIOT=[{0}]")
	@NullAndEmptySource
	@ValueSource(strings = { "   ", "ABCD-EFGH-IJKL",
			"１２３４５６７８９０１２",
			"١٢٣٤٥٦٧٨٩٠١٢" })
	void blocks_whenNoRowHasDigits(String number) {
		serviceProvider();
		ciots(ciot(number, ISSUER_CNPJ));

		assertThat(failure()).hasMessageContaining(REJECTION_684);
	}

	@Test
	void allows_whenAnyRowHasDigits() {
		serviceProvider();
		ciots(ciot(null, ISSUER_CNPJ), ciot(CIOT, ISSUER_CNPJ));

		assertThat(generate()).contains("<CIOT>" + CIOT + "</CIOT>");
	}

	@Test
	void readsOnlyActiveCIOTRows() {
		serviceProvider();
		ciots(ciot(CIOT, ISSUER_CNPJ));

		generate();

		assertThat(queries.get(X_LBR_MDFeCIOT.Table_Name)).isNotEmpty()
				.allSatisfy(query -> verify(query).setOnlyActiveRecords(true));
	}

	// ------------------------------------- findings: bad data passes the check

	/** Saved through the window, which has no length check on LBR_CIOT. */
	@Test
	@Disabled("Defect: a CIOT of the wrong length passes the 684 check and fails in the XSD with a schema message")
	void finding_shortCIOTGetsAReadableMessage() {
		serviceProvider();
		ciots(ciot("12345678901", ISSUER_CNPJ));

		assertThat(failure()).isNotNull().hasMessageNotContaining("cvc-");
	}

	/** Saved through the window, which does not require CNPJ/CPF on the CIOT tab. */
	@Test
	@Disabled("Defect: a CIOT without CNPJ/CPF passes the 684 check and fails in the XSD with a schema message")
	void finding_CIOTWithoutResponsibleGetsAReadableMessage() {
		serviceProvider();
		ciots(ciot(CIOT, null));

		assertThat(failure()).isNotNull().hasMessageNotContaining("cvc-");
	}

	/** One error per attempt: the operator fixes 725 only to meet 684 next. */
	@Test
	@Disabled("Defect: validarCoerencia stops at the first broken rule, so 725 hides 684")
	void finding_reportsProductAndCIOTTogether() {
		serviceProvider();
		when(mdfe.getLBR_ProdPred()).thenReturn(null);

		assertThat(failure()).hasMessageContaining("rejeicao 725").hasMessageContaining(REJECTION_684);
	}

	/**
	 * The check and the writer read LBR_MDFeCIOT in two queries. TransmitirMDFe
	 * locks only the LBR_MDFe row, so another session can delete the CIOT row in
	 * between; under READ COMMITTED each query sees the latest commit.
	 */
	@Test
	@Disabled("Defect: the 684 check and the XML writer read LBR_MDFeCIOT in separate queries")
	void finding_rowDeletedBetweenCheckAndWriteNeverLeavesWithoutCIOT() {
		serviceProvider();
		X_LBR_MDFeCIOT row = ciot(CIOT, ISSUER_CNPJ);
		int[] reads = { 0 };
		children.put(X_LBR_MDFeCIOT.Table_Name, () -> reads[0]++ == 0 ? List.of(row) : List.of());

		String[] xml = new String[1];
		Throwable failure = catchThrowable(() -> xml[0] = generate());

		if (failure != null)
			assertThat(failure).hasMessageContaining(REJECTION_684);
		else
			assertThat(xml[0]).as("XML sent to SEFAZ").contains("<infCIOT>");
	}

	// ------------------------------------------- characterization: open decision

	/** SEFAZ enforces 684 in production only from 2026-11-23; the local check has no date. */
	@Test
	void blocksInProductionBeforeSefazDoes() {
		serviceProvider();
		when(mdfe.getLBR_tpAmb()).thenReturn(X_LBR_MDFe.LBR_TPAMB_Producao);
		when(mdfe.getDateDoc()).thenReturn(Timestamp.valueOf("2026-10-22 08:00:00"));

		assertThat(failure()).hasMessageContaining(REJECTION_684);
	}

	// ------------------------------------ collateral: found on the same path

	/** The modal XSD declares infPag inside rodo/infANTT; prodPred has no infPag. */
	@Test
	@Disabled("Defect (predates the CIOT check): infPag is written inside prodPred")
	void finding_freightPaymentGoesWhereTheSchemaExpectsIt() {
		serviceProvider();
		ciots(ciot(CIOT, ISSUER_CNPJ));

		X_LBR_MDFeInfPag payment = mock(X_LBR_MDFeInfPag.class);
		when(payment.getLBR_MDFeInfPag_ID()).thenReturn(30);
		when(payment.getName()).thenReturn("TRANSPORTADOR AUTONOMO");
		when(payment.getLBR_CPF()).thenReturn("12345678909");
		when(payment.getLBR_ValueContract()).thenReturn(new BigDecimal("100.00"));
		when(payment.getLBR_IndPag()).thenReturn(X_LBR_MDFeInfPag.LBR_INDPAG_AVista);
		when(payment.getLBR_PIX()).thenReturn("pix@transportadora.com.br");
		rows(X_LBR_MDFeInfPag.Table_Name, payment);

		X_LBR_MDFeComp freight = mock(X_LBR_MDFeComp.class);
		when(freight.getLBR_TpComp()).thenReturn(X_LBR_MDFeComp.LBR_TPCOMP_Frete);
		when(freight.getLBR_ValueComp()).thenReturn(new BigDecimal("100.00"));
		rows(X_LBR_MDFeComp.Table_Name, freight);

		assertThat(MDFeXsdValidator.validar(generate(), MDFeXsdValidator.XSD_MDFE))
				.noneMatch(error -> error.contains("infPag"));
	}

	// ----------------------------------------------------------------- helpers

	private String generate() {
		return new MDFeXMLGenerator(mdfe).gerar();
	}

	private Throwable failure() {
		return catchThrowable(this::generate);
	}

	private void serviceProvider() {
		when(mdfe.getLBR_tpEmit()).thenReturn(X_LBR_MDFe.LBR_TPEMIT_PrestadorDeServicoDeTransporte);
	}

	/** Own cargo moved by a hired carrier: the truck belongs to someone else. */
	private void ownCargoByHiredCarrier(String tpTransp) {
		when(mdfe.getLBR_tpTransp()).thenReturn(tpTransp);
		when(mdfe.isLBR_IsOwnerNotEmitter()).thenReturn(true);
		when(mdfe.getLBR_PropCNPJ()).thenReturn("98765432000155");
		when(mdfe.getLBR_PropRNTRC()).thenReturn("87654321");
		when(mdfe.getLBR_PropName()).thenReturn("TRANSPORTES TERCEIRO LTDA");
		when(mdfe.getLBR_tpProp()).thenReturn(X_LBR_MDFe.LBR_TPPROP_Outros);
	}

	private void rows(String table, Object... rows) {
		List<?> answer = List.of(rows);
		children.put(table, () -> answer);
	}

	private void ciots(X_LBR_MDFeCIOT... rows) {
		rows(X_LBR_MDFeCIOT.Table_Name, (Object[]) rows);
	}

	private static X_LBR_MDFeCIOT ciot(String number, String cnpj) {
		X_LBR_MDFeCIOT row = mock(X_LBR_MDFeCIOT.class);
		when(row.getLBR_CIOT()).thenReturn(number);
		when(row.getLBR_CNPJ()).thenReturn(cnpj);
		return row;
	}

	/**
	 * Own cargo in own truck, one NF-e, one driver: a manifest the generator
	 * turns into schema-valid road modal XML. Each test changes only what it
	 * is about.
	 */
	private MLBRMDFe ownCargoInOwnTruck() {
		Timestamp issued = Timestamp.valueOf("2026-10-22 08:00:00");
		String keyWithoutDV = MDFeUtil.montarChaveSemDV("41", issued, ISSUER_CNPJ, "1", "1",
				X_LBR_MDFe.LBR_TPEMIS_Normal, "12345678");
		String key = keyWithoutDV + MDFeUtil.calcularDV(keyWithoutDV);

		MLBRMDFe m = mock(MLBRMDFe.class);
		when(m.getLBR_MDFe_ID()).thenReturn(1000);
		when(m.getLBR_MDFeChave()).thenReturn(key);
		when(m.getLBR_cMDF()).thenReturn("12345678");
		when(m.getLBR_cDV()).thenReturn(key.substring(43));
		when(m.getDocumentNo()).thenReturn("1");
		when(m.getLBR_Serie()).thenReturn("1");
		when(m.getDateDoc()).thenReturn(issued);
		when(m.getLBR_tpAmb()).thenReturn(X_LBR_MDFe.LBR_TPAMB_Homologacao);
		when(m.getLBR_tpEmit()).thenReturn(X_LBR_MDFe.LBR_TPEMIT_TransportadorDeCargaPropria);
		when(m.getLBR_Modal()).thenReturn(X_LBR_MDFe.LBR_MODAL_Rodoviario);
		when(m.getLBR_tpEmis()).thenReturn(X_LBR_MDFe.LBR_TPEMIS_Normal);
		when(m.getLBR_procEmi()).thenReturn(X_LBR_MDFe.LBR_PROCEMI_AplicativoDoContribuinte);
		when(m.getLBR_UFIni_ID()).thenReturn(1);
		when(m.getLBR_UFFim_ID()).thenReturn(1);

		when(m.getEmitenteCodigoUF()).thenReturn("41");
		when(m.getEmitenteCNPJ()).thenReturn(ISSUER_CNPJ);
		MBPartner issuer = mock(MBPartner.class);
		when(issuer.getName()).thenReturn("TRANSPORTADORA TESTE LTDA");
		when(issuer.get_ValueAsString("LBR_IE")).thenReturn("9012345678");
		when(m.getEmitente()).thenReturn(issuer);
		MLocation address = mock(MLocation.class);
		when(address.getAddress1()).thenReturn("RUA XV DE NOVEMBRO");
		when(address.getAddress2()).thenReturn("100");
		when(address.getAddress3()).thenReturn("CENTRO");
		when(address.getCity()).thenReturn("CURITIBA");
		when(address.getPostal()).thenReturn("80020310");
		when(address.getC_Region_ID()).thenReturn(1);
		when(m.getEnderecoEmitente()).thenReturn(address);

		when(m.getLBR_RNTRC()).thenReturn("12345678");
		when(m.getLBR_Placa()).thenReturn("ABC1D23");
		when(m.getLBR_Tara()).thenReturn(10000);
		when(m.getLBR_tpRod()).thenReturn(X_LBR_MDFe.LBR_TPROD_Truck);
		when(m.getLBR_tpCar()).thenReturn(X_LBR_MDFe.LBR_TPCAR_FechadaBau);

		when(m.getLBR_ProdPred()).thenReturn("SOJA EM GRAOS");
		when(m.getLBR_tpCarga()).thenReturn(X_LBR_MDFe.LBR_TPCARGA_GranelSolido);
		when(m.getLBR_QtyNFe()).thenReturn(1);
		when(m.getLBR_ValueCargo()).thenReturn(new BigDecimal("1000.00"));
		when(m.getLBR_cUnid()).thenReturn(X_LBR_MDFe.LBR_CUNID_KG);
		when(m.getLBR_QtyCargo()).thenReturn(new BigDecimal("500"));

		X_LBR_MDFeMunCarrega loading = mock(X_LBR_MDFeMunCarrega.class);
		when(loading.getLBR_cMun()).thenReturn("4106902");
		when(loading.getLBR_xMun()).thenReturn("CURITIBA");
		rows(X_LBR_MDFeMunCarrega.Table_Name, loading);

		X_LBR_MDFeMunDescarga unloading = mock(X_LBR_MDFeMunDescarga.class);
		when(unloading.getLBR_MDFeMunDescarga_ID()).thenReturn(10);
		when(unloading.getLBR_cMun()).thenReturn("4113700");
		when(unloading.getLBR_xMun()).thenReturn("LONDRINA");
		rows(X_LBR_MDFeMunDescarga.Table_Name, unloading);

		X_LBR_MDFeDoc nfe = mock(X_LBR_MDFeDoc.class);
		when(nfe.getLBR_DFeType()).thenReturn(X_LBR_MDFeDoc.LBR_DFETYPE_NF_E);
		when(nfe.getLBR_DFeChave()).thenReturn("41261012345678000199550010000000011000000014");
		rows(X_LBR_MDFeDoc.Table_Name, nfe);

		X_LBR_MDFeCondutor driver = mock(X_LBR_MDFeCondutor.class);
		when(driver.getName()).thenReturn("JOAO DA SILVA");
		when(driver.getLBR_CPF()).thenReturn("12345678909");
		rows(X_LBR_MDFeCondutor.Table_Name, driver);

		return m;
	}
}
