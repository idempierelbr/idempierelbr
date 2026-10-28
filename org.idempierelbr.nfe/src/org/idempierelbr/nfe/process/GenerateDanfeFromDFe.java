/******************************************************************************
 * Product: ADempiereLBR - ADempiere Localization Brazil                      *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 *****************************************************************************/
package org.idempierelbr.nfe.process;

import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;

import javax.imageio.ImageIO;

import net.sf.jasperreports.engine.JasperPrint;

import org.adempiere.base.Service;
import org.adempiere.exceptions.AdempiereException;
import org.adempiere.report.jasper.JRViewerProvider;
import org.adempiere.report.jasper.JRViewerProviderList;
import org.compiere.model.MBPartner;
import org.compiere.model.MOrgInfo;
import org.compiere.model.PrintInfo;
import org.compiere.model.Query;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.idempierelbr.base.model.MLBRNFeXML;
import org.idempierelbr.base.model.MLBRNotaFiscal;
import org.idempierelbr.nfe.util.NFeDomUtil;
import org.idempierelbr.nfe.util.NFeUtil;
import org.idempierelbr.nfe.util.SefazSoapUtils;
import org.w3c.dom.Document;

/**
 * Imprime a DANFE de um documento recebido pela distribuição, sem passar por
 * {@link MLBRNotaFiscal}.
 *
 * <p>A DANFE sempre foi desenhada sobre o XML — a nota entra só para achar o
 * anexo, o logotipo e os eventos. Quem recebe NF-e de terceiro e não movimenta
 * estoque precisa apenas do documento impresso: obrigá-lo a conciliar produto a
 * produto para chegar nisso seria cobrar um cadastro que ele não usa.
 *
 * <p>O leiaute é o mesmo da janela de Nota Fiscal, inclusive o jasper anexado
 * ao processo da DANFE, se houver.
 *
 * <p>Com vários documentos selecionados na grade, as DANFEs saem num PDF só,
 * na ordem em que foram marcados.
 *
 * @author Alan Lescano
 */
public class GenerateDanfeFromDFe extends SvrProcess {

	@Override
	protected void prepare() {
		ProcessInfoParameter[] para = getParameter();

		for (int i = 0; i < para.length; i++) {
			String name = para[i].getParameterName();

			if (para[i].getParameter() == null)
				;
			else {
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
			}
		}
	}

	@Override
	protected String doIt() throws Exception {
		List<Integer> ids = getSelectedIDs();

		if (ids.isEmpty())
			throw new AdempiereException("Documento inválido!");

		List<JasperPrint> prints = new ArrayList<JasperPrint>();
		String documentNo = null;

		for (int LBR_NFeXML_ID : ids) {
			MLBRNFeXML dfe = new MLBRNFeXML(getCtx(), LBR_NFeXML_ID, get_TrxName());
			byte[] xml = dfe.getXML();

			String error = validate(dfe, xml);

			if (error != null) {
				// sozinho, o documento devolve o próprio motivo; num lote, o que
				// não imprime fica no log e não impede os demais
				if (ids.size() == 1)
					throw new AdempiereException(error);

				addLog(dfe.getDocumentNo() + ": " + error);
				continue;
			}

			JasperPrint jasperPrint;

			try {
				jasperPrint = createDanfe(dfe, xml);
			} catch (Exception e) {
				if (ids.size() == 1)
					throw e;

				// num lote, a falha precisa dizer de qual documento veio
				throw new AdempiereException(dfe.getDocumentNo() + ": " + e.getLocalizedMessage(), e);
			}

			markAsPrinted(dfe);

			prints.add(jasperPrint);
			documentNo = dfe.getDocumentNo();
		}

		if (prints.isEmpty())
			throw new AdempiereException("Nenhum dos documentos selecionados pode ser impresso.");

		if (!getProcessInfo().isBatch()) {
			PrintInfo pi = new PrintInfo(getProcessInfo());

			if (prints.size() == 1) {
				JRViewerProvider viewerLauncher = Service.locator().locate(JRViewerProvider.class).getService();
				viewerLauncher.openViewer(prints.get(0), "DANFE " + documentNo, pi);
			}
			else {
				// uma DANFE atrás da outra, num PDF só
				JRViewerProviderList viewerLauncher = Service.locator().locate(JRViewerProviderList.class).getService();
				viewerLauncher.openViewer(prints, "DANFE " + prints.size() + " documentos", pi);
			}
		}

		if (ids.size() == 1)
			return "";

		return prints.size() + " DANFE(s) gerada(s), " + (ids.size() - prints.size()) + " recusada(s)";
	}

