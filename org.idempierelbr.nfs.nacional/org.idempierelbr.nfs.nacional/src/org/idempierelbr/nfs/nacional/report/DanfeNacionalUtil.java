package org.idempierelbr.nfs.nacional.report;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import org.compiere.model.MAttachment;
import org.compiere.util.CLogger;
import org.idempierelbr.base.model.MLBRNFS;
import org.idempierelbr.base.model.X_LBR_NFS;

import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.data.JRXmlDataSource;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.QRCodeWriter;

/**
 * Gera o DANFSe (Documento Auxiliar da NFS-e) em PDF, conforme a Nota
 * Tecnica no 008 - Especificacoes Tecnicas do DANFSe (SE/CGNFS-e, v1.0).
 *
 * IMPORTANTE - leia antes de considerar isto "pronto para produção":
 *
 *  1. O DANFSe.jrxml cobre os blocos OBRIGATORIOS do leiaute (cabecalho,
 *     dados da NFS-e, prestador, tomador, servico, ISSQN, federal, valor
 *     total, informacoes complementares, canhoto) com o "Caminho no XML" e
 *     as posicoes (convertidas de cm para pixel a 1cm=28,35px, a mesma
 *     escala do DanfeMainPortraitA4.jrxml do NF-e) exatamente como constam
 *     na tabela do manual, incluindo a traducao do codigo de cStat (TStat:
 *     100/102/103/107) e a marca d'agua diagonal "CANCELADA" (gerada como
 *     imagem via Graphics2D em generateWatermark(), acionada quando
 *     LBR_NFSeStatus = Cancelado). NAO foram implementados: o bloco de
 *     Tributacao IBS/CBS, o bloco Destinatario/Intermediario da Operacao,
 *     as substituicoes de texto das Notas 2/3/4 (quando um bloco esta
 *     vazio), a marca d'agua "SUBSTITUIDA" (falta um status proprio para
 *     isso - ver TODO em gerarDanfePdf), e a linha obrigatoria de "Totais
 *     Aproximados dos Tributos" (Lei 12.741/2012), que o LBR nao calcula
 *     hoje.
 *
 *  2. O .jrxml aqui e' compilado em tempo de execucao
 *     (JasperCompileManager), nao ha um .jasper pre-compilado no bundle -
 *     isso evita precisar compliar aqui, mas custa alguns ms extras por
 *     impressao. Dá' para compilar uma vez e cachear se isso importar.
 *
 *  3. O QR Code (obrigatorio conforme item 2.4.3, apontando para
 *     https://www.nfse.gov.br/ConsultaPublica/?tpc=1&chave=) usa
 *     com.google.zxing, que o org.idempierelbr.nfe ja' importa (so' o
 *     nucleo, sem o modulo javase) - por isso o BitMatrix e' convertido
 *     manualmente para PNG em generateQrCode(), em vez de usar
 *     MatrixToImageWriter (que exigiria zxing-javase).
 *
 *  4. NUNCA testado: este ambiente de desenvolvimento nao tem as bibliotecas
 *     do JasperReports disponiveis (nem acesso a rede para baixa-las), entao
 *     o .jrxml foi conferido apenas como XML bem formado, nunca
 *     efetivamente compilado ou preenchido. O primeiro teste real e'
 *     abrir/compilar no projeto (Eclipse/Jaspersoft Studio) de voces.
 */
public class DanfeNacionalUtil {

	private static final CLogger log = CLogger.getCLogger(DanfeNacionalUtil.class);
	private static JasperReport cachedReport;

	/**
	 * Gera o PDF do DANFSe a partir do XML da NFS-e ja autorizada, anexado ao
	 * registro por {@code NFSeNacional.sendNFSe} (entrada "NFSe-<chave>.xml").
	 *
	 * @return bytes do PDF, ou lanca excecao se a NFS-e nao tiver o XML anexado.
	 */
	public static byte[] gerarDanfePdf(MLBRNFS m_nfs) throws Exception {

		byte[] nfseXml = getNfseXmlAttachment(m_nfs);
		if (nfseXml == null)
			throw new Exception("XML da NFS-e nao encontrado nos anexos (a nota foi transmitida com sucesso?)");

		JasperReport report = getCompiledReport();

		Map<String, Object> params = new HashMap<>();
		params.put("REPORT_LOCALE", new Locale("pt", "BR"));

		byte[] qr = generateQrCode(m_nfs.getLBR_NFSeID());
		if (qr != null)
			params.put("qrcode", new ByteArrayInputStream(qr));

		if (X_LBR_NFS.LBR_NFSESTATUS_Cancelado.equals(m_nfs.getLBR_NFSeStatus())) {
			byte[] watermark = generateWatermark("CANCELADA");
			params.put("watermark", new ByteArrayInputStream(watermark));
		}
		// TODO: quando substituteNFSe() for implementado e existir um status
		// proprio de "substituida", gerar generateWatermark("SUBSTITUIDA") aqui.

		JRXmlDataSource dataSource = new JRXmlDataSource(new ByteArrayInputStream(nfseXml),
				report.getQuery().getText());

		JasperPrint print = JasperFillManager.fillReport(report, params, dataSource);
		return JasperExportManager.exportReportToPdf(print);
	}

