package org.idempierelbr.mdfe.util;

import java.io.ByteArrayInputStream;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.util.CLogger;
import org.idempierelbr.mdfe.base.MDFeXMLGenerator;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;

/**
 * Consultas do MDF-e: nao encerrados, situacao de um manifesto e status do
 * servico (MOC 3.00b, secoes 4.4, 4.3 e 4.5).
 *
 * <p>As tres sao so leitura - nao alteram nada na SEFAZ nem aqui - e por isso
 * nao sao processos com registro: montam a mensagem, mandam pelo mesmo
 * transporte da transmissao e devolvem o resultado para a tela.
 *
 * <p>Nenhuma delas leva assinatura digital. O certificado ainda e necessario,
 * mas so para o TLS mutuo, que e como a SEFAZ identifica quem esta perguntando.
 */
public class MDFeConsultas
{
	private static final CLogger log = CLogger.getCLogger(MDFeConsultas.class);

	public static final String VERSAO = "3.00";

	/** Valores fixos de xServ, exatamente como o schema exige - acento incluso. */
	private static final String XSERV_NAO_ENCERRADOS = "CONSULTAR NÃO ENCERRADOS";
	private static final String XSERV_CONSULTAR = "CONSULTAR";
	private static final String XSERV_STATUS = "STATUS";

	/** Uma linha da consulta de nao encerrados. */
	public static class NaoEncerrado
	{
		public final String chMDFe;
		public final String nProt;

		NaoEncerrado(String chMDFe, String nProt)
		{
			this.chMDFe = chMDFe;
			this.nProt = nProt;
		}
	}

	/** Resposta comum das tres consultas, com o que cada uma acrescenta. */
	public static class Resposta
	{
		public String cStat;
		public String xMotivo;
		public String verAplic;
		public String tMed;
		public String dhRetorno;
		public String xObs;
		public String xml;
		public final List<NaoEncerrado> naoEncerrados = new ArrayList<>();

		public boolean isOk()
		{
			return cStat != null && !cStat.isEmpty();
		}

		public String resumo()
		{
			return cStat + " - " + xMotivo;
		}
	}

	private MDFeConsultas()
	{
	}

	/**
	 * MDF-e nao encerrados do emitente (secao 4.4).
	 *
	 * <p>E a consulta que evita a surpresa no patio: enquanto um manifesto fica
	 * aberto para uma placa, a SEFAZ recusa os proximos daquele veiculo. Aqui a
	 * lista aparece antes, nao no momento da recusa.
	 *
	 * <p>cStat 111 e "consulta com resultado"; 112 e "consulta com resultado,
	 * porem sem MDF-e nao encerrado" - as duas sao sucesso.
	 */
	public static Resposta naoEncerrados(Properties ctx, int AD_Org_ID, int C_Region_ID,
			boolean homologacao, String cnpj) throws Exception
	{
		MDFeXmlWriter w = new MDFeXmlWriter();
		w.open("consMDFeNaoEnc", "xmlns", MDFeXMLGenerator.NAMESPACE, "versao", VERSAO);
		w.el("tpAmb", homologacao ? "2" : "1");
		w.elFixo("xServ", XSERV_NAO_ENCERRADOS);
		w.elReq("CNPJ", MDFeUtil.soDigitos(cnpj), "consMDFeNaoEnc/CNPJ");
		w.close();

		String retorno = MDFeWebService.enviar(ctx, AD_Org_ID, C_Region_ID, homologacao,
				MDFeWebService.Servico.CONS_NAO_ENC, w.toString());

		Resposta r = interpretar(retorno);

		for (Element inf : filhos(retorno, "infMDFe"))
			r.naoEncerrados.add(new NaoEncerrado(texto(inf, "chMDFe"), texto(inf, "nProt")));

		return r;
	}

	/** Situacao de um MDF-e na SEFAZ (secao 4.3). */
	public static Resposta situacao(Properties ctx, int AD_Org_ID, int C_Region_ID,
			boolean homologacao, String chave) throws Exception
	{
		if (!MDFeUtil.isChaveValida(chave))
			throw new AdempiereException("Chave de acesso invalida: " + chave);

		MDFeXmlWriter w = new MDFeXmlWriter();
		w.open("consSitMDFe", "xmlns", MDFeXMLGenerator.NAMESPACE, "versao", VERSAO);
		w.el("tpAmb", homologacao ? "2" : "1");
		w.elFixo("xServ", XSERV_CONSULTAR);
		w.el("chMDFe", chave);
		w.close();

		return interpretar(MDFeWebService.enviar(ctx, AD_Org_ID, C_Region_ID, homologacao,
				MDFeWebService.Servico.CONSULTA, w.toString()));
	}

	/**
	 * Status do servico de autorizacao (secao 4.5).
	 *
	 * <p>Serve para separar "a SEFAZ esta fora" de "o nosso documento esta
	 * errado" - dois problemas com sintomas parecidos e solucoes opostas.
	 */
	public static Resposta statusServico(Properties ctx, int AD_Org_ID, int C_Region_ID,
			boolean homologacao) throws Exception
	{
		MDFeXmlWriter w = new MDFeXmlWriter();
		w.open("consStatServMDFe", "xmlns", MDFeXMLGenerator.NAMESPACE, "versao", VERSAO);
		w.el("tpAmb", homologacao ? "2" : "1");
		w.elFixo("xServ", XSERV_STATUS);
		w.close();

		return interpretar(MDFeWebService.enviar(ctx, AD_Org_ID, C_Region_ID, homologacao,
				MDFeWebService.Servico.STATUS_SERVICO, w.toString()));
	}

	// ------------------------------------------------------------------------

	private static Resposta interpretar(String xml)
	{
		if (xml == null || xml.trim().isEmpty())
			throw new AdempiereException("A SEFAZ devolveu uma resposta vazia");

		Resposta r = new Resposta();
		r.xml = xml;

		try
		{
			Element raiz = parse(xml).getDocumentElement();
			r.cStat = texto(raiz, "cStat");
			r.xMotivo = texto(raiz, "xMotivo");
			r.verAplic = texto(raiz, "verAplic");
			r.tMed = texto(raiz, "tMed");
			r.dhRetorno = texto(raiz, "dhRetorno");
			r.xObs = texto(raiz, "xObs");
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

	private static List<Element> filhos(String xml, String tag) throws Exception
	{
		List<Element> lista = new ArrayList<>();
		NodeList nos = parse(xml).getElementsByTagName(tag);

		for (int i = 0; i < nos.getLength(); i++)
			lista.add((Element) nos.item(i));

		return lista;
	}

	private static String texto(Element pai, String tag)
	{
		NodeList nos = pai.getElementsByTagName(tag);

		if (nos.getLength() == 0)
			return null;

		String valor = nos.item(0).getTextContent();
		return (valor == null) ? null : valor.trim();
	}

	/** Parser sem entidade externa: a resposta vem da rede. */
	private static Document parse(String xml) throws Exception
	{
		DocumentBuilderFactory f = DocumentBuilderFactory.newInstance();
		f.setFeature("http://apache.org/xml/features/disallow-doctype-decl", true);
		f.setFeature("http://xml.org/sax/features/external-general-entities", false);
		f.setFeature("http://xml.org/sax/features/external-parameter-entities", false);
		f.setXIncludeAware(false);
		f.setExpandEntityReferences(false);
		f.setNamespaceAware(false);

		DocumentBuilder b = f.newDocumentBuilder();
		return b.parse(new ByteArrayInputStream(xml.getBytes(StandardCharsets.UTF_8)));
	}
}
