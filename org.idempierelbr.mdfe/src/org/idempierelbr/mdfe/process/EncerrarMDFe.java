package org.idempierelbr.mdfe.process;

import java.sql.Timestamp;
import java.util.Calendar;
import java.util.logging.Level;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.MOrgInfo;
import org.compiere.model.Query;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.idempierelbr.nfe.util.AssinaturaDigital;
import org.idempierelbr.mdfe.base.MDFeEventoXMLGenerator;
import org.idempierelbr.mdfe.model.MLBRMDFe;
import org.idempierelbr.mdfe.model.X_LBR_MDFe;
import org.idempierelbr.mdfe.model.X_LBR_MDFeEvento;
import org.idempierelbr.mdfe.model.X_LBR_MDFeXML;
import org.idempierelbr.mdfe.util.MDFeRetorno;
import org.idempierelbr.mdfe.util.MDFeWebService;

/**
 * Evento de encerramento do MDF-e (tpEvento 110112).
 *
 * <p>Encerrar e declarar que a viagem acabou. Nao e formalidade: enquanto um
 * manifesto continuar em aberto para uma placa, a SEFAZ recusa a autorizacao de
 * novos manifestos para o mesmo veiculo (regra F86/F87 do Anexo I), e o
 * caminhao para. E tambem a unica saida depois das 24 horas em que o
 * cancelamento ainda era possivel.
 */
public class EncerrarMDFe extends SvrProcess
{
	private static final CLogger logger = CLogger.getCLogger(EncerrarMDFe.class);

	/** Evento registrado e vinculado ao MDF-e. */
	private static final String CSTAT_REGISTRADO = "135";

	private int p_LBR_MDFe_ID = 0;
	private int p_C_City_ID = 0;
	private Timestamp p_DataEncerramento = null;

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
			else if ("C_City_ID".equals(nome))
				p_C_City_ID = para.getParameterAsInt();
			else if ("LBR_DateEncerra".equals(nome))
				p_DataEncerramento = para.getParameterAsTimestamp();
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

		validar(mdfe);

		X_LBR_MDFeEvento evento = new X_LBR_MDFeEvento(getCtx(), 0, get_TrxName());
		evento.setAD_Org_ID(mdfe.getAD_Org_ID());
		evento.setLBR_MDFe_ID(mdfe.getLBR_MDFe_ID());
		evento.setLBR_EventType(X_LBR_MDFeEvento.LBR_EVENTTYPE_Encerramento);
		evento.setLBR_NSeqEvento(1);
		evento.setLBR_DateEvent(new Timestamp(System.currentTimeMillis()));
		evento.setLBR_DateEncerra(p_DataEncerramento);
		evento.setC_City_ID(p_C_City_ID);
		evento.setC_Region_ID(regiaoDoMunicipio());
		evento.saveEx();

		String xml = new MDFeEventoXMLGenerator(mdfe, evento).gerar();

		MOrgInfo orgInfo = MOrgInfo.get(getCtx(), mdfe.getAD_Org_ID(), get_TrxName());
		String assinado = AssinaturaDigital
				.Assinar(new StringBuilder(xml), orgInfo, AssinaturaDigital.EVENTO_MDFE)
				.toString();

