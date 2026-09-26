package org.idempierelbr.rtc.process;

import java.nio.file.Files;
import java.nio.file.Path;
import java.util.logging.Level;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.idempierelbr.base.model.MLBRRTCFiscoConfig;
import org.idempierelbr.rtc.service.RTCFiscoImportService;

/**
 * Importa um arquivo de apuração salvo localmente — o mesmo JSON que a URL
 * assinada entrega. Serve para testar sem rede e para recuperar um arquivo
 * baixado por fora do LBR.
 *
 * <p>A importação é a mesma do fluxo normal: idempotente, e um documento com
 * falha não impede os demais.
 *
 * @author Alan Lescano
 */
public class RTCFiscoImportFromFile extends SvrProcess {
	private int p_LBR_RTCFiscoConfig_ID = 0;
	private String p_LBR_RTCFiscoService = null;
	private String p_FileName = null;

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
			else if (name.equals("FileName"))
				p_FileName = para.getParameterAsString();
			else
				log.log(Level.SEVERE, "Parâmetro Desconhecido: " + name);
		}
	}

	@Override
	protected String doIt() throws Exception {
		if (p_LBR_RTCFiscoConfig_ID <= 0)
			throw new AdempiereException("Informe a configuração da integração com o fisco.");

		if (p_LBR_RTCFiscoService == null)
			throw new AdempiereException("Informe o serviço do arquivo (débitos, créditos, pagamentos ou recolhimentos).");

		if (p_FileName == null || p_FileName.trim().isEmpty())
			throw new AdempiereException("Informe o arquivo a importar.");

		Path path = Path.of(p_FileName.trim());

		if (!Files.isReadable(path))
			throw new AdempiereException("Não foi possível ler o arquivo " + path.getFileName() + ".");

		MLBRRTCFiscoConfig config = new MLBRRTCFiscoConfig(getCtx(), p_LBR_RTCFiscoConfig_ID, get_TrxName());
		RTCFiscoImportService importService = new RTCFiscoImportService(getCtx(), get_TrxName());

		try {
			return importService.importFile(config, p_LBR_RTCFiscoService, null, Files.readAllBytes(path));
		} finally {
			for (String message : importService.getMessages())
				addLog(message);
		}
	}
}
