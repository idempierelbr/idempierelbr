package org.idempierelbr.mdfe.damdfe;

import java.awt.Color;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;

/**
 * Codigo de barras CODE-128C da chave de acesso, para o DAMDFE.
 *
 * <p>O MOC Anexo II, secao 2.2, exige CODE-128C representando exatamente as 44
 * posicoes da chave, numa area de 3 x 9 cm, com barra de 1,5 a 2,5 cm de altura
 * e impressao a no minimo 300 dpi.
 *
 * <p>Implementado aqui em vez de puxar uma biblioteca de codigo de barras: o
 * proprio manual publica a tabela de simbolos e o calculo do digito verificador,
 * o subconjunto C e so numerico (dois digitos por simbolo) e a chave tem tamanho
 * fixo e par. Sao trinta linhas de codigo contra mais um jar no bundle OSGi.
 */
public class Code128C
{
	/**
	 * Larguras dos seis elementos (barra/espaco alternados, comecando por barra)
	 * de cada simbolo do CODE-128, indexadas pelo valor do simbolo.
	 */
	private static final String[] SIMBOLOS = {
		"212222","222122","222221","121223","121322","131222","122213","122312","132212","221213",
		"221312","231212","112232","122132","122231","113222","123122","123221","223211","221132",
		"221231","213212","223112","312131","311222","321122","321221","312212","322112","322211",
		"212123","212321","232121","111323","131123","131321","112313","132113","132311","211313",
		"231113","231311","112133","112331","132131","113123","113321","133121","313121","211331",
		"231131","213113","213311","213131","311123","311321","331121","312113","312311","332111",
		"314111","221411","431111","111224","111422","121124","121421","141122","141221","112214",
		"112412","122114","122411","142112","142211","241211","221114","413111","241112","134111",
		"111242","121142","121241","114212","124112","124211","411212","421112","421211","212141",
		"214121","412121","111143","111341","131141","114113","114311","411113","411311","113141",
		"114131","311141","411131","211412","211214","211232"
	};

	/** Simbolo de inicio do subconjunto C. */
	private static final int START_C = 105;

	/** Terminador: sete elementos, nao seis. */
	private static final String STOP = "2331112";

	/** Zona de silencio: o manual pede no minimo 10 modulos de cada lado. */
	private static final int MARGEM_MODULOS = 10;

	private Code128C()
	{
	}

	/**
	 * Digito verificador, modulo 103 sobre a soma ponderada.
	 *
	 * <p>O peso do start e 1, e dos demais e a posicao (1, 2, 3...). Conferido
	 * contra o exemplo do proprio manual: 09758364 resulta em 48.
	 */
	public static int digitoVerificador(String digitos)
	{
		int soma = START_C;

		for (int i = 0; i < digitos.length(); i += 2)
			soma += Integer.parseInt(digitos.substring(i, i + 2)) * (i / 2 + 1);

		return soma % 103;
	}

	/** Sequencia de larguras de barras e espacos, comecando sempre por barra. */
	public static String larguras(String digitos)
	{
		exigirNumericoPar(digitos);

		StringBuilder sb = new StringBuilder(SIMBOLOS[START_C]);

		for (int i = 0; i < digitos.length(); i += 2)
			sb.append(SIMBOLOS[Integer.parseInt(digitos.substring(i, i + 2))]);

		return sb.append(SIMBOLOS[digitoVerificador(digitos)]).append(STOP).toString();
	}

	/**
	 * Desenha o codigo de barras.
	 *
	 * @param digitos       conteudo, so digitos e em quantidade par
	 * @param larguraModulo largura do modulo mais fino, em pixels
	 * @param altura        altura da barra, em pixels
	 */
	public static BufferedImage gerar(String digitos, int larguraModulo, int altura)
	{
		String larguras = larguras(digitos);

		int modulos = MARGEM_MODULOS * 2;

		for (int i = 0; i < larguras.length(); i++)
			modulos += larguras.charAt(i) - '0';

		BufferedImage img = new BufferedImage(modulos * larguraModulo, altura,
				BufferedImage.TYPE_INT_RGB);
		Graphics2D g = img.createGraphics();

		try
		{
			g.setColor(Color.WHITE);
			g.fillRect(0, 0, img.getWidth(), img.getHeight());
			g.setColor(Color.BLACK);

			int x = MARGEM_MODULOS * larguraModulo;
			boolean barra = true;

			for (int i = 0; i < larguras.length(); i++)
			{
				int largura = (larguras.charAt(i) - '0') * larguraModulo;

				if (barra)
					g.fillRect(x, 0, largura, altura);

				x += largura;
				barra = !barra;
			}
		}
		finally
		{
			g.dispose();
		}

		return img;
	}

	private static void exigirNumericoPar(String digitos)
	{
		if (digitos == null || digitos.isEmpty() || digitos.length() % 2 != 0)
			throw new IllegalArgumentException(
					"CODE-128C exige uma quantidade par de digitos: " + digitos);

		for (int i = 0; i < digitos.length(); i++)
			if (!Character.isDigit(digitos.charAt(i)))
				throw new IllegalArgumentException(
						"CODE-128C e exclusivamente numerico: " + digitos);
	}
}
