package org.idempierelbr.rtc.process;

import java.time.Instant;
import java.time.ZoneId;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;

import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.Env;
import org.idempierelbr.base.model.MLBRRTCFiscoConfig;
import org.idempierelbr.base.model.MLBRRTCFiscoRequest;
import org.idempierelbr.rtc.client.RTCQuota;
import org.idempierelbr.rtc.provider.RTCFiscoApuracaoCBSProvider;
import org.idempierelbr.rtc.service.RTCFiscoPollService;
import org.idempierelbr.rtc.service.RTCFiscoRequestService;
import org.idempierelbr.rtc.service.RTCFiscoSysConfig;

/**
 * Abre as solicitações de apuração na Receita — uma por configuração e
 * serviço.
 *
 * <p>Sem parâmetros, abre os quatro serviços (débitos, créditos, pagamentos e
 * recolhimentos) de todas as configurações ativas do tenant, que é o uso do
 * agendador diário. Cada serviço tem o seu próprio limite diário na Receita. Acionado como botão na aba da
 * configuração, fica só com aquela configuração.
 *
 * <p>Cada abertura conta no limite de 4 por dia da Receita. O processo recusa
 * abrir quando já há uma solicitação em andamento para o mesmo serviço, e
 * avisa quando a última importação se aproxima da janela de 8 dias.
 *
 * <p>Se a Receita estimar o processamento em até
 * {@code LBR_RTC_FISCO_OPEN_WAIT_SECONDS} (30 s por padrão), o processo
 * espera e já baixa e importa as solicitações abertas, como o
 * <i>Consultar e Importar Solicitação</i> faria: quase sempre ela estima 1
 * segundo, e o tíquete deixa de existir em menos de um dia. As que demorarem
 * mais ficam para a consulta posterior.
 *
 * @author Alan Lescano
 */
public class RTCFiscoOpenRequests extends SvrProcess {
	private int p_LBR_RTCFiscoConfig_ID = 0;
	private String p_LBR_RTCFiscoService = null;

	@Override
	protected void prepare() {
		for (ProcessInfoParameter para : getParameter()) {
			String name = para.getParameterName();

			if (para.getParameter() == null)
				;
			else if (name.equals("LBR_RTCFiscoConfig_ID"))
				p_LBR_RTCFiscoConfig_ID = para.getParameterAsInt();
			else if (name.equals("LBR_RTCFiscoService"))
				p_LBR_RTCFiscoService = para.getParameterAsString();
			else
				log.log(Level.SEVERE, "Parâmetro Desconhecido: " + name);
		}

		// acionado como botão na aba da configuração
		if (p_LBR_RTCFiscoConfig_ID == 0 && getTable_ID() == MLBRRTCFiscoConfig.Table_ID)
			p_LBR_RTCFiscoConfig_ID = getRecord_ID();
	}

	@Override
	protected String doIt() throws Exception {
		List<MLBRRTCFiscoConfig> configs = new ArrayList<MLBRRTCFiscoConfig>();

		if (p_LBR_RTCFiscoConfig_ID > 0)
			configs.add(new MLBRRTCFiscoConfig(getCtx(), p_LBR_RTCFiscoConfig_ID, get_TrxName()));
		else
			configs.addAll(MLBRRTCFiscoConfig.getActive(getCtx(), get_TrxName()));

		if (configs.isEmpty())
			return "Nenhuma configuração da integração com o fisco está ativa.";

		String[] services = p_LBR_RTCFiscoService != null ? new String[] { p_LBR_RTCFiscoService }
				: new String[] { MLBRRTCFiscoRequest.LBR_RTCFISCOSERVICE_Débitos,
						MLBRRTCFiscoRequest.LBR_RTCFISCOSERVICE_Créditos,
						MLBRRTCFiscoRequest.LBR_RTCFISCOSERVICE_Pagamentos,
						MLBRRTCFiscoRequest.LBR_RTCFISCOSERVICE_Recolhimentos };

		RTCFiscoRequestService requestService = new RTCFiscoRequestService(getCtx());
		int maxWaitSeconds = RTCFiscoSysConfig.getOpenWaitSeconds(Env.getAD_Client_ID(getCtx()));
		List<Integer> toImport = new ArrayList<Integer>();
		long importAt = 0;
		int opened = 0;
		int refused = 0;

		for (MLBRRTCFiscoConfig config : configs) {
			for (String service : services) {
				String prefix = "CNPJ base " + config.getLBR_CNPJBase() + " (" + config.getLBR_RTCTaxType() + "), "
						+ RTCFiscoApuracaoCBSProvider.getServiceLabel(service) + ": ";

				String warning = requestService.getWindowWarning(config, service);

				if (warning != null)
					addLog(prefix + warning);

				try {
					MLBRRTCFiscoRequest request = requestService.open(config, service);
					opened++;

					RTCQuota quota = requestService.getLastOpenQuota();
					Integer wait = RTCFiscoRequestService.getImportWaitSeconds(request.getLBR_TEASeconds(),
							maxWaitSeconds);

					addLog(prefix + "solicitação aberta, tíquete " + request.getLBR_Ticket()
							+ (request.getLBR_TEASeconds() > 0
									? " (a Receita estima " + request.getLBR_TEASeconds() + " s)" : "")
							+ (quota == null ? "" : "; aberturas: "
									+ quota.describe(Instant.now(), ZoneId.systemDefault()))
							+ "."
							+ (wait == null && maxWaitSeconds > 0
									? " Consulte depois com Consultar e Importar Solicitação." : ""));

					if (wait != null) {
						toImport.add(request.getLBR_RTCFiscoRequest_ID());
						importAt = Math.max(importAt, System.currentTimeMillis() + wait * 1000L);
					}
				} catch (Exception e) {
					refused++;
					log.log(Level.WARNING, prefix + e.getLocalizedMessage(), e);
					addLog(prefix + e.getLocalizedMessage());
				}
			}
		}

		String summary = "Solicitações abertas: " + opened + (refused > 0 ? "; não abertas: " + refused : "") + ".";

		if (toImport.isEmpty())
			return summary;

		return summary + " " + importNow(toImport, importAt);
	}

	/**
	 * Espera a estimativa da Receita e baixa e importa as solicitações recém
	 * abertas, como o <i>Consultar e Importar Solicitação</i> faria sobre cada
	 * uma.
	 *
	 * @param importAt quando a última estimativa vence, em milissegundos
	 * @return o resumo da importação
	 */
	private String importNow(List<Integer> requestIDs, long importAt) throws InterruptedException {
		long wait = importAt - System.currentTimeMillis();

		if (wait > 0)
			Thread.sleep(wait);

		RTCFiscoPollService pollService = new RTCFiscoPollService(getCtx());

		try {
			for (int requestID : requestIDs)
				pollService.process(requestID, true);
		} finally {
			for (String message : pollService.getMessages())
				addLog(message);
		}

		return pollService.getSummary();
	}
}
