package org.idempierelbr.mdfe.util;

import java.io.ByteArrayOutputStream;
import java.nio.charset.StandardCharsets;
import java.util.Base64;
import java.util.Properties;
import java.util.zip.GZIPOutputStream;

import javax.net.ssl.SSLContext;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.util.CLogger;
import org.idempierelbr.base.model.MLBRNFeWebService;
import org.idempierelbr.nfe.util.DigitalCertificateUtil;
import org.idempierelbr.nfe.util.SefazHttpClient;

/**
 * Comunicacao com os web services do MDF-e na SEFAZ Virtual RS.
 *
 * <p>Reaproveita a camada de transporte do plugin da NF-e - o
 * {@link SefazHttpClient#post} ja faz TLS mutuo, cipher suites restritas,
 * timeouts e leitura do SOAP Fault. O que nao da para reusar e o
 * {@code SefazHttpClient.send()}: ele passa pelo {@code SefazSoapUtils}, cuja
 * lista de servicos conhecidos e package-private e so tem NF-e. Entao o
 * envelope do MDF-e e montado aqui e entregue pronto ao {@code post}.
 *
 * <p>Nomes de servico, metodos e forma de empacotamento saem do MOC 3.00b,
 * secoes 3.4.1 e 4.2 a 4.6.
 */
public class MDFeWebService
{
	private static final CLogger log = CLogger.getCLogger(MDFeWebService.class);

	private static final String SOAP_NS = "http://www.w3.org/2003/05/soap-envelope";
	private static final String WSDL_BASE = "http://www.portalfiscal.inf.br/mdfe/wsdl/";

	/** Modelo do documento fiscal, usado para achar a URL em LBR_NFeWebService. */
	private static final String MODELO = "58";

	public static final String ENV_PRODUCAO = "1";
	public static final String ENV_HOMOLOGACAO = "2";

	/**
	 * Servicos do MDF-e.
	 *
	 * <p>O {@code gzip} marca o unico servico que exige a area de dados
	 * compactada: pelo MOC 3.00b secao 3.4.1, so a recepcao vai em GZip+Base64;
	 * consulta, status, eventos e nao-encerrados vao em XML puro. Mandar XML
	 * puro para a recepcao da rejeicao 244 ("Falha na descompactacao da area de
	 * dados").
	 */
	public enum Servico
	{
		/** Autorizacao de uso, sincrona e sem lote (MOC 4.2). */
		RECEPCAO_SINC("MDFeRecepcaoSinc", "mdfeRecepcao", "3.00", true),

		/** Consulta situacao do MDF-e (MOC 4.3). */
		CONSULTA("MDFeConsulta", "mdfeConsultaMDF", "3.00", false),

		/** Consulta MDF-e nao encerrados (MOC 4.4). */
		CONS_NAO_ENC("MDFeConsNaoEnc", "mdfeConsNaoEnc", "3.00", false),

		/** Status do servico de autorizacao (MOC 4.5). */
		STATUS_SERVICO("MDFeStatusServico", "mdfeStatusServicoMDF", "3.00", false),

		/** Registro de eventos: encerramento, cancelamento, inclusao de condutor (MOC 5). */
		RECEPCAO_EVENTO("MDFeRecepcaoEvento", "mdfeRecepcaoEvento", "3.00", false);

		private final String nome;
		private final String metodo;
		private final String versao;
		private final boolean gzip;

		Servico(String nome, String metodo, String versao, boolean gzip)
		{
			this.nome = nome;
			this.metodo = metodo;
			this.versao = versao;
			this.gzip = gzip;
		}

		/** Nome do servico, igual ao Name em LBR_NFeWebService. */
		public String getNome()
		{
			return nome;
		}

		public String getVersao()
		{
			return versao;
		}

		public boolean isGzip()
		{
			return gzip;
		}

		public String getNamespace()
		{
			return WSDL_BASE + nome;
		}

		public String getSoapAction()
		{
			return WSDL_BASE + nome + "/" + metodo;
		}
	}

	private MDFeWebService()
	{
	}

