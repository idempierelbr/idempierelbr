package org.idempierelbr.mdfe.util;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayDeque;
import java.util.Deque;

import org.adempiere.exceptions.AdempiereException;
import org.idempierelbr.base.util.RemoverAcentos;

/**
 * Escritor de XML para o MDF-e.
 *
 * <p>Por que nao XStream, como o NFeXMLGenerator do LBR faz: no schema do MDF-e
 * quase todo grupo e uma {@code xs:sequence}, ou seja, a ordem dos elementos e
 * parte da validacao. Com XStream a ordem vem da ordem de declaracao dos campos
 * do bean, o que e uma dependencia invisivel - trocar duas linhas de um bean
 * quebra o XML sem nenhum aviso do compilador. Aqui a ordem esta explicita na
 * sequencia de chamadas, no mesmo lugar em que da para conferir contra o XSD.
 *
 * <p>Os metodos {@code el*} pulam valores vazios. Isso resolve os elementos
 * opcionais sem um {@code if} em cada campo: o schema rejeita elemento vazio,
 * mas aceita elemento ausente.
 */
public class MDFeXmlWriter
{
	private final StringBuilder xml = new StringBuilder(8192);
	private final Deque<String> abertos = new ArrayDeque<>();

	/** Abre um elemento sem atributos. */
	public MDFeXmlWriter open(String nome)
	{
		xml.append('<').append(nome).append('>');
		abertos.push(nome);
		return this;
	}

	/**
	 * Abre um elemento com atributos.
	 *
	 * @param attrs pares nome/valor; atributo com valor vazio e omitido
	 */
	public MDFeXmlWriter open(String nome, String... attrs)
	{
		if (attrs.length % 2 != 0)
			throw new AdempiereException("Atributos devem vir em pares nome/valor: " + nome);

		xml.append('<').append(nome);
		for (int i = 0; i < attrs.length; i += 2)
		{
			if (vazio(attrs[i + 1]))
				continue;

			xml.append(' ').append(attrs[i]).append("=\"").append(escapar(attrs[i + 1])).append('"');
		}
		xml.append('>');
		abertos.push(nome);
		return this;
	}

	/** Fecha o elemento aberto mais recente. */
	public MDFeXmlWriter close()
	{
		if (abertos.isEmpty())
			throw new AdempiereException("close() sem elemento aberto");

		xml.append("</").append(abertos.pop()).append('>');
		return this;
	}

	/** Elemento de texto. Nao escreve nada quando o valor e nulo ou vazio. */
	public MDFeXmlWriter el(String nome, String valor)
	{
		if (vazio(valor))
			return this;

		xml.append('<').append(nome).append('>')
		   .append(escapar(limpar(valor)))
		   .append("</").append(nome).append('>');
		return this;
	}

	/** Elemento de texto com tamanho maximo; corta o excedente. */
	public MDFeXmlWriter el(String nome, String valor, int maxLen)
	{
		if (vazio(valor))
			return this;

		String v = limpar(valor);
		return el(nome, v.length() > maxLen ? v.substring(0, maxLen) : v);
	}

	/** Elemento obrigatorio: estoura se o valor estiver vazio. */
	public MDFeXmlWriter elReq(String nome, String valor, String ondeFalhou)
	{
		if (vazio(valor))
			throw new AdempiereException("Campo obrigatorio do MDF-e nao preenchido: "
					+ nome + " (" + ondeFalhou + ")");

		return el(nome, valor);
	}

	/**
	 * Elemento de valor fixo pelo schema, escrito exatamente como esta.
	 *
	 * <p>Nao passa pelo {@code limpar}: os xServ das consultas sao
	 * {@code fixed} no XSD e um deles tem acento - "CONSULTAR NÃO ENCERRADOS".
	 * Tirar o til produziria um valor que nao bate com o fixo, e a SEFAZ recusa
	 * a consulta inteira por causa de um caractere.
	 */
	public MDFeXmlWriter elFixo(String nome, String valor)
	{
		xml.append('<').append(nome).append('>')
		   .append(escapar(valor))
		   .append("</").append(nome).append('>');
		return this;
	}