	/**
	 * Documentos escolhidos na grade — ou o único documento da aba, quando o
	 * processo é acionado sem seleção múltipla.
	 */
	private List<Integer> getSelectedIDs() {
		List<Integer> ids = getRecord_IDs();

		if (ids != null && !ids.isEmpty())
			return ids;

		ids = new ArrayList<Integer>();

		if (getRecord_ID() > 0)
			ids.add(getRecord_ID());

		return ids;
	}

	/**
	 * @return o motivo pelo qual o documento não imprime, ou nulo se a DANFE
	 *         pode ser gerada
	 */
	private String validate(MLBRNFeXML dfe, byte[] xml) {
		if (!MLBRNFeXML.LBR_DFETYPE_NF_E.equals(dfe.getLBR_DFeType()))
			return "A DANFE só pode ser impressa a partir de uma NF-e.";

		if (!dfe.isLBR_IsXMLComplete())
			return "Este documento é apenas o resumo da NF-e. "
					+ "Manifeste a Ciência da Operação e baixe o XML completo para imprimir a DANFE.";

		if (xml == null)
			return "Documento sem o XML anexado!";

		return null;
	}

	private JasperPrint createDanfe(MLBRNFeXML dfe, byte[] xml) throws Exception {
		boolean isNFCe = MLBRNotaFiscal.MODEL_NFCE.equals(dfe.getLBR_NFeModel());

		JasperPrint jasperPrint = NFeUtil.createDanfe(getCtx(), new ByteArrayInputStream(xml),
				getEvents(dfe), getLogoID(dfe), isNFCe,
				isNFCe ? getNFCeParameters(xml) : null, get_TrxName());

		if (jasperPrint == null)
			throw new AdempiereException("Não foi possível gerar a DANFE!");

		return jasperPrint;
	}

	/**
	 * QR Code e link de consulta da NFC-e, lidos do próprio XML.
	 *
	 * <p>Na emissão esses dados são calculados com o CSC da empresa, e por isso
	 * a nota própria os guarda em coluna. Mas o XML autorizado carrega os dois
	 * prontos no grupo {@code infNFeSupl} — quem imprime um documento recebido
	 * não precisa de segredo nenhum, só ler o que veio.
	 *
	 * @return os parâmetros do relatório da NFC-e
	 */
	private Map<String, Object> getNFCeParameters(byte[] xml) throws Exception {
		Map<String, Object> parameters = new HashMap<String, Object>();

		Document doc = SefazSoapUtils.newHardenedDocumentBuilder()
			.parse(new ByteArrayInputStream(xml));

		String qrCode = NFeDomUtil.value(doc, "qrCode");
		String urlChave = NFeDomUtil.value(doc, "urlChave");

		if (urlChave != null)
			parameters.put("urlconsulta", urlChave);

		// o relatório não tolera imagem nula; sem o grupo no XML, o quadro do
		// QR Code sai em branco e o resto da DANFE continua legível
		if (qrCode != null && !qrCode.trim().isEmpty())
			parameters.put("qrcode", NFeUtil.createQRCodeImage(qrCode));
		else {
			addLog("XML da NFC-e sem o grupo infNFeSupl: a DANFE sai sem o QR Code.");
			parameters.put("qrcode", blankImage());
		}

		return parameters;
	}

