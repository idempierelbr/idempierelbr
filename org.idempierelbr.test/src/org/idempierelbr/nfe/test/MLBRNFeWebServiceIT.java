package org.idempierelbr.nfe.test;

import static org.assertj.core.api.Assertions.assertThat;

import org.idempiere.test.DictionaryIDs;
import org.idempierelbr.base.model.MLBRNFeWebService;
import org.idempierelbr.test.AbstractLBRTestCase;
import org.junit.jupiter.api.Test;

/**
 * DB integration tests for {@link MLBRNFeWebService}.
 * Requires a running iDempiere container with seed data.
 */
class MLBRNFeWebServiceIT extends AbstractLBRTestCase {

	@Test
	void get_resolvesNationalService_regardlessOfRegion() {
		// CT is a non-Brazilian fixture region with no DistDFe seed row.
		// National services must bypass the C_Region_ID filter and still find the seeded row.
		MLBRNFeWebService ws = MLBRNFeWebService.get(
			MLBRNFeWebService.SERVICE_NFE_DISTRIBUICAO_DFE,
			"1", "1.00", DictionaryIDs.C_Region.CT.id, "55", null);

		assertThat(ws).isNotNull();
		assertThat(ws.getURL())
			.isEqualTo("https://www1.nfe.fazenda.gov.br/NFeDistribuicaoDFe/NFeDistribuicaoDFe.asmx");
	}
}
