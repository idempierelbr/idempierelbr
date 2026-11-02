package org.idempierelbr.nfs.nacional.report;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.StringReader;
import java.math.BigDecimal;
import java.nio.charset.StandardCharsets;
import java.text.NumberFormat;
import java.time.LocalDate;
import java.time.OffsetDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathFactory;

import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.idempierelbr.base.model.MLBRNFS;
import org.idempierelbr.base.model.X_LBR_NFS;
import org.idempierelbr.nfs.nacional.util.AttachmentUtil;
import org.w3c.dom.Document;
import org.xml.sax.InputSource;

import net.sf.jasperreports.engine.JREmptyDataSource;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.QRCodeWriter;

/**
 * Gera o DANFSe (Documento Auxiliar da NFS-e) em PDF, conforme a Nota
 * Tecnica no 008 - Especificacoes Tecnicas do DANFSe (SE/CGNFS-e, v1.0).
 *
 * Os valores sao lidos do XML autorizado da NFS-e aqui em Java (XPath),
 * ja formatados (mascaras de CNPJ/CPF/CEP, datas, moeda) e com os codigos
 * traduzidos, e passados ao DANFSe.jrxml como parametros (f1..f50, tpAmb).
 * O relatorio nao le o XML diretamente: o XML da NFS-e usa namespace
 * padrao, que o datasource XPath do Jasper nao resolve sem prefixos.
 *
 * IMPORTANTE - leia antes de considerar isto "pronto para producao":
 *
 *  1. NAO foram implementados: o bloco de Tributacao IBS/CBS, o bloco
 *     Destinatario/Intermediario da Operacao, as substituicoes de texto das
 *     Notas 2/3/4 (quando um bloco esta vazio), a marca d'agua "SUBSTITUIDA"
 *     (falta um status proprio para isso), e a linha obrigatoria de "Totais
 *     Aproximados dos Tributos" (Lei 12.741/2012), que o LBR nao calcula hoje.
 *
 *  2. O .jrxml e' compilado em tempo de execucao (JasperCompileManager) na
 *     primeira impressao e mantido em cache.
 *
 *  3. O QR Code (item 2.4.3, apontando para
 *     https://www.nfse.gov.br/ConsultaPublica/?tpc=1&chave=) usa
 *     com.google.zxing (so' o nucleo, sem o modulo javase) - por isso o
 *     BitMatrix e' convertido manualmente para PNG em generateQrCode().
 *
 *  4. NUNCA testado: o .jrxml foi conferido apenas como XML bem formado,
 *     nunca efetivamente compilado ou preenchido. O primeiro teste real e'
 *     abrir/compilar no Eclipse/Jaspersoft Studio.
 */
public class DanfeNacionalUtil {

	private static final CLogger log = CLogger.getCLogger(DanfeNacionalUtil.class);
	private static final Locale PT_BR = new Locale("pt", "BR");

	private static final String NFSE = "/NFSe/infNFSe/";
	private static final String DPS = NFSE + "DPS/infDPS/";

	private static JasperReport cachedReport;

	/**
	 * Gera o PDF do DANFSe a partir do XML da NFS-e ja autorizada, anexado ao
	 * registro por {@code NFSeNacional.sendNFSe} (entrada "NFSe-<chave>.xml").
	 *
	 * @return bytes do PDF, ou lanca excecao se a NFS-e nao tiver o XML anexado.
	 */
	public static byte[] gerarDanfePdf(MLBRNFS m_nfs) throws Exception {

		byte[] nfseXml = AttachmentUtil.get(m_nfs, AttachmentUtil.nfseXmlName(m_nfs.getLBR_NFSeID()));
		if (nfseXml == null)
			throw new Exception("XML da NFS-e nao encontrado nos anexos (a nota foi transmitida com sucesso? "
					+ "Se foi, use a consulta da NFS-e para baixar o XML)");

		Map<String, Object> params = buildParams(new String(nfseXml, StandardCharsets.UTF_8), m_nfs.getLBR_NFSeID());
		params.put("REPORT_LOCALE", PT_BR);

		byte[] qr = generateQrCode((String) params.get("chave"));
		if (qr != null)
			params.put("qrcode", new ByteArrayInputStream(qr));

		if (X_LBR_NFS.LBR_NFSESTATUS_Cancelado.equals(m_nfs.getLBR_NFSeStatus()))
			params.put("watermark", new ByteArrayInputStream(generateWatermark("CANCELADA")));
		// TODO: quando existir um status proprio de "substituida",
		// gerar generateWatermark("SUBSTITUIDA") aqui.

		JasperPrint print = JasperFillManager.fillReport(getCompiledReport(), params, new JREmptyDataSource(1));
		return JasperExportManager.exportReportToPdf(print);
	}

