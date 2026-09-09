package org.idempierelbr.mdfe.apps.form;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import java.util.Vector;
import java.util.function.Supplier;
import java.util.logging.Level;
import net.sf.jasperreports.engine.JasperPrint;
import org.adempiere.base.Service;
import org.adempiere.exceptions.AdempiereException;
import org.adempiere.report.jasper.JRViewerProvider;
import org.adempiere.util.Callback;
import org.adempiere.webui.apps.AEnv;
import org.adempiere.webui.apps.ProcessModalDialog;
import org.adempiere.webui.component.Button;
import org.adempiere.webui.component.Checkbox;
import org.adempiere.webui.component.Column;
import org.adempiere.webui.component.Columns;
import org.adempiere.webui.component.Combobox;
import org.adempiere.webui.component.Grid;
import org.adempiere.webui.component.GridFactory;
import org.adempiere.webui.component.Label;
import org.adempiere.webui.component.ListModelTable;
import org.adempiere.webui.component.ListboxFactory;
import org.adempiere.webui.component.Panel;
import org.adempiere.webui.component.Row;
import org.adempiere.webui.component.Rows;
import org.adempiere.webui.component.Textbox;
import org.adempiere.webui.component.WListbox;
import org.adempiere.webui.component.Window;
import org.adempiere.webui.editor.WDateEditor;
import org.adempiere.webui.editor.WNumberEditor;
import org.adempiere.webui.editor.WSearchEditor;
import org.adempiere.webui.editor.WTableDirEditor;
import org.adempiere.webui.event.DialogEvents;
import org.adempiere.webui.event.ValueChangeEvent;
import org.adempiere.webui.event.ValueChangeListener;
import org.adempiere.webui.panel.ADForm;
import org.adempiere.webui.panel.CustomForm;
import org.adempiere.webui.panel.IFormController;
import org.adempiere.webui.theme.ThemeManager;
import org.adempiere.webui.util.ZKUpdateUtil;
import org.adempiere.webui.window.Dialog;
import org.compiere.model.MLookupFactory;
import org.compiere.model.MRefList;
import org.compiere.model.PrintInfo;
import org.compiere.process.ProcessInfo;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.util.DB;
import org.compiere.util.DisplayType;
import org.compiere.util.Env;
import org.compiere.util.ValueNamePair;
import org.idempierelbr.mdfe.damdfe.DAMDFEImpressao;
import org.idempierelbr.mdfe.model.MLBRMDFe;
import org.idempierelbr.mdfe.util.MDFeUtil;
import org.idempierelbr.mdfe.model.X_LBR_MDFe;
import org.idempierelbr.mdfe.model.X_LBR_MDFeDoc;
import org.idempierelbr.mdfe.model.X_LBR_MDFeEvento;
import org.idempierelbr.mdfe.model.X_LBR_MDFeMunCarrega;
import org.idempierelbr.mdfe.model.X_LBR_MDFeMunDescarga;
import org.idempierelbr.mdfe.model.X_LBR_MDFePercurso;
import org.idempierelbr.mdfe.util.MDFeConsultas;
import org.idempierelbr.mdfe.util.MDFeNFeImport;
import org.zkoss.zk.ui.event.Event;
import org.zkoss.zk.ui.event.EventListener;
import org.zkoss.zk.ui.event.Events;
import org.zkoss.zul.Borderlayout;
import org.zkoss.zul.Center;
import org.zkoss.zul.Comboitem;
import org.zkoss.zul.Div;
import org.zkoss.zul.North;
import org.zkoss.zul.Separator;
import org.zkoss.zul.South;
import org.zkoss.zul.Tab;
import org.zkoss.zul.Tabbox;
import org.zkoss.zul.Tabpanel;
import org.zkoss.zul.Tabpanels;
import org.zkoss.zul.Tabs;

/**
 * Emissao do MDF-e (modelo 58).
 *
 * <p>Layout espelha o emissor da SEFAZ: cabecalho fixo com identificacao e
 * situacao, e as abas Rodoviario / Documentos / Adicionais / Totalizadores.
 *
 * <p>O caminho normal de uso e "Carregar da entrega": a entrega ja tem veiculo,
 * motorista, armazem de saida e as NF-e dos pedidos, entao o operador so
 * completa o que o cadastro nao sabe (CPF do condutor, peso da carga, rodado e
 * carroceria) e transmite.
 */
