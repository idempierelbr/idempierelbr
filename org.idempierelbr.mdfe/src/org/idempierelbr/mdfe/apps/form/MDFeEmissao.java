package org.idempierelbr.mdfe.apps.form;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
import org.adempiere.exceptions.AdempiereException;
import org.adempiere.exceptions.DBException;
import org.compiere.model.MRegion;
import org.compiere.model.Query;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Trx;
import org.idempierelbr.mdfe.model.MLBRMDFe;
import org.idempierelbr.mdfe.model.X_LBR_MDFe;
import org.idempierelbr.mdfe.model.X_LBR_MDFeCondutor;
import org.idempierelbr.mdfe.model.X_LBR_MDFeDoc;
import org.idempierelbr.mdfe.model.X_LBR_MDFeMunCarrega;
import org.idempierelbr.mdfe.model.X_LBR_MDFeMunDescarga;
import org.idempierelbr.mdfe.model.X_LBR_MDFePercurso;
import org.idempierelbr.mdfe.model.X_LBR_MDFeReboque;

/**
 * Logica do formulario de emissao do MDF-e, sem nada de ZK.
 *
 * <p>Separado de {@link WMDFeEmissao} pelo mesmo motivo dos outros formularios
 * do plugin: o que e regra de negocio fica testavel sem subir a interface.
 */
public class MDFeEmissao
{
	protected CLogger log = CLogger.getCLogger(getClass());

	/** Manifesto em edicao; {@code null} enquanto nada foi aberto ou criado. */
	protected MLBRMDFe mdfe;

	/**
	 * Transacao do chamador, ou {@code null} para autocommit.
	 *
	 * <p>O formulario trabalha fora de transacao, mas os processos (transmitir,
	 * importar NF-e) rodam dentro da sua. Sem carregar o trxName, tudo o que esta
	 * classe grava - documento, municipio, totalizadores - cai fora da transacao
	 * do processo e sobrevive a um rollback dele.
	 */
	protected String trxName;

	/** Pendencias do ultimo carregamento a partir de uma entrega. */
	protected List<String> avisos = new ArrayList<>();

	protected Properties getCtx()
	{
		return Env.getCtx();
	}

	public MLBRMDFe getMDFe()
	{
		return mdfe;
	}

	public List<String> getAvisos()
	{
		return avisos;
	}

	/** Um manifesto novo, em branco, na organizacao da sessao. */
	public MLBRMDFe novo()
	{
		avisos.clear();

		mdfe = new MLBRMDFe(getCtx(), 0, trxName);
		mdfe.setAD_Org_ID(Env.getAD_Org_ID(getCtx()));
		mdfe.setLBR_MDFeStatus(X_LBR_MDFe.LBR_MDFESTATUS_EmDigitacao);
		mdfe.setLBR_Modal(X_LBR_MDFe.LBR_MODAL_Rodoviario);
		mdfe.setLBR_tpEmis(X_LBR_MDFe.LBR_TPEMIS_Normal);
		mdfe.setLBR_procEmi(X_LBR_MDFe.LBR_PROCEMI_AplicativoDoContribuinte);
		mdfe.setLBR_tpEmit(X_LBR_MDFe.LBR_TPEMIT_TransportadorDeCargaPropria);
		mdfe.setLBR_cUnid(X_LBR_MDFe.LBR_CUNID_KG);
		mdfe.setLBR_Serie("1");

		return mdfe;
	}

	/** Abre um manifesto ja gravado. */
	/** Abre dentro da transacao do chamador. */
	public MLBRMDFe abrir(int LBR_MDFe_ID, String trxName)
	{
		this.trxName = trxName;
		return abrir(LBR_MDFe_ID);
	}

	public MLBRMDFe abrir(int LBR_MDFe_ID)
	{
		avisos.clear();

		MLBRMDFe m = new MLBRMDFe(getCtx(), LBR_MDFe_ID, trxName);

		if (m.get_ID() <= 0)
			throw new AdempiereException("MDF-e nao encontrado: " + LBR_MDFe_ID);

		mdfe = m;
		return mdfe;
	}

	public void gravar()
	{
		exigirManifesto();
		mdfe.exigirNaoExcluido();

		if (!mdfe.isEditavel())
			throw new AdempiereException("MDF-e na situacao " + descreverSituacao()
					+ " nao pode mais ser alterado");

		mdfe.saveEx();
	}

