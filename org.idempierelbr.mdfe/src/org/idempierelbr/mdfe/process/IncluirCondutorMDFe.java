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
import org.idempierelbr.mdfe.model.X_LBR_MDFeCondutor;
import org.idempierelbr.mdfe.model.X_LBR_MDFeEvento;
import org.idempierelbr.mdfe.model.X_LBR_MDFeXML;
import org.idempierelbr.mdfe.util.MDFeRetorno;
import org.idempierelbr.mdfe.util.MDFeUtil;
import org.idempierelbr.mdfe.util.MDFeWebService;

/**
 * Evento de inclusao de condutor (tpEvento 110114).
 *
 * <p>Troca de motorista no meio da viagem e rotina. Sem o evento, quem esta
 * dirigindo nao consta do manifesto autorizado, e a fiscalizacao de transito
 * confere exatamente isso contra a carteira do condutor parado na estrada.
 *
 * <p>Ao contrario do cancelamento e do encerramento, este evento admite ate 99
 * ocorrencias (regra K01): o sequencial e o proximo da fila, nao um fixo.
 */
public class IncluirCondutorMDFe extends SvrProcess
{
	private static final CLogger logger = CLogger.getCLogger(IncluirCondutorMDFe.class);

	private static final String CSTAT_REGISTRADO = "135";

	/** Teto de eventos de inclusao por manifesto (regra K01, rejeicao 636). */
	private static final int MAX_SEQ_EVENTO = 99;

	/** Condutores por MDF-e, teto do leiaute (veicTracao/condutor 1..10). */
	private static final int MAX_CONDUTORES = 10;

	private int p_LBR_MDFe_ID = 0;
	private String p_Nome = null;
	private String p_CPF = null;

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
			else if ("Name".equals(nome))
				p_Nome = para.getParameterAsString();
			else if ("LBR_CPF".equals(nome))
				p_CPF = para.getParameterAsString();
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

		String cpf = validar(mdfe);
		int seq = proximoSequencial(mdfe);

		X_LBR_MDFeEvento evento = new X_LBR_MDFeEvento(getCtx(), 0, get_TrxName());
		evento.setAD_Org_ID(mdfe.getAD_Org_ID());
		evento.setLBR_MDFe_ID(mdfe.getLBR_MDFe_ID());
		evento.setLBR_EventType(X_LBR_MDFeEvento.LBR_EVENTTYPE_InclusaoDeCondutor);
		evento.setLBR_NSeqEvento(seq);
		evento.setLBR_DateEvent(new Timestamp(System.currentTimeMillis()));
		evento.setName(p_Nome.trim());
		evento.setLBR_CPF(cpf);
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
			logger.log(Level.SEVERE, "Falha ao incluir condutor no MDF-e "
					+ mdfe.getLBR_MDFeChave(), e);
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

			throw new AdempiereException("Inclusao de condutor recusada pela SEFAZ: "
					+ ret.getCStat() + " - " + ret.getXMotivo());
		}

		evento.setLBR_Protocol(ret.getNProt());
		evento.setLBR_DateProtocol(ret.getDhRecbto() != null
				? ret.getDhRecbto() : new Timestamp(System.currentTimeMillis()));
		evento.setProcessed(true);
		evento.saveEx();

		// O condutor passa a fazer parte do manifesto: sem isso, a proxima
		// impressao do DAMDFE sairia sem quem esta de fato dirigindo.
		//
		// Falha aqui NAO derruba o processo. A SEFAZ ja registrou o evento, e um
		// erro depois disso faria a transacao voltar atras apagando o nosso
		// registro de um evento que existe do lado do fisco - o pior dos dois
		// estados possiveis. Melhor a copia local faltar, e o operador saber.
		String aviso = "";

		try
		{
			X_LBR_MDFeCondutor cond = new X_LBR_MDFeCondutor(getCtx(), 0, get_TrxName());
			cond.setAD_Org_ID(mdfe.getAD_Org_ID());
			cond.setLBR_MDFe_ID(mdfe.getLBR_MDFe_ID());
			cond.setLine((contarCondutores(mdfe) + 1) * 10);
			cond.setName(p_Nome.trim());
			cond.setLBR_CPF(cpf);
			cond.saveEx();
		}
		catch (Exception e)
		{
			logger.log(Level.SEVERE, "Evento aceito, mas a copia local do condutor falhou", e);
			aviso = "\nATENCAO: o evento foi aceito pela SEFAZ, mas o condutor nao foi gravado"
					+ " na lista local (" + e.getLocalizedMessage() + ")."
					+ " Acrescente na aba Rodoviario para o DAMDFE sair correto.";
		}

		return "Condutor " + p_Nome.trim() + " incluido. Protocolo do evento "
				+ ret.getNProt() + aviso;
	}

	/** Regras do capitulo 6.3.1 do MOC, cobradas antes de transmitir. */
	private String validar(MLBRMDFe mdfe)
	{
		mdfe.exigirNaoExcluido();

		if (!mdfe.isAutorizado())
			throw new AdempiereException("So um MDF-e autorizado aceita inclusao de condutor."
					+ " Este esta em " + mdfe.getLBR_MDFeStatus() + ".");

		// K03, rejeicao 218
		if (X_LBR_MDFe.LBR_MDFESTATUS_Cancelado.equals(mdfe.getLBR_MDFeStatus()))
			throw new AdempiereException("MDF-e cancelado nao aceita inclusao de condutor"
					+ " (rejeicao 218)");

		// K04, rejeicao 609
		if (mdfe.isEncerrado())
			throw new AdempiereException("MDF-e encerrado nao aceita inclusao de condutor"
					+ " (rejeicao 609). A viagem ja terminou.");

		if (p_Nome == null || p_Nome.trim().length() < 2)
			throw new AdempiereException("Informe o nome do condutor (minimo 2 caracteres)");

		String cpf = MDFeUtil.soDigitos(p_CPF);

		if (cpf.length() != 11)
			throw new AdempiereException("O CPF do condutor deve ter 11 digitos");

		if (contarCondutores(mdfe) >= MAX_CONDUTORES)
			throw new AdempiereException("O MDF-e aceita no maximo " + MAX_CONDUTORES
					+ " condutores");

		return cpf;
	}

	/**
	 * Proximo sequencial deste tipo de evento.
	 *
	 * <p>Diferente do cancelamento e do encerramento, que so admitem o
	 * sequencial 1: aqui cada inclusao e um evento novo na fila.
	 */
	private int proximoSequencial(MLBRMDFe mdfe)
	{
		int usados = new Query(getCtx(), X_LBR_MDFeEvento.Table_Name,
				"LBR_MDFe_ID=? AND LBR_EventType=? AND Processed='Y'", get_TrxName())
				.setParameters(mdfe.getLBR_MDFe_ID(),
						X_LBR_MDFeEvento.LBR_EVENTTYPE_InclusaoDeCondutor)
				.count();

		if (usados >= MAX_SEQ_EVENTO)
			throw new AdempiereException("Este MDF-e ja teve " + MAX_SEQ_EVENTO
					+ " inclusoes de condutor, que e o teto (rejeicao 636)");

		return usados + 1;
	}

	private int contarCondutores(MLBRMDFe mdfe)
	{
		return new Query(getCtx(), X_LBR_MDFeCondutor.Table_Name, "LBR_MDFe_ID=?", get_TrxName())
				.setParameters(mdfe.getLBR_MDFe_ID())
				.setOnlyActiveRecords(true)
				.count();
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
