package org.idempierelbr.rtc.process;

import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;

import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.idempierelbr.base.model.MLBRRTCFiscoConfig;
import org.idempierelbr.base.model.MLBRRTCFiscoRequest;
import org.idempierelbr.rtc.provider.RTCFiscoApuracaoCBSProvider;
import org.idempierelbr.rtc.service.RTCFiscoRequestService;

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
					addLog(prefix + "solicitação aberta, tíquete " + request.getLBR_Ticket()
							+ (request.getLBR_TEASeconds() > 0
									? " (a Receita estima " + request.getLBR_TEASeconds() + " s)" : "")
							+ ".");
				} catch (Exception e) {
					refused++;
					log.log(Level.WARNING, prefix + e.getLocalizedMessage(), e);
					addLog(prefix + e.getLocalizedMessage());
				}
			}
		}

		return "Solicitações abertas: " + opened + (refused > 0 ? "; não abertas: " + refused : "") + ".";
	}
}