	/** Elemento numerico inteiro. Zero e escrito; nulo nao. */
	public MDFeXmlWriter el(String nome, Integer valor)
	{
		return (valor == null) ? this : el(nome, String.valueOf(valor.intValue()));
	}

	/**
	 * Elemento decimal com casas fixas.
	 *
	 * <p>Usa {@code toPlainString} e ponto como separador: o schema nao aceita
	 * notacao cientifica nem virgula, e o {@code toString} de BigDecimal vira
	 * notacao cientifica para expoentes grandes.
	 */
	public MDFeXmlWriter el(String nome, BigDecimal valor, int casas)
	{
		if (valor == null)
			return this;

		return el(nome, valor.setScale(casas, RoundingMode.HALF_UP).toPlainString());
	}

	/**
	 * Elemento decimal obrigatorio.
	 *
	 * <p>Nulo e zero sao tratados igual: um valor obrigatorio zerado quase
	 * sempre e campo que ninguem preencheu, e chega na SEFAZ como rejeicao em
	 * vez de mensagem com o nome do campo.
	 *
	 * @param ondeFalhou caminho do campo no schema, para a mensagem de erro
	 */
	public MDFeXmlWriter elReq(String nome, BigDecimal valor, int casas, String ondeFalhou)
	{
		if (valor == null || valor.signum() == 0)
			throw new AdempiereException("Campo obrigatorio do MDF-e nao preenchido: "
					+ nome + " (" + ondeFalhou + ")");

		return el(nome, valor, casas);
	}

	/**
	 * Data/hora no formato UTC exigido pelo MOC (secao 3.8), com o offset do
	 * fuso: {@code 2010-08-19T13:00:15-03:00}.
	 */
	public MDFeXmlWriter elDateTime(String nome, Timestamp valor, String timezone)
	{
		if (valor == null)
			return this;

		return el(nome, new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss").format(valor) + timezone);
	}

	/** Data simples ({@code yyyy-MM-dd}), usada no evento de encerramento. */
	public MDFeXmlWriter elDate(String nome, Timestamp valor)
	{
		if (valor == null)
			return this;

		return el(nome, new SimpleDateFormat("yyyy-MM-dd").format(valor));
	}

	/** Insere um trecho de XML ja pronto, sem escapar (usado no grupo infModal). */
	public MDFeXmlWriter raw(String fragmento)
	{
		if (!vazio(fragmento))
			xml.append(fragmento);

		return this;
	}

	/** {@code true} se nenhum elemento foi escrito ainda. */
	public boolean isEmpty()
	{
		return xml.length() == 0;
	}

	@Override
	public String toString()
	{
		if (!abertos.isEmpty())
			throw new AdempiereException("XML do MDF-e com elemento sem fechar: " + abertos.peek());

		return xml.toString();
	}

	// ------------------------------------------------------------------------

	private static boolean vazio(String s)
	{
		return s == null || s.trim().isEmpty();
	}

	/**
	 * A SEFAZ rejeita acento e caractere de controle nos campos texto, e trata
	 * espacos repetidos como erro de formato em varios campos.
	 *
	 * <p>O segundo argumento de {@code RemoverAcentos.remover} precisa ser
	 * {@code false}: com o padrao ({@code true}) ele roda
	 * {@code replaceAll("[^A-Za-z0-9 ]", " ")} e apaga toda a pontuacao - o que
	 * destruiria enderecos ("RUA X, 100 - APTO 2") e o campo infCpl. Aqui so os
	 * acentos saem; {@code &}, {@code <} e {@code >} sao tratados pelo escape.
	 */
	private static String limpar(String valor)
	{
		String v = RemoverAcentos.remover(valor.trim(), false);
		return v.replaceAll("[\\x00-\\x1F\\x7F]", "").replaceAll("\\s{2,}", " ").trim();
	}

	private static String escapar(String valor)
	{
		StringBuilder sb = new StringBuilder(valor.length() + 16);
		for (char c : valor.toCharArray())
		{
			switch (c)
			{
				case '&':  sb.append("&amp;");  break;
				case '<':  sb.append("&lt;");   break;
				case '>':  sb.append("&gt;");   break;
				case '"':  sb.append("&quot;"); break;
				case '\'': sb.append("&apos;"); break;
				default:   sb.append(c);
			}
		}
		return sb.toString();
	}
}