	/**
	 * Desativa o manifesto.
	 *
	 * <p>Nao apaga: um MDF-e que ja foi transmitido, mesmo rejeitado, e rastro de
	 * uma tentativa junto ao fisco. Apagar a linha perderia o XML enviado.
	 */
	public void excluir()
	{
		exigirManifesto();

		if (mdfe.isAutorizado() || mdfe.isEncerrado())
			throw new AdempiereException("MDF-e autorizado nao pode ser excluido - use o cancelamento");

		mdfe.setIsActive(false);
		mdfe.saveEx();
		mdfe = null;
	}

	// ---------------------------------------------------------------- filhos

	public List<X_LBR_MDFeMunCarrega> getMunicipiosCarregamento()
	{
		return filhos(X_LBR_MDFeMunCarrega.Table_Name);
	}

	public List<X_LBR_MDFePercurso> getPercurso()
	{
		return filhos(X_LBR_MDFePercurso.Table_Name);
	}

	public List<X_LBR_MDFeCondutor> getCondutores()
	{
		return filhos(X_LBR_MDFeCondutor.Table_Name);
	}

	public List<X_LBR_MDFeMunDescarga> getMunicipiosDescarga()
	{
		return filhos(X_LBR_MDFeMunDescarga.Table_Name);
	}

	public List<X_LBR_MDFeDoc> getDocumentos(int LBR_MDFeMunDescarga_ID)
	{
		return new Query(getCtx(), X_LBR_MDFeDoc.Table_Name, "LBR_MDFeMunDescarga_ID=?", trxName)
				.setParameters(LBR_MDFeMunDescarga_ID)
				.setOnlyActiveRecords(true)
				.setOrderBy("Line, LBR_MDFeDoc_ID")
				.list();
	}

	/** Todas as chaves do manifesto, para a grade unica da aba de documentos. */
	public List<X_LBR_MDFeDoc> getTodosDocumentos()
	{
		if (mdfe == null || mdfe.get_ID() <= 0)
			return new ArrayList<>();

		return new Query(getCtx(), X_LBR_MDFeDoc.Table_Name,
				"LBR_MDFeMunDescarga_ID IN (SELECT LBR_MDFeMunDescarga_ID FROM LBR_MDFeMunDescarga "
				+ "WHERE LBR_MDFe_ID=? AND IsActive='Y')", trxName)
				.setParameters(mdfe.getLBR_MDFe_ID())
				.setOnlyActiveRecords(true)
				.setOrderBy("LBR_MDFeMunDescarga_ID, Line")
				.list();
	}

	/**
	 * Acrescenta uma chave de NF-e ao municipio de descarregamento informado,
	 * criando o municipio se ainda nao existir.
	 */
	public void adicionarNFe(int C_City_ID, String chave) {
		adicionarNFe(C_City_ID, chave, null);
	}

	/**
	 * @param valor valor total do documento, para somar em tot/vCarga; pode ser
	 *              nulo quando ainda nao se sabe
	 */
	public void adicionarNFe(int C_City_ID, String chave, BigDecimal valor) {
		exigirEditavel();
if (chave == null || chave.replaceAll("[^0-9A-Za-z]", "").length() != 44)
			throw new AdempiereException("A chave da NF-e deve ter 44 posicoes");

		String limpa = chave.replaceAll("[^0-9A-Za-z]", "").toUpperCase();

		if (jaTemChave(limpa))
			throw new AdempiereException("Esta chave ja esta no manifesto: " + limpa);

		X_LBR_MDFeMunDescarga mun = acharOuCriarDescarga(C_City_ID);

		X_LBR_MDFeDoc doc = new X_LBR_MDFeDoc(getCtx(), 0, trxName);
		doc.setAD_Org_ID(mdfe.getAD_Org_ID());
		doc.setLBR_MDFeMunDescarga_ID(mun.getLBR_MDFeMunDescarga_ID());
		doc.setLine(proximaLinha(X_LBR_MDFeDoc.Table_Name, "LBR_MDFeMunDescarga_ID",
				mun.getLBR_MDFeMunDescarga_ID()));
		doc.setLBR_DFeType(X_LBR_MDFeDoc.LBR_DFETYPE_NF_E);
		doc.setLBR_DFeChave(limpa);
			doc.setLBR_NotaFiscal_ID(notaFiscalDaChave(limpa));

			if (valor != null && valor.signum() != 0)
				doc.set_ValueOfColumn(X_LBR_MDFeDoc.COLUMNNAME_LBR_ValueDoc, valor);

			doc.saveEx();

		recalcularTotais();
	}

