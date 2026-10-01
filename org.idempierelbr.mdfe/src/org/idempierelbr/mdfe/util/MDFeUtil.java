package org.idempierelbr.mdfe.util;

import java.security.SecureRandom;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Random;

import org.adempiere.exceptions.AdempiereException;
import org.idempierelbr.base.util.TextUtil;

/**
 * Utilitarios da chave de acesso do MDF-e (modelo 58).
 *
 * <p>Referencias:
 * <ul>
 *   <li>MOC MDF-e 3.00b - Visao Geral, secao 2.1.3 (composicao da chave)</li>
 *   <li>NT DFe Conjunta 2025.001 - CNPJ Alfanumerico v1.00, secao 5
 *       (calculo do DV com ASCII-48) e Anexo II (implementacao de referencia)</li>
 * </ul>
 *
 * <p>Por que nao reusar {@code org.idempierelbr.nfe.beans.ChaveNFE}: aquele bean
 * calcula o digito com {@code Integer.parseInt} caractere a caractere, o que
 * quebra assim que o CNPJ do emitente tiver letra. O schema do MDF-e v3.00b ja
 * aceita CNPJ alfanumerico ({@code [A-Z0-9]{12}[0-9]{2}}), entao aqui o calculo
 * segue a regra nova: troca cada caractere pelo seu codigo ASCII menos 48 e so
 * depois aplica o modulo 11.
 */
public final class MDFeUtil
{
	/** Modelo do documento fiscal do MDF-e. */
	public static final String MODELO = "58";

	/** Tamanho da chave de acesso, com digito verificador. */
	public static final int TAMANHO_CHAVE = 44;

	/**
	 * Endereco de consulta do MDF-e por QR Code.
	 *
	 * <p>O mesmo para producao e homologacao - o ambiente vai no parametro
	 * tpAmb. Nao e escolha nossa: a regra F115 (rejeicao 479) compara o endereco
	 * com o que a SEFAZ espera, e o valor oficial esta publicado em
	 * https://dfe-portal.svrs.rs.gov.br/MDFe/Servicos.
	 */
	public static final String URL_QRCODE = "https://dfe-portal.svrs.rs.gov.br/mdfe/qrCode";

	/** Tamanho da chave de acesso sem o digito verificador. */
	public static final int TAMANHO_CHAVE_SEM_DV = 43;

	/**
	 * Base de conversao da NT do CNPJ Alfanumerico: '0'..'9' viram 0..9 e
	 * 'A'..'Z' viram 17..42. Manter o valor decimal do ASCII menos 48 e o que
	 * garante que um CNPJ puramente numerico continue com o mesmo digito de antes.
	 */
	private static final int BASE_ASCII = 48;

	private static final Random RANDOM = new SecureRandom();

	private MDFeUtil()
	{
	}

	/**
	 * Monta as 43 primeiras posicoes da chave de acesso.
	 *
	 * @param cUF    codigo IBGE da UF do emitente (2 posicoes)
	 * @param dhEmi  data/hora de emissao - entram apenas ano e mes (AAMM)
	 * @param cnpj   CNPJ do emitente, sem mascara; e completado com zeros a
	 *               esquerda ate 14 posicoes (CPF do emitente entra aqui tambem)
	 * @param serie  serie do MDF-e (ate 3 posicoes)
	 * @param nMDF   numero do MDF-e (ate 9 posicoes)
	 * @param tpEmis forma de emissao (1 = normal, 2 = contingencia, 3 = NFF)
	 * @param cMDF   codigo numerico de 8 posicoes
	 * @return chave de acesso sem o digito verificador
	 */
	/**
	 * Só os dígitos de um valor.
	 *
	 * <p>Delega ao {@code TextUtil} do LBR em vez de repetir a expressão regular:
	 * limpar mascara de CNPJ, CPF, CEP e placa aparece em dezenas de pontos do
	 * MDF-e, e uma implementacao so evita que elas divirjam.
	 */
	public static String soDigitos(String valor)
	{
		return TextUtil.toNumeric(valor);
	}

	public static String montarChaveSemDV(String cUF, Timestamp dhEmi, String cnpj,
			String serie, String nMDF, String tpEmis, String cMDF)
	{
		exigir(cUF, "cUF");
		exigir(cnpj, "CNPJ do emitente");
		exigir(serie, "serie");
		exigir(nMDF, "numero do MDF-e");
		exigir(tpEmis, "tpEmis");
		exigir(cMDF, "cMDF");

		if (dhEmi == null)
			throw new AdempiereException("Data de emissao e obrigatoria para montar a chave do MDF-e");

		StringBuilder chave = new StringBuilder(TAMANHO_CHAVE_SEM_DV)
			.append(parteNumerica(cUF, 2, "cUF (codigo IBGE da UF)"))
			.append(new SimpleDateFormat("yyMM").format(dhEmi))
			.append(parteDocumento(cnpj))
			.append(MODELO)
			.append(parteNumerica(serie, 3, "serie"))
			.append(parteNumerica(nMDF, 9, "numero do MDF-e"))
			.append(parteNumerica(tpEmis, 1, "tpEmis"))
			.append(parteNumerica(cMDF, 8, "cMDF"));

		if (chave.length() != TAMANHO_CHAVE_SEM_DV)
			throw new AdempiereException("Chave do MDF-e ficou com " + chave.length()
					+ " posicoes, esperado " + TAMANHO_CHAVE_SEM_DV + ": " + chave);

		return chave.toString();
	}