public class WMDFeEmissao extends MDFeEmissao
		implements IFormController, EventListener<Event>, ValueChangeListener
{
	private CustomForm form = new CustomForm();
	protected int m_WindowNo = form.getWindowNo();

	// layout
	private Borderlayout mainLayout = new Borderlayout();
	private Panel cabecalhoPanel = new Panel();
	private Grid cabecalhoGrid = GridFactory.newGridLayout();

	// barra de acoes
	private Button novoButton = new Button();
	private Button gravarButton = new Button();
	private Button excluirButton = new Button();
	private Button localizarButton = new Button();
	private Button cancelarButton = new Button();
	private Button condutorEventoButton = new Button();
	private Button consultarButton = new Button();
	private Button naoEncerradosButton = new Button();
	private Button statusButton = new Button();
	private Button transmitirButton = new Button();
	private Button imprimirButton = new Button();
	private Button encerrarButton = new Button();

	// cabecalho
	private Label emitenteLabel = new Label();
	private Label situacaoLabel = new Label();
	private Label chaveLabel = new Label();
	private Label protocoloLabel = new Label();
	private Textbox numeroField = new Textbox();
	private Textbox serieField = new Textbox();
	private WDateEditor dataEmissaoEditor;
	private WDateEditor dataViagemEditor;
	private Combobox tpAmbCombo = new Combobox();
	private Combobox tpEmitCombo = new Combobox();
	private Combobox tpTranspCombo = new Combobox();
	private Combobox modalCombo = new Combobox();
	private WTableDirEditor ufIniEditor;
	private WTableDirEditor ufFimEditor;

	// aba rodoviario
	private Textbox rntrcField = new Textbox();
	private Textbox placaField = new Textbox();
	private Textbox renavamField = new Textbox();
	private WNumberEditor taraEditor;
	private WNumberEditor capKgEditor;
	private WNumberEditor capM3Editor;
	private Combobox tpRodCombo = new Combobox();
	private Combobox tpCarCombo = new Combobox();
	private Button condutoresButton = new Button();
	private Button reboquesButton = new Button();
	private Checkbox propTerceiroBox = new Checkbox();
	private Textbox propDocField = new Textbox();
	private Textbox propRntrcField = new Textbox();
	private Textbox propNomeField = new Textbox();
	private Textbox propIeField = new Textbox();
	private WTableDirEditor propUFEditor;
	private Combobox propTpPropCombo = new Combobox();
	private WListbox percursoTable = ListboxFactory.newDataTable();
	private WTableDirEditor percursoUFEditor;
	private Button addPercursoButton = new Button();
	private Button delPercursoButton = new Button();

	// aba documentos
	private WListbox carregamentoTable = ListboxFactory.newDataTable();
	private WSearchEditor cidadeEditor;
	/** Ordem dos itens do seletor de tipo de municipio, fixada em painelDocumentos. */
	private static final int IDX_CARREGAMENTO = 0;
	private static final int IDX_DESCARREGAMENTO = 1;

	private Combobox tipoMunicipioCombo = new Combobox();
	private WListbox documentosTable = ListboxFactory.newDataTable();
	private Textbox chaveNFeField = new Textbox();
	private Button addMunicipioButton = new Button();
	private Button delMunicipioButton = new Button();
	private Button addNFeButton = new Button();
	private Button delNFeButton = new Button();

	// aba adicionais
	private Textbox infAdFiscoField = new Textbox();
	private Textbox infCplField = new Textbox();
	private Textbox carregaCepField = new Textbox();
	private Textbox carregaLatField = new Textbox();
	private Textbox carregaLonField = new Textbox();
	private Textbox descarregaCepField = new Textbox();
	private Textbox descarregaLatField = new Textbox();
	private Textbox descarregaLonField = new Textbox();
	private Textbox respTecCnpjField = new Textbox();
	private Textbox respTecContatoField = new Textbox();
	private Textbox respTecEmailField = new Textbox();
	private Textbox respTecFoneField = new Textbox();
	private Combobox categCombVeicCombo = new Combobox();
	private Textbox codAgPortoField = new Textbox();

	// aba totalizadores
	private WNumberEditor qNFeEditor;
	private WNumberEditor vCargaEditor;
	private WNumberEditor qCargaEditor;
	private Combobox cUnidCombo = new Combobox();
	private Combobox tpCargaCombo = new Combobox();
	private Textbox prodPredField = new Textbox();
	private Textbox ncmField = new Textbox();
	private Textbox eanField = new Textbox();
	private Textbox retornoField = new Textbox();

	private Label avisosLabel = new Label();

	// grupos do leiaute editados em mini-janela (ver WMDFeSecaoFilhos)
	private WMDFeSecaoFilhos secaoCondutores;
	private WMDFeSecaoFilhos secaoReboques;
	private WMDFeSecaoFilhos secaoCIOT;
	private WMDFeSecaoFilhos secaoValePed;
	private WMDFeSecaoFilhos secaoContratantes;
	private WMDFeSecaoFilhos secaoSeguros;
	private WMDFeSecaoFilhos secaoAverbacoes;
	private WMDFeSecaoFilhos secaoLacresRodo;
	private WMDFeSecaoFilhos secaoLacresMDFe;
	private WMDFeSecaoFilhos secaoAutXML;
	private WMDFeSecaoFilhos secaoPerigosos;
	private WMDFeSecaoFilhos secaoPagamentos;
	private WMDFeSecaoFilhos secaoComponentes;
	private WMDFeSecaoFilhos secaoParcelas;
	private final List<WMDFeSecaoFilhos> secoes = new ArrayList<>();

	/** Reboques por manifesto, teto do proprio leiaute (veicReboque 0..3). */

	/** UF de percurso por manifesto, teto do leiaute (infPercurso 0..25). */
	private static final int MAX_PERCURSO = 25;

	public WMDFeEmissao()
	{
		try
		{
			dynInit();
			zkInit();
			atualizarTela();
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
			mostrarFalhaDeAbertura(e);
		}
	}

	/**
	 * Explica na propria tela por que ela nao abriu.
	 *
	 * <p>O construtor nao pode deixar a excecao subir: a factory devolveria
	 * {@code null} e o iDempiere diria apenas "nao ha formulario associado",
	 * escondendo a causa. Mas engolir no log tambem nao serve - o operador
	 * recebia uma aba vazia sem uma linha de explicacao, e a causa (tipicamente
	 * uma tabela do MDF-e que falta no dicionario) so aparecia no log do
	 * servidor.
	 *
	 * <p>Aqui nao da para usar Dialog: no construtor a tela ainda nao esta
	 * anexada a uma pagina. O recado vai no proprio corpo do formulario.
	 */
	private void mostrarFalhaDeAbertura(Exception e)
	{
		try
		{
			String causa = e.getLocalizedMessage();

			if (causa == null || causa.trim().isEmpty())
				causa = e.getClass().getSimpleName();

			form.getChildren().clear();

			Div caixa = new Div();
			caixa.setStyle("padding: 24px; font-size: 13px;");

			Label titulo = new Label("Nao foi possivel abrir o Emitir MDF-e");
			titulo.setStyle("font-weight: bold; font-size: 15px; color: #b91c1c;");

			Label detalhe = new Label(causa);
			detalhe.setStyle("display: block; margin-top: 10px;");

			Label ajuda = new Label("Verifique se os scripts de migracao do MDF-e"
					+ " foram aplicados nesta base.");
			ajuda.setStyle("display: block; margin-top: 10px; color: #6b7280;");

			caixa.appendChild(titulo);
			caixa.appendChild(detalhe);
			caixa.appendChild(ajuda);
			form.appendChild(caixa);
		}
		catch (Exception falha)
		{
			// nao deixar o relato de erro virar um segundo erro
			log.log(Level.WARNING, "Falha ao montar o aviso de abertura", falha);
		}
	}

	@Override
	public ADForm getForm()
	{
		return form;
	}

	// --------------------------------------------------------------- montagem

	private void dynInit() throws Exception
	{
		dataEmissaoEditor = new WDateEditor("DateDoc", false, false, true, "Data de emissao");
		dataViagemEditor  = new WDateEditor("LBR_DateIniViagem", false, false, true, "Inicio da viagem");

		taraEditor   = new WNumberEditor("LBR_Tara", false, false, true, DisplayType.Integer, "Tara (KG)");
		capKgEditor  = new WNumberEditor("LBR_CapKG", false, false, true, DisplayType.Integer, "Capacidade (KG)");
		capM3Editor  = new WNumberEditor("LBR_CapM3", false, false, true, DisplayType.Integer, "Capacidade (M3)");
		qNFeEditor   = new WNumberEditor("LBR_QtyNFe", false, true, true, DisplayType.Integer, "Quantidade de NF-e");
		// Editavel, e nao so leitura: quando a nota nao existe no ERP e a SEFAZ
		// nao devolve o XML, o valor da carga nao tem de onde ser calculado e o
		// operador precisa poder informa-lo. O recalculo so sobrescreve quando
		// tem valor proprio para colocar no lugar.
		vCargaEditor = new WNumberEditor("LBR_ValueCargo", false, false, true, DisplayType.Amount, "Valor da carga");
		qCargaEditor = new WNumberEditor("LBR_QtyCargo", false, false, true, DisplayType.Quantity, "Peso bruto");

		ufIniEditor = criarEditorUF("LBR_UFIni_ID");
		ufFimEditor = criarEditorUF("LBR_UFFim_ID");
		propUFEditor = criarEditorUF("LBR_PropUF_ID");
		percursoUFEditor = criarEditorUF("LBR_UFIni_ID");


		// um editor para os dois grupos; o dicionario da coluna e o mesmo C_City_ID
		cidadeEditor = criarEditorCidade("LBR_MDFeMunCarrega");

		preencherCombo(tpAmbCombo,    "LBR_MDFe_tpAmb");
		preencherCombo(tpEmitCombo,   "LBR_MDFe_tpEmit");
		preencherCombo(tpTranspCombo, "LBR_MDFe_tpTransp", true);
		preencherCombo(modalCombo,    "LBR_MDFe_modal");
		preencherCombo(tpRodCombo,    "LBR_MDFe_tpRod", true);
		preencherCombo(tpCarCombo,    "LBR_MDFe_tpCar", true);
		preencherCombo(tpCargaCombo, "LBR_MDFe_tpCarga", true);

		montarSecoes();
		preencherCombo(categCombVeicCombo, "LBR_MDFe_categCombVeic", true);
		preencherCombo(propTpPropCombo, "LBR_MDFe_tpProp", true);
		preencherCombo(cUnidCombo,    "LBR_MDFe_cUnid");
	}

	/**
	 * Editor de UF. Usa o AD_Column de LBR_UFIni_ID/LBR_UFFim_ID, que ja aponta
	 * para a referencia de tabela do C_Region - assim a lista de UFs vem do
	 * mesmo lugar que o resto do sistema.
	 */
	private WTableDirEditor criarEditorUF(String columnName) throws Exception
	{
		int AD_Column_ID = org.compiere.model.MColumn.getColumn_ID("LBR_MDFe", columnName);

		if (AD_Column_ID <= 0)
			throw new AdempiereException("Coluna LBR_MDFe." + columnName + " nao encontrada no dicionario");

		return new WTableDirEditor(columnName, false, false, true,
				MLookupFactory.get(Env.getCtx(), m_WindowNo, AD_Column_ID, DisplayType.Table,
						Env.getLanguage(Env.getCtx()), "C_Region_ID", 0, false, null));
	}

	private WSearchEditor criarEditorCidade() throws Exception
	{
		return criarEditorCidade("LBR_MDFeMunDescarga");
	}

	/** Editor de cidade para a tabela informada: descarregamento ou carregamento. */
	private WSearchEditor criarEditorCidade(String tabela) throws Exception
	{
		int AD_Column_ID = org.compiere.model.MColumn.getColumn_ID(tabela, "C_City_ID");

		if (AD_Column_ID <= 0)
			throw new AdempiereException("Coluna " + tabela + ".C_City_ID nao encontrada no dicionario");

		return new WSearchEditor("C_City_ID", false, false, true,
				MLookupFactory.get(Env.getCtx(), m_WindowNo, AD_Column_ID, DisplayType.Search,
						Env.getLanguage(Env.getCtx()), "C_City_ID", 0, false, null));
	}

	/**
	 * Descreve os grupos do leiaute que viram grade + mini-janela.
	 *
	 * <p>Cada secao sabe sozinha carregar, editar e gravar; aqui so ficam os
	 * campos que o manual pede em cada grupo, na ordem em que ele os lista.
	 */
	private void montarSecoes() {
		Supplier<Integer> idDoMDFe = () -> (getMDFe() == null) ? Integer.valueOf(0)
				: Integer.valueOf(getMDFe().getLBR_MDFe_ID());
		Supplier<Integer> orgDoMDFe = () -> (getMDFe() == null) ? Integer.valueOf(0)
				: Integer.valueOf(getMDFe().getAD_Org_ID());

		// veicReboque: placa, tara, capKG e tpCar sao exigidos pelo schema; o
		// grupo prop so vale para reboque de terceiro, e quem o abre no XML e
		// LBR_IsOwnerNotEmitter - sem ela um reboque de terceiro sai sem o dono.
		//
		// A UF do reboque quase sempre e a do cavalo; herdar poupa um campo por
		// linha. Vem por comPadrao, nao comFixo: fixo tambem filtra a grade, e
		// esconderia todo reboque de UF diferente da do cavalo.
		secaoReboques = new WMDFeSecaoFilhos(m_WindowNo, "Reboques", "LBR_MDFeReboque",
				List.of(MDFeCampo.textoReq("LBR_Placa", "Placa"),
						MDFeCampo.digitos("LBR_Renavam", "RENAVAM"),
						MDFeCampo.inteiroReq("LBR_Tara", "Tara (KG)"),
						MDFeCampo.inteiroReq("LBR_CapKG", "Capacidade (KG)"),
						MDFeCampo.inteiro("LBR_CapM3", "Capacidade (M3)"),
						MDFeCampo.listaReq("LBR_tpCar", "Carroceria", "LBR_MDFe_tpCar"),
						MDFeCampo.uf("LBR_VeicUF_ID", "UF do veiculo"),
						MDFeCampo.booleano("LBR_IsOwnerNotEmitter", "Reboque de terceiro"),
						MDFeCampo.documento("CNPJ/CPF do proprietario", "LBR_PropCNPJ", "LBR_PropCPF", false),
						MDFeCampo.digitos("LBR_PropRNTRC", "RNTRC do proprietario"),
						MDFeCampo.texto("LBR_PropName", "Nome do proprietario"),
						MDFeCampo.digitos("LBR_PropIE", "IE do proprietario"),
						MDFeCampo.uf("LBR_PropUF_ID", "UF do proprietario"),
						MDFeCampo.lista("LBR_tpProp", "Tipo de proprietario", "LBR_MDFe_tpProp")),
				idDoMDFe, orgDoMDFe)
				.comMaximo(3)
				.comPadrao("LBR_VeicUF_ID", () -> {
					MLBRMDFe m = getMDFe();
					return (m != null && m.getLBR_VeicUF_ID() > 0)
							? Integer.valueOf(m.getLBR_VeicUF_ID()) : null;
				});

		// condutor: 1 a 10 por manifesto, nome e CPF ambos obrigatorios no schema.
		// O CPF fica opcional aqui de proposito - o pre-preenchimento cria a
		// linha so com o nome, porque nenhum motorista do cadastro tem CPF, e o
		// gerador do XML cobra na hora de transmitir. Opcional nao quer dizer
		// qualquer tamanho: se o operador digitar, tem de ser os 11 digitos.
		secaoCondutores = new WMDFeSecaoFilhos(m_WindowNo, "Condutores", "LBR_MDFeCondutor",
				List.of(MDFeCampo.textoReq("Name", "Nome"),
						MDFeCampo.digitos("LBR_CPF", "CPF", 11)),
				idDoMDFe, orgDoMDFe).comMaximo(10);

		secaoCIOT = new WMDFeSecaoFilhos(m_WindowNo, "CIOT", "LBR_MDFeCIOT",
				List.of(MDFeCampo.digitosReq("LBR_CIOT", "Numero do CIOT"),
						MDFeCampo.documento("CNPJ/CPF do responsavel", "LBR_CNPJ", "LBR_CPF", true)),
				idDoMDFe, orgDoMDFe).comMaximo(10);

		secaoValePed = new WMDFeSecaoFilhos(m_WindowNo, "Vale-pedagio", "LBR_MDFeValePed",
				List.of(MDFeCampo.digitosReq("LBR_CNPJForn", "CNPJ do fornecedor"),
						MDFeCampo.documento("CNPJ/CPF do pagador", "LBR_CNPJPg", "LBR_CPFPg", false),
						MDFeCampo.digitos("LBR_NCompra", "Numero do comprovante"),
						MDFeCampo.valor("LBR_ValueValePed", "Valor"),
						MDFeCampo.lista("LBR_tpValePed", "Tipo", "LBR_MDFe_tpValePed")),
				idDoMDFe, orgDoMDFe);

		secaoContratantes = new WMDFeSecaoFilhos(m_WindowNo, "Contratantes", "LBR_MDFeContratante",
				List.of(MDFeCampo.texto("Name", "Nome"),
						MDFeCampo.documento("CNPJ/CPF", "LBR_CNPJ", "LBR_CPF", false),
						MDFeCampo.texto("LBR_IdEstrangeiro", "Identificador estrangeiro"),
						MDFeCampo.texto("LBR_NroContrato", "Numero do contrato"),
						MDFeCampo.valor("LBR_ValueContract", "Valor global do contrato")),
				idDoMDFe, orgDoMDFe);

		// Pagamento do frete: so entra quando o frete e contratado de terceiro.
		// A forma de recebimento (banco+agencia, CNPJ do IPEF ou PIX) e xs:choice
		// no schema - preencher so uma; o gerador escolhe nessa ordem.
		secaoPagamentos = new WMDFeSecaoFilhos(m_WindowNo, "Pagamento do frete", "LBR_MDFeInfPag",
				List.of(MDFeCampo.texto("Name", "Nome do responsavel"),
						MDFeCampo.documento("CNPJ/CPF do responsavel", "LBR_CNPJ", "LBR_CPF", false),
						MDFeCampo.texto("LBR_IdEstrangeiro", "Identificador estrangeiro"),
						MDFeCampo.valor("LBR_ValueContract", "Valor do contrato"),
						MDFeCampo.listaReq("LBR_IndPag", "Forma de pagamento", "LBR_MDFe_indPag"),
						MDFeCampo.valor("LBR_ValueAdiant", "Valor do adiantamento"),
						MDFeCampo.lista("LBR_TpAntecip", "Antecipacao das parcelas", "LBR_MDFe_tpAntecip"),
						MDFeCampo.digitos("LBR_CodBanco", "Codigo do banco"),
						MDFeCampo.digitos("LBR_CodAgencia", "Codigo da agencia"),
						MDFeCampo.digitos("LBR_CNPJIPEF", "CNPJ da instituicao de pagamento"),
						MDFeCampo.texto("LBR_PIX", "Chave PIX")),
				idDoMDFe, orgDoMDFe);

		// A soma dos componentes tem que fechar com o valor do contrato
		// (regra F58, rejeicao 746) - o gerador confere antes de transmitir.
		secaoComponentes = new WMDFeSecaoFilhos(m_WindowNo,
				"Componentes do pagamento selecionado", "LBR_MDFeComp", "LBR_MDFeInfPag_ID",
				List.of(MDFeCampo.listaReq("LBR_TpComp", "Tipo", "LBR_MDFe_tpComp"),
						MDFeCampo.valor("LBR_ValueComp", "Valor"),
						MDFeCampo.texto("LBR_XComp", "Descricao")),
				() -> Integer.valueOf(secaoPagamentos.getSelecionado()), orgDoMDFe);

		secaoParcelas = new WMDFeSecaoFilhos(m_WindowNo,
				"Parcelas do pagamento selecionado", "LBR_MDFePrazo", "LBR_MDFeInfPag_ID",
				List.of(MDFeCampo.digitosReq("LBR_NParcela", "Numero da parcela"),
						MDFeCampo.data("LBR_DateDue", "Vencimento", true),
						MDFeCampo.valor("LBR_ValueParcela", "Valor da parcela")),
				() -> Integer.valueOf(secaoPagamentos.getSelecionado()), orgDoMDFe);

		secaoSeguros = new WMDFeSecaoFilhos(m_WindowNo, "Seguros da carga", "LBR_MDFeSeg",
				List.of(MDFeCampo.listaReq("LBR_RespSeg", "Responsavel", "LBR_MDFe_respSeg"),
						MDFeCampo.documento("CNPJ/CPF do responsavel", "LBR_RespCNPJ", "LBR_RespCPF", false),
						MDFeCampo.texto("LBR_SegName", "Seguradora"),
						MDFeCampo.digitos("LBR_SegCNPJ", "CNPJ da seguradora"),
						MDFeCampo.texto("LBR_NApol", "Numero da apolice")),
				idDoMDFe, orgDoMDFe);

		// Averbacao pendura no seguro, nao no MDF-e: cada apolice tem as suas.
		secaoAverbacoes = new WMDFeSecaoFilhos(m_WindowNo, "Averbacoes do seguro selecionado",
				"LBR_MDFeAverb", "LBR_MDFeSeg_ID",
				List.of(MDFeCampo.textoReq("LBR_NAver", "Numero da averbacao")),
				() -> Integer.valueOf(secaoSeguros.getSelecionado()), orgDoMDFe);

		secaoLacresRodo = new WMDFeSecaoFilhos(m_WindowNo, "Lacres do modal rodoviario",
				"LBR_MDFeLacre",
				List.of(MDFeCampo.textoReq("LBR_NLacre", "Numero do lacre")),
				idDoMDFe, orgDoMDFe).comFixo("LBR_LacreScope", "R");

		secaoLacresMDFe = new WMDFeSecaoFilhos(m_WindowNo, "Lacres do MDF-e", "LBR_MDFeLacre",
				List.of(MDFeCampo.textoReq("LBR_NLacre", "Numero do lacre")),
				idDoMDFe, orgDoMDFe).comFixo("LBR_LacreScope", "M");

		// peri pendura no documento fiscal, nao no MDF-e: produto perigoso e
		// declarado por nota, nao por manifesto.
		secaoPerigosos = new WMDFeSecaoFilhos(m_WindowNo,
				"Produtos perigosos do documento selecionado", "LBR_MDFePerigoso", "LBR_MDFeDoc_ID",
				List.of(MDFeCampo.digitosReq("LBR_NONU", "Numero ONU"),
						MDFeCampo.textoReq("LBR_QTotProd", "Quantidade total"),
						MDFeCampo.texto("LBR_QVolTipo", "Quantidade e tipo de volumes"),
						MDFeCampo.texto("LBR_XNomeAE", "Nome para embarque"),
						MDFeCampo.texto("LBR_XClaRisco", "Classe de risco"),
						MDFeCampo.texto("LBR_GrEmb", "Grupo de embalagem")),
				() -> Integer.valueOf(documentoSelecionado()), orgDoMDFe);

		secaoAutXML = new WMDFeSecaoFilhos(m_WindowNo, "Autorizados a baixar o XML",
				"LBR_MDFeAutXML",
				List.of(MDFeCampo.documento("CNPJ/CPF", "LBR_CNPJ", "LBR_CPF", true)),
				idDoMDFe, orgDoMDFe).comMaximo(10);

		// Estas penduram na linha escolhida de outra secao, nao no MDF-e. Sem a
		// ligacao a grade filha nao recarregava ao trocar de pai, e o erro de
		// "sem pai" mandava gravar o MDF-e - que podia ja estar gravado; o que
		// faltava era escolher a linha do seguro ou do pagamento.
		secaoSeguros.comDependente(secaoAverbacoes);
		secaoPagamentos.comDependente(secaoComponentes).comDependente(secaoParcelas);

		// Perigosos pendura no documento fiscal, cuja grade e a da aba de
		// documentos e nao uma secao - so o rotulo do erro vem daqui.
		secaoPerigosos.comRotuloPai("Documentos fiscais");

		secoes.add(secaoCondutores);
		secoes.add(secaoReboques);
		secoes.add(secaoCIOT);
		secoes.add(secaoValePed);
		secoes.add(secaoContratantes);
		secoes.add(secaoSeguros);
		secoes.add(secaoAverbacoes);
		secoes.add(secaoLacresRodo);
		secoes.add(secaoLacresMDFe);
		secoes.add(secaoAutXML);
		secoes.add(secaoPerigosos);
		secoes.add(secaoPagamentos);
		secoes.add(secaoComponentes);
		secoes.add(secaoParcelas);
	}

	private void preencherCombo(Combobox combo, String referencia) {
		preencherCombo(combo, referencia, false);
	}

	/** Popula um combo com os valores de uma AD_Reference tipo lista. */
	private void preencherCombo(Combobox combo, String referencia, boolean comVazio)
	{
		int refId = org.compiere.util.DB.getSQLValue(null,
				"SELECT AD_Reference_ID FROM AD_Reference WHERE Name=?", referencia);

		if (refId <= 0)
		{
			// Combo vazio sem explicacao nenhuma era o sintoma: a lista some da
			// tela e so o log do servidor diz por que. O texto vai no proprio
			// campo porque e onde o operador esta olhando, e porque lancar aqui
			// derrubaria a montagem inteira do formulario por causa de uma lista.
			log.warning("Referencia nao encontrada: " + referencia);
			combo.setPlaceholder("Lista '" + referencia + "' ausente - aplique a migracao do MDF-e");
			return;
		}

		combo.getItems().clear();

		if (comVazio)
			combo.appendItem("", "");

		for (ValueNamePair vp : MRefList.getList(Env.getCtx(), refId, false))
			combo.appendItem(vp.getName(), vp.getValue());
	}

	private void zkInit() throws Exception
	{
		Div div = new Div();
		div.setStyle("height: 100%; width: 100%; overflow: auto;");
		div.appendChild(mainLayout);
		form.appendChild(div);
		ZKUpdateUtil.setWidth(mainLayout, "100%");
		mainLayout.setStyle("min-height: 100%");

		montarCabecalho();
		montarAbas();
		montarRodape();
	}

	private void montarCabecalho() throws Exception
	{
		novoButton.setLabel("Novo");
		novoButton.setImage(ThemeManager.getThemeResource("images/New16.png"));
		novoButton.addActionListener(this);


		gravarButton.setLabel("Gravar");
		gravarButton.setImage(ThemeManager.getThemeResource("images/Save16.png"));
		gravarButton.addActionListener(this);

		excluirButton.setLabel("Excluir");
		excluirButton.setImage(ThemeManager.getThemeResource("images/Delete16.png"));
		excluirButton.addActionListener(this);

		localizarButton.setLabel("Localizar");
		localizarButton.setImage(ThemeManager.getThemeResource("images/Find16.png"));
		localizarButton.addActionListener(this);

		cancelarButton.setLabel("Cancelar MDF-e");
		cancelarButton.setImage(ThemeManager.getThemeResource("images/Cancel16.png"));
		cancelarButton.addActionListener(this);

		condutorEventoButton.setLabel("Incluir condutor");
		condutorEventoButton.setImage(ThemeManager.getThemeResource("images/New16.png"));
		condutorEventoButton.addActionListener(this);

		consultarButton.setLabel("Consultar na SEFAZ");
		consultarButton.setImage(ThemeManager.getThemeResource("images/Refresh16.png"));
		consultarButton.addActionListener(this);

		naoEncerradosButton.setLabel("Nao encerrados");
		naoEncerradosButton.setImage(ThemeManager.getThemeResource("images/Find16.png"));
		naoEncerradosButton.addActionListener(this);

		statusButton.setLabel("Status da SEFAZ");
		statusButton.setImage(ThemeManager.getThemeResource("images/Info16.png"));
		statusButton.addActionListener(this);

		transmitirButton.setLabel("Transmitir");
		transmitirButton.setImage(ThemeManager.getThemeResource("images/Process16.png"));
		transmitirButton.addActionListener(this);

		imprimirButton.setLabel("Imprimir DAMDFE");
		imprimirButton.setImage(ThemeManager.getThemeResource("images/Print16.png"));
		imprimirButton.addActionListener(this);

		encerrarButton.setLabel("Encerrar");
		encerrarButton.setImage(ThemeManager.getThemeResource("images/Cancel16.png"));
		encerrarButton.addActionListener(this);

		// Hbox nao quebra linha: com treze botoes os das pontas saiam da area
		// visivel sem nem uma barra de rolagem para avisar. Um flex com wrap
		// desce para a linha de baixo em vez de esconder, e nenhum botao some
		// por mais estreita que fique a janela.
		Div barra = new Div();
		barra.setStyle("display: flex; flex-wrap: wrap; gap: 6px 18px;"
				+ " align-items: flex-start; width: 100%; padding: 2px 0;");

		// Agrupados pelo que fazem, e nessa ordem porque e a ordem em que sao
		// usados: monta o documento, manda para a SEFAZ, pergunta, imprime.
		grupo(barra, "Documento", comExtras(novoButton, gravarButton, excluirButton, localizarButton));
		grupo(barra, "SEFAZ", transmitirButton, cancelarButton, encerrarButton,
				condutorEventoButton);
		grupo(barra, "Consultas", consultarButton, naoEncerradosButton, statusButton);
		grupo(barra, "Impressao", imprimirButton);

		situacaoLabel.setStyle("font-weight: bold; padding: 0 8px;");
		chaveLabel.setStyle("font-family: monospace;");
		emitenteLabel.setStyle("font-weight: bold;");

		ZKUpdateUtil.setHflex(numeroField, "1");
		numeroField.setReadonly(true);
		ZKUpdateUtil.setHflex(serieField, "1");

		cabecalhoGrid.setWidth("100%");
		colunas(cabecalhoGrid, "11%", "14%", "11%", "14%", "11%", "14%", "11%", "14%");
		Rows rows = cabecalhoGrid.newRows();

		Row r0 = rows.newRow();
		r0.appendCellChild(barra, 8);

		Row r1 = rows.newRow();
		r1.appendCellChild(new Label("Emitente"), 1);
		r1.appendCellChild(emitenteLabel, 3);
		r1.appendCellChild(new Label("Situacao"), 1);
		r1.appendCellChild(situacaoLabel, 3);

		Row r2 = rows.newRow();
		r2.appendCellChild(new Label("Chave"), 1);
		r2.appendCellChild(chaveLabel, 7);

		Row r3 = rows.newRow();
		r3.appendCellChild(new Label("Numero"), 1);
		r3.appendCellChild(numeroField, 1);
		r3.appendCellChild(new Label("Serie"), 1);
		r3.appendCellChild(serieField, 1);
		r3.appendCellChild(new Label("Emissao"), 1);
		r3.appendCellChild(dataEmissaoEditor.getComponent(), 1);
		r3.appendCellChild(new Label("Inicio da viagem"), 1);
		r3.appendCellChild(dataViagemEditor.getComponent(), 1);

		Row r4 = rows.newRow();
		r4.appendCellChild(new Label("Ambiente"), 1);
		r4.appendCellChild(tpAmbCombo, 1);
		r4.appendCellChild(new Label("Tipo do emitente"), 1);
		r4.appendCellChild(tpEmitCombo, 1);
		r4.appendCellChild(new Label("Tipo do transportador"), 1);
		r4.appendCellChild(tpTranspCombo, 1);
		r4.appendCellChild(new Label("Modalidade"), 1);
		r4.appendCellChild(modalCombo, 1);

		Row r5 = rows.newRow();
		r5.appendCellChild(new Label("UF de inicio"), 1);
		r5.appendCellChild(ufIniEditor.getComponent(), 1);
		r5.appendCellChild(new Label("UF de fim"), 1);
		r5.appendCellChild(ufFimEditor.getComponent(), 1);
		r5.appendCellChild(new Label("Protocolo"), 1);
		r5.appendCellChild(protocoloLabel, 1);

		camposExtrasDoCabecalho(r5);

		cabecalhoPanel.appendChild(cabecalhoGrid);

		North north = new North();
		north.appendChild(cabecalhoPanel);
		north.setSplittable(false);
		mainLayout.appendChild(north);
	}

	private void montarAbas() throws Exception
	{
		Tabbox tabbox = new Tabbox();
		ZKUpdateUtil.setHflex(tabbox, "1");
		ZKUpdateUtil.setVflex(tabbox, "1");

		Tabs tabs = new Tabs();
		Tabpanels panels = new Tabpanels();
		tabbox.appendChild(tabs);
		tabbox.appendChild(panels);

		tabs.appendChild(new Tab("Rodoviario"));
		panels.appendChild(painelRodoviario());

		tabs.appendChild(new Tab("ANTT"));
		panels.appendChild(painelANTT());

		tabs.appendChild(new Tab("Seguro e lacres"));
		panels.appendChild(painelSeguroLacres());

		tabs.appendChild(new Tab("Informacoes dos documentos"));
		panels.appendChild(painelDocumentos());

		tabs.appendChild(new Tab("Informacoes adicionais"));
		panels.appendChild(painelAdicionais());

		tabs.appendChild(new Tab("Totalizadores / Emissao"));
		panels.appendChild(painelTotalizadores());

		Center center = new Center();
		center.setAutoscroll(true);
		center.appendChild(tabbox);
		mainLayout.appendChild(center);
	}

	private Tabpanel painelRodoviario() {
		Tabpanel panel = new Tabpanel();

		// A aba junta veiculo, proprietario, percurso, condutores e reboques.
		// Sem rolagem propria, o que passa da altura da aba simplesmente some -
		// foi o que aconteceu com a grade dos reboques.
		Div div = new Div();
		div.setStyle("height: 100%; width: 100%; overflow: auto;");

		Grid grid = GridFactory.newGridLayout();
		grid.setWidth("100%");
		colunas(grid, "13%", "20%", "13%", "20%", "13%", "21%");
		Rows rows = grid.newRows();

		ZKUpdateUtil.setHflex(placaField, "1");
		ZKUpdateUtil.setHflex(renavamField, "1");
		ZKUpdateUtil.setHflex(rntrcField, "1");

		Row r1 = rows.newRow();
		r1.appendCellChild(new Label("RNTRC"), 1);
		r1.appendCellChild(rntrcField, 1);
		r1.appendCellChild(new Label("Placa"), 1);
		r1.appendCellChild(placaField, 1);
		r1.appendCellChild(new Label("RENAVAM"), 1);
		r1.appendCellChild(renavamField, 1);

		Row r2 = rows.newRow();
		r2.appendCellChild(new Label("Tara (KG)"), 1);
		r2.appendCellChild(taraEditor.getComponent(), 1);
		r2.appendCellChild(new Label("Capacidade (KG)"), 1);
		r2.appendCellChild(capKgEditor.getComponent(), 1);
		r2.appendCellChild(new Label("Capacidade (M3)"), 1);
		r2.appendCellChild(capM3Editor.getComponent(), 1);

		Row r3 = rows.newRow();
		r3.appendCellChild(new Label("Tipo de rodado"), 1);
		r3.appendCellChild(tpRodCombo, 1);
		r3.appendCellChild(new Label("Tipo de carroceria"), 1);
		r3.appendCellChild(tpCarCombo, 1);

		// proprietario do veiculo de tracao (grupo prop, so para veiculo de
		// terceiro - o manual e explicito: "so preenchido quando o veiculo nao
		// pertencer a empresa emitente")
		propTerceiroBox.setLabel("Veiculo de terceiro");
		propTerceiroBox.addActionListener(this);
		ZKUpdateUtil.setHflex(propDocField, "1");
		propDocField.setPlaceholder("CNPJ ou CPF do proprietario");
		ZKUpdateUtil.setHflex(propRntrcField, "1");
		propRntrcField.setPlaceholder("RNTRC");
		ZKUpdateUtil.setHflex(propNomeField, "1");
		propNomeField.setPlaceholder("Razao social ou nome");
		ZKUpdateUtil.setHflex(propIeField, "1");
		propIeField.setPlaceholder("IE (opcional)");

		Row r4 = rows.newRow();
		r4.appendCellChild(propTerceiroBox, 1);
		r4.appendCellChild(propDocField, 1);
		r4.appendCellChild(new Label("RNTRC"), 1);
		r4.appendCellChild(propRntrcField, 1);
		r4.appendCellChild(new Label("Tipo"), 1);
		r4.appendCellChild(propTpPropCombo, 1);

		Row r5 = rows.newRow();
		r5.appendCellChild(new Label("Proprietario"), 1);
		r5.appendCellChild(propNomeField, 1);
		r5.appendCellChild(new Label("IE"), 1);
		r5.appendCellChild(propIeField, 1);
		r5.appendCellChild(new Label("UF"), 1);
		r5.appendCellChild(propUFEditor.getComponent(), 1);

		panel.appendChild(grid);

		// percurso: UF entre carregamento e descarregamento (regra F90 do MOC,
		// rejeicao 663 - obrigatorio sempre que houver UF no meio do caminho)
		Grid gPerc = GridFactory.newGridLayout();
		gPerc.setWidth("100%");
		colunas(gPerc, "15%", "35%", "15%", "35%");
		Rows rPercs = gPerc.newRows();

		addPercursoButton.setLabel("Adicionar UF");
		addPercursoButton.addActionListener(this);
		delPercursoButton.setLabel("Remover UF");
		delPercursoButton.addActionListener(this);

		Row rp = rPercs.newRow();
		rp.appendCellChild(new Label("Percurso (UF no meio do caminho)"), 1);
		rp.appendCellChild(percursoUFEditor.getComponent(), 1);
		rp.appendCellChild(addPercursoButton, 1);
		rp.appendCellChild(delPercursoButton, 1);

		panel.appendChild(gPerc);

		// Unica grade que sobrou na aba: fica com a altura que era das grades
		// de condutores e reboques, agora em janela propria.
		ZKUpdateUtil.setHeight(percursoTable, "260px");
		panel.appendChild(percursoTable);

		// Condutores e reboques em janela propria: as duas grades, mais as
		// linhas de campos do reboque, comiam mais de 400px desta aba - a mesma
		// do veiculo, do proprietario e do percurso.
		condutoresButton.setLabel("Condutores");
		condutoresButton.setImage(ThemeManager.getThemeResource("images/Detail16.png"));
		condutoresButton.addActionListener(this);

		reboquesButton.setLabel("Reboques");
		reboquesButton.setImage(ThemeManager.getThemeResource("images/Detail16.png"));
		reboquesButton.addActionListener(this);

		Div dFilhos = new Div();
		dFilhos.setStyle("padding: 4px 0;");
		dFilhos.appendChild(condutoresButton);
		dFilhos.appendChild(reboquesButton);
		panel.appendChild(dFilhos);

		return panel;
	}

	/**
	 * Grupo infANTT: RNTRC, CIOT, vale-pedagio e contratantes.
	 *
	 * <p>Nada aqui e obrigatorio para carga propria em veiculo proprio; tudo
	 * passa a ser quando entra veiculo de terceiro ou frete contratado.
	 */
	private Tabpanel painelANTT() {
		Tabpanel panel = new Tabpanel();
		Div div = new Div();
		div.setStyle("height: 100%; width: 100%; overflow: auto;");

		Grid grid = GridFactory.newGridLayout();
		grid.setWidth("100%");
		colunas(grid, "15%", "35%", "15%", "35%");
		Rows rows = grid.newRows();

		Row r1 = rows.newRow();
		r1.appendCellChild(new Label("Categoria de combinacao veicular"), 1);
		r1.appendCellChild(categCombVeicCombo, 1);
		r1.appendCellChild(new Label("Agendamento no porto"), 1);
		r1.appendCellChild(codAgPortoField, 1);

		div.appendChild(grid);
		div.appendChild(secaoCIOT.getPainel());
		div.appendChild(secaoValePed.getPainel());
		div.appendChild(secaoContratantes.getPainel());
		div.appendChild(secaoPagamentos.getPainel());
		div.appendChild(secaoComponentes.getPainel());
		div.appendChild(secaoParcelas.getPainel());

		panel.appendChild(div);
		return panel;
	}

	/**
	 * Seguro da carga, averbacoes e os dois grupos de lacre.
	 *
	 * <p>O leiaute tem lacre em dois lugares: {@code lacres}, no MDF-e, e
	 * {@code lacRodo}, no modal rodoviario. Nao sao intercambiaveis, por isso
	 * sao duas listas separadas em vez de uma so com um campo de tipo.
	 */
	private Tabpanel painelSeguroLacres() {
		Tabpanel panel = new Tabpanel();
		Div div = new Div();
		div.setStyle("height: 100%; width: 100%; overflow: auto;");

		div.appendChild(secaoSeguros.getPainel());
		div.appendChild(secaoAverbacoes.getPainel());
		div.appendChild(secaoLacresRodo.getPainel());
		div.appendChild(secaoLacresMDFe.getPainel());
		div.appendChild(secaoAutXML.getPainel());

		panel.appendChild(div);
		return panel;
	}

	private Tabpanel painelDocumentos() {
		Tabpanel panel = new Tabpanel();

		Grid grid = GridFactory.newGridLayout();
		grid.setWidth("100%");
		colunas(grid, "13%", "20%", "13%", "20%", "13%", "21%");
		Rows rows = grid.newRows();

		ZKUpdateUtil.setHflex(chaveNFeField, "1");
		chaveNFeField.setPlaceholder("Chave da NF-e (44 posicoes)");

		// Um botao para os dois grupos de municipio; o tipo decide qual. A chave
		// da NF-e tem botao proprio: quando ela dividia o botao com o municipio,
		// pedir um municipio de descarregamento acabava em "a chave deve ter 44
		// digitos", que nao e o que o operador estava fazendo.
		tipoMunicipioCombo.appendItem("Carregamento");
		tipoMunicipioCombo.appendItem("Descarregamento");
		tipoMunicipioCombo.setReadonly(true);   // so escolha na lista; sem digitacao livre
		tipoMunicipioCombo.setSelectedIndex(IDX_CARREGAMENTO);

		addMunicipioButton.setLabel("Adicionar");
		addMunicipioButton.addActionListener(this);
		delMunicipioButton.setLabel("Excluir");
		delMunicipioButton.addActionListener(this);

		addNFeButton.setLabel("Adicionar");
		addNFeButton.addActionListener(this);
		delNFeButton.setLabel("Excluir");
		delNFeButton.addActionListener(this);

		Row r1 = rows.newRow();
		r1.appendCellChild(new Label("Municipio"), 1);
		r1.appendCellChild(cidadeEditor.getComponent(), 1);
		r1.appendCellChild(new Label("Tipo"), 1);
		r1.appendCellChild(tipoMunicipioCombo, 1);
		r1.appendCellChild(addMunicipioButton, 1);
		r1.appendCellChild(delMunicipioButton, 1);

		Row r2 = rows.newRow();
		r2.appendCellChild(new Label("Chave da NF-e"), 1);
		r2.appendCellChild(chaveNFeField, 3);
		r2.appendCellChild(addNFeButton, 1);
		r2.appendCellChild(delNFeButton, 1);

		panel.appendChild(grid);

		ZKUpdateUtil.setHeight(carregamentoTable, "120px");
		panel.appendChild(carregamentoTable);

		panel.appendChild(new Label("Documentos manifestados"));
		ZKUpdateUtil.setHeight(documentosTable, "300px");
		panel.appendChild(documentosTable);

		return panel;
	}

	private Tabpanel painelAdicionais()
	{
		Tabpanel panel = new Tabpanel();
		Grid grid = GridFactory.newGridLayout();
		grid.setWidth("100%");
		colunas(grid, "15%", "35%", "15%", "35%");
		Rows rows = grid.newRows();

		infAdFiscoField.setMultiline(true);
		infAdFiscoField.setRows(4);
		infAdFiscoField.setWidth("100%");

		infCplField.setMultiline(true);
		infCplField.setRows(8);
		infCplField.setWidth("100%");

		Row r1 = rows.newRow();
		r1.appendCellChild(new Label("Informacoes ao fisco"), 1);
		r1.appendCellChild(infAdFiscoField, 3);

		Row r2 = rows.newRow();
		r2.appendCellChild(new Label("Informacoes complementares"), 1);
		r2.appendCellChild(infCplField, 3);

		// carga lotacao: cada local e CEP ou o par de coordenadas, nunca os dois
		ZKUpdateUtil.setHflex(carregaCepField, "1");
		carregaCepField.setPlaceholder("CEP");
		ZKUpdateUtil.setHflex(carregaLatField, "1");
		carregaLatField.setPlaceholder("Latitude");
		ZKUpdateUtil.setHflex(carregaLonField, "1");
		carregaLonField.setPlaceholder("Longitude");
		ZKUpdateUtil.setHflex(descarregaCepField, "1");
		descarregaCepField.setPlaceholder("CEP");
		ZKUpdateUtil.setHflex(descarregaLatField, "1");
		descarregaLatField.setPlaceholder("Latitude");
		ZKUpdateUtil.setHflex(descarregaLonField, "1");
		descarregaLonField.setPlaceholder("Longitude");

		Row r3 = rows.newRow();
		r3.appendCellChild(new Label("Carga lotacao: carregamento"), 1);
		r3.appendCellChild(carregaCepField, 1);
		r3.appendCellChild(carregaLatField, 1);
		r3.appendCellChild(carregaLonField, 1);

		Row r4 = rows.newRow();
		r4.appendCellChild(new Label("Carga lotacao: descarregamento"), 1);
		r4.appendCellChild(descarregaCepField, 1);
		r4.appendCellChild(descarregaLatField, 1);
		r4.appendCellChild(descarregaLonField, 1);

		ZKUpdateUtil.setHflex(respTecCnpjField, "1");
		respTecCnpjField.setPlaceholder("CNPJ");
		ZKUpdateUtil.setHflex(respTecContatoField, "1");
		respTecContatoField.setPlaceholder("Contato");
		ZKUpdateUtil.setHflex(respTecEmailField, "1");
		respTecEmailField.setPlaceholder("E-mail");
		ZKUpdateUtil.setHflex(respTecFoneField, "1");
		respTecFoneField.setPlaceholder("Telefone");

		Row r5 = rows.newRow();
		r5.appendCellChild(new Label("Responsavel tecnico"), 1);
		r5.appendCellChild(respTecCnpjField, 1);
		r5.appendCellChild(respTecContatoField, 1);
		r5.appendCellChild(respTecEmailField, 1);

		Row r6 = rows.newRow();
		r6.appendCellChild(new Label("Telefone do responsavel"), 1);
		r6.appendCellChild(respTecFoneField, 1);

		panel.appendChild(grid);
		return panel;
	}

	private Tabpanel painelTotalizadores()
	{
		Tabpanel panel = new Tabpanel();
		Grid grid = GridFactory.newGridLayout();
		grid.setWidth("100%");
		colunas(grid, "15%", "35%", "15%", "35%");
		Rows rows = grid.newRows();

		Row r1 = rows.newRow();
		r1.appendCellChild(new Label("Quantidade de NF-e"), 1);
		r1.appendCellChild(qNFeEditor.getComponent(), 1);
		r1.appendCellChild(new Label("Valor total da carga"), 1);
		r1.appendCellChild(vCargaEditor.getComponent(), 1);

		Row r2 = rows.newRow();
		r2.appendCellChild(new Label("Unidade do peso bruto"), 1);
		r2.appendCellChild(cUnidCombo, 1);
		r2.appendCellChild(new Label("Peso bruto da carga"), 1);
		r2.appendCellChild(qCargaEditor.getComponent(), 1);

		// produto predominante: obrigatorio para prestador de servico e para
		// transportador proprio que informa o tipo de transportador (regra F54,
		// rejeicao 725). Facultativo para carga propria pura, mas o campo tem
		// que existir para quem precisar.
		ZKUpdateUtil.setHflex(prodPredField, "1");
		prodPredField.setPlaceholder("Descricao do produto predominante");
		ZKUpdateUtil.setHflex(ncmField, "1");
		ncmField.setPlaceholder("NCM");
		ZKUpdateUtil.setHflex(eanField, "1");
		eanField.setPlaceholder("GTIN/EAN");

		Row r3 = rows.newRow();
		r3.appendCellChild(new Label("Tipo de carga"), 1);
		r3.appendCellChild(tpCargaCombo, 1);
		r3.appendCellChild(new Label("Produto predominante"), 1);
		r3.appendCellChild(prodPredField, 1);

		Row r4 = rows.newRow();
		r4.appendCellChild(new Label("NCM"), 1);
		r4.appendCellChild(ncmField, 1);
		r4.appendCellChild(new Label("GTIN/EAN"), 1);
		r4.appendCellChild(eanField, 1);

		panel.appendChild(grid);

		retornoField.setMultiline(true);
		retornoField.setRows(10);
		retornoField.setWidth("100%");
		retornoField.setReadonly(true);
		panel.appendChild(new Label("Retorno da SEFAZ"));
		panel.appendChild(retornoField);

		return panel;
	}

	private void montarRodape()
	{
		avisosLabel.setStyle("color: #b45309;");

		South south = new South();
		south.appendChild(avisosLabel);
		south.setSplittable(false);
		mainLayout.appendChild(south);
	}

	// ----------------------------------------------------------------- eventos

	@Override
	public void onEvent(Event event) throws Exception
	{
		Object alvo = event.getTarget();

		try {
			if (tratarEventoExtra(alvo)) {
				// tratado por quem estendeu o formulario
			} else if (alvo == novoButton) {
				novo();
				atualizarTela();
			}
			else if (alvo == gravarButton)
			{
				lerTela();
				gravar();
				atualizarTela();
				Dialog.info(m_WindowNo, null, "MDF-e gravado");
			}
			else if (alvo == excluirButton)
			{
				excluir();
				atualizarTela();
			}
			else if (alvo == condutoresButton)
			{
				abrirSecao(secaoCondutores, "Condutores");
			}
			else if (alvo == reboquesButton)
			{
				abrirSecao(secaoReboques, "Reboques");
			} else if (alvo == propTerceiroBox) {
				habilitarProprietarioTracao();
			} else if (alvo == documentosTable) {
				secaoPerigosos.carregar();
			} else if (alvo == addPercursoButton) {
				acaoAdicionarPercurso();
			} else if (alvo == delPercursoButton) {
				acaoRemoverPercurso();
			}
			else if (alvo == addMunicipioButton)
			{
				acaoAdicionarMunicipio();
			}
			else if (alvo == delMunicipioButton)
			{
				acaoRemoverMunicipio();
			}
			else if (alvo == addNFeButton)
			{
				acaoAdicionarNFe();
			}
			else if (alvo == delNFeButton)
			{
				acaoRemoverNFe();
			}
			else if (alvo == transmitirButton)
			{
				acaoTransmitir();
			}
			else if (alvo == localizarButton)
			{
				acaoLocalizar();
			} else if (alvo == cancelarButton) {
				acaoCancelar();
			} else if (alvo == imprimirButton) {
				acaoImprimirDAMDFE();
			} else if (alvo == encerrarButton) {
				acaoEncerrar();
			} else if (alvo == condutorEventoButton) {
				acaoIncluirCondutor();
			} else if (alvo == consultarButton) {
				acaoConsultarSituacao();
			} else if (alvo == naoEncerradosButton) {
				acaoNaoEncerrados();
			} else if (alvo == statusButton) {
				acaoStatusServico();
			} else if (alvo instanceof ProcessModalDialog) {
				// So no fechamento. O ProcessModalDialog registra o mesmo listener
				// para ON_WINDOW_CLOSE e para ON_BEFORE_RUN_PROCESS; decidir pelo
				// componente, sem olhar o nome do evento, fazia o resultado ser
				// mostrado duas vezes - uma antes de o processo rodar, com o
				// ProcessInfo ainda limpo ("concluido"), e outra depois, com o
				// erro de verdade.
				if (DialogEvents.ON_WINDOW_CLOSE.equals(event.getName()))
					mostrarResultadoProcesso((ProcessModalDialog) alvo);
			}
		}
		catch (AdempiereException e)
		{
			Dialog.error(m_WindowNo, null, MDFeUtil.mensagem(e));
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
			Dialog.error(m_WindowNo, null, MDFeUtil.mensagem(e));
		}
	}

	@Override
	public void valueChange(ValueChangeEvent evt)
	{
		// nada a fazer: os editores do cabecalho sao lidos em lerTela(). O gancho
		// existe para quem estender o formulario e acrescentar editores proprios.
	}

	protected void abrirEAtualizar(int LBR_MDFe_ID) {
		try
		{
			abrir(LBR_MDFe_ID);
			atualizarTela();
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
			Dialog.error(m_WindowNo, null, MDFeUtil.mensagem(e));
		}
	}

	private void acaoImprimirDAMDFE() throws Exception {
		exigirAberto();

		JasperPrint impressao = DAMDFEImpressao.gerar(getMDFe());

		if (impressao.getPages().isEmpty())
			throw new AdempiereException("O DAMDFE saiu vazio");

		JRViewerProvider viewer = Service.locator().locate(JRViewerProvider.class).getService();

		if (viewer == null)
			throw new AdempiereException("Visualizador de relatorios nao disponivel");

		ProcessInfo info = new ProcessInfo("DAMDFE " + getMDFe().getDocumentNo(), 0);
		viewer.openViewer(impressao, "PDF", new PrintInfo(info));
	}

	/** Lista os manifestos gravados e abre o escolhido. */
	private void acaoLocalizar()
	{
		WMDFeLocalizar busca = new WMDFeLocalizar(m_WindowNo, this);

		busca.addEventListener(DialogEvents.ON_WINDOW_CLOSE, new EventListener<Event>()
		{
			@Override
			public void onEvent(Event evento)
			{
				int escolhido = busca.getEscolhido();

				if (escolhido > 0)
					abrirEAtualizar(escolhido);
			}
		});

		AEnv.showWindow(busca);
	}

	/**
	 * Abre uma secao de filhos em janela propria.
	 *
	 * <p>A grade dos condutores morava na aba do modal rodoviario - a mesma aba
	 * do veiculo, do proprietario, do percurso e dos reboques - e comia quase
	 * 200px de altura. Em janela ela cabe inteira e a aba fica com os campos.
	 *
	 * <p>A secao ja traz grade, Novo/Editar/Remover e a janela de edicao; aqui
	 * so falta hospeda-la. {@code carregar()} antes de abrir porque a grade pode
	 * estar defasada se o registro mudou por outro caminho (o pre-preenchimento
	 * pela entrega, por exemplo).
	 */
	private void abrirSecao(WMDFeSecaoFilhos secao, String titulo)
	{
		secao.carregar();

		Window janela = new Window();
		janela.setTitle(titulo);
		janela.setBorder("normal");
		janela.setClosable(true);
		janela.setSizable(true);
		ZKUpdateUtil.setWindowWidthX(janela, 560);
		janela.appendChild(secao.getPainel());

		AEnv.showWindow(janela);
	}

	private int inteiro(BigDecimal valor) {
		return (valor == null) ? 0 : valor.intValue();
	}

	/** Rotulo do item cujo valor bate, para a grade nao mostrar so o codigo. */
	private String rotuloCombo(Combobox combo, String valor) {
		if (valor == null)
			return "";

		for (Object item : combo.getItems()) {
			Comboitem ci = (Comboitem) item;

			if (valor.equals(ci.getValue()))
				return ci.getLabel();
		}

		return valor;
	}

	private void acaoAdicionarPercurso() {
		exigirAberto();

		Object uf = percursoUFEditor.getValue();

		if (uf == null)
			throw new AdempiereException("Escolha a UF de percurso");

		int C_Region_ID = ((Integer) uf).intValue();

		if (getPercurso().size() >= MAX_PERCURSO)
			throw new AdempiereException("O MDF-e aceita no maximo " + MAX_PERCURSO + " UF de percurso");

		for (X_LBR_MDFePercurso p : getPercurso())
			if (p.getC_Region_ID() == C_Region_ID)
				throw new AdempiereException("Esta UF ja esta no percurso");

		// A ordem importa: o percurso e validado como a sequencia de divisas
		// entre carregamento e descarregamento (regra F90). Cada UF entra no
		// fim da lista, entao o operador informa na ordem em que atravessa.
		X_LBR_MDFePercurso perc = new X_LBR_MDFePercurso(Env.getCtx(), 0, null);
		perc.setAD_Org_ID(getMDFe().getAD_Org_ID());
		perc.setLBR_MDFe_ID(getMDFe().getLBR_MDFe_ID());
		perc.setLine((getPercurso().size() + 1) * 10);
		perc.setC_Region_ID(C_Region_ID);
		perc.saveEx();

		percursoUFEditor.setValue(null);
		carregarPercurso();
	}

	private void acaoRemoverPercurso() {
		exigirAberto();

		int linha = percursoTable.getSelectedRow();

		if (linha < 0)
			throw new AdempiereException("Selecione a UF a remover");

		int id = (Integer) percursoTable.getValueAt(linha, 0);
		new X_LBR_MDFePercurso(Env.getCtx(), id, null).deleteEx(true);
		carregarPercurso();
	}

	/**
	 * Le o grupo do proprietario do veiculo de tracao.
	 *
	 * <p>CPF e CNPJ sao exclusivos no schema, entao o operador digita um campo
	 * so e o tamanho decide qual e - 11 digitos e CPF, 14 e CNPJ.
	 */
	private void lerProprietarioTracao(MLBRMDFe m) {
		boolean terceiro = propTerceiroBox.isChecked();

		m.setLBR_IsOwnerNotEmitter(terceiro);

		if (!terceiro) {
			m.setLBR_PropCNPJ(null);
			m.setLBR_PropCPF(null);
			m.setLBR_PropRNTRC(null);
			m.setLBR_PropName(null);
			m.setLBR_PropIE(null);
			m.setLBR_PropUF_ID(0);
			m.setLBR_tpProp(null);
			return;
		}

		String doc = soDigitos(propDocField.getValue());

		if (doc.length() != 11 && doc.length() != 14)
			throw new AdempiereException(
					"CNPJ (14 digitos) ou CPF (11 digitos) do proprietario do veiculo");

		m.setLBR_PropCPF(doc.length() == 11 ? doc : null);
		m.setLBR_PropCNPJ(doc.length() == 14 ? doc : null);
		m.setLBR_PropRNTRC(texto(propRntrcField, null));
		m.setLBR_PropName(texto(propNomeField, null));
		m.setLBR_PropIE(soDigitos(propIeField.getValue()));
		m.setLBR_tpProp(valor(propTpPropCombo));

		if (propUFEditor.getValue() != null)
			m.setLBR_PropUF_ID(((Integer) propUFEditor.getValue()).intValue());
		else
			m.setLBR_PropUF_ID(0);
	}

	private void preencherProprietarioTracao(MLBRMDFe m) {
		propTerceiroBox.setChecked(m.isLBR_IsOwnerNotEmitter());
		propDocField.setValue(isVazio(m.getLBR_PropCNPJ()) ? m.getLBR_PropCPF() : m.getLBR_PropCNPJ());
		propRntrcField.setValue(m.getLBR_PropRNTRC());
		propNomeField.setValue(m.getLBR_PropName());
		propIeField.setValue(m.getLBR_PropIE());
		propUFEditor.setValue(m.getLBR_PropUF_ID() > 0 ? Integer.valueOf(m.getLBR_PropUF_ID()) : null);
		selecionar(propTpPropCombo, m.getLBR_tpProp());
	}

	private static boolean isVazio(String valor) {
		return valor == null || valor.trim().isEmpty();
	}

	private void carregarPercurso() {
		Vector<String> colunas = new Vector<>();
		colunas.add("ID");
		colunas.add("Ordem");
		colunas.add("UF");

		Vector<Vector<Object>> dados = new Vector<>();

		for (X_LBR_MDFePercurso p : getPercurso()) {
			Vector<Object> linha = new Vector<>();
			linha.add(Integer.valueOf(p.getLBR_MDFePercurso_ID()));
			linha.add(Integer.valueOf(p.getLine()));
			linha.add(siglaUF(p.getC_Region_ID()));
			dados.add(linha);
		}

		percursoTable.setData(new ListModelTable(dados), colunas);
		percursoTable.setColumnClass(0, Integer.class, true);
		percursoTable.setColumnClass(1, Integer.class, true);
		percursoTable.setColumnClass(2, String.class, true);
	}

	/**
	 * Os campos do proprietario so valem para veiculo de terceiro.
	 *
	 * <p>Desmarcar limpa tudo: um CNPJ esquecido ali vira o grupo prop no XML e
	 * a SEFAZ recusa (740) se o proprietario for o proprio emitente.
	 */
	private void habilitarProprietarioTracao() {
		boolean terceiro = propTerceiroBox.isChecked();

		propDocField.setDisabled(!terceiro);
		propRntrcField.setDisabled(!terceiro);
		propNomeField.setDisabled(!terceiro);
		propIeField.setDisabled(!terceiro);
		propUFEditor.setReadWrite(terceiro);
		propTpPropCombo.setDisabled(!terceiro);

		if (!terceiro)
			limparProprietarioTracao();
	}

	private void limparProprietarioTracao() {
		propDocField.setValue("");
		propRntrcField.setValue("");
		propNomeField.setValue("");
		propIeField.setValue("");
		propUFEditor.setValue(null);
		propTpPropCombo.setSelectedIndex(-1);
	}

	private void acaoAdicionarNFe() {
		exigirAberto();

		// O editor de cidade e do grupo que o Tipo estiver mostrando. Com o Tipo
		// em Carregamento ele nao diz nada sobre esta nota, e usa-lo aqui
		// mandaria a NF-e para o municipio de origem sem avisar ninguem.
		Object cidade = ehDescarregamento() ? cidadeEditor.getValue() : null;
		String chave = chaveNFeField.getValue();
		String aviso = null;

		// Municipio em branco nao e erro: da para descobrir pela propria nota.
		// A chave e o unico dado que o operador precisa ter em maos - o resto
		// vem da SEFAZ quando ela entrega o XML.
		MDFeNFeImport.Dados dados = MDFeNFeImport.buscar(getCtx(), getMDFe().getAD_Org_ID(), chave,
				getMDFe().getLBR_tpAmb(), null);

		if (cidade == null) {

			int cidadeId = MDFeNFeImport.cidadeDoCodigoIBGE(getCtx(), dados.cMunDescarga, null);

			if (cidadeId <= 0)
				throw new AdempiereException(dados.aviso != null ? dados.aviso
						: "Escolha o municipio de descarregamento");

			cidade = Integer.valueOf(cidadeId);
			aviso = "Municipio de descarga obtido da NF-e: " + dados.xMunDescarga + "/" + dados.ufDescarga;
		}

		// o aviso da consulta vale mesmo com o municipio ja escolhido: e ele que
		// explica por que o valor da nota pode nao ter vindo
		if (dados.aviso != null) {
			aviso = aviso == null ? dados.aviso : aviso + "\n" + dados.aviso;
		}

		adicionarNFe(((Integer) cidade).intValue(), chave, dados.valor);
		chaveNFeField.setValue("");
		carregarDocumentos();
		atualizarTotalizadores();

		if (aviso != null)
			Dialog.info(m_WindowNo, aviso);
	}

	private void acaoRemoverNFe()
	{
		exigirAberto();

		int linha = documentosTable.getSelectedRow();

		if (linha < 0)
			throw new AdempiereException("Selecione a chave a remover");

		int id = (Integer) documentosTable.getValueAt(linha, 0);

		// negativo = linha de municipio sem chave (ver carregarDocumentos)
		if (id < 0)
			removerDescarregamento(-id);
		else
			removerDocumento(id);

		carregarDocumentos();
		atualizarTotalizadores();
	}

	private void acaoTransmitir()
	{
		exigirAberto();

		// Gravar so faz sentido enquanto o conteudo pode mudar. Num reenvio de
		// manifesto ja assinado nao ha o que gravar - a assinatura amarra o
		// conteudo a chave - e chamar gravar() aqui recusava o proprio reenvio
		// com "nao pode mais ser alterado", que era o unico caminho de saida.
		if (getMDFe().isEditavel())
		{
			lerTela();
			gravar();
		}

		// getSQLValue devolve -1 quando o processo nao esta no dicionario. Sem esta
		// guarda o dialogo sai invalido e o clique nao produz reacao nenhuma: nem
		// transmissao, nem mensagem. As outras tres acoes ja conferiam.
		int processId = DB.getSQLValue(null,
				"SELECT AD_Process_ID FROM AD_Process WHERE Value='LBR_MDFe_Transmitir'");

		if (processId <= 0)
			throw new AdempiereException("Processo LBR_MDFe_Transmitir nao encontrado."
					+ " Falta aplicar a migracao 202608310930_LBRMDFeProcessos.sql");

		ProcessInfo pi = new ProcessInfo("Transmitir MDF-e", processId, X_LBR_MDFe.Table_ID,
				getMDFe().getLBR_MDFe_ID());
		pi.setAD_Process_ID(processId);
		pi.setRecord_ID(getMDFe().getLBR_MDFe_ID());

		ProcessModalDialog dialog = new ProcessModalDialog(this, m_WindowNo, pi, false);

		if (dialog.isValid())
		{
			dialog.setPage(form.getPage());
			dialog.doHighlighted();
		}
	}

	// ------------------------------------------------------------- tela <-> po

	/** Leva o que esta na tela para o objeto, antes de gravar. */
	private void lerTela()
	{
		MLBRMDFe m = getMDFe();

		if (m == null)
			throw new AdempiereException("Nenhum MDF-e aberto");

		m.setLBR_Serie(texto(serieField, "1"));
		m.setDateDoc(data(dataEmissaoEditor, new Timestamp(System.currentTimeMillis())));
		m.setLBR_DateIniViagem(data(dataViagemEditor, null));

		m.setLBR_tpAmb(valor(tpAmbCombo));
		m.setLBR_tpEmit(valor(tpEmitCombo));
		m.setLBR_tpTransp(valor(tpTranspCombo));
		m.setLBR_Modal(valor(modalCombo));

		if (ufIniEditor.getValue() != null)
			m.setLBR_UFIni_ID(((Integer) ufIniEditor.getValue()).intValue());

		if (ufFimEditor.getValue() != null)
			m.setLBR_UFFim_ID(((Integer) ufFimEditor.getValue()).intValue());

		m.setLBR_RNTRC(texto(rntrcField, null));
		m.setLBR_Placa(texto(placaField, null));
		m.setLBR_Renavam(texto(renavamField, null));
		m.setLBR_tpRod(valor(tpRodCombo));
		m.setLBR_tpCar(valor(tpCarCombo));

		m.setLBR_Tara(inteiro(taraEditor));
		m.setLBR_CapKG(inteiro(capKgEditor));
		m.setLBR_CapM3(inteiro(capM3Editor));

		lerProprietarioTracao(m);

		m.setLBR_InfAdFisco(texto(infAdFiscoField, null));
		m.setLBR_InfCpl(texto(infCplField, null));

		m.setLBR_CategCombVeic(valor(categCombVeicCombo));
		m.setLBR_CodAgPorto(texto(codAgPortoField, null));

		m.setLBR_CarregaCEP(soDigitos(carregaCepField.getValue()));
		m.setLBR_CarregaLatitude(decimal(carregaLatField, "Latitude de carregamento"));
		m.setLBR_CarregaLongitude(decimal(carregaLonField, "Longitude de carregamento"));
		m.setLBR_DescarregaCEP(soDigitos(descarregaCepField.getValue()));
		m.setLBR_DescarregaLatitude(decimal(descarregaLatField, "Latitude de descarregamento"));
		m.setLBR_DescarregaLongitude(decimal(descarregaLonField, "Longitude de descarregamento"));

		m.setLBR_RespTecCNPJ(soDigitos(respTecCnpjField.getValue()));
		m.setLBR_RespTecContact(texto(respTecContatoField, null));
		m.setLBR_RespTecEMail(texto(respTecEmailField, null));
		m.setLBR_RespTecPhone(soDigitos(respTecFoneField.getValue()));

		m.setLBR_cUnid(valor(cUnidCombo));
		m.setLBR_tpCarga(valor(tpCargaCombo));
		m.setLBR_ProdPred(texto(prodPredField, null));
		m.setLBR_NCM(texto(ncmField, null));
		m.setLBR_EAN(texto(eanField, null));

		if (qCargaEditor.getValue() != null)
			m.setLBR_QtyCargo((BigDecimal) qCargaEditor.getValue());

		if (vCargaEditor.getValue() != null)
			m.setLBR_ValueCargo((BigDecimal) vCargaEditor.getValue());
	}

	/** Leva o objeto para a tela. */
	protected void atualizarTela() {
		MLBRMDFe m = getMDFe();
		boolean aberto = (m != null);
		boolean editavel = aberto && m.isEditavel();
		// Eventos gravam na SEFAZ: um manifesto excluido nao os aceita mais,
		// mesmo autorizado (a exclusao e logica e nao mexe no status).
		boolean eventos = aberto && m.isAutorizado() && !m.isExcluido();

		// Transmitir e mais largo que editar: um manifesto assinado cujo envio
		// falhou antes da resposta precisa poder ser reenviado com a mesma chave.
		boolean transmissivel = aberto && m.isTransmissivel();

		gravarButton.setDisabled(!editavel);
		excluirButton.setDisabled(!editavel);
		transmitirButton.setDisabled(!transmissivel);
		cancelarButton.setDisabled(!eventos);
		encerrarButton.setDisabled(!eventos);

		// Incluir condutor so vale com a viagem em curso: autorizado e ainda nao
		// encerrado (regra K04 do evento 110114).
		condutorEventoButton.setDisabled(!eventos);

		// Consultar exige chave; nao encerrados e status nao dependem de nada
		// aberto na tela e ficam sempre disponiveis.
		consultarButton.setDisabled(getMDFe() == null
				|| isVazio(getMDFe().getLBR_MDFeChave()));
		// Os dois botoes so abrem a janela: continuam clicaveis para consultar
		// os condutores e os reboques de um MDF-e ja autorizado. Quem desabilita
		// e o Novo / Editar / Remover dentro da secao.
		condutoresButton.setDisabled(getMDFe() == null);
		reboquesButton.setDisabled(getMDFe() == null);

		for (WMDFeSecaoFilhos secao : secoes)
			secao.setEditavel(editavel);

		addPercursoButton.setDisabled(!editavel);
		delPercursoButton.setDisabled(!editavel);
		propTerceiroBox.setDisabled(!editavel);
		addMunicipioButton.setDisabled(!editavel);
		tipoMunicipioCombo.setDisabled(!editavel);
		delMunicipioButton.setDisabled(!editavel);
		addNFeButton.setDisabled(!editavel);
		delNFeButton.setDisabled(!editavel);
		// O DAMDFE continua imprimivel depois do encerramento: e o documento que
		// viajou com a carga e pode ser pedido em fiscalizacao ou auditoria
		// muito depois de a viagem acabar. So o cancelado deixa de imprimir -
		// aquele documento nao vale mais.
		imprimirButton.setDisabled(!aberto || !(m.isAutorizado() || m.isEncerrado()));

		if (!aberto)
		{
			emitenteLabel.setValue("");
			situacaoLabel.setValue("");
			chaveLabel.setValue("");
			protocoloLabel.setValue("");
			numeroField.setValue("");
			retornoField.setValue("");
			avisosLabel.setValue("");
			limparGrades();
			return;
		}

		emitenteLabel.setValue(nomeEmitente(m));
		situacaoLabel.setValue(descreverSituacao());
		situacaoLabel.setStyle("font-weight: bold; padding: 0 8px; color: "
				+ (m.isExcluido() ? "#b91c1c"
						: m.isAutorizado() ? "#166534"
						: m.isEditavel() ? "#1f2937" : "#b91c1c") + ";");

		chaveLabel.setValue(formatarChave(m.getLBR_MDFeChave()));
		protocoloLabel.setValue(m.getLBR_Protocol() == null ? "" : m.getLBR_Protocol());
		numeroField.setValue(m.getDocumentNo() == null ? "" : m.getDocumentNo());
		serieField.setValue(m.getLBR_Serie());

		dataEmissaoEditor.setValue(m.getDateDoc());
		dataViagemEditor.setValue(m.getLBR_DateIniViagem());

		selecionar(tpAmbCombo, m.getLBR_tpAmb());
		selecionar(tpEmitCombo, m.getLBR_tpEmit());
		selecionar(tpTranspCombo, m.getLBR_tpTransp());
		selecionar(modalCombo, m.getLBR_Modal());
		selecionar(tpRodCombo, m.getLBR_tpRod());
		selecionar(tpCarCombo, m.getLBR_tpCar());
		selecionar(cUnidCombo, m.getLBR_cUnid());
		preencherProprietarioTracao(m);
		selecionar(tpCargaCombo, m.getLBR_tpCarga());
		prodPredField.setValue(m.getLBR_ProdPred());
		ncmField.setValue(m.getLBR_NCM());
		eanField.setValue(m.getLBR_EAN());
		selecionar(categCombVeicCombo, m.getLBR_CategCombVeic());
		codAgPortoField.setValue(m.getLBR_CodAgPorto());

		carregaCepField.setValue(m.getLBR_CarregaCEP());
		carregaLatField.setValue(texto(m.getLBR_CarregaLatitude()));
		carregaLonField.setValue(texto(m.getLBR_CarregaLongitude()));
		descarregaCepField.setValue(m.getLBR_DescarregaCEP());
		descarregaLatField.setValue(texto(m.getLBR_DescarregaLatitude()));
		descarregaLonField.setValue(texto(m.getLBR_DescarregaLongitude()));

		respTecCnpjField.setValue(m.getLBR_RespTecCNPJ());
		respTecContatoField.setValue(m.getLBR_RespTecContact());
		respTecEmailField.setValue(m.getLBR_RespTecEMail());
		respTecFoneField.setValue(m.getLBR_RespTecPhone());

		ufIniEditor.setValue(m.getLBR_UFIni_ID() > 0 ? Integer.valueOf(m.getLBR_UFIni_ID()) : null);
		ufFimEditor.setValue(m.getLBR_UFFim_ID() > 0 ? Integer.valueOf(m.getLBR_UFFim_ID()) : null);

		rntrcField.setValue(m.getLBR_RNTRC());
		placaField.setValue(m.getLBR_Placa());
		renavamField.setValue(m.getLBR_Renavam());
		taraEditor.setValue(BigDecimal.valueOf(m.getLBR_Tara()));
		capKgEditor.setValue(BigDecimal.valueOf(m.getLBR_CapKG()));
		capM3Editor.setValue(BigDecimal.valueOf(m.getLBR_CapM3()));

		infAdFiscoField.setValue(m.getLBR_InfAdFisco());
		infCplField.setValue(m.getLBR_InfCpl());

		retornoField.setValue(m.getLBR_cStat() == null ? ""
				: "#" + m.getLBR_cStat() + " - " + m.getLBR_xMotivo());

		avisosLabel.setValue(getAvisos().isEmpty() ? ""
				: "Falta completar: " + String.join(" | ", getAvisos()));

		atualizarTotalizadores();
		habilitarProprietarioTracao();
		carregarPercurso();

		for (WMDFeSecaoFilhos secao : secoes)
			secao.carregar();
		carregarCarregamento();
		carregarDocumentos();
	}

	private void atualizarTotalizadores()
	{
		MLBRMDFe m = getMDFe();

		if (m == null)
			return;

		qNFeEditor.setValue(BigDecimal.valueOf(m.getLBR_QtyNFe()));
		vCargaEditor.setValue(m.getLBR_ValueCargo());
		qCargaEditor.setValue(m.getLBR_QtyCargo());
	}

	// ------------------------------------------------------------------ grades

	private void carregarCarregamento()
	{
		Vector<String> colunas = new Vector<>();
		colunas.add("ID");
		colunas.add("UF");
		colunas.add("Municipio");
		colunas.add("IBGE");

		Vector<Vector<Object>> dados = new Vector<>();

		for (X_LBR_MDFeMunCarrega mun : getMunicipiosCarregamento())
		{
			Vector<Object> linha = new Vector<>();
			linha.add(Integer.valueOf(mun.getLBR_MDFeMunCarrega_ID()));
			linha.add(siglaUF(getMDFe().getLBR_UFIni_ID()));
			linha.add(mun.getLBR_xMun());
			linha.add(mun.getLBR_cMun());
			dados.add(linha);
		}

		carregamentoTable.setData(new ListModelTable(dados), colunas);
		carregamentoTable.setColumnClass(0, Integer.class, true);

		for (int i = 1; i < colunas.size(); i++)
			carregamentoTable.setColumnClass(i, String.class, true);
	}

	private void carregarDocumentos()
	{
		Vector<String> colunas = new Vector<>();
		colunas.add("ID");
		colunas.add("Chave NF-e");
		colunas.add("Cidade");

		Vector<Vector<Object>> dados = new Vector<>();

		for (X_LBR_MDFeMunDescarga mun : getMunicipiosDescarga())
		{
			List<X_LBR_MDFeDoc> docs = getDocumentos(mun.getLBR_MDFeMunDescarga_ID());

			// Municipio sem chave tem de aparecer: senao o operador acrescenta e
			// nao ve nada. O ID negativo distingue a linha do municipio da linha
			// de documento, e e o que o Excluir usa para saber o que remover.
			if (docs.isEmpty())
			{
				Vector<Object> linha = new Vector<>();
				linha.add(Integer.valueOf(-mun.getLBR_MDFeMunDescarga_ID()));
				linha.add("(sem chave - acrescente uma antes de transmitir)");
				linha.add(mun.getLBR_xMun());
				dados.add(linha);
				continue;
			}

			for (X_LBR_MDFeDoc doc : docs)
			{
				Vector<Object> linha = new Vector<>();
				linha.add(Integer.valueOf(doc.getLBR_MDFeDoc_ID()));
				linha.add(formatarChave(doc.getLBR_DFeChave()));
				linha.add(mun.getLBR_xMun());
				dados.add(linha);
			}
		}

		documentosTable.setData(new ListModelTable(dados), colunas);
		documentosTable.setColumnClass(0, Integer.class, true);
		documentosTable.setColumnClass(1, String.class, true);
		documentosTable.setColumnClass(2, String.class, true);
	}

	private void limparGrades()
	{
		Vector<String> vazio = new Vector<>();
		vazio.add(" ");

		carregamentoTable.setData(new ListModelTable(new Vector<Vector<Object>>()), vazio);
		documentosTable.setData(new ListModelTable(new Vector<Vector<Object>>()), vazio);
	}

	// ------------------------------------------------------------------ apoio

	/** Documento fiscal escolhido na grade da aba de documentos, ou zero. */
	private int documentoSelecionado() {
		int linha = documentosTable.getSelectedRow();
		return (linha < 0) ? 0 : ((Integer) documentosTable.getValueAt(linha, 0)).intValue();
	}

	private void exigirAberto() {
		if (getMDFe() == null || getMDFe().get_ID() <= 0)
			throw new AdempiereException("Grave o MDF-e antes de acrescentar linhas");
	}

	private String nomeEmitente(MLBRMDFe m)
	{
		try
		{
			return m.getEmitente().getName() + "  -  " + m.getEmitenteCNPJ();
		}
		catch (Exception e)
		{
			return "(organizacao sem parceiro/CNPJ)";
		}
	}

	private static String texto(Textbox campo, String padrao)
	{
		String v = campo.getValue();
		return (v == null || v.trim().isEmpty()) ? padrao : v.trim();
	}

	private static Timestamp data(WDateEditor editor, Timestamp padrao)
	{
		Object v = editor.getValue();
		return (v instanceof Timestamp) ? (Timestamp) v : padrao;
	}

	private static int inteiro(WNumberEditor editor)
	{
		Object v = editor.getValue();
		return (v instanceof BigDecimal) ? ((BigDecimal) v).intValue() : 0;
	}

	/** Coordenada digitada; aceita virgula, que e como o teclado brasileiro escreve. */
	private static BigDecimal decimal(Textbox campo, String rotulo) {
		String texto = campo.getValue();

		if (texto == null || texto.trim().isEmpty())
			return null;

		try {
			return new BigDecimal(texto.trim().replace(',', '.'));
		} catch (NumberFormatException e) {
			throw new AdempiereException(rotulo + ": valor invalido");
		}
	}

	private static String texto(BigDecimal valor) {
		return (valor == null || valor.signum() == 0) ? "" : valor.toPlainString();
	}

	private static String soDigitos(String valor) {
		return (valor == null) ? "" : valor.replaceAll("[^0-9]", "");
	}

	/** Placa vai sem hifen e em maiusculas, no formato que o schema exige. */
	private static String soLetrasEDigitos(String valor) {
		return (valor == null) ? "" : valor.replaceAll("[^A-Za-z0-9]", "").toUpperCase();
	}

	private static String valor(Combobox combo) {
		if (combo.getSelectedItem() == null)
			return null;

		Object v = combo.getSelectedItem().getValue();
		return (v == null || v.toString().isEmpty()) ? null : v.toString();
	}

	private static void selecionar(Combobox combo, String valor)
	{
		if (valor == null)
		{
			combo.setSelectedIndex(-1);
			return;
		}

		for (int i = 0; i < combo.getItemCount(); i++)
		{
			Object v = combo.getItemAtIndex(i).getValue();

			if (valor.equals(v))
			{
				combo.setSelectedIndex(i);
				return;
			}
		}

		combo.setSelectedIndex(-1);
	}
	/**
	 * Acrescenta um grupo de botoes a barra, com titulo e separador.
	 *
	 * <p>O titulo pequeno acima nao e enfeite: com treze botoes, saber que
	 * "Encerrar" fica no grupo da SEFAZ e nao no de documento e a diferenca
	 * entre achar e procurar.
	 */
	// ------------------------------------------------------- pontos de extensao

	/**
	 * Botoes que um plugin acrescenta ao grupo "Documento" da barra.
	 *
	 * <p>O MDF-e do LBR nao conhece a origem da carga: quem tem no proprio
	 * ERP um romaneio, uma ordem de carregamento ou coisa parecida estende
	 * este formulario e devolve aqui o botao que faz o pre-preenchimento.
	 *
	 * <p>Crie os botoes dentro do metodo, nao na declaracao do campo: quando
	 * este gancho e chamado os inicializadores da subclasse ainda nao rodaram.
	 *
	 * @return botoes a acrescentar, ou um vetor vazio
	 */
	protected Button[] botoesExtrasDoDocumento() {
		return new Button[0];
	}

	/**
	 * Celulas extras na ultima linha do cabecalho, ao lado do protocolo.
	 *
	 * @param linha a linha onde acrescentar rotulo e editor
	 */
	protected void camposExtrasDoCabecalho(Row linha) {
	}

	/**
	 * Chance de tratar o clique antes do despacho padrao.
	 *
	 * <p>Roda dentro do mesmo try do formulario, entao um
	 * {@link AdempiereException} lancado aqui vira o mesmo popup amigavel dos
	 * demais botoes.
	 *
	 * @return true se o evento ja foi tratado e nao deve seguir adiante
	 */
	protected boolean tratarEventoExtra(Object alvo) throws Exception {
		return false;
	}

	/** Junta os botoes proprios com os que a extensao acrescentou. */
	private Button[] comExtras(Button... proprios) {
		Button[] extras = botoesExtrasDoDocumento();

		if (extras == null || extras.length == 0)
			return proprios;

		Button[] todos = new Button[proprios.length + extras.length];
		System.arraycopy(proprios, 0, todos, 0, proprios.length);
		System.arraycopy(extras, 0, todos, proprios.length, extras.length);

		return todos;
	}

	private void grupo(Div barra, String titulo, Button... botoes) {
		if (barra.getChildren().size() > 0) {
			Separator sep = new Separator("vertical");
			sep.setStyle("height: 34px; margin: 0 2px;");
			barra.appendChild(sep);
		}

		Div caixa = new Div();
		caixa.setStyle("display: flex; flex-direction: column; gap: 2px;");

		Label rotulo = new Label(titulo);
		rotulo.setStyle("font-size: 9px; color: #888; text-transform: uppercase;"
				+ " letter-spacing: 0.5px;");
		caixa.appendChild(rotulo);

		Div linha = new Div();
		linha.setStyle("display: flex; flex-wrap: wrap; gap: 4px;");

		for (Button b : botoes)
			linha.appendChild(b);

		caixa.appendChild(linha);
		barra.appendChild(caixa);
	}



	private void acaoCancelar() {
		exigirAberto();

		if (!getMDFe().isAutorizado())
			throw new AdempiereException("So um MDF-e autorizado pode ser cancelado."
					+ " Este esta em " + descreverSituacao() + ".");

		final int id = getMDFe().getLBR_MDFe_ID();

		Dialog.askForInput(m_WindowNo, null,
				"Cancelar o MDF-e " + getMDFe().getDocumentNo() + "?\n"
				+ "Informe a justificativa (minimo 15 caracteres):",
				new Callback<String>() {
					@Override
					public void onCallback(String justificativa) {
						if (justificativa == null || justificativa.trim().isEmpty())
							return;

						rodarCancelamento(id, justificativa.trim());
					}
				});
	}

	private void acaoEncerrar() throws Exception {
		exigirAberto();

		if (!getMDFe().isAutorizado())
			throw new AdempiereException("So um MDF-e autorizado pode ser encerrado."
					+ " Este esta em " + descreverSituacao() + ".");

		final int id = getMDFe().getLBR_MDFe_ID();

		// Sugere o ultimo municipio de descarga: e onde a viagem termina na
		// esmagadora maioria dos casos, e o operador so confirma.
		WMDFeEncerramento janela = new WMDFeEncerramento(m_WindowNo, ultimoMunicipioDeDescarga());

		janela.addEventListener(DialogEvents.ON_WINDOW_CLOSE, new EventListener<Event>() {
			@Override
			public void onEvent(Event evento) {
				if (janela.isConfirmado())
					rodarEncerramento(id, janela.getC_City_ID(), janela.getData());
			}
		});

		AEnv.showWindow(janela);
	}

	private void acaoIncluirCondutor() throws Exception {
		exigirAberto();

		if (!getMDFe().isAutorizado())
			throw new AdempiereException("So um MDF-e autorizado aceita inclusao de condutor."
					+ " Este esta em " + descreverSituacao() + ".");

		final int id = getMDFe().getLBR_MDFe_ID();

		// PO transitorio so para carregar o que o operador digitar: o evento so
		// vira registro depois que a SEFAZ aceitar.
		final X_LBR_MDFeEvento rascunho = new X_LBR_MDFeEvento(Env.getCtx(), 0, null);

		WMDFeChildDialog janela = new WMDFeChildDialog(m_WindowNo, "Incluir condutor", rascunho,
				List.of(MDFeCampo.textoReq("Name", "Nome do condutor"),
						MDFeCampo.digitosReq("LBR_CPF", "CPF")),
				false);

		final boolean[] jaRodou = { false };

		janela.addEventListener(DialogEvents.ON_WINDOW_CLOSE, new EventListener<Event>() {
			@Override
			public void onEvent(Event evento) {
				if (!janela.isGravado() || jaRodou[0])
					return;

				jaRodou[0] = true;
				rodarInclusaoDeCondutor(id, rascunho.getName(), rascunho.getLBR_CPF());
			}
		});

		AEnv.showWindow(janela);
	}

	private void acaoConsultarSituacao() throws Exception {
		exigirAberto();

		MDFeConsultas.Resposta r = MDFeConsultas.situacao(Env.getCtx(),
				getMDFe().getAD_Org_ID(), ufDoEmitente(), emHomologacao(),
				getMDFe().getLBR_MDFeChave());

		Dialog.info(m_WindowNo, null, "Situacao na SEFAZ:\n" + r.resumo());
	}

	private void acaoNaoEncerrados() throws Exception {
		MLBRMDFe base = getMDFe();

		if (base == null || base.get_ID() <= 0)
			throw new AdempiereException("Abra ou crie um MDF-e primeiro:"
					+ " a consulta usa o CNPJ do emitente dele");

		MDFeConsultas.Resposta r = MDFeConsultas.naoEncerrados(Env.getCtx(),
				base.getAD_Org_ID(), ufDoEmitente(), emHomologacao(), base.getEmitenteCNPJ());

		if (r.naoEncerrados.isEmpty()) {
			Dialog.info(m_WindowNo, null,
					"Nenhum MDF-e em aberto na SEFAZ para este emitente.\n" + r.resumo());
			return;
		}

		WMDFeNaoEncerrados janela = new WMDFeNaoEncerrados(r);

		janela.addEventListener(DialogEvents.ON_WINDOW_CLOSE, new EventListener<Event>() {
			@Override
			public void onEvent(Event evento) {
				if (janela.getEscolhido() > 0)
					abrirEAtualizar(janela.getEscolhido());
			}
		});

		AEnv.showWindow(janela);
	}

	private void acaoStatusServico() throws Exception {
		MLBRMDFe base = getMDFe();

		if (base == null || base.get_ID() <= 0)
			throw new AdempiereException("Abra ou crie um MDF-e primeiro:"
					+ " a consulta usa o certificado da organizacao emitente");

		MDFeConsultas.Resposta r = MDFeConsultas.statusServico(Env.getCtx(),
				base.getAD_Org_ID(), ufDoEmitente(), emHomologacao());

		StringBuilder texto = new StringBuilder(r.resumo());

		if (r.tMed != null && !r.tMed.isEmpty())
			texto.append("\nTempo medio de resposta: ").append(r.tMed).append('s');

		if (r.dhRetorno != null && !r.dhRetorno.isEmpty())
			texto.append("\nPrevisao de retorno: ").append(r.dhRetorno);

		if (r.xObs != null && !r.xObs.isEmpty())
			texto.append('\n').append(r.xObs);

		Dialog.info(m_WindowNo, null, texto.toString());
	}

	private void mostrarResultadoProcesso(ProcessModalDialog dialog) {
		// Cancelar fecha o dialogo pelo mesmo ON_WINDOW_CLOSE de quando o processo
		// roda, e o ProcessInfo volta limpo: sem resumo e sem isError. Isso virava
		// "concluido" - a tela anunciando uma transmissao que o operador acabou de
		// recusar. O isCancel() e o unico dado que separa os dois fechamentos.
		if (dialog.isCancel())
			return;

		ProcessInfo pi = dialog.getProcessInfo();

		if (pi == null)
			return;

		// Releitura obrigatoria: o processo rodou na propria transacao e gravou
		// situacao, chave e protocolo direto no banco, sem passar pelo PO que
		// esta na tela.
		if (getMDFe() != null && getMDFe().getLBR_MDFe_ID() > 0)
			abrirEAtualizar(getMDFe().getLBR_MDFe_ID());

		String resumo = pi.getSummary();

		if (resumo == null || resumo.trim().isEmpty())
		{
			// O metodo atende quatro fluxos (transmitir, cancelar, encerrar,
			// incluir condutor); o titulo do ProcessInfo diz qual e.
			String oque = pi.getTitle() == null || pi.getTitle().trim().isEmpty()
					? "A operacao" : pi.getTitle().trim();

			resumo = pi.isError() ? oque + " falhou, sem detalhe do erro" : oque + " concluido";
		}

		String detalhe = pi.getLogInfo();

		if (detalhe != null && !detalhe.trim().isEmpty())
			resumo = resumo + "\n\n" + detalhe;

		if (pi.isError())
			Dialog.error(m_WindowNo, null, resumo);
		else
			Dialog.info(m_WindowNo, null, resumo);
	}

	private void rodarInclusaoDeCondutor(int LBR_MDFe_ID, String nome, String cpf) {
		try {
			travarAcoesDaSefaz();

			int processId = DB.getSQLValue(null,
					"SELECT AD_Process_ID FROM AD_Process WHERE Value='LBR_MDFe_IncluirCondutor'");

			if (processId <= 0)
				throw new AdempiereException("Processo LBR_MDFe_IncluirCondutor nao encontrado."
						+ " Falta aplicar a migracao 202608291900_KRMDFeIncluirCondutor.sql");

			ProcessInfo pi = new ProcessInfo("Incluir condutor", processId, X_LBR_MDFe.Table_ID,
					LBR_MDFe_ID);
			pi.setAD_Process_ID(processId);
			pi.setRecord_ID(LBR_MDFe_ID);
			pi.setParameter(new ProcessInfoParameter[] {
					new ProcessInfoParameter("Name", nome, null, null, null),
					new ProcessInfoParameter("LBR_CPF", cpf, null, null, null) });

			ProcessModalDialog dialog = new ProcessModalDialog(this, m_WindowNo, pi, true);

			if (dialog.isValid()) {
				dialog.setPage(form.getPage());
				dialog.doHighlighted();
			}
		} catch (Exception e) {
			atualizarTela();
			log.log(Level.SEVERE, "", e);
			Dialog.error(m_WindowNo, null, MDFeUtil.mensagem(e));
		}
	}

	private void rodarEncerramento(int LBR_MDFe_ID, int C_City_ID, Timestamp data) {
		try {
			int processId = DB.getSQLValue(null,
					"SELECT AD_Process_ID FROM AD_Process WHERE Value='LBR_MDFe_Encerrar'");

			if (processId <= 0)
				throw new AdempiereException("Processo LBR_MDFe_Encerrar nao encontrado."
						+ " Falta aplicar a migracao 202608291500_KRMDFeEncerrar.sql");

			ProcessInfo pi = new ProcessInfo("Encerrar MDF-e", processId, X_LBR_MDFe.Table_ID,
					LBR_MDFe_ID);
			pi.setAD_Process_ID(processId);
			pi.setRecord_ID(LBR_MDFe_ID);
			pi.setParameter(new ProcessInfoParameter[] {
					new ProcessInfoParameter("C_City_ID", Integer.valueOf(C_City_ID), null, null, null),
					new ProcessInfoParameter("LBR_DateEncerra", data, null, null, null) });

			ProcessModalDialog dialog = new ProcessModalDialog(this, m_WindowNo, pi, true);

			if (dialog.isValid()) {
				dialog.setPage(form.getPage());
				dialog.doHighlighted();
			}
		} catch (Exception e) {
			log.log(Level.SEVERE, "", e);
			Dialog.error(m_WindowNo, null, MDFeUtil.mensagem(e));
		}
	}

	private void rodarCancelamento(int LBR_MDFe_ID, String justificativa) {
		try {
			int processId = DB.getSQLValue(null,
					"SELECT AD_Process_ID FROM AD_Process WHERE Value='LBR_MDFe_Cancelar'");

			if (processId <= 0)
				throw new AdempiereException("Processo LBR_MDFe_Cancelar nao encontrado."
						+ " Falta aplicar a migracao 202608291400_KRMDFeCancelar.sql");

			ProcessInfo pi = new ProcessInfo("Cancelar MDF-e", processId, X_LBR_MDFe.Table_ID,
					LBR_MDFe_ID);
			pi.setAD_Process_ID(processId);
			pi.setRecord_ID(LBR_MDFe_ID);

			// A justificativa vai como parametro, entao o dialogo do processo nao
			// precisa perguntar de novo - por isso autoStart.
			ProcessInfoParameter para = new ProcessInfoParameter("LBR_Justification",
					justificativa, null, null, null);
			pi.setParameter(new ProcessInfoParameter[] { para });

			ProcessModalDialog dialog = new ProcessModalDialog(this, m_WindowNo, pi, true);

			if (dialog.isValid()) {
				dialog.setPage(form.getPage());
				dialog.doHighlighted();
			}
		} catch (Exception e) {
			log.log(Level.SEVERE, "", e);
			Dialog.error(m_WindowNo, null, MDFeUtil.mensagem(e));
		}
	}

	private void travarAcoesDaSefaz() {
		transmitirButton.setDisabled(true);
		cancelarButton.setDisabled(true);
		encerrarButton.setDisabled(true);
		condutorEventoButton.setDisabled(true);
	}

	/**
	 * Declara as colunas da grade com largura explicita.
	 *
	 * <p>Sem {@code <columns>} o ZK reparte a largura sozinho e espreme tudo: o
	 * campo da chave da NF-e, de 420px, caia numa celula de um sexto da linha e
	 * sumia da tela. Os formularios do proprio iDempiere sempre declaram as
	 * colunas - ver AddAuthorizationForm.
	 *
	 * <p>As larguras alternam rotulo/campo, na ordem em que as celulas entram na
	 * linha. Precisa ser chamado antes de {@code newRows()}: no ZK o
	 * {@code <columns>} vem antes do {@code <rows>}.
	 */
	private void colunas(Grid grid, String... larguras) {
		Columns cols = new Columns();
		grid.appendChild(cols);

		for (String largura : larguras) {
			Column c = new Column();
			c.setWidth(largura);
			cols.appendChild(c);
		}
	}

	/**
	 * Tipo escolhido no seletor.
	 *
	 * <p>Decide pelo indice, nao pelo valor do item: o Comboitem do ZK guarda o
	 * payload num generico, e ler de la depende de o item selecionado ter vindo
	 * da lista - num Combobox editavel isso nem sempre acontece. O indice e o
	 * que a tela mostra, e a ordem esta fixada em painelDocumentos.
	 *
	 * <p>Sem selecao vale carregamento, que e o item 0 e o padrao da tela.
	 */
	private boolean ehDescarregamento() {
		return tipoMunicipioCombo.getSelectedIndex() == IDX_DESCARREGAMENTO;
	}

	/**
	 * Acrescenta o municipio escolhido, no grupo escolhido.
	 *
	 * <p>So o municipio: as chaves entram pelo botao da linha da NF-e. Um
	 * municipio de descarregamento sem nenhum documento e valido na tela e
	 * invalido no XML - o layout exige ao menos um por infMunDescarga - entao
	 * ele aparece na lista marcado como "(sem chave)" e a transmissao recusa.
	 */
	private void acaoAdicionarMunicipio() throws Exception {
		exigirAberto();

		if (ehDescarregamento()) {
			Object destino = cidadeEditor.getValue();

			if (destino == null)
				throw new AdempiereException("Escolha o municipio de descarregamento,"
						+ " ou informe a chave da NF-e para descobri-lo pela nota");

			adicionarDescarregamento(((Integer) destino).intValue());
			cidadeEditor.setValue(null);
			carregarDocumentos();
			return;
		}

		Object cidade = cidadeEditor.getValue();

		if (cidade == null)
			throw new AdempiereException("Escolha o municipio de carregamento");

		adicionarCarregamento(((Integer) cidade).intValue());
		cidadeEditor.setValue(null);
		carregarCarregamento();
	}

	/** Tira do grupo escolhido a linha selecionada na lista correspondente. */
	private void acaoRemoverMunicipio() {
		exigirAberto();

		if (ehDescarregamento()) {
			// Municipio de descarga e documento moram na mesma lista - o municipio
			// sem chave aparece com ID negativo. Remover pela linha selecionada e
			// o unico jeito de nao deixar documento orfao.
			acaoRemoverNFe();
			return;
		}

		int linha = carregamentoTable.getSelectedRow();

		if (linha < 0)
			throw new AdempiereException("Selecione o municipio de carregamento a remover");

		removerCarregamento((Integer) carregamentoTable.getValueAt(linha, 0));
		carregarCarregamento();
	}

}
