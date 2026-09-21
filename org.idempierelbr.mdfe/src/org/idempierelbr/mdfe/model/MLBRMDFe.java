package org.idempierelbr.mdfe.model;

import java.io.File;
import java.math.BigDecimal;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.Properties;
import java.util.logging.Level;

import org.adempiere.exceptions.AdempiereException;

import org.compiere.model.MBPartner;
import org.compiere.model.MDocType;
import org.compiere.model.MLocation;
import org.compiere.model.MOrg;
import org.compiere.model.MOrgInfo;
import org.compiere.model.ModelValidationEngine;
import org.compiere.model.ModelValidator;
import org.compiere.process.DocAction;
import org.compiere.process.DocOptions;
import org.compiere.process.DocumentEngine;
import org.compiere.process.ProcessInfo;
import org.compiere.process.ServerProcessCtl;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Trx;
import org.idempierelbr.base.util.BPartnerUtil;
import org.idempierelbr.mdfe.damdfe.DAMDFEImpressao;
import org.idempierelbr.mdfe.util.MDFeUtil;

import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperPrint;

/**
 * Manifesto Eletronico de Documentos Fiscais (MDF-e, modelo 58).
 *
 * <p>Segue o mesmo desenho da NF-e do LBR: os dados do emitente nao ficam
 * gravados no manifesto, sao lidos da organizacao na hora de montar a chave e o
 * XML. Assim uma mudanca de endereco ou de inscricao nao exige tocar nos
 * registros ja emitidos.
 */
public class MLBRMDFe extends X_LBR_MDFe implements DocAction, DocOptions
{
	private static final long serialVersionUID = 20260828L;

	public MLBRMDFe(Properties ctx, int LBR_MDFe_ID, String trxName)
	{
		super(ctx, LBR_MDFe_ID, trxName);
	}

	public MLBRMDFe(Properties ctx, String LBR_MDFe_UU, String trxName)
	{
		super(ctx, LBR_MDFe_UU, trxName);
	}

	public MLBRMDFe(Properties ctx, ResultSet rs, String trxName)
	{
		super(ctx, rs, trxName);
	}

	/**
	 * Parceiro de negocio vinculado a organizacao emitente. E dele que saem o
	 * CNPJ, a razao social e a inscricao estadual do grupo {@code emit}.
	 */
	public MBPartner getEmitente()
	{
		MOrg org = new MOrg(getCtx(), getAD_Org_ID(), get_TrxName());
		int bpId = org.getLinkedC_BPartner_ID(get_TrxName());

		if (bpId < 1)
			throw new AdempiereException("A organizacao " + org.getName()
					+ " nao tem parceiro de negocio vinculado - sem ele nao da para emitir MDF-e");

		return new MBPartner(getCtx(), bpId, get_TrxName());
	}

	/** Endereco da organizacao emitente (grupo {@code enderEmit}). */
	public MLocation getEnderecoEmitente()
	{
		MOrgInfo orgInfo = MOrgInfo.get(getCtx(), getAD_Org_ID(), get_TrxName());

		if (orgInfo == null || orgInfo.getC_Location_ID() < 1)
			throw new AdempiereException("A organizacao emitente nao tem endereco cadastrado");

		return new MLocation(getCtx(), orgInfo.getC_Location_ID(), get_TrxName());
	}

	/** CNPJ do emitente sem mascara. */
	public String getEmitenteCNPJ()
	{
		String cnpj = getEmitente().get_ValueAsString("LBR_CNPJ");

		if (cnpj == null || cnpj.trim().isEmpty())
			throw new AdempiereException("O parceiro vinculado a organizacao emitente esta sem CNPJ");

		return cnpj.replaceAll("[^A-Za-z0-9]", "");
	}

	/** Codigo IBGE da UF do emitente - as duas primeiras posicoes da chave. */
	public String getEmitenteCodigoUF()
	{
		String cUF = BPartnerUtil.getRegionCode(getEnderecoEmitente());

		if (cUF == null || cUF.trim().isEmpty())
			throw new AdempiereException("A UF do emitente esta sem codigo IBGE (C_Region.LBR_RegionCode)");

		return cUF;
	}

