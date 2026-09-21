package org.idempierelbr.mdfe.damdfe;

import java.awt.image.BufferedImage;
import java.util.EnumMap;
import java.util.Map;

import org.adempiere.exceptions.AdempiereException;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.client.j2se.MatrixToImageWriter;
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
			matriz = new QRCodeWriter().encode(texto, BarcodeFormat.QR_CODE, util, util, dicas);
		}
		catch (Exception e)
		{
			throw new AdempiereException("Falha ao gerar o QR Code do DAMDFE: " + e.getMessage(), e);
		}

		BufferedImage desenho = MatrixToImageWriter.toBufferedImage(matriz);
		BufferedImage img = new BufferedImage(lado, lado, BufferedImage.TYPE_INT_RGB);

		java.awt.Graphics2D g = img.createGraphics();

		try
		{
			g.setColor(java.awt.Color.WHITE);
			g.fillRect(0, 0, lado, lado);

			int deslocamento = (lado - desenho.getWidth()) / 2;
			g.drawImage(desenho, deslocamento, (lado - desenho.getHeight()) / 2, null);
		}
		finally
		{
			g.dispose();
		}

		return img;
	}
}
