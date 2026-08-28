package org.idempierelbr.base.model;

import java.sql.ResultSet;
import java.sql.Timestamp;
import java.time.temporal.ChronoUnit;
import java.util.Properties;

import org.compiere.model.MSysConfig;
import org.compiere.model.Query;

/**
 * Ponto de leitura e controle de consumo do serviço de Distribuição de DF-e
 * (NFeDistribuicaoDFe), por organização e ambiente da SEFAZ.
 *
 * <p>A SEFAZ bloqueia o CNPJ consultante por 1 hora quando ele insiste na
 * distribuição depois de já ter recebido tudo o que havia — devolvendo
 * cStat=656 (Consumo Indevido). Os dois gatilhos do bloqueio são a resposta
 * cStat=137 (nenhum documento localizado) e a chegada ao fim da fila
 * (ultNSU = maxNSU). As consultas por NSU específico ou por chave de acesso
 * têm limite próprio, de {@value #MAX_QUERIES_PER_HOUR} por hora.
 *
 * <p>Esta tabela guarda o estado necessário para respeitar esses limites
 * localmente, antes de provocar o bloqueio: o instante da última chamada, o
 * último cStat, até quando a distribuição está impedida e quantas consultas
 * pontuais já foram feitas na hora corrente.
 *
 * @author Alan Lescano
 */
public class MLBRDFeControl extends X_LBR_DFeControl {
	private static final long serialVersionUID = 1L;

	/** Duração do bloqueio imposto pela SEFAZ após 137 ou fim da fila, em minutos */
	public static final int BLOCK_MINUTES = 60;

	/**
	 * Encurta a espera entre consultas à distribuição. Só mexa nisto sabendo do
	 * risco: consultar antes da hora é o que faz a SEFAZ bloquear o CNPJ por
	 * consumo indevido (cStat 656).
	 */
	public static final String SYSCONFIG_BLOCK_MINUTES = "LBR_DFE_BLOCK_MINUTES";

	/** Limite de consultas por NSU específico ou por chave de acesso, por hora */
	public static final int MAX_QUERIES_PER_HOUR = 20;

	/** NSU inicial, quando ainda não há ponto de leitura */
	public static final String FIRST_NSU = "000000000000000";

	/** Documento(s) localizado(s): a espera veio do fim da fila */
	private static final String CSTAT_DOCUMENTOS_LOCALIZADOS = "138";
	/** Nenhum documento localizado para o destinatário */
	private static final String CSTAT_NENHUM_DOCUMENTO = "137";
	/** Consumo indevido: quem bloqueou foi a SEFAZ, não nós */
	private static final String CSTAT_CONSUMO_INDEVIDO = "656";

	public MLBRDFeControl(Properties ctx, int LBR_DFeControl_ID, String trxName) {
		super(ctx, LBR_DFeControl_ID, trxName);
	}

	public MLBRDFeControl(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}

	/**
	 * Controle da organização no ambiente informado, criando o registro em
	 * memória (ainda não gravado) quando for a primeira execução.
	 *
	 * @param ctx contexto
	 * @param AD_Org_ID organização
	 * @param LBR_NFeEnv ambiente da SEFAZ (1=produção, 2=homologação)
	 * @param trxName transação
	 * @return controle existente ou novo, nunca nulo
	 */
	public static MLBRDFeControl get(Properties ctx, int AD_Org_ID, String LBR_NFeEnv, String trxName) {
		MLBRDFeControl control = new Query(ctx, Table_Name,
				"AD_Org_ID=? AND LBR_NFeEnv=?", trxName)
			.setParameters(AD_Org_ID, LBR_NFeEnv)
			.setClient_ID()
			.setOnlyActiveRecords(true)
			.firstOnly();

		if (control != null)
			return control;

		control = new MLBRDFeControl(ctx, 0, trxName);
		control.setAD_Org_ID(AD_Org_ID);
		control.setLBR_NFeEnv(LBR_NFeEnv);
		control.setLBR_LastNSU(FIRST_NSU);
		control.setLBR_QueryCount(0);

		return control;
	}

