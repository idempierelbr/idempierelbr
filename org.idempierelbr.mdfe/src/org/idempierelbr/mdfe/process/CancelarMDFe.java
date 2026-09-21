package org.idempierelbr.mdfe.process;

import java.sql.Timestamp;
import java.util.logging.Level;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.MOrgInfo;
import org.compiere.model.Query;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.CLogger;
import org.idempierelbr.nfe.util.AssinaturaDigital;
import org.idempierelbr.mdfe.base.MDFeEventoXMLGenerator;
import org.idempierelbr.mdfe.model.MLBRMDFe;
import org.idempierelbr.mdfe.model.X_LBR_MDFe;
import org.idempierelbr.mdfe.model.X_LBR_MDFeEvento;
import org.idempierelbr.mdfe.model.X_LBR_MDFeXML;
import org.idempierelbr.mdfe.util.MDFeRetorno;
import org.idempierelbr.mdfe.util.MDFeWebService;

/**
 * Evento de cancelamento do MDF-e (tpEvento 110111).
 *
 * <p>Cancelar e desfazer um documento que ja existe para o fisco: nao apaga
 * nada, registra um evento que muda a situacao do manifesto. Por isso o
 * caminho e o mesmo da autorizacao - montar, assinar, validar, transmitir - e
 * o XML de ida e de volta fica guardado.
 */
public class CancelarMDFe extends SvrProcess
{
	private static final CLogger logger = CLogger.getCLogger(CancelarMDFe.class);

	/** Evento registrado e vinculado ao MDF-e. */
	private static final String CSTAT_REGISTRADO = "135";

	/** Prazo de cancelamento: 24 horas da autorizacao (regra K04, rejeicao 220). */
	private static final long PRAZO_MS = 24L * 60 * 60 * 1000;

	/** Justificativa: TJust exige de 15 a 255 caracteres. */
	private static final int JUST_MIN = 15;
	private static final int JUST_MAX = 255;

	private int p_LBR_MDFe_ID = 0;
	private String p_Justificativa = null;

