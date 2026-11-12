package org.idempierelbr.mdfe.damdfe;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.Map;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.MImage;
import org.compiere.model.MOrgInfo;
import org.idempierelbr.mdfe.model.MLBRMDFe;

import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.data.JRMapCollectionDataSource;

/**
 * Gera o DAMDFE pronto para visualizar ou imprimir.
 *
 * <p>O leiaute compilado vive ao lado desta classe, no proprio bundle, e os
 * dados vem de {@link DAMDFEDados}.
 */
public class DAMDFEImpressao
{
	private static final String JASPER = "org/idempierelbr/mdfe/damdfe/Damdfe.jasper";

	private DAMDFEImpressao()
	{
	}

	public static JasperPrint gerar(MLBRMDFe mdfe)
	{
		if (mdfe == null || mdfe.get_ID() <= 0)
			throw new AdempiereException("Grave o MDF-e antes de imprimir o DAMDFE");

		if (mdfe.getLBR_MDFeChave() == null || mdfe.getLBR_MDFeChave().trim().isEmpty())
			throw new AdempiereException("O DAMDFE so existe depois que o MDF-e tem chave de"
					+ " acesso. Transmita o manifesto primeiro.");

		DAMDFEDados dados = new DAMDFEDados(mdfe);
		Map<String, Object> parametros = dados.getParametros();

		InputStream logo = logotipo(mdfe);

		if (logo != null)
			parametros.put("logotipo", logo);

		ClassLoader anterior = Thread.currentThread().getContextClassLoader();

		try (InputStream jasper = DAMDFEImpressao.class.getClassLoader().getResourceAsStream(JASPER))
		{
			if (jasper == null)
				throw new AdempiereException("Leiaute do DAMDFE nao encontrado no bundle: " + JASPER);

			usarClassLoaderDoJasper();

			// O detalhe e a relacao de documentos: e ela que cresce e quebra folha.
			return JasperFillManager.fillReport(jasper, parametros,
					new JRMapCollectionDataSource(dados.getDocumentos()));
		}
		catch (AdempiereException e)
		{
			throw e;
		}
		catch (Exception e)
		{
			throw new AdempiereException("Falha ao gerar o DAMDFE do MDF-e "
					+ mdfe.getDocumentNo(), e);
		}
		finally
		{
			Thread.currentThread().setContextClassLoader(anterior);
		}
	}

	/** Grava o DAMDFE em PDF, com as mesmas fontes que o preenchimento usou. */
	public static void exportarPdf(JasperPrint impressao, String arquivo) throws JRException
	{
		ClassLoader anterior = Thread.currentThread().getContextClassLoader();

		try
		{
			usarClassLoaderDoJasper();
			JasperExportManager.exportReportToPdfFile(impressao, arquivo);
		}
		finally
		{
			Thread.currentThread().setContextClassLoader(anterior);
		}
	}

	/**
	 * Times New Roman vem do fragmento org.idempierelbr.jasperfonts, pendurado
	 * no bundle do Jasper, e o Jasper procura extensoes de fonte pelo class
	 * loader da thread. Numa thread do ZK esse loader nao enxerga o fragmento e
	 * o preenchimento falha com "Font Times New Roman is not available". E a
	 * mesma troca que o ReportStarter e o ZkJRViewer do iDempiere fazem.
	 */
	private static void usarClassLoaderDoJasper()
	{
		Thread.currentThread().setContextClassLoader(JasperReport.class.getClassLoader());
	}

	/** Logotipo da organizacao emitente; ausente nao impede a impressao. */
	private static InputStream logotipo(MLBRMDFe mdfe)
	{
		MOrgInfo info = MOrgInfo.get(mdfe.getCtx(), mdfe.getAD_Org_ID(), mdfe.get_TrxName());

		if (info == null || info.getLogo_ID() <= 0)
			return null;

		MImage img = MImage.get(mdfe.getCtx(), info.getLogo_ID());

		return (img == null || img.getBinaryData() == null)
				? null : new ByteArrayInputStream(img.getBinaryData());
	}
}
