package org.idempierelbr.mdfe.damdfe;

import java.awt.image.BufferedImage;
import java.util.EnumMap;
import java.util.Map;

import org.adempiere.exceptions.AdempiereException;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.QRCodeWriter;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;

/**
 * Desenha o QR Code do DAMDFE.
 *
 * <p>Usa o zxing, a mesma biblioteca com que o LBR gera o QR Code da NFC-e, em
 * vez de trazer um segundo gerador para dentro do projeto.
 *
 * <p>O MOC Anexo II, secao 2.6.2, exige no minimo 25 mm de lado, dos quais 3 mm
 * sao a margem de silencio - abaixo disso celulares sem zoom nao leem. Acima de
 * 25 mm a margem passa a ser 10% do lado, que e o que esta implementado aqui.
 */
public class QrCodeImagem
{
	/** Fracao do lado reservada a margem de silencio, conforme o manual. */
	private static final double MARGEM = 0.10;

	private QrCodeImagem()
	{
	}

	/**
	 * @param texto conteudo da tag qrCodMDFe
	 * @param lado  lado da imagem final, em pixels, ja incluindo a margem
	 */
	public static BufferedImage gerar(String texto, int lado)
	{
		Map<EncodeHintType, Object> dicas = new EnumMap<EncodeHintType, Object>(EncodeHintType.class);
		dicas.put(EncodeHintType.ERROR_CORRECTION, ErrorCorrectionLevel.M);
		dicas.put(EncodeHintType.CHARACTER_SET, "UTF-8");

		// O zxing conta a margem em modulos, nao em pixels. Zero aqui e a
		// margem entra depois em pixels, que e a unidade que o manual usa.
		dicas.put(EncodeHintType.MARGIN, Integer.valueOf(0));

		int margem = (int) Math.round(lado * MARGEM);
		int util = Math.max(1, lado - margem * 2);

		BitMatrix matriz;

		try
		{
			// Tamanho zero devolve um pixel por modulo. Pedir o tamanho util
			// deixava o zxing arredondar o modulo para pixels inteiros e
			// centralizar a sobra: o simbolo ocupava bem menos que o util.
			matriz = new QRCodeWriter().encode(texto, BarcodeFormat.QR_CODE, 0, 0, dicas);
		}
		catch (Exception e)
		{
			throw new AdempiereException("Falha ao gerar o QR Code do DAMDFE: " + e.getMessage(), e);
		}

		BufferedImage img = new BufferedImage(lado, lado, BufferedImage.TYPE_INT_RGB);
		java.awt.Graphics2D g = img.createGraphics();

		try
		{
			g.setColor(java.awt.Color.WHITE);
			g.fillRect(0, 0, lado, lado);
			g.setColor(java.awt.Color.BLACK);

			// Cada modulo vai de borda arredondada a borda arredondada: o
			// simbolo enche o util exato, sem frestas entre modulos.
			int n = matriz.getWidth();

			for (int y = 0; y < n; y++)
				for (int x = 0; x < n; x++)
					if (matriz.get(x, y))
					{
						int x0 = margem + x * util / n;
						int y0 = margem + y * util / n;
						g.fillRect(x0, y0, margem + (x + 1) * util / n - x0, margem + (y + 1) * util / n - y0);
					}
		}
		finally
		{
			g.dispose();
		}

		return img;
	}
}