	@Override
	protected void prepare()
	{
		for (ProcessInfoParameter para : getParameter())
		{
			String nome = para.getParameterName();

			if (para.getParameter() == null)
				continue;
			else if ("LBR_MDFe_ID".equals(nome))
				p_LBR_MDFe_ID = para.getParameterAsInt();
			else if ("LBR_Justification".equals(nome))
				p_Justificativa = para.getParameterAsString();
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

		String justificativa = validar(mdfe);

		// 1. o evento em si
		X_LBR_MDFeEvento evento = new X_LBR_MDFeEvento(getCtx(), 0, get_TrxName());
		evento.setAD_Org_ID(mdfe.getAD_Org_ID());
		evento.setLBR_MDFe_ID(mdfe.getLBR_MDFe_ID());
		evento.setLBR_EventType(X_LBR_MDFeEvento.LBR_EVENTTYPE_Cancelamento);
		evento.setLBR_NSeqEvento(1);
		evento.setLBR_DateEvent(new Timestamp(System.currentTimeMillis()));
		evento.setLBR_Justification(justificativa);
		evento.saveEx();

		// 2. XML, assinatura na tag infEvento e validacao contra o schema
		String xml = new MDFeEventoXMLGenerator(mdfe, evento).gerar();

		MOrgInfo orgInfo = MOrgInfo.get(getCtx(), mdfe.getAD_Org_ID(), get_TrxName());
		String assinado = AssinaturaDigital
				.Assinar(new StringBuilder(xml), orgInfo, AssinaturaDigital.EVENTO_MDFE)
				.toString();

		MDFeEventoXMLGenerator.validarAssinado(assinado);
		gravarXml(mdfe, evento, X_LBR_MDFeXML.LBR_XMLTYPE_EventoEnviado, assinado);

		// 3. envio
		boolean homologacao = X_LBR_MDFe.LBR_TPAMB_Homologacao.equals(mdfe.getLBR_tpAmb());
		// Fecha a transacao antes de falar com a SEFAZ.
		//
		// Ate aqui gravamos o evento montado e assinado. O que vem depois - a resposta,
		// o protocolo, a situacao - depende de a SEFAZ responder. Se a gravacao
		// da resposta falhar com a transacao ainda aberta, o rollback leva junto
		// tudo o que ja estava decidido, e o evento voltaria como duplicidade (rejeicao 631) na segunda tentativa.
		//
		// Com isto gravado, o caminho de recuperacao e o que o manual manda:
		// "Consultar na SEFAZ - quando a resposta se perdeu na rede e voce nao
		// sabe se autorizou".
		commitEx();

		String retorno;

		try
		{
			retorno = MDFeWebService.enviar(getCtx(), mdfe.getAD_Org_ID(),
					mdfe.getEnderecoEmitente().getC_Region_ID(), homologacao,
					MDFeWebService.Servico.RECEPCAO_EVENTO, assinado);
		}
		catch (Exception e)
		{
			// O evento fica gravado sem protocolo: a tentativa aconteceu, e o
			// reenvio usa o mesmo nSeqEvento - trocar geraria outro evento aos
			// olhos da SEFAZ.
			logger.log(Level.SEVERE, "Falha ao cancelar o MDF-e " + mdfe.getLBR_MDFeChave(), e);
			throw new AdempiereException("Falha na comunicacao com a SEFAZ: " + e.getMessage(), e);
		}

		gravarXml(mdfe, evento, X_LBR_MDFeXML.LBR_XMLTYPE_RetornoDoEvento, retorno);

		// 4. resultado
		MDFeRetorno ret = MDFeRetorno.parse(retorno);

		evento.setLBR_cStat(ret.getCStat());
		evento.setLBR_xMotivo(ret.getXMotivo());

		if (!CSTAT_REGISTRADO.equals(ret.getCStat()))
		{
			evento.saveEx();

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

			throw new AdempiereException("Cancelamento recusado pela SEFAZ: "
					+ ret.getCStat() + " - " + ret.getXMotivo());
		}

		evento.setLBR_Protocol(ret.getNProt());
		evento.setLBR_DateProtocol(ret.getDhRecbto() != null
				? ret.getDhRecbto() : new Timestamp(System.currentTimeMillis()));
		evento.setProcessed(true);
		evento.saveEx();

		mdfe.setLBR_MDFeStatus(X_LBR_MDFe.LBR_MDFESTATUS_Cancelado);
		mdfe.saveEx();

		return "MDF-e cancelado. Protocolo do evento " + ret.getNProt();
	}

	/**
	 * As condicoes que a SEFAZ cobra, cobradas antes de gastar a viagem.
	 *
	 * @return a justificativa ja limpa
	 */
	private String validar(MLBRMDFe mdfe)
	{
		mdfe.exigirNaoExcluido();

		if (!mdfe.isAutorizado())
			throw new AdempiereException("So um MDF-e autorizado pode ser cancelado."
					+ " Este esta em " + mdfe.getLBR_MDFeStatus() + ".");

		// K06, rejeicao 609
		if (mdfe.isEncerrado())
			throw new AdempiereException("MDF-e ja encerrado nao pode ser cancelado (rejeicao 609)");

		// K03, rejeicao 218
		if (X_LBR_MDFe.LBR_MDFESTATUS_Cancelado.equals(mdfe.getLBR_MDFeStatus()))
			throw new AdempiereException("Este MDF-e ja esta cancelado");

		if (mdfe.getLBR_Protocol() == null || mdfe.getLBR_Protocol().trim().isEmpty())
			throw new AdempiereException("MDF-e sem protocolo de autorizacao:"
					+ " o cancelamento precisa informar o protocolo que esta sendo desfeito");

		// K04, rejeicao 220
		if (mdfe.getLBR_DateProtocol() != null
				&& System.currentTimeMillis() - mdfe.getLBR_DateProtocol().getTime() > PRAZO_MS)
			throw new AdempiereException("MDF-e autorizado ha mais de 24 horas nao pode ser"
					+ " cancelado (rejeicao 220). Fora do prazo, o caminho e o encerramento.");

		// K01, rejeicao 636: o cancelamento admite um unico evento, sequencial 1
		int jaHouve = new Query(getCtx(), X_LBR_MDFeEvento.Table_Name,
				"LBR_MDFe_ID=? AND LBR_EventType=? AND Processed='Y'", get_TrxName())
				.setParameters(mdfe.getLBR_MDFe_ID(), X_LBR_MDFeEvento.LBR_EVENTTYPE_Cancelamento)
				.count();

		if (jaHouve > 0)
			throw new AdempiereException("Este MDF-e ja tem um cancelamento registrado");

		String just = (p_Justificativa == null) ? "" : p_Justificativa.trim();

		if (just.length() < JUST_MIN)
			throw new AdempiereException("A justificativa do cancelamento precisa de pelo menos "
					+ JUST_MIN + " caracteres; tem " + just.length() + ".");

		return (just.length() > JUST_MAX) ? just.substring(0, JUST_MAX) : just;
	}

	private void gravarXml(MLBRMDFe mdfe, X_LBR_MDFeEvento evento, String tipo, String conteudo)
	{
		X_LBR_MDFeXML x = new X_LBR_MDFeXML(getCtx(), 0, get_TrxName());
		x.setAD_Org_ID(mdfe.getAD_Org_ID());
		x.setLBR_MDFe_ID(mdfe.getLBR_MDFe_ID());
		x.setLBR_MDFeEvento_ID(evento.getLBR_MDFeEvento_ID());
		x.setLBR_XMLType(tipo);
		x.setLBR_XMLContent(conteudo);
		x.saveEx();
	}
}