	/**
	 * Monta a chave de acesso completa, ja com o digito verificador.
	 *
	 * @see #montarChaveSemDV(String, Timestamp, String, String, String, String, String)
	 */
	public static String montarChave(String cUF, Timestamp dhEmi, String cnpj,
			String serie, String nMDF, String tpEmis, String cMDF)
	{
		String chave = montarChaveSemDV(cUF, dhEmi, cnpj, serie, nMDF, tpEmis, cMDF);
		return chave + calcularDV(chave);
	}

	/**
	 * Calcula o digito verificador da chave de acesso pelo modulo 11.
	 *
	 * <p>Cada um dos 43 caracteres e trocado pelo seu codigo ASCII menos 48 e
	 * multiplicado por um peso que vai de 2 a 9, ciclico, comecando pela direita.
	 * Se o resultado de {@code 11 - (soma % 11)} for 10 ou 11, o digito e zero.
	 *
	 * @param chaveSemDV as 43 primeiras posicoes da chave
	 * @return digito verificador (0..9)
	 */
	public static int calcularDV(String chaveSemDV)
	{
		if (chaveSemDV == null || chaveSemDV.length() != TAMANHO_CHAVE_SEM_DV)
			throw new AdempiereException("Chave sem DV deve ter " + TAMANHO_CHAVE_SEM_DV
					+ " posicoes, recebido: " + (chaveSemDV == null ? "null" : chaveSemDV.length()));

		int soma = 0;
		int peso = 2;

		for (int i = TAMANHO_CHAVE_SEM_DV - 1; i >= 0; i--)
		{
			soma += (chaveSemDV.charAt(i) - BASE_ASCII) * peso;
			peso = (peso == 9) ? 2 : peso + 1;
		}

		int dv = 11 - (soma % 11);
		return (dv >= 10) ? 0 : dv;
	}

	/**
	 * Confere se o digito verificador de uma chave de 44 posicoes esta correto.
	 * Nao valida os demais campos (UF, CNPJ, AAMM) - so o DV.
	 */
	public static boolean isChaveValida(String chave)
	{
		if (chave == null || chave.length() != TAMANHO_CHAVE)
			return false;

		try
		{
			return calcularDV(chave.substring(0, TAMANHO_CHAVE_SEM_DV))
					== (chave.charAt(TAMANHO_CHAVE_SEM_DV) - '0');
		}
		catch (Exception e)
		{
			return false;
		}
	}

	/**
	 * Sorteia o codigo numerico de 8 posicoes que compoe a chave (campo cMDF).
	 *
	 * <p>Usa {@link SecureRandom}: o cMDF existe para dificultar a adivinhacao de
	 * chaves de acesso alheias, entao um gerador previsivel derrota o proposito
	 * do campo.
	 */
	public static String gerarCodigoNumerico()
	{
		return zeros(String.valueOf(RANDOM.nextInt(100000000)), 8);
	}

	/** Extrai a chave de acesso de um Id no formato {@code MDFe<44 posicoes>}. */
	public static String chaveDoId(String id)
	{
		if (id == null)
			return null;

		return id.startsWith("MDFe") ? id.substring(4) : id;
	}

	/** Monta o atributo Id do grupo infMDFe: o literal "MDFe" seguido da chave. */
	/**
	 * Texto do QR Code do MDF-e (grupo infMDFeSupl).
	 *
	 * <p>Obrigatorio: sem ele a SEFAZ rejeita com 480. O conteudo e um endereco
	 * de consulta com a chave e o ambiente.
	 *
	 * <p>O parametro {@code sign} nao entra aqui de proposito. Ele so existe na
	 * contingencia off-line (regra F117) e, em emissao normal, informa-lo e
	 * rejeicao 488 - o inverso exato. Quem implementar contingencia precisa
	 * acrescentar a assinatura RSA-SHA1 da chave, em base64.
	 *
	 * @param chave chave de acesso de 44 digitos
	 * @param tpAmb "1" producao, "2" homologacao
	 */
	public static String montarQrCode(String chave, String tpAmb)
	{
		if (!isChaveValida(chave))
			throw new IllegalArgumentException("Chave de acesso invalida para o QR Code: " + chave);

		return URL_QRCODE + "?chMDFe=" + chave + "&tpAmb=" + tpAmb;
	}

