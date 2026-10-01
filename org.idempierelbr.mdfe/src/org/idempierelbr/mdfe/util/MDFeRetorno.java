package org.idempierelbr.mdfe.util;

import java.io.ByteArrayInputStream;
import java.nio.charset.StandardCharsets;
import java.sql.Timestamp;
import java.time.OffsetDateTime;

import javax.xml.XMLConstants;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.util.CLogger;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;

/**
 * Leitura do retorno da SEFAZ para o MDF-e.
 *
 * <p>O {@code retMDFe} tem dois niveis de status (mdfeTiposBasico_v3.00.xsd,
 * TRetMDFe): um na raiz, que responde pela mensagem como um todo, e outro
 * dentro de {@code protMDFe/infProt}, que responde pelo documento. Quando a
 * mensagem e recusada logo na entrada - schema invalido, certificado errado,
 * emitente nao credenciado - o {@code protMDFe} nem vem. Por isso a leitura
 * prefere o status do protocolo e so cai para o da raiz quando ele nao existe:
 * ler so a raiz mostraria "lote recebido" em cima de um MDF-e rejeitado.
 */
public class MDFeRetorno
{
	private static final CLogger log = CLogger.getCLogger(MDFeRetorno.class);

	private String cStat;
	private String xMotivo;
	private String nProt;
	private String digVal;
	private String chMDFe;
	private String verAplic;
	private Timestamp dhRecbto;
	private boolean temProtocolo;

	private MDFeRetorno()
	{
	}

	/**
	 * Interpreta o XML devolvido pelo MDFeRecepcaoSinc.
	 *
	 * @param xml conteudo de {@code retMDFe}, ja sem o envelope SOAP
	 */
	public static MDFeRetorno parse(String xml)
	{
		if (xml == null || xml.trim().isEmpty())
			throw new AdempiereException("A SEFAZ devolveu uma resposta vazia");

		MDFeRetorno r = new MDFeRetorno();

		try
		{
			Document doc = newSafeDocumentBuilder().parse(
					new ByteArrayInputStream(xml.getBytes(StandardCharsets.UTF_8)));

			// retorno de evento: retEventoMDFe/infEvento. Vem antes porque o
			// XML do evento tambem tem cStat na raiz, e o que vale e o de dentro.
			Element infEvento = primeiro(doc, "infEvento");

			if (infEvento != null && "retEventoMDFe".equals(doc.getDocumentElement().getLocalName()))
			{
				r.temProtocolo = true;
				r.cStat    = texto(infEvento, "cStat");
				r.xMotivo  = texto(infEvento, "xMotivo");
				r.nProt    = texto(infEvento, "nProt");
				r.chMDFe   = texto(infEvento, "chMDFe");
				r.verAplic = texto(infEvento, "verAplic");
				r.dhRecbto = paraTimestamp(texto(infEvento, "dhRegEvento"));

				if (r.cStat == null)
					throw new AdempiereException("A resposta da SEFAZ nao trouxe cStat");

				return r;
			}

			// nivel do documento: protMDFe/infProt
			Element infProt = primeiro(doc, "infProt");

			if (infProt != null)
			{
				r.temProtocolo = true;
				r.cStat    = texto(infProt, "cStat");
				r.xMotivo  = texto(infProt, "xMotivo");
				r.nProt    = texto(infProt, "nProt");
				r.digVal   = texto(infProt, "digVal");
				r.chMDFe   = texto(infProt, "chMDFe");
				r.verAplic = texto(infProt, "verAplic");
				r.dhRecbto = paraTimestamp(texto(infProt, "dhRecbto"));
			}
			else
			{
				// nivel da mensagem: a raiz retMDFe
				Element raiz = doc.getDocumentElement();
				r.cStat    = texto(raiz, "cStat");
				r.xMotivo  = texto(raiz, "xMotivo");
				r.verAplic = texto(raiz, "verAplic");
			}
		}
		catch (Exception e)
		{
			throw new AdempiereException("Nao foi possivel interpretar a resposta da SEFAZ: "
					+ e.getMessage(), e);
		}

		if (r.cStat == null)
			throw new AdempiereException("A resposta da SEFAZ nao trouxe cStat");

		return r;
	}

	public String getCStat()
	{
		return cStat;
	}

	public String getXMotivo()
	{
		return xMotivo;
	}

	public String getNProt()
	{
		return nProt;
	}

	public String getDigVal()
	{
		return digVal;
	}

	public String getChMDFe()
	{
		return chMDFe;
	}

	public String getVerAplic()
	{
		return verAplic;
	}

	public Timestamp getDhRecbto()
	{
		return dhRecbto;
	}

	/** {@code true} quando a resposta trouxe o grupo protMDFe. */
	public boolean isTemProtocolo()
	{
		return temProtocolo;
	}

	@Override
	public String toString()
	{
		return "MDFeRetorno[" + cStat + " - " + xMotivo
				+ (nProt != null ? ", protocolo " + nProt : "") + "]";
	}

	// ------------------------------------------------------------------------

	/**
	 * A resposta vem de fora: DTD e entidade externa ficam desligados para nao
	 * abrir caminho a XXE.
	 */
	private static DocumentBuilder newSafeDocumentBuilder() throws Exception
	{
		DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
		dbf.setFeature("http://apache.org/xml/features/disallow-doctype-decl", true);
		dbf.setFeature("http://xml.org/sax/features/external-general-entities", false);
		dbf.setFeature("http://xml.org/sax/features/external-parameter-entities", false);
		dbf.setXIncludeAware(false);
		dbf.setExpandEntityReferences(false);
		dbf.setNamespaceAware(true);

		try
		{
			dbf.setAttribute(XMLConstants.ACCESS_EXTERNAL_DTD, "");
			dbf.setAttribute(XMLConstants.ACCESS_EXTERNAL_SCHEMA, "");
		}
		catch (IllegalArgumentException e)
		{
			// Xerces antigo nao conhece estes atributos; os features acima ja cobrem
			log.fine("Parser nao suporta ACCESS_EXTERNAL_*, seguindo com os features");
		}

		return dbf.newDocumentBuilder();
	}

	private static Element primeiro(Document doc, String tag)
	{
		NodeList nl = doc.getElementsByTagNameNS("*", tag);
		return (nl.getLength() > 0) ? (Element) nl.item(0) : null;
	}

	private static String texto(Element pai, String tag)
	{
		NodeList nl = pai.getElementsByTagNameNS("*", tag);

		if (nl.getLength() == 0)
			return null;

		String v = nl.item(0).getTextContent();
		return (v == null || v.trim().isEmpty()) ? null : v.trim();
	}

	/**
	 * As datas do MDF-e vem no formato UTC completo com offset
	 * ({@code 2024-05-06T11:20:49-03:00}), conforme MOC 3.00b secao 3.8.
	 */
	private static Timestamp paraTimestamp(String valor)
	{
		if (valor == null)
			return null;

		try
		{
			return new Timestamp(OffsetDateTime.parse(valor).toInstant().toEpochMilli());
		}
		catch (Exception e)
		{
			log.warning("Data fora do formato esperado no retorno da SEFAZ: " + valor);
			return null;
		}
	}
}
