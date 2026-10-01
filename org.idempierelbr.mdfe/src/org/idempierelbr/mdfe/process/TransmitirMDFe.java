package org.idempierelbr.mdfe.process;

import java.sql.Timestamp;
import java.util.logging.Level;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.MOrgInfo;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.CLogger;
import org.idempierelbr.nfe.util.AssinaturaDigital;
import org.idempierelbr.mdfe.apps.form.MDFeEmissao;
import org.idempierelbr.mdfe.base.MDFeXMLGenerator;
import org.idempierelbr.mdfe.model.MLBRMDFe;
import org.idempierelbr.mdfe.model.X_LBR_MDFe;
import org.idempierelbr.mdfe.model.X_LBR_MDFeXML;
import org.idempierelbr.mdfe.util.MDFeRetorno;
import org.idempierelbr.mdfe.util.MDFeUtil;
import org.idempierelbr.mdfe.util.MDFeWebService;

/**
 * Transmite o MDF-e para a SEFAZ e grava o resultado.
 *
 * <p>Sequencia, na ordem em que precisa acontecer:
 * <ol>
 *   <li>numero e chave de acesso, se ainda nao existirem;</li>
 *   <li>montagem do XML e validacao do modal;</li>
 *   <li>assinatura com o certificado da organizacao;</li>
 *   <li>validacao do documento assinado contra o schema completo - so agora,
 *       porque o TMDFe exige o elemento Signature;</li>
 *   <li>envio sincrono ao MDFeRecepcaoSinc, que ja devolve o protocolo.</li>
 * </ol>
 *
 * <p>Todo XML trocado fica em LBR_MDFeXML, inclusive quando a SEFAZ rejeita:
 * sem o XML enviado nao da para entender uma rejeicao depois.
 */
public class TransmitirMDFe extends SvrProcess
{
	private static final CLogger logger = CLogger.getCLogger(TransmitirMDFe.class);

	/** cStat de autorizacao de uso do MDF-e. */
	private static final String CSTAT_AUTORIZADO = "100";

	private int p_LBR_MDFe_ID = 0;

	@Override
	protected void prepare()
	{
		for (ProcessInfoParameter para : getParameter())
		{
			String name = para.getParameterName();

			if ("LBR_MDFe_ID".equals(name))
				p_LBR_MDFe_ID = para.getParameterAsInt();
		}

		if (p_LBR_MDFe_ID <= 0)
			p_LBR_MDFe_ID = getRecord_ID();
	}