	private static synchronized JasperReport getCompiledReport() throws Exception {
		if (cachedReport != null)
			return cachedReport;

		InputStream jrxml = DanfeNacionalUtil.class.getClassLoader()
				.getResourceAsStream("org/idempierelbr/nfs/nacional/report/DANFSe.jrxml");
		if (jrxml == null)
			throw new Exception("DANFSe.jrxml nao encontrado no bundle");

		cachedReport = JasperCompileManager.compileReport(jrxml);
		return cachedReport;
	}

	private static byte[] getNfseXmlAttachment(MLBRNFS m_nfs) {
		String expected = "NFSe-" + m_nfs.getLBR_NFSeID() + ".xml";
		MAttachment att = m_nfs.createAttachment();
		for (int i = 0; i < att.getEntryCount(); i++) {
			MAttachment.MAttachmentEntry entry = att.getEntry(i);
			if (expected.equals(entry.getName())) {
				try (ByteArrayOutputStream bos = new ByteArrayOutputStream();
						InputStream is = entry.getInputStream()) {
					byte[] buf = new byte[4096];
					int n;
					while ((n = is.read(buf)) != -1)
						bos.write(buf, 0, n);
					return bos.toByteArray();
				} catch (Exception e) {
					log.severe("Falha ao ler anexo do XML da NFS-e: " + e);
					return null;
				}
			}
		}
		return null;
	}

	/**
	 * Gera o QR Code (PNG) apontando para a consulta publica da NFS-e, como
	 * exige o item 2.4.3 do manual. Usa com.google.zxing (ja' e' dependencia
	 * do org.idempierelbr.nfe - so' o nucleo "zxing-core", sem o modulo
	 * javase, por isso o BitMatrix e' convertido para PNG manualmente em vez
	 * de usar MatrixToImageWriter).
	 */
	private static byte[] generateQrCode(String chaveAcesso) {
		if (chaveAcesso == null || chaveAcesso.isEmpty())
			return null;
		try {
			String conteudo = "https://www.nfse.gov.br/ConsultaPublica/?tpc=1&chave=" + chaveAcesso;
			BitMatrix matrix = new QRCodeWriter().encode(conteudo, BarcodeFormat.QR_CODE, 150, 150);

			java.awt.image.BufferedImage img = new java.awt.image.BufferedImage(matrix.getWidth(),
					matrix.getHeight(), java.awt.image.BufferedImage.TYPE_INT_RGB);
			for (int x = 0; x < matrix.getWidth(); x++)
				for (int y = 0; y < matrix.getHeight(); y++)
					img.setRGB(x, y, matrix.get(x, y) ? 0x000000 : 0xFFFFFF);

			ByteArrayOutputStream bos = new ByteArrayOutputStream();
			javax.imageio.ImageIO.write(img, "PNG", bos);
			return bos.toByteArray();
		} catch (WriterException | java.io.IOException e) {
			log.severe("Falha ao gerar QR Code do DANFSe: " + e);
			return null;
		}
	}

	/**
	 * Gera a marca d'agua diagonal (ex.: "CANCELADA", "SUBSTITUIDA") exigida
	 * pelo item 2.5.1/2.5.2 do manual: fonte Arial, tamanho minimo de 50
	 * pontos, cor cinza (K35 ~ RGB 166,166,166), disposta na diagonal.
	 *
	 * Feita como imagem (PNG do tamanho da pagina, 595x842 - A4 a 72dpi, ja'
	 * que JasperReports so' gira <staticText> em multiplos de 90 graus; para
	 * uma diagonal de verdade e' preciso desenhar e rotacionar com
	 * Graphics2D, do mesmo jeito que o QR Code e' desenhado pixel a pixel em
	 * generateQrCode() acima.
	 */
	private static byte[] generateWatermark(String texto) throws java.io.IOException {

		int pageW = 595, pageH = 842;
		java.awt.image.BufferedImage img = new java.awt.image.BufferedImage(pageW, pageH,
				java.awt.image.BufferedImage.TYPE_INT_ARGB);

		java.awt.Graphics2D g = img.createGraphics();
		try {
			g.setRenderingHint(java.awt.RenderingHints.KEY_ANTIALIASING,
					java.awt.RenderingHints.VALUE_ANTIALIAS_ON);
			g.setColor(new java.awt.Color(166, 166, 166, 130)); // cinza (K35), semi-transparente
			g.setFont(new java.awt.Font("Arial", java.awt.Font.BOLD, 60));

			java.awt.FontMetrics fm = g.getFontMetrics();
			int textWidth = fm.stringWidth(texto);

			g.translate(pageW / 2.0, pageH / 2.0);
			g.rotate(-Math.toRadians(45)); // diagonal, subindo da esquerda para a direita
			g.drawString(texto, -textWidth / 2.0f, fm.getAscent() / 2.0f);
		} finally {
			g.dispose();
		}

		ByteArrayOutputStream bos = new ByteArrayOutputStream();
		javax.imageio.ImageIO.write(img, "PNG", bos);
		return bos.toByteArray();
	}

}