	/**
	 * Calcula e grava a chave de acesso, o codigo numerico e o digito.
	 *
	 * <p>So pode rodar depois que numero, serie e data de emissao estiverem
	 * definidos: os tres compoem a chave. Se a chave ja existir, nao recalcula -
	 * reemitir com chave diferente criaria um documento novo aos olhos da SEFAZ.
	 */
	public void gerarChaveAcesso()
	{
		if (getLBR_MDFeChave() != null && !getLBR_MDFeChave().trim().isEmpty())
			return;

		if (getDocumentNo() == null || getDocumentNo().trim().isEmpty())
			throw new AdempiereException("Defina o numero do MDF-e antes de gerar a chave de acesso");

		if (getDateDoc() == null)
			setDateDoc(new Timestamp(System.currentTimeMillis()));

		String cMDF = MDFeUtil.gerarCodigoNumerico();
		String chaveSemDV = MDFeUtil.montarChaveSemDV(getEmitenteCodigoUF(), getDateDoc(),
				getEmitenteCNPJ(), getLBR_Serie(), getDocumentNo(), getLBR_tpEmis(), cMDF);
		int dv = MDFeUtil.calcularDV(chaveSemDV);

		setLBR_cMDF(cMDF);
		setLBR_cDV(String.valueOf(dv));
		setLBR_MDFeChave(chaveSemDV + dv);
	}

	/**
	 * Marcador de DocumentNo enquanto o manifesto nao foi transmitido.
	 *
	 * <p>Precisa ser nao numerico, para ficar de fora do MAX do
	 * {@link #getProximoNumero()}, e nao pode comecar com '&lt;' nem terminar
	 * com '&gt;' - o PO trata esse formato como se fosse vazio e preenche por
	 * cima. Cabe nos 9 caracteres da coluna.
	 */
	public static final String RASCUNHO = "RASCUNHO";

	/** {@code true} se o manifesto ainda nao recebeu numero de verdade. */
	public boolean isSemNumero()
	{
		String n = getDocumentNo();

		return n == null || n.trim().isEmpty() || !n.trim().matches("[0-9]+");
	}

	/**
	 * Proximo numero de MDF-e para a organizacao e serie deste manifesto.
	 *
	 * <p>A numeracao e por emitente e serie (chave natural do MDF-e, MOC 3.00b
	 * secao 2.1.4), nao por tenant - por isso nao usa AD_Sequence de documento.
	 *
	 * <p>MAX+1 sozinho e uma corrida: duas transmissoes simultaneas na mesma
	 * serie leem o mesmo maximo e gravam o mesmo numero, cada uma com sua chave
	 * de acesso. Duas defesas, nesta ordem:
	 *
	 * <ol>
	 *   <li>o lock consultivo serializa a numeracao por (tenant, org, serie).
	 *       E de transacao: cai no commit. Em TransmitirMDFe o commit vem antes
	 *       da chamada a SEFAZ, entao o lock cobre so o trecho local - numerar,
	 *       montar o XML e assinar - e nao a ida na rede;</li>
	 *   <li>o indice unico {@code kr_mdfe_natural_idx} e a garantia final,
	 *       inclusive para quem gravar por fora deste metodo.</li>
	 * </ol>
	 *
	 * <p>O lock so protege de verdade dentro de uma transacao. Chamado sem uma
	 * ({@code get_TrxName()} nulo), o Postgres o libera no fim da propria
	 * consulta e sobra o indice - por isso ele existe.
	 */
	public int getProximoNumero()
	{
		// Statement proprio, antes da consulta. Posto junto, no FROM da consulta
		// do MAX, o lock so seria tomado se o scan produzisse alguma linha - e
		// serie vazia, que e a primeira emissao, nao produz nenhuma. A corrida
		// ficava aberta exatamente no caso mais provavel de duas pessoas
		// emitirem ao mesmo tempo.
		String escopo = getAD_Client_ID() + "/" + getAD_Org_ID() + "/" + getLBR_Serie();
		DB.getSQLValueEx(get_TrxName(),
				"SELECT 1 FROM pg_advisory_xact_lock(hashtext(?)::bigint)", escopo);

		String sql = "SELECT COALESCE(MAX(CAST(DocumentNo AS NUMERIC)), 0) + 1 "
				+ "FROM LBR_MDFe WHERE AD_Client_ID = ? AND AD_Org_ID = ? AND LBR_Serie = ? "
				+ "AND DocumentNo ~ '^[0-9]+$'";

		int proximo = DB.getSQLValueEx(get_TrxName(), sql,
				getAD_Client_ID(), getAD_Org_ID(), getLBR_Serie());
		return proximo < 1 ? 1 : proximo;
	}

	/** {@code true} se o manifesto ja tem autorizacao de uso da SEFAZ (cStat 100). */
	public boolean isAutorizado()
	{
		return LBR_MDFESTATUS_Autorizado.equals(getLBR_MDFeStatus());
	}

	/** {@code true} se o manifesto ja foi encerrado (evento 110112). */
	public boolean isEncerrado()
	{
		return LBR_MDFESTATUS_Encerrado.equals(getLBR_MDFeStatus());
	}