	public void removerDocumento(int LBR_MDFeDoc_ID) {
		exigirEditavel();

		X_LBR_MDFeDoc doc = new X_LBR_MDFeDoc(getCtx(), LBR_MDFeDoc_ID, trxName);

		if (doc.get_ID() > 0)
		{
			int munId = doc.getLBR_MDFeMunDescarga_ID();
			doc.deleteEx(true);

			// municipio sem nenhuma chave nao pode ficar: o schema exige ao
			// menos um documento por infMunDescarga
			if (getDocumentos(munId).isEmpty())
				new X_LBR_MDFeMunDescarga(getCtx(), munId, trxName).deleteEx(true);
		}

		recalcularTotais();
	}

	/** Refaz qNFe e vCarga a partir das chaves que estao no manifesto. */
	public void recalcularTotais()
	{
		exigirManifesto();

		List<X_LBR_MDFeDoc> docs = getTodosDocumentos();
		int qNFe = 0;
		BigDecimal valor = Env.ZERO;

		for (X_LBR_MDFeDoc doc : docs) {
			if (!X_LBR_MDFeDoc.LBR_DFETYPE_NF_E.equals(doc.getLBR_DFeType()))
				continue;

			qNFe++;

			// O valor do proprio documento vem primeiro: numa transportadora a
			// nota e de outro emitente e nunca vai existir em LBR_NotaFiscal.
			// A nota local so responde quando o documento nao tem valor.
			BigDecimal v = doc.getLBR_ValueDoc();

			if ((v == null || v.signum() == 0) && doc.getLBR_NotaFiscal_ID() > 0)
				v = DB.getSQLValueBD(trxName, "SELECT GrandTotal FROM LBR_NotaFiscal WHERE LBR_NotaFiscal_ID=?",
						doc.getLBR_NotaFiscal_ID());

			if (v != null)
				valor = valor.add(v);
		}

		mdfe.setLBR_QtyNFe(qNFe);
		mdfe.setLBR_ValueCargo(valor);
		mdfe.saveEx();
	}

	// -------------------------------------------------------------- rotulos

	/** Situacao por extenso, para a barra de status do formulario. */
	public String descreverSituacao()
	{
		if (mdfe == null)
			return "";

		return descreverSituacao(mdfe.getLBR_MDFeStatus())
				+ (mdfe.isExcluido() ? " (EXCLUIDO)" : "");
	}

	public static String descreverSituacao(String status)
	{
		if (status == null)
			return "";

		switch (status)
		{
			case X_LBR_MDFe.LBR_MDFESTATUS_EmDigitacao: return "EM DIGITACAO";
			case X_LBR_MDFe.LBR_MDFESTATUS_Assinado:    return "ASSINADO";
			case X_LBR_MDFe.LBR_MDFESTATUS_Enviado:     return "ENVIADO";
			case X_LBR_MDFe.LBR_MDFESTATUS_Autorizado:  return "AUTORIZADO";
			case X_LBR_MDFe.LBR_MDFESTATUS_Rejeitado:   return "REJEITADO";
			case X_LBR_MDFe.LBR_MDFESTATUS_Encerrado:   return "ENCERRADO";
			case X_LBR_MDFe.LBR_MDFESTATUS_Cancelado:   return "CANCELADO";
			default: return status;
		}
	}

	/** Quantos manifestos a busca traz de uma vez. */
	public static final int LIMITE_BUSCA = 200;

	/** Uma linha da tela de localizacao. So o que a lista mostra. */
	public static class LinhaBusca
	{
		public int LBR_MDFe_ID;
		public String numero;
		public String serie;
		public String situacao;
		public Timestamp data;
		public String placa;
		public String origem;
		public String chave;
	}