	/**
	 * Le o XML da NFS-e e monta os parametros do relatorio. Campos ausentes
	 * ficam vazios (o relatorio mostra "-").
	 */
	static Map<String, Object> buildParams(String xml, String chaveFallback) throws Exception {

		// Remove declaracoes de namespace padrao (NFS-e e assinatura) para o
		// XPath poder usar nomes simples
		String plain = xml.replaceAll("\\sxmlns=\"[^\"]*\"", "");
		DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
		dbf.setNamespaceAware(true);
		Document doc = dbf.newDocumentBuilder().parse(new InputSource(new StringReader(plain)));
		XmlFields r = new XmlFields(doc);

		Map<String, Object> p = new HashMap<>();

		String chave = r.get(NFSE + "@Id").replaceFirst("^NFS", "");
		if (chave.isEmpty() && chaveFallback != null)
			chave = chaveFallback;
		String nNFSe = r.get(NFSE + "nNFSe");

		p.put("chave", chave);
		p.put("tpAmb", r.get(DPS + "tpAmb"));

		// -- dados da NFS-e
		p.put("f1", chave);
		p.put("f2", nNFSe);
		p.put("f3", date(r.get(DPS + "dCompet")));
		p.put("f4", dateTime(r.get(NFSE + "dhProc")));
		p.put("f5", r.get(DPS + "nDPS"));
		p.put("f6", r.get(DPS + "serie"));
		p.put("f7", dateTime(r.get(DPS + "dhEmi")));
		p.put("f8", code(r.get(DPS + "tpEmit"), "1", "Prestador", "2", "Tomador", "3", "Intermediario"));
		p.put("f9", code(r.get(NFSE + "cStat"), "100", "NFS-e Gerada", "102", "NFS-e de Decisao Judicial",
				"103", "NFS-e Avulsa", "107", "NFS-e MEI"));
		p.put("f10", r.get(DPS + "subst/chSubstda").isEmpty() ? "NFS-e regular" : "NFS-e substituta");

		// -- prestador: dados cadastrais vem do grupo emit (preenchido pela
		// Sefin a partir do cadastro nacional), nao do DPS
		String emit = NFSE + "emit/";
		String emitEnd = emit + "enderNac/";
		p.put("f11", doc(first(r.get(emit + "CNPJ"), r.get(DPS + "prest/CNPJ")),
				first(r.get(emit + "CPF"), r.get(DPS + "prest/CPF"))));
		p.put("f12", first(r.get(emit + "IM"), r.get(DPS + "prest/IM")));
		p.put("f13", r.get(emit + "fone"));
		p.put("f14", r.get(emit + "xNome"));
		p.put("f15", join(" / ", r.get(NFSE + "xLocEmi"), r.get(emitEnd + "UF")));
		p.put("f16", join(" / ", r.get(emitEnd + "cMun"), cep(r.get(emitEnd + "CEP"))));
		p.put("f17", address(r.get(emitEnd + "xLgr"), r.get(emitEnd + "nro"), r.get(emitEnd + "xCpl"),
				r.get(emitEnd + "xBairro")));
		p.put("f18", r.get(emit + "email"));
		p.put("f19", code(r.get(DPS + "prest/regTrib/opSimpNac"), "1", "Nao Optante", "2", "Optante - MEI",
				"3", "Optante - ME/EPP"));
		p.put("f20", code(r.get(DPS + "prest/regTrib/regApTribSN"),
				"1", "Tributos federais e municipal apurados pelo SN",
				"2", "Federais pelo SN e ISSQN fora do SN",
				"3", "Federais e municipal fora do SN"));

		// -- tomador
		String toma = DPS + "toma/";
		String tomaEnd = toma + "end/";
		String tomaCMun = r.get(tomaEnd + "endNac/cMun");
		p.put("f21", doc(r.get(toma + "CNPJ"), r.get(toma + "CPF")));
		p.put("f22", r.get(toma + "IM"));
		p.put("f23", r.get(toma + "fone"));
		p.put("f24", r.get(toma + "xNome"));
		p.put("f25", cityName(tomaCMun));
		p.put("f26", join(" / ", tomaCMun, cep(r.get(tomaEnd + "endNac/CEP"))));
		p.put("f27", address(r.get(tomaEnd + "xLgr"), r.get(tomaEnd + "nro"), r.get(tomaEnd + "xCpl"),
				r.get(tomaEnd + "xBairro")));
		p.put("f28", r.get(toma + "email"));

		// -- servico
		String cTribNac = r.get(DPS + "serv/cServ/cTribNac");
		if (cTribNac.matches("\\d{6}"))
			cTribNac = cTribNac.substring(0, 2) + "." + cTribNac.substring(2, 4) + "." + cTribNac.substring(4);
		String cod = join(" / ", cTribNac, r.get(DPS + "serv/cServ/cTribMun"));
		p.put("f29", join(" - ", cod, r.get(NFSE + "xTribNac")));
		p.put("f30", join(" - ", r.get(DPS + "serv/cServ/cNBS"), r.get(NFSE + "xNBS")));
		p.put("f31", first(r.get(NFSE + "xLocPrestacao"), r.get(DPS + "serv/locPrest/cLocPrestacao")));
		p.put("f32", r.get(DPS + "serv/cServ/xDescServ"));

		// -- ISSQN
		String tribMun = DPS + "valores/trib/tribMun/";
		p.put("f33", code(r.get(tribMun + "tribISSQN"), "1", "Operacao Tributavel", "2", "Imunidade",
				"3", "Exportacao de Servico", "4", "Nao Incidencia"));
		p.put("f34", r.get(NFSE + "xLocIncid"));
		p.put("f35", money(r.get(NFSE + "valores/vBC")));
		p.put("f36", percent(r.get(NFSE + "valores/pAliqAplic")));
		p.put("f37", code(r.get(tribMun + "tpRetISSQN"), "1", "Nao Retido", "2", "Retido pelo Tomador",
				"3", "Retido pelo Intermediario"));
		p.put("f38", money(r.get(NFSE + "valores/vISSQN")));

		// -- federais
		String tribFed = DPS + "valores/trib/tribFed/";
		p.put("f39", money(r.get(tribFed + "vRetIRRF")));
		p.put("f40", money(r.get(tribFed + "vRetCP")));
		p.put("f41", money(r.get(tribFed + "vRetCSLL")));

		// -- totais
		p.put("f42", money(r.get(DPS + "valores/vServPrest/vServ")));
		p.put("f43", money(r.get(DPS + "valores/vDescCondIncond/vDescIncond")));
		p.put("f44", money(r.get(DPS + "valores/vDescCondIncond/vDescCond")));
		p.put("f45", money(r.get(NFSE + "valores/vTotalRet")));
		p.put("f46", money(r.get(NFSE + "valores/vLiq")));

		// -- informacoes complementares
		String chSubstda = r.get(DPS + "subst/chSubstda");
		p.put("f47", join("\n", r.get(DPS + "serv/infoCompl/xInfComp"),
				chSubstda.isEmpty() ? "" : "NFS-e substituta da NFS-e de chave de acesso " + chSubstda));

		// -- canhoto
		p.put("f50", join(" / ", nNFSe, chave));

		return p;
	}