	/**
	 * {@code true} se o manifesto foi excluido.
	 *
	 * <p>A exclusao no formulario e logica ({@code IsActive='N'}): o registro
	 * continua no banco - ele e rastro de uma tentativa junto ao fisco - e
	 * continua aparecendo no Localizar marcado como (EXCLUIDO). Como o status
	 * nao muda, so este sinalizador distingue um rascunho vivo de um excluido.
	 */
	public boolean isExcluido()
	{
		return !isActive();
	}

	/**
	 * Toma o manifesto para si ate o fim da transacao e recarrega o estado.
	 *
	 * <p>Sem isto, dois operadores clicando Transmitir ao mesmo tempo passavam
	 * juntos pelas guardas: os dois viam "Em Digitacao" e sem chave, cada um
	 * gerava numero e chave proprios, e os dois documentos eram autorizados pela
	 * SEFAZ. O registro guarda um protocolo so, entao o outro MDF-e ficava
	 * autorizado no fisco e invisivel no sistema - e so aparece na conferencia
	 * do DF-e, ja com prazo de cancelamento correndo.
	 *
	 * <p>Duas partes, e as duas importam: o {@code FOR UPDATE} segura o segundo
	 * ate o primeiro terminar, e o {@code load} depois dele traz o estado novo.
	 * Sem recarregar, o segundo acordaria com o objeto que leu antes de esperar
	 * e tomaria a decisao com base no estado velho.
	 *
	 * <p>Quem chegar depois encontra o manifesto ja assinado, com chave, e segue
	 * pelo caminho de reenvio - mesma chave, que a SEFAZ recusa por duplicidade
	 * em vez de autorizar um documento novo.
	 *
	 * @throws AdempiereException se chamado fora de uma transacao, onde o lock
	 *         nao teria efeito nenhum
	 */
	public void travarERecarregar()
	{
		if (get_TrxName() == null)
			throw new AdempiereException("Uso indevido: travarERecarregar() precisa de uma"
					+ " transacao aberta, senao o lock cai antes de servir para algo");

		DB.getSQLValueEx(get_TrxName(),
				"SELECT LBR_MDFe_ID FROM LBR_MDFe WHERE LBR_MDFe_ID = ? FOR UPDATE", get_ID());

		load(get_TrxName());
	}

	/**
	 * Barra os caminhos que gravam na SEFAZ quando o manifesto esta excluido.
	 *
	 * <p>Mensagem propria porque a situacao ({@code LBR_MDFeStatus}) de um
	 * excluido continua sendo uma situacao valida - dizer "Em Digitacao nao pode
	 * ser transmitido" nao explicaria nada a quem esta na tela.
	 *
	 * @throws AdempiereException se o manifesto foi excluido
	 */
	public void exigirNaoExcluido()
	{
		if (isExcluido())
			throw new AdempiereException("MDF-e " + getDocumentNo() + " esta excluido."
					+ " Reative o registro na janela MDF-e antes de transmitir ou de"
					+ " registrar eventos.");
	}

	/**
	 * {@code true} enquanto o manifesto ainda pode ser editado. Depois de
	 * assinado a chave e o conteudo estao amarrados - qualquer alteracao invalida
	 * a assinatura.
	 */
	public boolean isEditavel()
	{
		// A exclusao e logica e nao mexe no status: sem exigir isActive(), um
		// manifesto excluido segue em EmDigitacao e passa por todas as guardas
		// de transmissao e de edicao, que e por onde elas todas convergem.
		return isActive()
				&& (LBR_MDFESTATUS_EmDigitacao.equals(getLBR_MDFeStatus())
						|| LBR_MDFESTATUS_Rejeitado.equals(getLBR_MDFeStatus()));
	}

	/**
	 * {@code true} quando o manifesto ainda pode ser enviado a SEFAZ.
	 *
	 * <p>Mais largo que {@link #isEditavel()} de proposito: Assinado tambem
	 * entra. Um envio que falha antes de a SEFAZ responder - queda de rede, erro
	 * do gateway - deixa o manifesto numerado, assinado e comitado, e o caminho
	 * de recuperacao e reenviar com a MESMA chave (gerar outra criaria um
	 * documento diferente aos olhos da SEFAZ).
	 *
	 * <p>Sem esta distincao o documento ficava preso: nao era mais editavel,
	 * porque assinar amarra o conteudo a chave, e tambem nao era transmissivel,
	 * porque a guarda da transmissao olhava a condicao da edicao.
	 */
	public boolean isTransmissivel()
	{
		return isActive()
				&& (isEditavel() || LBR_MDFESTATUS_Assinado.equals(getLBR_MDFeStatus()));
	}

