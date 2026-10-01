package org.idempierelbr.rtc.process;

import java.util.logging.Level;

import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.idempierelbr.base.model.MLBRRTCFiscoRequest;
import org.idempierelbr.rtc.service.RTCFiscoPollService;

/**
 * Acompanha as solicitações abertas na Receita e importa os arquivos
 * prontos.
 *
 * <p>Sem parâmetro, trata todas as solicitações em andamento do tenant,
 * respeitando o intervalo mínimo entre consultas — é o uso do agendador. Com
 * uma solicitação informada (ou acionado como botão na aba da solicitação),
 * trata só ela, sem esperar o intervalo; se ela já foi importada, reimporta o
 * arquivo anexado, o que é inofensivo.
 *
 * <p>Cada solicitação é tratada em transação própria: a falha de uma não
 * desfaz as outras.
 *
 * @author Alan Lescano
 */
public class RTCFiscoPollAndImport extends SvrProcess {
	private int p_LBR_RTCFiscoRequest_ID = 0;

	@Override
	protected void prepare() {
		for (ProcessInfoParameter para : getParameter()) {
			String name = para.getParameterName();

			if (para.getParameter() == null)
				;
			else if (name.equals("LBR_RTCFiscoRequest_ID"))
				p_LBR_RTCFiscoRequest_ID = para.getParameterAsInt();
			else
				log.log(Level.SEVERE, "Parâmetro Desconhecido: " + name);
		}

		// acionado como botão na aba da solicitação
		if (p_LBR_RTCFiscoRequest_ID == 0 && getTable_ID() == MLBRRTCFiscoRequest.Table_ID)
			p_LBR_RTCFiscoRequest_ID = getRecord_ID();
	}

	@Override
	protected String doIt() throws Exception {
		RTCFiscoPollService pollService = new RTCFiscoPollService(getCtx());

		try {
			if (p_LBR_RTCFiscoRequest_ID > 0) {
				pollService.process(p_LBR_RTCFiscoRequest_ID, true);
			} else {
				for (MLBRRTCFiscoRequest request : MLBRRTCFiscoRequest.getOpen(getCtx(), get_TrxName()))
					pollService.process(request.getLBR_RTCFiscoRequest_ID(), false);
			}
		} finally {
			// o que aconteceu com cada solicitação tem de chegar a quem executou:
			// quem opera não lê log de servidor
			for (String message : pollService.getMessages())
				addLog(message);
		}

		return pollService.getSummary();
	}
}
