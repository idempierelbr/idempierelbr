package org.idempierelbr.mdfe.util;

import java.io.StringReader;
import java.math.BigDecimal;
import java.util.Properties;

import javax.xml.parsers.DocumentBuilder;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.MAttachment;
import org.compiere.model.MAttachmentEntry;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Trx;
import org.idempierelbr.base.model.MLBRNFeXML;
import org.idempierelbr.nfe.util.NFeDistDFeUtil;
import org.idempierelbr.nfe.util.SefazSoapUtils;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;

/**
 * Traz uma NF-e para dentro do manifesto a partir da chave de acesso.
 *
 * <p>O MDF-e nao depende de a nota existir no ERP de quem emite: a transportadora
 * recebe a chave e manifesta. Por isso a chave e sempre o suficiente - o resto
 * (municipio de descarga, valor, peso) e conveniencia, e vem do XML quando a
 * SEFAZ entrega o XML.
 *
 * <p>Quem busca na SEFAZ e o {@code NFeDistribuicaoDFe} que ja existe no plugin
 * da NF-e ({@link NFeUtil#NFeDistDFeUtil.downloadByNFeID}), que guarda o XML em
 * {@code LBR_NFeXML}. Aqui so se le o resultado.
 *
 * <p><b>Limite do servico:</b> a distribuicao por chave so devolve o XML
 * completo para quem e interessado na nota. Nao sendo, a SEFAZ devolve o resumo
 * (resNFe), que traz valor e emitente mas nao traz municipio nem peso - por isso
 * {@link Dados#completo} existe, e por isso a digitacao manual do municipio
 * continua valendo em qualquer caso.
 */
public class MDFeNFeImport
{
	/** Modelo da NF-e na chave de acesso (posicoes 21 e 22). */
	public static final String MODELO_NFE = "55";

	/** Modelo do CT-e, aceito no manifesto do mesmo jeito. */
	public static final String MODELO_CTE = "57";

	private MDFeNFeImport()
	{
	}

	/** O que se consegue saber de uma NF-e a partir da chave. */
	public static class Dados
	{
		/** Chave de 44 posicoes, so digitos. */
		public String chave;

		/** true quando veio o XML inteiro; false quando veio so o resumo. */
		public boolean completo;

		/** Codigo IBGE do municipio do destinatario, ou zero. */
		public int cMunDescarga;

		/** Nome do municipio do destinatario, ou null. */
		public String xMunDescarga;

		/** UF do destinatario, ou null. */
		public String ufDescarga;

		/** Razao social do destinatario, ou null. */
		public String destinatario;

		/** Valor total da nota, ou zero. */
		public BigDecimal valor = BigDecimal.ZERO;

		/** Peso bruto somado dos volumes, ou zero. */
		public BigDecimal pesoBruto = BigDecimal.ZERO;

		/** Aviso para mostrar ao operador, ou null quando deu tudo certo. */
		public String aviso;
	}

	/**
	 * Valida a chave e devolve o modelo do documento.
	 *
	 * @throws AdempiereException se a chave nao serve para um manifesto
	 */
	public static String conferirChave(String chave)
	{
		String limpa = MDFeUtil.soDigitos(chave);

		if (limpa.length() != MDFeUtil.TAMANHO_CHAVE)
			throw new AdempiereException("A chave deve ter " + MDFeUtil.TAMANHO_CHAVE
					+ " digitos; esta tem " + limpa.length());

		if (!MDFeUtil.isChaveValida(limpa))
			throw new AdempiereException("Digito verificador da chave nao confere: " + limpa);

		String modelo = limpa.substring(20, 22);

		if (!MODELO_NFE.equals(modelo) && !MODELO_CTE.equals(modelo))
			throw new AdempiereException("A chave e do modelo " + modelo
					+ "; o manifesto so aceita NF-e (55) e CT-e (57)");

		return modelo;
	}

	/**
	 * Procura o XML da nota - primeiro no que ja foi baixado, depois na SEFAZ.
	 *
	 * <p>Nunca lanca por causa da SEFAZ: se a consulta falhar, devolve o que deu
	 * para saber pela propria chave e explica em {@link Dados#aviso}. Chave
	 * invalida, essa sim, e erro - o manifesto seria rejeitado.
	 *
	 * @param tpAmb "1" producao, "2" homologacao
	 */
	public static Dados buscar(Properties ctx, int AD_Org_ID, String chave, String tpAmb, String trxName)
	{
		Dados dados = new Dados();
		dados.chave = MDFeUtil.soDigitos(chave);

		conferirChave(dados.chave);

		String xml = xmlGuardado(ctx, dados.chave, trxName);

		if (xml == null)
		{
			try
			{
				xml = baixarDaSefaz(ctx, AD_Org_ID, dados.chave, tpAmb, trxName);
			}
			catch (Exception e)
			{
				dados.aviso = "Nao foi possivel consultar a NF-e na SEFAZ (" + e.getMessage()
						+ "). A chave foi aceita; informe o municipio de descarga na mao.";
				return dados;
			}
		}

		if (xml == null)
		{
			dados.aviso = "A SEFAZ nao devolveu o XML desta NF-e - so e distribuido a quem e"
					+ " interessado na nota. A chave foi aceita; informe o municipio de descarga na mao.";
			return dados;
		}

		try
		{
			extrair(xml, dados);
		}
		catch (Exception e)
		{
			dados.aviso = "O XML da NF-e veio, mas nao foi possivel ler os dados (" + e.getMessage()
					+ "). Informe o municipio de descarga na mao.";
		}

		if (!dados.completo && dados.aviso == null)
			dados.aviso = "A SEFAZ devolveu apenas o resumo desta NF-e, que nao traz municipio"
					+ " nem peso. Informe o municipio de descarga na mao.";

		return dados;
	}