	/**
	 * Manifestos gravados, do mais recente para o mais antigo.
	 *
	 * <p>O filtro casa com numero, chave de acesso, placa ou numero da entrega -
	 * os quatro jeitos pelos quais alguem procura um manifesto no balcao. Vazio
	 * traz os ultimos {@value #LIMITE_BUSCA}.
	 *
	 * <p>Traz tambem os inativos e os cancelados: quem procura um manifesto que
	 * sumiu precisa poder ve-lo para entender o que houve. A situacao na lista
	 * diz o que cada um e.
	 *
	 * <p>Uma consulta so, sem carregar os PO: a lista mostra oito campos e pode
	 * ter duzentas linhas.
	 */
	/**
	 * Coluna que a lista de busca mostra e pesquisa alem de numero, chave e placa.
	 *
	 * <p>O MDF-e do LBR nao conhece a origem da carga, entao o padrao e o produto
	 * predominante. Quem emite a partir de um romaneio, de uma ordem de
	 * carregamento ou coisa parecida sobrescreve este par de metodos e passa a
	 * procurar pelo numero daquele documento.
	 *
	 * <p>Precisa ser SQL confiavel: entra direto na consulta.
	 */
	protected String colunaOrigemBusca() {
		return "m.LBR_ProdPred";
	}

	/** JOIN que a coluna de {@link #colunaOrigemBusca()} exige, ou vazio. */
	protected String juncaoOrigemBusca() {
		return "";
	}

	/** Titulo da coluna de origem na lista e no texto de ajuda do filtro. */
	public String rotuloOrigemBusca() {
		return "Produto";
	}

	public List<LinhaBusca> localizar(String filtro)
	{
		StringBuilder sql = new StringBuilder(				"SELECT m.LBR_MDFe_ID, m.DocumentNo, m.LBR_Serie, m.LBR_MDFeStatus, m.DateDoc,"
						+ " m.LBR_Placa, " + colunaOrigemBusca() + ", m.LBR_MDFeChave, m.IsActive"
						+ " FROM LBR_MDFe m" + juncaoOrigemBusca()
						+ " WHERE m.AD_Client_ID = ?");

		List<Object> params = new ArrayList<>();
		params.add(Integer.valueOf(Env.getAD_Client_ID(getCtx())));

		String texto = (filtro == null) ? "" : filtro.trim();

		if (!texto.isEmpty())
		{
			// A coluna de origem sai do mesmo metodo que a monta no SELECT.
			// Estava fixa como "d.LBR_DocumentNo", e nenhum dos dois
			// formularios tinha essa coluna: no do LBR a juncao e vazia e o
			// alias d nem existe, entao qualquer filtro digitado estourava com
			// "missing FROM-clause entry for table d"; no da Kraft o alias
			// existe mas a coluna se chama KR_DocumentNo.
			sql.append(" AND (UPPER(m.DocumentNo) LIKE ?")
			   .append(" OR m.LBR_MDFeChave LIKE ?")
			   .append(" OR UPPER(m.LBR_Placa) LIKE ?")
			   .append(" OR UPPER(").append(colunaOrigemBusca()).append(") LIKE ?)");

			String like = "%" + texto.toUpperCase() + "%";

			for (int i = 0; i < 4; i++)
				params.add(like);
		}

		sql.append(" ORDER BY m.LBR_MDFe_ID DESC");

		List<LinhaBusca> linhas = new ArrayList<>();
		PreparedStatement st = null;
		ResultSet rs = null;

		try
		{
			st = DB.prepareStatement(sql.toString(), trxName);
			DB.setParameters(st, params);
			st.setMaxRows(LIMITE_BUSCA);
			rs = st.executeQuery();

			while (rs.next())
			{
				LinhaBusca linha = new LinhaBusca();
				linha.LBR_MDFe_ID = rs.getInt(1);
				linha.numero = rs.getString(2);
				linha.serie = rs.getString(3);
				linha.situacao = descreverSituacao(rs.getString(4));
				linha.data = rs.getTimestamp(5);
				linha.placa = rs.getString(6);
				linha.origem = rs.getString(7);
				linha.chave = rs.getString(8);

				if (!"Y".equals(rs.getString(9)))
					linha.situacao = linha.situacao + " (EXCLUIDO)";

				linhas.add(linha);
			}
		}
		catch (SQLException e)
		{
			throw new DBException(e, sql.toString());
		}
		finally
		{
			DB.close(rs, st);
		}

		return linhas;
	}