	@Override
	protected boolean beforeSave(boolean newRecord)
	{
		if (getLBR_tpAmb() == null || getLBR_tpAmb().trim().isEmpty())
			setLBR_tpAmb(LBR_TPAMB_Homologacao);

		if (getLBR_Serie() == null || getLBR_Serie().trim().isEmpty())
			setLBR_Serie("1");

		if (getDateDoc() == null)
			setDateDoc(new Timestamp(System.currentTimeMillis()));

		if (getAD_Org_ID() <= 0)
			setAD_Org_ID(Env.getAD_Org_ID(getCtx()));

		// Rascunho nao consome numero de manifesto.
		//
		// Sem isto, o PO.saveNew ve DocumentNo vazio e preenche a partir de um
		// AD_Sequence que o iDempiere cria sozinho por tabela - um contador
		// unico do cliente, que ignora organizacao e serie. Como o nMDF e
		// sequencial por CNPJ emitente e por serie, duas organizacoes emitindo
		// dividiriam o mesmo contador e as duas ficariam com a sequencia
		// furada. Pior: cada "Novo + Gravar" queimava um numero, e o rascunho
		// descartado depois deixava buraco na numeracao.
		//
		// Com um marcador nao numerico o PO nao mexe (ele so preenche quando o
		// campo esta vazio), e o numero de verdade sai uma vez so, na
		// transmissao, pelo getProximoNumero() - que filtra por organizacao,
		// serie e DocumentNo numerico, ignorando os rascunhos.
		if (newRecord && (getDocumentNo() == null || getDocumentNo().trim().isEmpty()))
			setDocumentNo(RASCUNHO);

		sincronizarDocStatus();

		return true;
	}

	// ------------------------------------------------------------------
	// Documento do iDempiere
	//
	// O ciclo de vida de verdade e o da SEFAZ, e ele mora em LBR_MDFeStatus:
	// so a SEFAZ decide se um manifesto esta autorizado, encerrado ou
	// cancelado. DocStatus e a leitura desse mesmo estado na linguagem que o
	// DocumentEngine, a barra de documento e os relatorios entendem.
	//
	// Por isso ha um unico dono: LBR_MDFeStatus e escrito pelos processos que
	// falam com a SEFAZ, e DocStatus e derivado dele em toda gravacao. Manter
	// as duas colunas como maquinas de estado independentes seria a forma certa
	// de fazer as duas divergirem. E a mesma divisao que o LBR ja usa na Nota
	// Fiscal, que tem DocStatus e LBR_NFeStatus lado a lado.
	// ------------------------------------------------------------------

	/** C_Currency_ID do real, o mesmo valor que o LBR usa nos demais documentos. */
	public static final int CURRENCY_BRL = 297;

	private String m_processMsg = null;

	/**
	 * Traduz a situacao na SEFAZ para a situacao do documento.
	 *
	 * <p>Enviado vira "aguardando confirmacao" e nao "em processamento": o
	 * manifesto ja saiu daqui e quem tem a palavra e a SEFAZ.
	 */
	public static String docStatusDe(String mdfeStatus)
	{
		if (mdfeStatus == null)
			return DocAction.STATUS_Drafted;

		switch (mdfeStatus)
		{
			case LBR_MDFESTATUS_EmDigitacao: return DocAction.STATUS_Drafted;
			case LBR_MDFESTATUS_Rejeitado:   return DocAction.STATUS_Invalid;
			case LBR_MDFESTATUS_Assinado:    return DocAction.STATUS_InProgress;
			case LBR_MDFESTATUS_Enviado:     return DocAction.STATUS_WaitingConfirmation;
			case LBR_MDFESTATUS_Autorizado:  return DocAction.STATUS_Completed;
			case LBR_MDFESTATUS_Encerrado:   return DocAction.STATUS_Closed;
			case LBR_MDFESTATUS_Cancelado:   return DocAction.STATUS_Voided;
			default:                         return DocAction.STATUS_Drafted;
		}
	}

	/** Acao que faz sentido oferecer em seguida, dada a situacao atual. */
	private static String docActionDe(String docStatus)
	{
		if (DocAction.STATUS_Completed.equals(docStatus))
			return DocAction.ACTION_Close;

		if (DocAction.STATUS_Closed.equals(docStatus)
				|| DocAction.STATUS_Voided.equals(docStatus))
			return DocAction.ACTION_None;

		return DocAction.ACTION_Complete;
	}