	/**
	 * Envia uma mensagem para a SEFAZ e devolve o XML de retorno.
	 *
	 * @param ctx          contexto
	 * @param AD_Org_ID    organizacao emitente - de onde sai o certificado
	 * @param C_Region_ID  UF usada para achar a URL (o MDF-e tem autorizador
	 *                     unico, a SVRS, mas a tabela de URLs e indexada por UF)
	 * @param homologacao  true para o ambiente de homologacao
	 * @param servico      servico a acionar
	 * @param payloadXml   area de dados, ja assinada quando for o caso
	 * @return o XML de resposta, sem o envelope SOAP
	 */
	public static String enviar(Properties ctx, int AD_Org_ID, int C_Region_ID,
			boolean homologacao, Servico servico, String payloadXml) throws Exception
	{
		if (payloadXml == null || payloadXml.trim().isEmpty())
			throw new IllegalArgumentException("Mensagem vazia para o servico " + servico.getNome());

		String envType = homologacao ? ENV_HOMOLOGACAO : ENV_PRODUCAO;

		String url = MLBRNFeWebService.getURL(servico.getNome(), envType, servico.getVersao(),
				C_Region_ID, MODELO, null);

		// Transporte apenas. O construtor cheio do SefazHttpClient valida o nome
		// do servico contra a lista da NF-e e recusa os do MDF-e - com razao:
		// aquele caminho monta o envelope com <nfeDadosMsg>, que nao serve aqui.
		// O envelope do MDF-e e montado abaixo, e do cliente so se aproveita o
		// TLS mutuo, a lista de cifras, os timeouts e o tratamento de SOAP Fault.
		SSLContext ssl = DigitalCertificateUtil.buildSSLContext(ctx, AD_Org_ID);
		SefazHttpClient client = SefazHttpClient.forTransport(ssl);

		String envelope = montarEnvelope(servico, payloadXml);

		// nunca logar a URL completa nem o payload: o XML carrega dados fiscais
		log.fine("MDF-e -> SEFAZ: servico=" + servico.getNome() + " ambiente=" + envType);

		try
		{
			return client.post(url, servico.getSoapAction(), envelope);
		}
		catch (AdempiereException e)
		{
			// A URL sai de LBR_NFeWebService, que tem uma linha por servico, UF e
			// ambiente - centenas delas. Sem o nome do servico e a versao, quem le
			// o erro nao sabe qual linha procurar.
			throw new AdempiereException(e.getLocalizedMessage()
					+ "\n\nServico " + servico.getNome() + ", versao " + servico.getVersao()
					+ ", ambiente " + envType + ". O endereco esta em LBR_NFeWebService"
					+ " (LBR_NFeModel=58): confira a linha desta UF contra a lista"
					+ " publicada pela SVRS.", e);
		}
	}

	/**
	 * Monta o envelope SOAP 1.2 do MDF-e.
	 *
	 * <p>Sem {@code <soap12:Header>}: o MOC 3.00b, secao 3.4.1, descontinuou o
	 * cabecalho e recomenda que o emitente pare de envia-lo.
	 */
	public static String montarEnvelope(Servico servico, String payloadXml)
	{
		String dados = servico.isGzip() ? gzipBase64(payloadXml) : semDeclaracaoXml(payloadXml);

		return "<soap12:Envelope xmlns:soap12=\"" + SOAP_NS + "\">"
				+ "<soap12:Body>"
				+ "<mdfeDadosMsg xmlns=\"" + servico.getNamespace() + "\">"
				+ dados
				+ "</mdfeDadosMsg>"
				+ "</soap12:Body>"
				+ "</soap12:Envelope>";
	}

	/**
	 * Compacta em GZip e converte para Base64, como a recepcao exige
	 * (MOC 3.00b secao 3.4.1; a regra B00 rejeita com cStat 244 se falhar).
	 */
	public static String gzipBase64(String xml)
	{
		try (ByteArrayOutputStream out = new ByteArrayOutputStream())
		{
			try (GZIPOutputStream gzip = new GZIPOutputStream(out))
			{
				gzip.write(semDeclaracaoXml(xml).getBytes(StandardCharsets.UTF_8));
			}

			return Base64.getEncoder().encodeToString(out.toByteArray());
		}
		catch (Exception e)
		{
			throw new AdempiereException("Falha ao compactar a mensagem do MDF-e: " + e.getMessage(), e);
		}
	}

	/**
	 * Remove a declaracao {@code <?xml ...?>}: dentro do Body ela seria um
	 * prologo em posicao invalida e derruba o parse no autorizador.
	 */
	private static String semDeclaracaoXml(String xml)
	{
		String x = xml.trim();

		if (x.startsWith("<?xml"))
		{
			int fim = x.indexOf("?>");
			if (fim > 0)
				x = x.substring(fim + 2).trim();
		}

		return x;
	}
}
