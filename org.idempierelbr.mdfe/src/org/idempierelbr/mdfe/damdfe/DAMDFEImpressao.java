package org.idempierelbr.mdfe.damdfe;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.List;
import java.util.Map;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.MImage;
import org.compiere.model.MOrgInfo;
import org.idempierelbr.mdfe.model.MLBRMDFe;

import net.sf.jasperreports.engine.JREmptyDataSource;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
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

		parametros.put("ds_veiculos", fonte(dados.getVeiculos()));
		parametros.put("ds_condutores", fonte(dados.getCondutores()));
		parametros.put("ds_valepedagio", fonte(dados.getValePedagio()));

		InputStream logo = logotipo(mdfe);

		if (logo != null)
			parametros.put("logotipo", logo);

		try (InputStream jasper = DAMDFEImpressao.class.getClassLoader().getResourceAsStream(JASPER))
		{
			if (jasper == null)
				throw new AdempiereException("Leiaute do DAMDFE nao encontrado no bundle: " + JASPER);

			// Uma linha vazia: o relatorio nao tem detalhe, tudo esta no title.
			return JasperFillManager.fillReport(jasper, parametros, new JREmptyDataSource(1));
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
	}

	private static JRMapCollectionDataSource fonte(List<Map<String, ?>> linhas)
	{
		return new JRMapCollectionDataSource(linhas);
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