	/**
	 * Alinha DocStatus, DocAction e Processed a situacao na SEFAZ.
	 *
	 * <p>Chamado no beforeSave para que os processos que ja existiam - e que so
	 * conhecem LBR_MDFeStatus - continuem funcionando sem alteracao e mesmo
	 * assim mantenham o documento coerente.
	 */
	private void sincronizarDocStatus()
	{
		String status = docStatusDe(getLBR_MDFeStatus());

		if (!status.equals(getDocStatus()))
			setDocStatus(status);

		String acao = docActionDe(status);

		if (getDocAction() == null || !getDocAction().equals(acao))
			setDocAction(acao);

		// Processed fecha a edicao no nivel do PO; ProcessedOn e preenchido
		// sozinho pelo PO quando este campo vai de N para Y.
		boolean processado = DocAction.STATUS_Completed.equals(status)
				|| DocAction.STATUS_Closed.equals(status)
				|| DocAction.STATUS_Voided.equals(status);

		if (processado != isProcessed())
			setProcessed(processado);
	}

	/**
	 * Tipo de documento do manifesto, buscado por DocBaseType quando ninguem
	 * informou. Evita obrigar quem cria o MDF-e pelo formulario a escolher um
	 * tipo que so tem uma opcao possivel.
	 */
	public int getC_DocTypeMDFe_ID()
	{
		if (getC_DocType_ID() > 0)
			return getC_DocType_ID();

		int id = DB.getSQLValueEx(get_TrxName(),
				"SELECT C_DocType_ID FROM C_DocType"
						+ " WHERE AD_Client_ID = ? AND DocBaseType = 'MDF' AND IsActive = 'Y'"
						+ " ORDER BY IsDefault DESC, C_DocType_ID",
				getAD_Client_ID());

		return id < 0 ? 0 : id;
	}

	@Override
	public boolean processIt(String action) throws Exception
	{
		m_processMsg = null;
		DocumentEngine engine = new DocumentEngine(this, getDocStatus());

		return engine.processIt(action, getDocAction());
	}

	@Override
	public boolean unlockIt()
	{
		if (log.isLoggable(Level.INFO)) log.info(toString());
		setProcessing(false);

		return true;
	}

	@Override
	public boolean invalidateIt()
	{
		if (log.isLoggable(Level.INFO)) log.info(toString());
		setDocAction(DOCACTION_Prepare);

		return true;
	}

	/**
	 * Confere o que a SEFAZ recusaria de cara.
	 *
	 * <p>Nao substitui a validacao pelo XSD, que roda na transmissao e e quem
	 * de fato conhece o layout. O que se ganha aqui e o erro em portugues antes
	 * da viagem ate a SEFAZ, e um relatorio com todas as faltas de uma vez em
	 * vez de uma por transmissao.
	 */
	@Override
	public String prepareIt()
	{
		if (log.isLoggable(Level.INFO)) log.info(toString());

		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,
				ModelValidator.TIMING_BEFORE_PREPARE);

		if (m_processMsg != null)
			return DocAction.STATUS_Invalid;

		StringBuilder faltas = new StringBuilder();

		if (getLBR_UFIni_ID() <= 0)
			faltas.append("\n- UF de inicio da viagem");

		if (getLBR_UFFim_ID() <= 0)
			faltas.append("\n- UF de fim da viagem");

		if (contarFilhos("LBR_MDFeMunCarrega") == 0)
			faltas.append("\n- ao menos um municipio de carregamento");

		if (contarFilhos("LBR_MDFeMunDescarga") == 0)
			faltas.append("\n- ao menos um municipio de descarregamento");

		if (contarDocumentos() == 0)
			faltas.append("\n- ao menos uma NF-e ou CT-e no manifesto");

		if (getLBR_Placa() == null || getLBR_Placa().trim().isEmpty())
			faltas.append("\n- placa do veiculo de tracao");

		if (contarFilhos("LBR_MDFeCondutor") == 0)
			faltas.append("\n- ao menos um condutor");

		if (getLBR_ValueCargo() == null || getLBR_ValueCargo().signum() == 0)
			faltas.append("\n- valor total da carga");

		if (getLBR_QtyCargo() == null || getLBR_QtyCargo().signum() == 0)
			faltas.append("\n- peso total da carga");