	/**
	 * O C_City_ID do codigo IBGE de sete digitos, ou zero.
	 *
	 * <p>O cadastro de municipios do LBR guarda o codigo em
	 * {@code C_City.LBR_CityCode}, o mesmo que a NF-e usa em {@code cMun}.
	 */
	public static int cidadeDoCodigoIBGE(Properties ctx, int cMun, String trxName)
	{
		if (cMun <= 0)
			return 0;

		return DB.getSQLValueEx(trxName,
				"SELECT C_City_ID FROM C_City WHERE LBR_CityCode = ? AND IsActive = 'Y'"
						+ " ORDER BY C_City_ID",
				String.valueOf(cMun));
	}

	/**
	 * Consulta a distribuicao da SEFAZ e devolve o XML que ela guardou.
	 *
	 * <p>Exige transacao: o processDocZip do plugin da NF-e faz
	 * {@code Trx.get(trxName, false).commit()} no meio do caminho, e o Trx.get
	 * do iDempiere lanca IllegalArgumentException quando o nome e nulo. Chamado
	 * de dentro do formulario, que trabalha em autocommit, isso estourava
	 * depois de gravar o LBR_NFeXML e antes de anexar o XML - deixando um
	 * registro vazio e a impressao de que a SEFAZ nao respondeu.
	 */
	private static String baixarDaSefaz(Properties ctx, int AD_Org_ID, String chave, String tpAmb,
			String trxName) throws Exception
	{
		if (trxName != null)
		{
			new NFeDistDFeUtil(ctx, AD_Org_ID, tpAmb, trxName).downloadByNFeID(chave);
			return xmlGuardado(ctx, chave, trxName);
		}

		String proprio = Trx.createTrxName("MDFeNFeImport");
		Trx trx = Trx.get(proprio, true);

		try
		{
			new NFeDistDFeUtil(ctx, AD_Org_ID, tpAmb, proprio).downloadByNFeID(chave);
			String xml = xmlGuardado(ctx, chave, proprio);
			trx.commit(true);

			return xml;
		}
		catch (Exception e)
		{
			trx.rollback();
			throw e;
		}
		finally
		{
			trx.close();
		}
	}

	/** O XML ja baixado desta chave, ou null. */
	private static String xmlGuardado(Properties ctx, String chave, String trxName)
	{
		int id = DB.getSQLValueEx(trxName,
				"SELECT LBR_NFeXML_ID FROM LBR_NFeXML WHERE AD_Client_ID = ? AND LBR_NFeID = ?"
						+ " AND IsActive = 'Y' ORDER BY LBR_NFeXML_ID DESC",
				Env.getAD_Client_ID(ctx), chave);

		if (id <= 0)
			return null;

		MLBRNFeXML registro = new MLBRNFeXML(ctx, id, trxName);
		MAttachment anexo = registro.getAttachment(true);

		if (anexo == null || anexo.getEntryCount() == 0)
			return null;

		MAttachmentEntry entrada = anexo.getEntry(0);

		return (entrada == null || entrada.getData() == null) ? null : new String(entrada.getData());
	}

	/** Le municipio, valor e peso do XML da nota. */
	private static void extrair(String xml, Dados dados) throws Exception
	{
		DocumentBuilder builder = SefazSoapUtils.newHardenedDocumentBuilder();
		Document doc = builder.parse(new InputSource(new StringReader(xml)));

		// O resumo (resNFe) nao tem o grupo do destinatario; o procNFe tem.
		NodeList destinatarios = doc.getElementsByTagName("dest");
		dados.completo = destinatarios.getLength() > 0;

		String vNF = texto(doc, "vNF");

		if (vNF != null)
			dados.valor = new BigDecimal(vNF);

		if (!dados.completo)
			return;

		Element dest = (Element) destinatarios.item(0);
		dados.destinatario = texto(dest, "xNome");

		NodeList enderecos = dest.getElementsByTagName("enderDest");

		if (enderecos.getLength() > 0)
		{
			Element ender = (Element) enderecos.item(0);
			String cMun = texto(ender, "cMun");

			if (cMun != null)
				dados.cMunDescarga = Integer.parseInt(cMun);

			dados.xMunDescarga = texto(ender, "xMun");
			dados.ufDescarga = texto(ender, "UF");
		}

		// Podem existir varios volumes; o manifesto quer o peso da carga inteira.
		NodeList pesos = doc.getElementsByTagName("pesoB");
		BigDecimal soma = BigDecimal.ZERO;

		for (int i = 0; i < pesos.getLength(); i++)
		{
			String valor = pesos.item(i).getTextContent();

			if (valor != null && !valor.trim().isEmpty())
				soma = soma.add(new BigDecimal(valor.trim()));
		}

		dados.pesoBruto = soma;
	}

	/** Primeiro valor da tag abaixo do no, ou null. */
	private static String texto(Node no, String tag)
	{
		NodeList lista = (no instanceof Document) ? ((Document) no).getElementsByTagName(tag)
				: ((Element) no).getElementsByTagName(tag);

		if (lista.getLength() == 0)
			return null;

		String valor = lista.item(0).getTextContent();

		return (valor == null || valor.trim().isEmpty()) ? null : valor.trim();
	}
}