	/** Chave formatada em blocos de 4, como na tela do emissor da SEFAZ. */
	public static String formatarChave(String chave)
	{
		if (chave == null || chave.length() != 44)
			return chave == null ? "" : chave;

		StringBuilder sb = new StringBuilder(55);

		for (int i = 0; i < 44; i += 4)
		{
			if (i > 0)
				sb.append(' ');

			sb.append(chave, i, i + 4);
		}

		return sb.toString();
	}

	public static String siglaUF(int C_Region_ID)
	{
		if (C_Region_ID < 1)
			return "";

		return new MRegion(Env.getCtx(), C_Region_ID, null).getName();
	}

	// ------------------------------------------------------------------------

	/**
	 * Acrescenta um municipio de descarregamento, sem documento ainda.
	 *
	 * <p>O layout nao aceita infMunDescarga sem nenhum documento, mas isso e
	 * cobrado na transmissao - o gerador recusa com "esta sem documento fiscal
	 * vinculado" e diz qual municipio. Deixar criar antes e o que permite montar
	 * o manifesto na ordem que o operador quiser: primeiro os municipios, depois
	 * as chaves de cada um.
	 */
	public X_LBR_MDFeMunDescarga adicionarDescarregamento(int C_City_ID)
	{
		exigirEditavel();

		return acharOuCriarDescarga(C_City_ID);
	}

	/** Tira um municipio de descarregamento e, com ele, os documentos que tiver. */
	public void removerDescarregamento(int LBR_MDFeMunDescarga_ID)
	{
		exigirEditavel();

		for (X_LBR_MDFeDoc doc : getDocumentos(LBR_MDFeMunDescarga_ID))
			doc.deleteEx(true);

		X_LBR_MDFeMunDescarga mun = new X_LBR_MDFeMunDescarga(getCtx(), LBR_MDFeMunDescarga_ID, trxName);

		if (mun.get_ID() > 0)
			mun.deleteEx(true);

		recalcularTotais();
	}

	private X_LBR_MDFeMunDescarga acharOuCriarDescarga(int C_City_ID)
	{
		for (X_LBR_MDFeMunDescarga mun : getMunicipiosDescarga())
		{
			if (mun.getC_City_ID() == C_City_ID)
				return mun;
		}

		String[] cidade = cidade(C_City_ID);

		X_LBR_MDFeMunDescarga mun = new X_LBR_MDFeMunDescarga(getCtx(), 0, trxName);
		mun.setAD_Org_ID(mdfe.getAD_Org_ID());
		mun.setLBR_MDFe_ID(mdfe.getLBR_MDFe_ID());
		mun.setLine(proximaLinha(X_LBR_MDFeMunDescarga.Table_Name, "LBR_MDFe_ID", mdfe.getLBR_MDFe_ID()));
		mun.setC_City_ID(C_City_ID);
		mun.setLBR_xMun(cidade[0]);
		mun.setLBR_cMun(cidade[1]);
		mun.saveEx();

		return mun;
	}

	private String[] cidade(int C_City_ID)
	{
		String nome = DB.getSQLValueString(null, "SELECT Name FROM C_City WHERE C_City_ID=?", C_City_ID);
		String ibge = DB.getSQLValueString(null, "SELECT LBR_CityCode FROM C_City WHERE C_City_ID=?", C_City_ID);

		if (ibge == null || ibge.trim().isEmpty())
			throw new AdempiereException("O municipio " + nome + " esta sem codigo IBGE (C_City.LBR_CityCode)");

		return new String[] { nome, ibge };
	}

	private boolean jaTemChave(String chave)
	{
		for (X_LBR_MDFeDoc doc : getTodosDocumentos())
		{
			if (chave.equals(doc.getLBR_DFeChave()))
				return true;
		}

		return false;
	}

	private int notaFiscalDaChave(String chave)
	{
		int id = DB.getSQLValue(null,
				"SELECT LBR_NotaFiscal_ID FROM LBR_NotaFiscal WHERE LBR_NFeID=? AND AD_Client_ID=?",
				chave, Env.getAD_Client_ID(getCtx()));

		return Math.max(id, 0);
	}

	private int proximaLinha(String tableName, String parentColumn, int parentId)
	{
		int max = DB.getSQLValue(null,
				"SELECT COALESCE(MAX(Line), 0) FROM " + tableName + " WHERE " + parentColumn + "=?",
				parentId);

		return (max < 0 ? 0 : max) + 10;
	}