	@Override
	protected String doIt() throws Exception
	{
		MLBRMDFe mdfe = new MLBRMDFe(getCtx(), p_LBR_MDFe_ID, get_TrxName());

		if (mdfe.get_ID() <= 0)
			throw new AdempiereException("MDF-e nao encontrado");

		// Antes de qualquer guarda: duas execucoes simultaneas sobre o mesmo
		// manifesto liam o mesmo estado e seguiam as duas.
		mdfe.travarERecarregar();

		mdfe.exigirNaoExcluido();

		if (mdfe.isAutorizado() || mdfe.isEncerrado())
			throw new AdempiereException("Este MDF-e ja esta autorizado, protocolo "
					+ mdfe.getLBR_Protocol());

		if (!mdfe.isTransmissivel())
			throw new AdempiereException("MDF-e na situacao " + mdfe.getLBR_MDFeStatus()
					+ " nao pode ser transmitido");

		// Os totalizadores sao mantidos incrementalmente pelo formulario, mas o
		// manifesto tambem pode ser montado pela janela ou por um processo, e
		// nesses caminhos ninguem os atualiza. Recalcular aqui e o unico ponto
		// por onde todo manifesto passa antes de virar XML - e vCarga zerado e
		// rejeicao na SEFAZ, nao aviso.
		MDFeEmissao totais = new MDFeEmissao()
		{
			@Override
			protected java.util.Properties getCtx()
			{
				return TransmitirMDFe.this.getCtx();
			}
		};

		totais.abrir(mdfe.getLBR_MDFe_ID(), get_TrxName());
		totais.recalcularTotais();
		mdfe.load(get_TrxName());

		// 1. numero e chave
		// Nao basta testar vazio: o rascunho carrega o marcador RASCUNHO, que e
		// nao vazio de proposito para o PO nao numerar na gravacao.
		if (mdfe.isSemNumero())
			mdfe.setDocumentNo(String.valueOf(mdfe.getProximoNumero()));

		mdfe.gerarChaveAcesso();

		// O QR Code sai da chave e do ambiente. Guardar aqui, e nao so dentro do
		// XML, porque o DAMDFE precisa dele para imprimir.
		mdfe.setLBR_QrCodMDFe(MDFeUtil.montarQrCode(mdfe.getLBR_MDFeChave(), mdfe.getLBR_tpAmb()));
		mdfe.saveEx();

		// 2. XML + validacao do modal
		String xml = new MDFeXMLGenerator(mdfe).gerar();

		// 3. assinatura - o LBR ja mapeia RECEPCAO_MDFE para a tag infMDFe
		MOrgInfo orgInfo = MOrgInfo.get(getCtx(), mdfe.getAD_Org_ID(), get_TrxName());
		String assinado = AssinaturaDigital
				.Assinar(new StringBuilder(xml), orgInfo, AssinaturaDigital.RECEPCAO_MDFE)
				.toString();

		// 4. so agora o schema completo fecha
		MDFeXMLGenerator.validarAssinado(assinado);

		gravarXml(mdfe, X_LBR_MDFeXML.LBR_XMLTYPE_MDF_EAssinado, assinado, null);
		mdfe.setLBR_MDFeStatus(X_LBR_MDFe.LBR_MDFESTATUS_Assinado);
		mdfe.saveEx();

		// 5. envio sincrono
		boolean homologacao = X_LBR_MDFe.LBR_TPAMB_Homologacao.equals(mdfe.getLBR_tpAmb());
		// Fecha a transacao antes de falar com a SEFAZ.
		//
		// Ate aqui gravamos numero, chave e XML assinado. O que vem depois - a resposta,
		// o protocolo, a situacao - depende de a SEFAZ responder. Se a gravacao
		// da resposta falhar com a transacao ainda aberta, o rollback leva junto
		// tudo o que ja estava decidido, e reemitir daria outro numero para a mesma viagem.
		//
		// Com isto gravado, o caminho de recuperacao e o que o manual manda:
		// "Consultar na SEFAZ - quando a resposta se perdeu na rede e voce nao
		// sabe se autorizou".
		commitEx();

		String retorno;

		try
		{
			retorno = MDFeWebService.enviar(getCtx(), mdfe.getAD_Org_ID(), ufDoEmitente(mdfe),
					homologacao, MDFeWebService.Servico.RECEPCAO_SINC, assinado);
		}
		catch (Exception e)
		{
			// a transmissao falhou antes de qualquer resposta: o MDF-e continua
			// assinado e pode ser reenviado com a MESMA chave. Gerar chave nova
			// criaria um documento diferente aos olhos da SEFAZ.
			logger.log(Level.SEVERE, "Falha ao transmitir o MDF-e " + mdfe.getLBR_MDFeChave(), e);
			throw new AdempiereException("Falha na comunicacao com a SEFAZ: " + e.getMessage(), e);
		}

		gravarXml(mdfe, X_LBR_MDFeXML.LBR_XMLTYPE_RetornoDoEnvio, retorno, null);

		// 6. interpreta o retorno
		MDFeRetorno ret = MDFeRetorno.parse(retorno);

		mdfe.setLBR_cStat(ret.getCStat());
		mdfe.setLBR_xMotivo(ret.getXMotivo());

		if (CSTAT_AUTORIZADO.equals(ret.getCStat()))
		{
			mdfe.setLBR_Protocol(ret.getNProt());
			mdfe.setLBR_DigestValue(ret.getDigVal());
			mdfe.setLBR_DateProtocol(ret.getDhRecbto() != null
					? ret.getDhRecbto() : new Timestamp(System.currentTimeMillis()));
			mdfe.setLBR_MDFeStatus(X_LBR_MDFe.LBR_MDFESTATUS_Autorizado);
			mdfe.setProcessed(true);
			mdfe.saveEx();

			return "MDF-e autorizado. Protocolo " + ret.getNProt();
		}

		mdfe.setLBR_MDFeStatus(X_LBR_MDFe.LBR_MDFESTATUS_Rejeitado);
		mdfe.saveEx();

		// A recusa fica gravada e comitada antes de subir: ela e o registro do que
		// a SEFAZ respondeu, e uma excecao sem o commit derrubaria cStat, xMotivo
		// e o XML de retorno junto com o rollback - o operador ficaria sem saber
		// por que foi recusado.
		//
		// Sobe como excecao, e nao como texto de retorno, porque o SvrProcess
		// marca isError a partir de doIt() ter lancado ou nao (ele sobrescreve
		// qualquer setError feito aqui dentro, em setSummary(msg, !success)).
		// Retornando texto, uma rejeicao 225 saia num pop-up de informacao, com
		// cara de operacao bem-sucedida.
		commitEx();

		throw new AdempiereException("MDF-e rejeitado pela SEFAZ: " + ret.getCStat()
				+ " - " + ret.getXMotivo());
	}

	/**
	 * UF usada para achar a URL do web service.
	 *
	 * <p>O MDF-e tem autorizador unico (SVRS, MOC secao 3.9), mas a tabela
	 * LBR_NFeWebService e indexada por UF, entao usa-se a UF do emitente.
	 */
	private int ufDoEmitente(MLBRMDFe mdfe)
	{
		return mdfe.getEnderecoEmitente().getC_Region_ID();
	}

	private void gravarXml(MLBRMDFe mdfe, String tipo, String conteudo, Integer eventoId)
	{
		X_LBR_MDFeXML x = new X_LBR_MDFeXML(getCtx(), 0, get_TrxName());
		x.setAD_Org_ID(mdfe.getAD_Org_ID());
		x.setLBR_MDFe_ID(mdfe.getLBR_MDFe_ID());
		x.setLBR_XMLType(tipo);
		x.setLBR_XMLContent(conteudo);

		if (eventoId != null)
			x.setLBR_MDFeEvento_ID(eventoId.intValue());

		x.saveEx();
	}
}