		MDFeEventoXMLGenerator.validarAssinado(assinado);
		gravarXml(mdfe, evento, X_LBR_MDFeXML.LBR_XMLTYPE_EventoEnviado, assinado);

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
			logger.log(Level.SEVERE, "Falha ao encerrar o MDF-e " + mdfe.getLBR_MDFeChave(), e);
			throw new AdempiereException("Falha na comunicacao com a SEFAZ: " + e.getMessage(), e);
		}

		gravarXml(mdfe, evento, X_LBR_MDFeXML.LBR_XMLTYPE_RetornoDoEvento, retorno);

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

			throw new AdempiereException("Encerramento recusado pela SEFAZ: "
					+ ret.getCStat() + " - " + ret.getXMotivo());
		}

		evento.setLBR_Protocol(ret.getNProt());
		evento.setLBR_DateProtocol(ret.getDhRecbto() != null
				? ret.getDhRecbto() : new Timestamp(System.currentTimeMillis()));
		evento.setProcessed(true);
		evento.saveEx();

		mdfe.setLBR_MDFeStatus(X_LBR_MDFe.LBR_MDFESTATUS_Encerrado);
		mdfe.saveEx();

		return "MDF-e encerrado. Protocolo do evento " + ret.getNProt();
	}

	/** As condicoes do capitulo 6.2.1 do MOC, cobradas antes de transmitir. */
	private void validar(MLBRMDFe mdfe)
	{
		mdfe.exigirNaoExcluido();

		if (!mdfe.isAutorizado())
			throw new AdempiereException("So um MDF-e autorizado pode ser encerrado."
					+ " Este esta em " + mdfe.getLBR_MDFeStatus() + ".");

		// K06, rejeicao 218
		if (X_LBR_MDFe.LBR_MDFESTATUS_Cancelado.equals(mdfe.getLBR_MDFeStatus()))
			throw new AdempiereException("MDF-e cancelado nao pode ser encerrado (rejeicao 218)");

		// K09, rejeicao 609
		if (mdfe.isEncerrado())
			throw new AdempiereException("Este MDF-e ja esta encerrado (rejeicao 609)");

		// K08, rejeicao 222: o protocolo vai no evento e tem que ser o do MDF-e
		if (mdfe.getLBR_Protocol() == null || mdfe.getLBR_Protocol().trim().isEmpty())
			throw new AdempiereException("MDF-e sem protocolo de autorizacao");

		if (p_C_City_ID <= 0)
			throw new AdempiereException("Informe o municipio de encerramento");

		if (p_DataEncerramento == null)
			throw new AdempiereException("Informe a data de encerramento");

		// K07, rejeicao 615
		if (mdfe.getLBR_DateProtocol() != null
				&& diaDe(p_DataEncerramento) < diaDe(mdfe.getLBR_DateProtocol()))
			throw new AdempiereException("A data de encerramento nao pode ser anterior a data de"
					+ " autorizacao do MDF-e (rejeicao 615)");

		// K01, rejeicao 636: o encerramento admite um unico evento
		int jaHouve = new Query(getCtx(), X_LBR_MDFeEvento.Table_Name,
				"LBR_MDFe_ID=? AND LBR_EventType=? AND Processed='Y'", get_TrxName())
				.setParameters(mdfe.getLBR_MDFe_ID(), X_LBR_MDFeEvento.LBR_EVENTTYPE_Encerramento)
				.count();

		if (jaHouve > 0)
			throw new AdempiereException("Este MDF-e ja tem um encerramento registrado");

		// K02 e K03, rejeicoes 714 e 614: o municipio precisa existir com codigo
		// IBGE, e a UF sai dele proprio, entao nao ha como divergir.
		String cMun = DB.getSQLValueString(get_TrxName(),
				"SELECT LBR_CityCode FROM C_City WHERE C_City_ID=?", p_C_City_ID);

		if (cMun == null || cMun.trim().length() != 7)
			throw new AdempiereException("O municipio de encerramento esta sem codigo IBGE"
					+ " (C_City.LBR_CityCode) - rejeicao 714");
	}

	/** Data reduzida ao dia, para comparar sem a hora atrapalhar. */
	private static long diaDe(Timestamp t)
	{
		Calendar c = Calendar.getInstance();
		c.setTimeInMillis(t.getTime());
		c.set(Calendar.HOUR_OF_DAY, 0);
		c.set(Calendar.MINUTE, 0);
		c.set(Calendar.SECOND, 0);
		c.set(Calendar.MILLISECOND, 0);
		return c.getTimeInMillis();
	}

	private int regiaoDoMunicipio()
	{
		return DB.getSQLValue(get_TrxName(),
				"SELECT C_Region_ID FROM C_City WHERE C_City_ID=?", p_C_City_ID);
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