	/** Imagem vazia, para o quadro do QR Code que não tem o que mostrar */
	private static InputStream blankImage() throws Exception {
		BufferedImage image = new BufferedImage(1, 1, BufferedImage.TYPE_INT_ARGB);
		ByteArrayOutputStream out = new ByteArrayOutputStream();
		ImageIO.write(image, "PNG", out);

		return new ByteArrayInputStream(out.toByteArray());
	}

	/**
	 * Eventos autorizados da mesma chave de acesso, para o quadro de eventos da
	 * DANFE — é ele que mostra o cancelamento e o texto da carta de correção.
	 *
	 * <p>Só o {@code procEvento} serve: o resumo do evento chega num NSU
	 * próprio e não traz o grupo {@code detEvento} que o relatório lê.
	 *
	 * @return os XMLs concatenados, ou vazio se a nota não tem evento
	 */
	private String getEvents(MLBRNFeXML dfe) {
		if (dfe.getLBR_NFeID() == null)
			return "";

		List<MLBRNFeXML> events = new Query(getCtx(), MLBRNFeXML.Table_Name,
				"LBR_NFeID=? AND LBR_DFeType=? AND LBR_IsXMLComplete=?", get_TrxName())
			.setParameters(dfe.getLBR_NFeID(), MLBRNFeXML.LBR_DFETYPE_Evento, "Y")
			.setClient_ID()
			.setOnlyActiveRecords(true)
			.setOrderBy("DateDoc, LBR_NSU")
			.list();

		StringBuilder xml = new StringBuilder();

		for (MLBRNFeXML event : events) {
			byte[] data = event.getXML();

			if (data == null) {
				log.warning("Evento sem XML anexado: " + event.getDocumentNo());
				continue;
			}

			xml.append(stripProlog(new String(data, StandardCharsets.UTF_8)));
		}

		return xml.toString();
	}

	/**
	 * Tira a declaração XML e o BOM do documento que vai virar filho de outro.
	 * Cada evento chega da Sefaz como documento inteiro; encadeados dentro da
	 * lista que o relatório recebe, a segunda declaração quebraria a leitura.
	 */
	private static String stripProlog(String xml) {
		if (xml == null)
			return "";

		if (xml.startsWith("\uFEFF"))
			xml = xml.substring(1);

		xml = xml.trim();

		if (xml.startsWith("<?xml")) {
			int end = xml.indexOf("?>");

			if (end > 0)
				xml = xml.substring(end + 2).trim();
		}

		return xml;
	}

	/**
	 * Logotipo impresso na DANFE: o do emitente, como na janela de Nota Fiscal.
	 *
	 * <p>A distribuição também entrega as notas emitidas pela própria empresa —
	 * nelas o emitente é uma organização nossa, e o logotipo é o dela.
	 *
	 * @return o {@code AD_Image_ID}, ou 0 quando não há logotipo
	 */
	private int getLogoID(MLBRNFeXML dfe) {
		if (dfe.getC_BPartner_ID() <= 0)
			return 0;

		MBPartner bp = new MBPartner(getCtx(), dfe.getC_BPartner_ID(), get_TrxName());

		if (bp.getAD_OrgBP_ID() > 0) {
			MOrgInfo oi = MOrgInfo.get(getCtx(), bp.getAD_OrgBP_ID(), get_TrxName());

			if (oi != null && oi.getLogo_ID() > 0)
				return oi.getLogo_ID();
		}

		return bp.getLogo_ID();
	}

	/**
	 * Marca o documento como impresso, para quem filtra a janela pelo que ainda
	 * falta imprimir. A coluna é opcional: sem ela no dicionário, a impressão
	 * continua funcionando.
	 */
	private void markAsPrinted(MLBRNFeXML dfe) {
		if (dfe.get_ColumnIndex("IsPrinted") < 0)
			return;

		dfe.set_ValueOfColumn("IsPrinted", Boolean.TRUE);
		dfe.saveEx();
	}
}	//	GenerateDanfeFromDFe