	// ------------------------------------------------------------------
	// Formatacao

	private static class XmlFields {
		private final Document doc;
		private final XPath xpath = XPathFactory.newInstance().newXPath();

		XmlFields(Document doc) {
			this.doc = doc;
		}

		String get(String path) {
			try {
				String v = xpath.evaluate(path, doc);
				return v == null ? "" : v.trim();
			} catch (Exception e) {
				return "";
			}
		}
	}

	/** Traduz um codigo pelos pares (codigo, descricao); mantem o codigo se desconhecido */
	private static String code(String value, String... pairs) {
		for (int i = 0; i + 1 < pairs.length; i += 2)
			if (pairs[i].equals(value))
				return value + " - " + pairs[i + 1];
		return value;
	}

	private static String first(String... values) {
		for (String v : values)
			if (v != null && !v.isEmpty())
				return v;
		return "";
	}

	private static String join(String sep, String... values) {
		StringBuilder sb = new StringBuilder();
		Arrays.stream(values).filter(v -> v != null && !v.isEmpty()).forEach(v -> {
			if (sb.length() > 0)
				sb.append(sep);
			sb.append(v);
		});
		return sb.toString();
	}

	private static String address(String lgr, String nro, String cpl, String bairro) {
		return join(" - ", join(", ", lgr, nro, cpl), bairro);
	}

