package org.idempierelbr.nfe.process;

import java.util.logging.Level;

import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.idempierelbr.nfe.util.NFeDistDFeUtil;

/**
 * Baixa os documentos fiscais eletrônicos emitidos contra o CNPJ da
 * organização, pela Distribuição de DF-e da SEFAZ.
 *
 * <p>Sem nenhum dos campos opcionais, lê a fila a partir do ponto de leitura
 * gravado em {@code LBR_DFeControl} e pagina até o fim — que é o modo de uso
 * normal, inclusive por agendador. Os três opcionais são exclusivos entre si e
 * servem a situações pontuais: reposicionar a leitura ({@code LBR_LastNSU}),
 * recuperar um documento perdido ({@code LBR_NSU}) ou buscar uma nota
 * conhecida ({@code LBR_NFeID}).
 *
 * @author Alan Lescano
 */
public class DownloadNFeXML extends SvrProcess {
	private int p_AD_Org_ID = 0;
	private String p_LBR_NFeEnv = null;
	private String p_LBR_LastNSU = null;
	private String p_LBR_NSU = null;
	private String p_LBR_NFeID = null;

	@Override
	protected void prepare() {
		ProcessInfoParameter[] para = getParameter();

		for (int i = 0; i < para.length; i++) {
			String name = para[i].getParameterName();

			if (para[i].getParameter() == null);

			else if (name.equals("AD_Org_ID"))
				p_AD_Org_ID = para[i].getParameterAsInt();
			else if (name.equals("LBR_NFeEnv"))
				p_LBR_NFeEnv = para[i].getParameterAsString();
			else if (name.equals("LBR_LastNSU"))
				p_LBR_LastNSU = para[i].getParameterAsString();
			else if (name.equals("LBR_NSU"))
				p_LBR_NSU = para[i].getParameterAsString();
			else if (name.equals("LBR_NFeID"))
				p_LBR_NFeID = para[i].getParameterAsString();
			else {
				log.log(Level.SEVERE, "Parâmetro Desconhecido: " + name);
			}
		}
	}

	@Override
	protected String doIt() throws Exception {
		if (p_AD_Org_ID == 0)
			throw new Exception("Sem organização definida!");

		if (p_LBR_NFeEnv == null)
			throw new Exception("Ambiente da Sefaz não definido!");

		if ((p_LBR_LastNSU != null && (p_LBR_NSU != null || p_LBR_NFeID != null)) ||
			(p_LBR_NSU != null && (p_LBR_LastNSU != null || p_LBR_NFeID != null)) ||
			(p_LBR_NFeID != null && (p_LBR_LastNSU != null || p_LBR_NSU != null))) {
				throw new Exception("Introduza apenas um dos campos opcionais!");
		}

		NFeDistDFeUtil distDFe = new NFeDistDFeUtil(getCtx(), p_AD_Org_ID, p_LBR_NFeEnv, get_TrxName());

		try {
			if (p_LBR_NSU != null)
				return distDFe.downloadByNSU(p_LBR_NSU);

			if (p_LBR_NFeID != null)
				return distDFe.downloadByNFeID(p_LBR_NFeID);

			return distDFe.download(p_LBR_LastNSU);
		} finally {
			// o que aconteceu com cada documento tem de chegar a quem executou:
			// quem trabalha com a fila no dia a dia não lê log de servidor
			for (String message : distDFe.getMessages())
				addLog(message);
		}
	}
}
