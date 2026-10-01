package org.idempierelbr.mdfe.process;

import java.util.Properties;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.idempierelbr.mdfe.apps.form.MDFeEmissao;
import org.idempierelbr.mdfe.model.MLBRMDFe;
import org.idempierelbr.mdfe.util.MDFeNFeImport;

/**
 * Acrescenta uma NF-e ao manifesto a partir da chave de acesso.
 *
 * <p>E o caminho de quem usa a janela do dicionario em vez do formulario de
 * emissao: informa a chave e, quando a SEFAZ entrega o XML, o municipio de
 * descarga vem junto. Nao vindo, o municipio pode ser informado no parametro.
 *
 * <p>A chave sozinha basta para o manifesto - a nota nao precisa existir no ERP
 * de quem emite, que e a situacao normal de uma transportadora.
 */
public class ImportarNFeMDFe extends SvrProcess
{
	private String p_LBR_DFeChave = null;
	private int p_C_City_ID = 0;

	@Override
	protected void prepare()
	{
		for (ProcessInfoParameter para : getParameter())
		{
			String nome = para.getParameterName();

			if (para.getParameter() == null)
				continue;
			else if ("LBR_DFeChave".equals(nome))
				p_LBR_DFeChave = para.getParameterAsString();
			else if ("C_City_ID".equals(nome))
				p_C_City_ID = para.getParameterAsInt();
		}
	}

	@Override
	protected String doIt() throws Exception
	{
		if (getRecord_ID() <= 0)
			throw new AdempiereException("Abra um MDF-e para importar a NF-e");

		if (p_LBR_DFeChave == null || p_LBR_DFeChave.trim().isEmpty())
			throw new AdempiereException("Informe a chave de acesso da NF-e");

		final Properties ctx = getCtx();

		MLBRMDFe mdfe = new MLBRMDFe(ctx, getRecord_ID(), get_TrxName());

		if (mdfe.get_ID() <= 0)
			throw new AdempiereException("MDF-e nao encontrado: " + getRecord_ID());

		MDFeNFeImport.Dados dados = MDFeNFeImport.buscar(ctx, mdfe.getAD_Org_ID(), p_LBR_DFeChave,
				mdfe.getLBR_tpAmb(), get_TrxName());

		int cidade = p_C_City_ID;

		if (cidade <= 0)
			cidade = MDFeNFeImport.cidadeDoCodigoIBGE(ctx, dados.cMunDescarga, get_TrxName());

		if (cidade <= 0)
			throw new AdempiereException(dados.aviso != null ? dados.aviso
					: "Informe o municipio de descarregamento: a NF-e nao trouxe essa informacao");

		MDFeEmissao emissao = new MDFeEmissao()
		{
			@Override
			protected Properties getCtx()
			{
				return ctx;
			}
		};

		emissao.abrir(mdfe.getLBR_MDFe_ID(), get_TrxName());
		emissao.adicionarNFe(cidade, dados.chave, dados.valor);

		StringBuilder msg = new StringBuilder("NF-e ").append(dados.chave).append(" acrescentada");

		if (dados.xMunDescarga != null)
			msg.append(" - descarga em ").append(dados.xMunDescarga).append("/").append(dados.ufDescarga);

		if (dados.aviso != null)
			msg.append(". ").append(dados.aviso);

		return msg.toString();
	}
}