	private <T extends org.compiere.model.PO> List<T> filhos(String tableName)
	{
		if (mdfe == null || mdfe.get_ID() <= 0)
			return new ArrayList<>();

		return new Query(getCtx(), tableName, "LBR_MDFe_ID=?", trxName)
				.setParameters(mdfe.getLBR_MDFe_ID())
				.setOnlyActiveRecords(true)
				.setOrderBy("Line, " + tableName + "_ID")
				.list();
	}

	private void exigirManifesto() {
		if (mdfe == null)
			throw new AdempiereException("Nenhum MDF-e aberto");
	}

	/**
	 * Recusa alteracao de conteudo depois que o manifesto foi assinado.
	 *
	 * <p>No formulario os botoes ja ficam desabilitados, mas essa e uma trava de
	 * tela: quem chega pelo processo de importacao de NF-e ou por outro caminho
	 * passava direto. Depois de assinado a chave esta amarrada ao conteudo -
	 * acrescentar uma nota aqui deixaria o banco diferente do que a SEFAZ
	 * autorizou.
	 */
	protected void exigirEditavel() {
		exigirManifesto();
		mdfe.exigirNaoExcluido();

		if (!mdfe.isEditavel())
			throw new AdempiereException("MDF-e na situacao " + descreverSituacao()
					+ " nao aceita mais alteracao de conteudo");
	}







	protected int ufDoEmitente() {
		return getMDFe().getEnderecoEmitente().getC_Region_ID();
	}

	public List<X_LBR_MDFeReboque> getReboques() {
		return filhos(X_LBR_MDFeReboque.Table_Name);
	}

	protected boolean emHomologacao() {
		return X_LBR_MDFe.LBR_TPAMB_Homologacao.equals(getMDFe().getLBR_tpAmb());
	}

	protected int ultimoMunicipioDeDescarga() {
		List<X_LBR_MDFeMunDescarga> descargas = getMunicipiosDescarga();

		return descargas.isEmpty() ? 0 : descargas.get(descargas.size() - 1).getC_City_ID();
	}

	/** O layout aceita de 1 a 50 municipios de carregamento (ide/infMunCarrega). */
	public static final int MAX_CARREGAMENTO = 50;

	/**
	 * Acrescenta um municipio de carregamento.
	 *
	 * <p>O grupo e obrigatorio: o gerador recusa o manifesto sem nenhum. Ate o
	 * desacoplamento quem criava essa linha era a ponte com a Entrega da Kraft,
	 * que sabia de onde a carga saiu. O MDF-e do LBR nao sabe - entao quem
	 * informa e o operador, como ja acontece com o percurso.
	 */
	public X_LBR_MDFeMunCarrega adicionarCarregamento(int C_City_ID)
	{
		exigirEditavel();

		for (X_LBR_MDFeMunCarrega mun : getMunicipiosCarregamento())
		{
			if (mun.getC_City_ID() == C_City_ID)
				throw new AdempiereException("Este municipio ja esta no carregamento");
		}

		if (getMunicipiosCarregamento().size() >= MAX_CARREGAMENTO)
			throw new AdempiereException("O MDF-e aceita no maximo " + MAX_CARREGAMENTO
					+ " municipios de carregamento");

		String[] cidade = cidade(C_City_ID);

		X_LBR_MDFeMunCarrega mun = new X_LBR_MDFeMunCarrega(getCtx(), 0, trxName);
		mun.setAD_Org_ID(mdfe.getAD_Org_ID());
		mun.setLBR_MDFe_ID(mdfe.getLBR_MDFe_ID());
		mun.setLine(proximaLinha(X_LBR_MDFeMunCarrega.Table_Name, "LBR_MDFe_ID", mdfe.getLBR_MDFe_ID()));
		mun.setC_City_ID(C_City_ID);
		mun.setLBR_xMun(cidade[0]);
		mun.setLBR_cMun(cidade[1]);
		mun.saveEx();

		return mun;
	}

	/** Tira um municipio de carregamento. */
	public void removerCarregamento(int LBR_MDFeMunCarrega_ID)
	{
		exigirEditavel();

		X_LBR_MDFeMunCarrega mun = new X_LBR_MDFeMunCarrega(getCtx(), LBR_MDFeMunCarrega_ID, trxName);

		if (mun.get_ID() > 0)
			mun.deleteEx(true);
	}

}