	/**
	 * Ponto de leitura da distribuição. Nunca devolve nulo: a primeira
	 * execução parte de {@link #FIRST_NSU}.
	 */
	public String getLastNSU() {
		String lastNSU = getLBR_LastNSU();

		if (lastNSU == null || lastNSU.trim().length() != 15)
			return FIRST_NSU;

		return lastNSU;
	}

	/**
	 * @return true enquanto a janela de 1 hora imposta pela SEFAZ não tiver
	 *         se esgotado
	 */
	public boolean isBlocked() {
		Timestamp blockedUntil = getLBR_BlockedUntil();
		return blockedUntil != null && blockedUntil.after(now());
	}

	/**
	 * @return minutos que ainda faltam para a distribuição ser liberada, ou 0
	 *         se já estiver liberada
	 */
	public long getBlockedMinutes() {
		if (!isBlocked())
			return 0;

		long minutes = ChronoUnit.MINUTES.between(
				now().toLocalDateTime(), getLBR_BlockedUntil().toLocalDateTime());

		return minutes < 1 ? 1 : minutes;
	}

	/**
	 * Impede novas distribuições pela próxima hora, que é o que a SEFAZ faria
	 * de qualquer forma — a diferença é que aqui a chamada nem chega a sair.
	 */
	public void block() {
		int minutes = MSysConfig.getIntValue(SYSCONFIG_BLOCK_MINUTES, BLOCK_MINUTES,
				getAD_Client_ID(), getAD_Org_ID());

		if (minutes < 1)
			minutes = BLOCK_MINUTES;

		setLBR_BlockedUntil(Timestamp.valueOf(now().toLocalDateTime().plusMinutes(minutes)));
	}

	/**
	 * Por que a distribuição está em espera, em português de usuário. O motivo
	 * sai do último retorno da SEFAZ: quase sempre é a fila ter acabado, o que
	 * é o funcionamento normal, e não um erro.
	 */
	public String getBlockReason() {
		String cStat = getLBR_LastcStat();

		if (CSTAT_CONSUMO_INDEVIDO.equals(cStat))
			return "a SEFAZ recusou a última consulta por consumo indevido (656)";

		if (CSTAT_NENHUM_DOCUMENTO.equals(cStat))
			return "a última consulta não encontrou documento novo (137)";

		if (CSTAT_DOCUMENTOS_LOCALIZADOS.equals(cStat))
			return "a SEFAZ já entregou todos os documentos disponíveis";

		return "a última consulta encerrou a fila";
	}

	/**
	 * Registra a chamada e seu retorno. Zera o contador de consultas pontuais
	 * quando a chamada anterior ficou numa hora do relógio já vencida.
	 *
	 * @param cStat retorno da SEFAZ, ou nulo se a chamada nem chegou a ser feita
	 */
	public void registerRequest(String cStat) {
		Timestamp now = now();

		if (!isSameHour(getLBR_LastRequest(), now))
			setLBR_QueryCount(0);

		setLBR_LastRequest(now);
		setLBR_LastcStat(cStat);
	}

	/**
	 * @return true se o limite de consultas pontuais da hora corrente já foi
	 *         atingido
	 */
	public boolean isQueryLimitReached() {
		if (!isSameHour(getLBR_LastRequest(), now()))
			return false;

		return getLBR_QueryCount() >= MAX_QUERIES_PER_HOUR;
	}

	/**
	 * Contabiliza uma consulta por NSU específico ou por chave de acesso.
	 */
	public void incrementQueryCount() {
		setLBR_QueryCount(getLBR_QueryCount() + 1);
	}

	private static boolean isSameHour(Timestamp a, Timestamp b) {
		if (a == null || b == null)
			return false;

		return a.toLocalDateTime().truncatedTo(ChronoUnit.HOURS)
			.equals(b.toLocalDateTime().truncatedTo(ChronoUnit.HOURS));
	}

	private static Timestamp now() {
		return new Timestamp(System.currentTimeMillis());
	}

	@Override
	public String toString() {
		return new StringBuilder("MLBRDFeControl[AD_Org_ID=").append(getAD_Org_ID())
			.append(", LBR_NFeEnv=").append(getLBR_NFeEnv())
			.append(", LBR_LastNSU=").append(getLBR_LastNSU())
			.append(", LBR_MaxNSU=").append(getLBR_MaxNSU())
			.append("]").toString();
	}
}