	/** CNPJ ou CPF com mascara */
	private static String doc(String cnpj, String cpf) {
		if (cnpj != null && cnpj.matches("\\d{14}"))
			return cnpj.replaceFirst("(\\d{2})(\\d{3})(\\d{3})(\\d{4})(\\d{2})", "$1.$2.$3/$4-$5");
		if (cpf != null && cpf.matches("\\d{11}"))
			return cpf.replaceFirst("(\\d{3})(\\d{3})(\\d{3})(\\d{2})", "$1.$2.$3-$4");
		return first(cnpj, cpf);
	}

	private static String cep(String cep) {
		return cep != null && cep.matches("\\d{8}") ? cep.substring(0, 5) + "-" + cep.substring(5) : cep;
	}

	private static String date(String iso) {
		try {
			return iso.isEmpty() ? "" : LocalDate.parse(iso).format(DateTimeFormatter.ofPattern("dd/MM/yyyy"));
		} catch (Exception e) {
			return iso;
		}
	}

	private static String dateTime(String iso) {
		try {
			return iso.isEmpty() ? ""
					: OffsetDateTime.parse(iso).format(DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm:ss"));
		} catch (Exception e) {
			return iso;
		}
	}

	private static String money(String v) {
		try {
			return v.isEmpty() ? "" : NumberFormat.getCurrencyInstance(PT_BR).format(new BigDecimal(v));
		} catch (Exception e) {
			return v;
		}
	}

	private static String percent(String v) {
		try {
			if (v.isEmpty())
				return "";
			NumberFormat nf = NumberFormat.getNumberInstance(PT_BR);
			nf.setMinimumFractionDigits(2);
			return nf.format(new BigDecimal(v)) + "%";
		} catch (Exception e) {
			return v;
		}
	}

	/** Nome/UF do municipio pelo codigo IBGE (C_City.LBR_CityCode); o proprio codigo se nao achar */
	private static String cityName(String ibge) {
		if (ibge == null || ibge.isEmpty())
			return "";
		try {
			String name = DB.getSQLValueString(null,
					"SELECT c.Name || COALESCE('/' || r.Name, '') FROM C_City c"
							+ " LEFT JOIN C_Region r ON (r.C_Region_ID = c.C_Region_ID)"
							+ " WHERE c.LBR_CityCode = ? AND c.IsActive = 'Y' ORDER BY c.C_City_ID",
					ibge);
			return name == null || name.isEmpty() ? ibge : name;
		} catch (Exception e) {
			return ibge;
		}
	}

	// ------------------------------------------------------------------

	private static synchronized JasperReport getCompiledReport() throws Exception {
		if (cachedReport != null)
			return cachedReport;

		try (InputStream jrxml = DanfeNacionalUtil.class.getClassLoader()
				.getResourceAsStream("org/idempierelbr/nfs/nacional/report/DANFSe.jrxml")) {
			if (jrxml == null)
				throw new Exception("DANFSe.jrxml nao encontrado no bundle");
			cachedReport = JasperCompileManager.compileReport(jrxml);
		}
		return cachedReport;
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
	 * Feita como imagem (PNG do tamanho da pagina, 595x842 - A4 a 72dpi), ja'
	 * que JasperReports so' gira <staticText> em multiplos de 90 graus.
	 * Servidores Linux sem a fonte Arial instalada usam a fonte sem serifa
	 * padrao da JVM.
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
			g.setFont(new java.awt.Font(fontFamily(), java.awt.Font.BOLD, 60));

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

	private static String fontFamily() {
		try {
			for (String f : java.awt.GraphicsEnvironment.getLocalGraphicsEnvironment().getAvailableFontFamilyNames())
				if ("Arial".equalsIgnoreCase(f))
					return f;
		} catch (Throwable t) {
			// ambiente sem suporte a fontes: usa a logica padrao
		}
		return java.awt.Font.SANS_SERIF;
	}

}