	public static String idDaChave(String chave)
	{
		return "MDFe" + chave;
	}

	// ------------------------------------------------------------------------

	/** Completa com zeros a esquerda ate {@code tamanho}. Nunca corta. */
	private static String zeros(String valor, int tamanho)
	{
		String v = (valor == null) ? "" : valor.trim();

		if (v.length() >= tamanho)
			return v;

		StringBuilder sb = new StringBuilder(tamanho);
		for (int i = v.length(); i < tamanho; i++)
			sb.append('0');

		return sb.append(v).toString();
	}

	/**
	 * Um campo numerico da chave, completado com zeros a esquerda.
	 *
	 * <p>Recusa o que nao couber, em vez de cortar. Cortar produzia uma chave de
	 * 43 posicoes bem-formada que <b>nao</b> era a do documento: serie 1000
	 * virava 000, e um DocumentNo nao numerico como "RASCUNHO" entrava com
	 * letras no meio do nMDF. Nos dois casos a chave era assinada e enviada, e o
	 * erro so aparecia na SEFAZ - ou nunca, virando um documento fiscal com
	 * chave errada.
	 *
	 * <p>Limites do leiaute (tiposGeralMDFe_v3.00.xsd): TSerie
	 * {@code 0|[1-9][0-9]{0,2}}, TNF {@code [1-9][0-9]{0,8}}.
	 */
	private static String parteNumerica(String valor, int tamanho, String campo)
	{
		String v = (valor == null) ? "" : valor.trim();

		if (v.isEmpty())
			throw new AdempiereException("Campo obrigatorio para a chave do MDF-e: " + campo);

		if (!v.chars().allMatch(Character::isDigit))
			throw new AdempiereException("O campo " + campo + " da chave do MDF-e aceita"
					+ " apenas digitos, recebido: " + v);

		if (v.length() > tamanho)
			throw new AdempiereException("O campo " + campo + " da chave do MDF-e cabe em "
					+ tamanho + " digitos, recebido " + v.length() + ": " + v);

		return zeros(v, tamanho);
	}

	/**
	 * CNPJ ou CPF do emitente nas 14 posicoes da chave.
	 *
	 * <p>CPF entra completado com zeros a esquerda. O CNPJ alfanumerico da NT
	 * 2025.001 e aceito ({@code [A-Z0-9]{12}[0-9]{2}}), por isso a limpeza
	 * mantem letras.
	 */
	private static String parteDocumento(String cnpj)
	{
		String v = soDigitosELetras(cnpj);

		if (v.isEmpty())
			throw new AdempiereException("O CNPJ/CPF do emitente ficou vazio depois de tirar"
					+ " a mascara: " + cnpj);

		if (v.length() > 14)
			throw new AdempiereException("O CNPJ/CPF do emitente cabe em 14 posicoes,"
					+ " recebido " + v.length() + ": " + v);

		return zeros(v, 14);
	}

	/**
	 * Remove mascara mantendo letras: o CNPJ alfanumerico tem letras nas 12
	 * primeiras posicoes, entao filtrar so digitos apagaria parte do documento.
	 */
	private static String soDigitosELetras(String valor)
	{
		if (valor == null)
			return "";

		StringBuilder sb = new StringBuilder(valor.length());
		for (char c : valor.toCharArray())
		{
			if (Character.isLetterOrDigit(c))
				sb.append(Character.toUpperCase(c));
		}

		return sb.toString();
	}

	/**
	 * Texto de erro que nunca sai vazio.
	 *
	 * <p>{@code Dialog.error} com mensagem nula abre uma caixa em branco: o erro
	 * aconteceu, o operador nao ve nada e nao tem o que relatar. Excecao sem
	 * mensagem acontece - {@code new RuntimeException()}, alguns
	 * {@code ClassCastException} de generico, o que vier de biblioteca de fora -
	 * entao o nome da classe entra como ultimo recurso, que ao menos da o que
	 * procurar no log.
	 */
	public static String mensagem(Throwable e)
	{
		if (e == null)
			return "Erro sem detalhe";

		String texto = e.getLocalizedMessage();

		// a causa costuma ser mais especifica que o embrulho
		if ((texto == null || texto.trim().isEmpty()) && e.getCause() != null)
			texto = e.getCause().getLocalizedMessage();

		return (texto == null || texto.trim().isEmpty())
				? e.getClass().getSimpleName() + " (sem mensagem - veja o log do servidor)"
				: texto;
	}

	private static void exigir(String valor, String campo)
	{
		if (valor == null || valor.trim().isEmpty())
			throw new AdempiereException("Campo obrigatorio para a chave do MDF-e: " + campo);
	}
}