		if (faltas.length() > 0)
		{
			m_processMsg = "O MDF-e nao pode ser transmitido, falta:" + faltas;
			return DocAction.STATUS_Invalid;
		}

		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,
				ModelValidator.TIMING_AFTER_PREPARE);

		if (m_processMsg != null)
			return DocAction.STATUS_Invalid;

		if (getC_DocType_ID() <= 0)
			setC_DocType_ID(getC_DocTypeMDFe_ID());

		saveEx();

		return DocAction.STATUS_InProgress;
	}

	/** Quantos filhos ativos esta tabela tem apontando para o manifesto. */
	private int contarFilhos(String tabela)
	{
		return DB.getSQLValueEx(get_TrxName(),
				"SELECT COUNT(*) FROM " + tabela + " WHERE LBR_MDFe_ID = ? AND IsActive = 'Y'",
				getLBR_MDFe_ID());
	}

	/** Documentos do manifesto - eles penduram no municipio de descarga. */
	private int contarDocumentos()
	{
		return DB.getSQLValueEx(get_TrxName(),
				"SELECT COUNT(*) FROM LBR_MDFeDoc d"
						+ " JOIN LBR_MDFeMunDescarga m ON (m.LBR_MDFeMunDescarga_ID = d.LBR_MDFeMunDescarga_ID)"
						+ " WHERE m.LBR_MDFe_ID = ? AND d.IsActive = 'Y' AND m.IsActive = 'Y'",
				getLBR_MDFe_ID());
	}

	@Override
	public boolean approveIt()
	{
		return true;
	}

	@Override
	public boolean rejectIt()
	{
		return true;
	}

	/**
	 * Transmite o manifesto para a SEFAZ.
	 *
	 * <p>A transmissao continua inteira no processo Transmitir MDF-e - montar,
	 * assinar, validar, enviar e ler o retorno. Aqui so se dispara aquele
	 * processo, para nao existirem duas implementacoes do mesmo caminho que
	 * pudessem divergir. Quem conclui pela janela e quem clica Transmitir no
	 * formulario passam exatamente pelo mesmo codigo.
	 *
	 * <p>O resultado sai de LBR_MDFeStatus, nao do que este metodo achou que ia
	 * acontecer: a SEFAZ pode rejeitar, e nesse caso o documento fica invalido.
	 */
	@Override
	public String completeIt()
	{
		//	Apenas preparar
		if (DOCACTION_Prepare.equals(getDocAction()))
		{
			setProcessed(false);
			return DocAction.STATUS_InProgress;
		}

		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,
				ModelValidator.TIMING_BEFORE_COMPLETE);

		if (m_processMsg != null)
			return DocAction.STATUS_Invalid;

		if (isAutorizado() || isEncerrado())
		{
			m_processMsg = "Este MDF-e ja esta autorizado, protocolo " + getLBR_Protocol();
			return DocAction.STATUS_Invalid;
		}

		if (isExcluido())
		{
			m_processMsg = "MDF-e excluido nao pode ser transmitido - reative o registro";
			return DocAction.STATUS_Invalid;
		}

		if (!isTransmissivel())
		{
			m_processMsg = "MDF-e na situacao " + getLBR_MDFeStatus() + " nao pode ser transmitido";
			return DocAction.STATUS_Invalid;
		}

		try
		{
			transmitir();
		}
		catch (Exception e)
		{
			m_processMsg = "Falha ao transmitir: " + e.getMessage();
			log.log(Level.SEVERE, m_processMsg, e);

			return DocAction.STATUS_Invalid;
		}

		load(get_TrxName());

		if (!isAutorizado())
		{
			m_processMsg = "A SEFAZ nao autorizou o MDF-e: " + getLBR_cStat() + " " + getLBR_xMotivo();
			return DocAction.STATUS_Invalid;
		}

		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,
				ModelValidator.TIMING_AFTER_COMPLETE);

		if (m_processMsg != null)
			return DocAction.STATUS_Invalid;

		setProcessed(true);
		setDocAction(DOCACTION_Close);

		return DocAction.STATUS_Completed;
	}

	/** Dispara o processo Transmitir MDF-e sobre este registro. */
	private void transmitir()
	{
		int processId = DB.getSQLValueEx(get_TrxName(),
				"SELECT AD_Process_ID FROM AD_Process WHERE Value = ? AND IsActive = 'Y'",
				"LBR_MDFe_Transmitir");

		if (processId <= 0)
			throw new AdempiereException("Processo Transmitir MDF-e nao encontrado no dicionario");

		ProcessInfo pi = new ProcessInfo("Transmitir MDF-e", processId);
		pi.setAD_Client_ID(getAD_Client_ID());
		pi.setAD_User_ID(Env.getAD_User_ID(getCtx()));
		pi.setRecord_ID(getLBR_MDFe_ID());
		pi.setTable_ID(Table_ID);
		pi.setTransactionName(get_TrxName());

		// managedTrxForJavaProcess = false de proposito: a transmissao roda dentro
		// da transacao de quem concluiu o documento. Com true, o ServerProcessCtl
		// daria commit ou rollback nela por conta propria e levaria junto tudo o
		// que o DocumentEngine ainda nao tinha terminado de gravar.
		Trx trx = get_TrxName() == null ? null : Trx.get(get_TrxName(), false);

		ServerProcessCtl.process(pi, trx, false);

		if (pi.isError())
			throw new AdempiereException(pi.getSummary());
	}

	/**
	 * Cancelamento.
	 *
	 * <p>Um manifesto que ja esta na SEFAZ so sai de la por evento de
	 * cancelamento, que exige justificativa de no minimo 15 caracteres e so
	 * vale dentro de 24 horas da autorizacao. Nada disso cabe num botao sem
	 * pergunta, entao aqui nao se transmite evento nenhum: ou o cancelamento ja
	 * aconteceu e este metodo apenas reflete o fato, ou o manifesto nunca foi
	 * transmitido e pode ser descartado.
	 */
	@Override
	public boolean voidIt()
	{
		if (log.isLoggable(Level.INFO)) log.info(toString());

		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,
				ModelValidator.TIMING_BEFORE_VOID);

		if (m_processMsg != null)
			return false;

		if (isAutorizado())
		{
			m_processMsg = "Este MDF-e esta autorizado na SEFAZ. Use o processo Cancelar MDF-e,"
					+ " que pede a justificativa exigida pela legislacao.";
			return false;
		}

		if (isEncerrado())
		{
			m_processMsg = "MDF-e ja encerrado nao pode ser cancelado (rejeicao 609)";
			return false;
		}

		if (!LBR_MDFESTATUS_Cancelado.equals(getLBR_MDFeStatus()))
			setLBR_MDFeStatus(LBR_MDFESTATUS_Cancelado);

		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,
				ModelValidator.TIMING_AFTER_VOID);

		if (m_processMsg != null)
			return false;

		setProcessed(true);
		setDocAction(DOCACTION_None);

		return true;
	}

	/**
	 * Encerramento.
	 *
	 * <p>Mesma logica do cancelamento: o encerramento e um evento que precisa
	 * do municipio e da data em que a viagem terminou, e quem coleta isso e o
	 * processo Encerrar MDF-e. Fechar o documento aqui so e legitimo depois que
	 * a SEFAZ ja registrou o encerramento.
	 */
	@Override
	public boolean closeIt()
	{
		if (log.isLoggable(Level.INFO)) log.info(toString());

		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,
				ModelValidator.TIMING_BEFORE_CLOSE);

		if (m_processMsg != null)
			return false;

		if (isAutorizado())
		{
			m_processMsg = "Este MDF-e esta autorizado e a viagem ainda nao foi encerrada."
					+ " Use o processo Encerrar MDF-e, que pede o municipio e a data de"
					+ " encerramento.";
			return false;
		}

		setProcessed(true);
		setDocAction(DOCACTION_None);

		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,
				ModelValidator.TIMING_AFTER_CLOSE);

		if (m_processMsg != null)
			return false;

		return true;
	}

	/** O MDF-e nao gera lancamento contabil, entao nao ha o que estornar. */
	@Override
	public boolean reverseCorrectIt()
	{
		return false;
	}

	/** O MDF-e nao gera lancamento contabil, entao nao ha o que estornar. */
	@Override
	public boolean reverseAccrualIt()
	{
		return false;
	}

	/**
	 * Reabre o manifesto para edicao.
	 *
	 * <p>So enquanto ele nao existir na SEFAZ. Depois de autorizado a chave e o
	 * conteudo estao amarrados pela assinatura, e reabrir criaria um documento
	 * diferente do que a SEFAZ tem guardado.
	 */
	@Override
	public boolean reActivateIt()
	{
		if (log.isLoggable(Level.INFO)) log.info(toString());

		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,
				ModelValidator.TIMING_BEFORE_REACTIVATE);

		if (m_processMsg != null)
			return false;

		if (isAutorizado() || isEncerrado()
				|| LBR_MDFESTATUS_Cancelado.equals(getLBR_MDFeStatus()))
		{
			m_processMsg = "MDF-e registrado na SEFAZ nao pode ser reaberto";
			return false;
		}

		setLBR_MDFeStatus(LBR_MDFESTATUS_EmDigitacao);

		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,
				ModelValidator.TIMING_AFTER_REACTIVATE);

		if (m_processMsg != null)
			return false;

		setProcessed(false);
		setDocAction(DOCACTION_Complete);

		return true;
	}

	@Override
	public String getSummary()
	{
		StringBuilder sb = new StringBuilder();
		sb.append(getDocumentNo());

		if (getLBR_Serie() != null)
			sb.append("/").append(getLBR_Serie());

		sb.append(": ").append(getLBR_ValueCargo());

		if (getDescription() != null && getDescription().length() > 0)
			sb.append(" - ").append(getDescription());

		return sb.toString();
	}

	@Override
	public String getDocumentInfo()
	{
		MDocType dt = MDocType.get(getCtx(), getC_DocType_ID());

		return (dt != null && dt.get_ID() > 0 ? dt.getNameTrl() : "MDF-e") + " " + getDocumentNo();
	}

	/** DAMDFE em PDF, o mesmo que o formulario imprime. */
	@Override
	public File createPDF()
	{
		try
		{
			File temp = File.createTempFile(get_TableName() + get_ID() + "_", ".pdf");

			return createPDF(temp);
		}
		catch (Exception e)
		{
			log.severe("Nao foi possivel gerar o DAMDFE - " + e.getMessage());
		}

		return null;
	}

	public File createPDF(File file)
	{
		try
		{
			JasperPrint print = DAMDFEImpressao.gerar(this);

			if (print == null)
				return null;

			JasperExportManager.exportReportToPdfFile(print, file.getAbsolutePath());

			return file;
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "Nao foi possivel gerar o DAMDFE", e);
		}

		return null;
	}

	@Override
	public String getProcessMsg()
	{
		return m_processMsg;
	}

	@Override
	public int getDoc_User_ID()
	{
		return getCreatedBy();
	}

	@Override
	public int getC_Currency_ID()
	{
		return CURRENCY_BRL;
	}

	/** O valor que representa o documento e o valor da carga manifestada. */
	@Override
	public BigDecimal getApprovalAmt()
	{
		return getLBR_ValueCargo() == null ? Env.ZERO : getLBR_ValueCargo();
	}

	/**
	 * Acoes oferecidas na barra de documento.
	 *
	 * <p>Refaz a lista em vez de acrescentar a ela. Acrescentar duplicava:
	 * {@code DocumentEngine.getValidActions} ja oferece Completar, Preparar e
	 * Anular em DR/IP/IN, e a versao anterior somava Preparar e Completar por
	 * cima - o operador via "Completar" duas vezes no dialogo.
	 *
	 * <p>Refazer tambem permite <b>tirar</b> o que o padrao oferece e este
	 * documento nao aceita:
	 *
	 * <ul>
	 *   <li>Anular em Enviado: o padrao oferece, mas ali o lote esta na SEFAZ e
	 *       a resposta ainda nao chegou. Cancelar por conta propria deixaria o
	 *       registro como cancelado enquanto a SEFAZ talvez ja tenha
	 *       autorizado. O caminho e consultar, nao anular;</li>
	 *   <li>Anular em Autorizado: {@link #voidIt()} recusa e manda usar o
	 *       processo Cancelar MDF-e, que pede justificativa e transmite o
	 *       evento 110111. Oferecer aqui so leva a um erro.</li>
	 * </ul>
	 *
	 * <p>Fechar continua aparecendo em Autorizado, ainda que {@link #closeIt()}
	 * recuse: a mensagem dele aponta o processo Encerrar MDF-e, e uma opcao que
	 * orienta e melhor que nenhuma - com a lista vazia o dialogo nem abre
	 * (AbstractADWindowContent: "DocAction - No Options").
	 *
	 * <p>Desbloquear e preservado do que o padrao montou: e a unica saida de um
	 * documento que ficou travado em processamento.
	 */
	@Override
	public int customizeValidActions(String docStatus, Object processing, String orderType,
			String isSOTrx, int AD_Table_ID, String[] docAction, String[] options, int index)
	{
		//	O dialogo tambem chama isto para outras tabelas; mexer na lista
		//	alheia esconderia acoes de documentos que nao sao nossos.
		if (AD_Table_ID != get_Table_ID())
			return index;

		boolean travado = false;

		for (int i = 0; i < index; i++)
			if (DocumentEngine.ACTION_Unlock.equals(options[i]))
				travado = true;

		index = 0;

		if (travado)
			options[index++] = DocumentEngine.ACTION_Unlock;

		//	Em digitacao, assinado ou rejeitado: ainda nao saiu daqui
		if (DocumentEngine.STATUS_Drafted.equals(docStatus)
				|| DocumentEngine.STATUS_InProgress.equals(docStatus)
				|| DocumentEngine.STATUS_Invalid.equals(docStatus))
		{
			options[index++] = DocumentEngine.ACTION_Complete;
			options[index++] = DocumentEngine.ACTION_Prepare;
			options[index++] = DocumentEngine.ACTION_Void;
		}

		//	Enviado: esperando a SEFAZ responder
		else if (DocumentEngine.STATUS_WaitingConfirmation.equals(docStatus))
		{
			options[index++] = DocumentEngine.ACTION_Prepare;
		}

		//	Autorizado
		else if (DocumentEngine.STATUS_Completed.equals(docStatus))
		{
			options[index++] = DocumentEngine.ACTION_Close;
		}

		//	Encerrado e cancelado nao tem proximo passo: o que sobra sao os
		//	eventos, e cada um tem o seu botao.

		return index;
	}
}
