/******************************************************************************
 * Product: ADempiereLBR - ADempiere Localization Brazil                      *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 *****************************************************************************/
package org.idempierelbr.nfe.apps.form;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.math.BigDecimal;
import java.nio.charset.StandardCharsets;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

import org.adempiere.exceptions.AdempiereException;
import org.adempiere.webui.AdempiereWebUI;
import org.adempiere.webui.LayoutUtils;
import org.adempiere.webui.component.Button;
import org.adempiere.webui.component.Column;
import org.adempiere.webui.component.ConfirmPanel;
import org.adempiere.webui.component.Grid;
import org.adempiere.webui.component.GridFactory;
import org.adempiere.webui.component.Label;
import org.adempiere.webui.component.ListHead;
import org.adempiere.webui.component.ListHeader;
import org.adempiere.webui.component.ListItem;
import org.adempiere.webui.component.Listbox;
import org.adempiere.webui.component.Row;
import org.adempiere.webui.component.Rows;
import org.adempiere.webui.editor.WDateEditor;
import org.adempiere.webui.editor.WEditor;
import org.adempiere.webui.editor.WSearchEditor;
import org.adempiere.webui.editor.WStringEditor;
import org.adempiere.webui.editor.WTableDirEditor;
import org.adempiere.webui.event.ValueChangeEvent;
import org.adempiere.webui.event.ValueChangeListener;
import org.adempiere.webui.panel.ADForm;
import org.adempiere.webui.panel.IFormController;
import org.adempiere.webui.session.SessionManager;
import org.adempiere.webui.util.ZKUpdateUtil;
import org.adempiere.webui.window.Dialog;
import org.compiere.model.MAttachment;
import org.compiere.model.MAttachmentEntry;
import org.compiere.model.MColumn;
import org.compiere.model.MLookup;
import org.compiere.model.MLookupFactory;
import org.compiere.model.MProduct;
import org.compiere.model.MSysConfig;
import org.compiere.model.Query;
import org.compiere.process.DocAction;
import org.compiere.util.CLogger;
import org.compiere.util.DisplayType;
import org.compiere.util.Env;
import org.compiere.util.Msg;
import org.compiere.util.Trx;
import org.idempierelbr.base.model.MLBRNFeXML;
import org.idempierelbr.base.model.MLBRNotaFiscal;
import org.idempierelbr.base.util.TextUtil;
import org.idempierelbr.nfe.imports.NFeImportDocument;
import org.idempierelbr.nfe.imports.NFeImportItem;
import org.idempierelbr.nfe.imports.NFeImportOptions;
import org.idempierelbr.nfe.imports.NFeImportService;
import org.idempierelbr.nfe.imports.NFeProductMatcher;
import org.idempierelbr.nfe.imports.NFeXMLParser;
import org.idempierelbr.nfe.util.SefazSoapUtils;
import org.zkoss.zk.ui.HtmlBasedComponent;
import org.zkoss.zk.ui.event.Event;
import org.zkoss.zk.ui.event.EventListener;
import org.zkoss.zk.ui.event.Events;
import org.zkoss.zk.ui.event.UploadEvent;
import org.zkoss.zul.Borderlayout;
import org.zkoss.zul.Center;
import org.zkoss.zul.Columns;
import org.zkoss.zul.Div;
import org.zkoss.zul.Listcell;
import org.zkoss.zul.Hlayout;
import org.zkoss.zul.North;
import org.zkoss.zul.South;
import org.zkoss.zul.Tab;
import org.zkoss.zul.Tabbox;
import org.zkoss.zul.Tabpanel;
import org.zkoss.zul.Tabpanels;
import org.zkoss.zul.Tabs;
import org.zkoss.zul.Vlayout;
import org.zkoss.zul.West;
import org.zkoss.util.media.Media;
import org.w3c.dom.Document;

/**
 * Conciliação e importação de documentos fiscais de terceiros.
 *
 * <p>Duas entradas de igual peso: os DF-e que a SEFAZ já entregou e estão
 * prontos no monitor, e o arquivo XML ou ZIP que chega por outro caminho — do
 * e-mail do fornecedor, de antes da adoção da distribuição.
 *
 * <p>O que a tela faz de diferente da anterior é trabalhar em lote e mostrar
 * só o que precisa de decisão: a cascata de de-para identifica o que pode, e a
 * fila de pendências fica com o resto. Cada vínculo resolvido é aplicado ao
 * restante do lote e gravado no cadastro do fornecedor, então a mesma pendência
 * não volta na próxima importação.
 *
 * @author Alan Lescano
 */
public class WNFeImportDFe implements IFormController, EventListener<Event>, ValueChangeListener {

	private static final CLogger log = CLogger.getCLogger(WNFeImportDFe.class);

	/** Teto de DF-e trazidos do monitor de uma vez */
	public static final String SYSCONFIG_MAX_DOCUMENTS = "LBR_DFE_MAX_DOCS_PER_BATCH";
	private static final int DEFAULT_MAX_DOCUMENTS = 50;

	/** Tabela de onde saem os lookups de produto, encargo e unidade */
	private static final String TABLE_INVOICELINE = "C_InvoiceLine";
	/** Coluna de referência do DocAction, para reaproveitar a lista do core */
	private static final int COLUMN_DOCACTION_ID = 4324;

	private final WNFeImportDFeForm form;
	private final Borderlayout mainLayout = new Borderlayout();
	private final ConfirmPanel confirmPanel = new ConfirmPanel(true);

	/** Documentos carregados, à espera de importação */
	private final List<NFeImportDocument> batch = new ArrayList<NFeImportDocument>();
	/** Pendências mostradas na fila, na mesma ordem da lista */
	private final List<NFeImportItem> pending = new ArrayList<NFeImportItem>();
	private final List<NFeImportDocument> pendingOwner = new ArrayList<NFeImportDocument>();
	/** Produtos sugeridos para a pendência em foco */
	private final List<MProduct> suggestions = new ArrayList<MProduct>();

	private final NFeImportOptions options = new NFeImportOptions();

	private Listbox documentList;
	private Listbox pendingList;
	private Listbox suggestionList;

	private WEditor editorProduct;
	private WEditor editorCharge;
	private WEditor editorUOM;

	private Label statusLabel;
	private Label pendingLabel;

	/** Serviço sem transação, usado para ler e validar enquanto a tela é montada */
	private NFeImportService readService;

	/** Documentos que passaram na validação no último refresh */
	private int readyCount = 0;

	public WNFeImportDFe() {
		form = new WNFeImportDFeForm(this);
		LayoutUtils.addSclass("tab-editor-form", form);
	}

	public void initForm() {
		try {
			readService = new NFeImportService(Env.getCtx(), null);
			jbInit();
		} catch (Exception e) {
			// engolir a falha aqui abriria uma aba vazia, sem explicação nenhuma
			log.log(Level.SEVERE, "WNFeImportDFe.initForm", e);
			throw new AdempiereException("Não foi possível abrir a tela de importação: "
					+ e.getLocalizedMessage(), e);
		}
	}

	@Override
	public ADForm getForm() {
		return form;
	}

	private int getWindowNo() {
		return form.getWindowNo();
	}

	// -------------------------------------------------------------------------
	// Montagem da tela
	// -------------------------------------------------------------------------

	private void jbInit() throws Exception {
		// a tela ocupa a aba inteira, e o usuário continua livre para navegar
		Div container = new Div();
		container.setStyle("height: 100%; width: 100%; overflow: auto;");
		container.appendChild(mainLayout);
		form.appendChild(container);

		LayoutUtils.addSclass("tab-editor-form-content", mainLayout);
		ZKUpdateUtil.setWidth(mainLayout, "100%");
		ZKUpdateUtil.setHeight(mainLayout, "100%");
		mainLayout.setStyle("min-height: 600px");

		North north = new North();
		north.setSplittable(false);
		mainLayout.appendChild(north);
		north.appendChild(createSourceBar());

		West west = new West();
		west.setSplittable(true);
		west.setCollapsible(true);
		west.setTitle("Dados do lote");
		ZKUpdateUtil.setWidth(west, "320px");
		mainLayout.appendChild(west);
		west.appendChild(createOptionsGrid());

		Center center = new Center();
		center.setAutoscroll(true);
		mainLayout.appendChild(center);
		center.appendChild(createTabs());

		South south = new South();
		south.setSplittable(false);
		mainLayout.appendChild(south);

		Vlayout southLayout = new Vlayout();
		statusLabel = new Label("Nenhum documento carregado");
		southLayout.appendChild(statusLabel);
		confirmPanel.addActionListener(this);
		confirmPanel.getOKButton().setLabel("Importar");
		southLayout.appendChild(confirmPanel);
		south.appendChild(southLayout);
	}

	/**
	 * As duas origens, lado a lado — nenhuma é a saída de emergência da outra.
	 */
	private Hlayout createSourceBar() {
		Hlayout bar = new Hlayout();
		bar.setStyle("padding: 6px;");

		Button loadDFe = new Button("Buscar DF-e prontos");
		loadDFe.setId("LoadDFe");
		loadDFe.addActionListener(this);
		bar.appendChild(loadDFe);

		Button upload = new Button("Carregar arquivo ou ZIP");
		upload.setId("Upload");
		upload.setUpload(AdempiereWebUI.getUploadSetting());
		upload.addEventListener(Events.ON_UPLOAD, this);
		bar.appendChild(upload);

		Button remove = new Button("Remover documento");
		remove.setId("Remove");
		remove.addActionListener(this);
		bar.appendChild(remove);

		return bar;
	}

	/**
	 * O que vale para o lote inteiro. Cada nota pode ser importada com outro
	 * tipo de documento, mas o normal é o lote inteiro compartilhar a decisão.
	 */
	private Grid createOptionsGrid() {
		Grid grid = GridFactory.newGridLayout();

		Columns columns = new Columns();
		grid.appendChild(columns);

		Column column = new Column();
		column.setHflex("min");
		column.setAlign("right");
		columns.appendChild(column);

		column = new Column();
		column.setHflex("1");
		columns.appendChild(column);

		Rows rows = new Rows();
		grid.appendChild(rows);

		MLookup lookup = MLookupFactory.get(Env.getCtx(), getWindowNo(), 0,
				MColumn.getColumn_ID(MLBRNotaFiscal.Table_Name, "C_DocType_ID"), DisplayType.TableDir);
		WEditor editorC_DocType_ID = new WTableDirEditor("C_DocType_ID", true, false, true, lookup);
		editorC_DocType_ID.setMandatory(true);
		editorC_DocType_ID.addValueChangeListener(this);
		appendRow(rows, Msg.getElement(Env.getCtx(), "C_DocType_ID") + "*", editorC_DocType_ID, true);

		lookup = MLookupFactory.get(Env.getCtx(), getWindowNo(), 0,
				MColumn.getColumn_ID(MLBRNotaFiscal.Table_Name, "LBR_TransactionType"), DisplayType.List);
		WEditor editorLBR_TransactionType = new WTableDirEditor("LBR_TransactionType", true, false, true, lookup);
		editorLBR_TransactionType.setMandatory(true);
		editorLBR_TransactionType.addValueChangeListener(this);
		appendRow(rows, Msg.getElement(Env.getCtx(), "LBR_TransactionType") + "*", editorLBR_TransactionType, true);

		WEditor editorDescription = new WStringEditor("Description", false, false, true, 0, 0, null, null);
		editorDescription.addValueChangeListener(this);
		appendRow(rows, Msg.getElement(Env.getCtx(), "Description"), editorDescription, false);

		boolean readOnlyDelivery = MSysConfig.getBooleanValue("LBR_READONLYDELIVERYDATE_WHEN_GEN_NF_FROM_XML",
				false, Env.getAD_Client_ID(Env.getCtx()), Env.getAD_Org_ID(Env.getCtx()));

		WEditor editorLBR_OwnDateDelivered = new WDateEditor("LBR_OwnDateDelivered", false, readOnlyDelivery, true,
				Msg.getElement(Env.getCtx(), "LBR_OwnDateDelivered"));
		editorLBR_OwnDateDelivered.addValueChangeListener(this);
		editorLBR_OwnDateDelivered.setValue(new Timestamp(System.currentTimeMillis()));
		options.LBR_OwnDateDelivered = new Timestamp(System.currentTimeMillis());
		appendRow(rows, Msg.getElement(Env.getCtx(), "LBR_OwnDateDelivered"), editorLBR_OwnDateDelivered, false);

		try {
			lookup = MLookupFactory.get(Env.getCtx(), getWindowNo(), COLUMN_DOCACTION_ID,
					DisplayType.List, Env.getLanguage(Env.getCtx()), "DocAction", 135,
					false, "AD_Ref_List.Value IN ('CO','PR','--')");

			WEditor editorDocAction = new WTableDirEditor("DocAction", true, false, true, lookup);
			editorDocAction.setMandatory(true);
			editorDocAction.setValue(DocAction.ACTION_None);
			editorDocAction.addValueChangeListener(this);
			appendRow(rows, Msg.getElement(Env.getCtx(), "DocAction") + "*", editorDocAction, true);
		} catch (Exception e) {
			log.log(Level.SEVERE, "Não foi possível carregar a lista de ações do documento", e);
		}

		return grid;
	}

	private void appendRow(Rows rows, String label, WEditor editor, boolean mandatory) {
		Row row = new Row();
		Label text = new Label(label);

		if (mandatory)
			text.setStyle("color: red;");

		if (editor.getComponent() instanceof HtmlBasedComponent)
			ZKUpdateUtil.setHflex((HtmlBasedComponent) editor.getComponent(), "true");
		row.appendChild(text.rightAlign());
		row.appendChild(editor.getComponent());
		rows.appendChild(row);
	}

	private Tabbox createTabs() {
		Tabbox tabbox = new Tabbox();
		ZKUpdateUtil.setWidth(tabbox, "100%");
		ZKUpdateUtil.setHeight(tabbox, "100%");

		Tabs tabs = new Tabs();
		tabbox.appendChild(tabs);
		tabs.appendChild(new Tab("Documentos"));
		tabs.appendChild(new Tab("Pendências de produto"));

		Tabpanels panels = new Tabpanels();
		tabbox.appendChild(panels);

		Tabpanel documents = new Tabpanel();
		documents.appendChild(createDocumentList());
		panels.appendChild(documents);

		Tabpanel pendencies = new Tabpanel();
		pendencies.appendChild(createPendingPanel());
		panels.appendChild(pendencies);

		return tabbox;
	}

	private Listbox createDocumentList() {
		documentList = new Listbox();
		documentList.setVflex(true);
		ZKUpdateUtil.setWidth(documentList, "100%");

		ListHead head = new ListHead();
		head.setSizable(true);
		head.appendChild(new ListHeader("Documento"));
		head.appendChild(new ListHeader("Emitente"));
		head.appendChild(new ListHeader("Emissão"));
		head.appendChild(new ListHeader("Valor"));
		head.appendChild(new ListHeader("Itens"));
		head.appendChild(new ListHeader("Pendentes"));
		head.appendChild(new ListHeader("Situação"));
		documentList.appendChild(head);

		return documentList;
	}

	private Vlayout createPendingPanel() {
		Vlayout layout = new Vlayout();
		ZKUpdateUtil.setHeight(layout, "100%");

		pendingLabel = new Label("Nenhuma pendência");
		layout.appendChild(pendingLabel);

		pendingList = new Listbox();
		ZKUpdateUtil.setHeight(pendingList, "45%");
		ZKUpdateUtil.setWidth(pendingList, "100%");
		pendingList.addEventListener(Events.ON_SELECT, this);

		ListHead head = new ListHead();
		head.setSizable(true);
		head.appendChild(new ListHeader("Documento"));
		head.appendChild(new ListHeader("Item"));
		head.appendChild(new ListHeader("Código"));
		head.appendChild(new ListHeader("Descrição"));
		head.appendChild(new ListHeader("GTIN"));
		head.appendChild(new ListHeader("NCM"));
		head.appendChild(new ListHeader("UDM"));
		head.appendChild(new ListHeader("Qtde"));
		pendingList.appendChild(head);

		layout.appendChild(pendingList);
		layout.appendChild(createResolutionGrid());

		Label suggestionTitle = new Label("Sugestões (por descrição e NCM)");
		layout.appendChild(suggestionTitle);

		suggestionList = new Listbox();
		ZKUpdateUtil.setHeight(suggestionList, "25%");
		ZKUpdateUtil.setWidth(suggestionList, "100%");
		suggestionList.addEventListener(Events.ON_SELECT, this);

		ListHead suggestionHead = new ListHead();
		suggestionHead.appendChild(new ListHeader("Produto"));
		suggestionHead.appendChild(new ListHeader("Código"));
		suggestionHead.appendChild(new ListHeader("GTIN"));
		suggestionList.appendChild(suggestionHead);

		layout.appendChild(suggestionList);

		return layout;
	}

	/**
	 * Onde a pendência selecionada é resolvida. Um editor por vez, não um por
	 * linha: a fila pode ter centenas de itens.
	 */
	private Grid createResolutionGrid() {
		Grid grid = GridFactory.newGridLayout();

		Columns columns = new Columns();
		grid.appendChild(columns);

		for (int i = 0; i < 4; i++) {
			Column column = new Column();
			column.setHflex(i % 2 == 0 ? "min" : "1");

			if (i % 2 == 0)
				column.setAlign("right");

			columns.appendChild(column);
		}

		Rows rows = new Rows();
		grid.appendChild(rows);

		MLookup lookupProduct = MLookupFactory.get(Env.getCtx(), getWindowNo(), 0,
				MColumn.getColumn_ID(TABLE_INVOICELINE, "M_Product_ID"), DisplayType.Search);
		editorProduct = new WSearchEditor("M_Product_ID", false, false, true, lookupProduct);
		editorProduct.addValueChangeListener(this);

		MLookup lookupCharge = MLookupFactory.get(Env.getCtx(), getWindowNo(), 0,
				MColumn.getColumn_ID(TABLE_INVOICELINE, "C_Charge_ID"), DisplayType.TableDir);
		editorCharge = new WTableDirEditor("C_Charge_ID", false, false, true, lookupCharge);
		editorCharge.addValueChangeListener(this);

		MLookup lookupUOM = MLookupFactory.get(Env.getCtx(), getWindowNo(), 0,
				MColumn.getColumn_ID(TABLE_INVOICELINE, "C_UOM_ID"), DisplayType.TableDir);
		editorUOM = new WTableDirEditor("C_UOM_ID", false, false, true, lookupUOM);
		editorUOM.addValueChangeListener(this);

		Row row = new Row();
		row.appendChild(new Label(Msg.getElement(Env.getCtx(), "M_Product_ID")).rightAlign());
		row.appendChild(editorProduct.getComponent());
		row.appendChild(new Label(Msg.getElement(Env.getCtx(), "C_Charge_ID")).rightAlign());
		row.appendChild(editorCharge.getComponent());
		rows.appendChild(row);

		row = new Row();
		row.appendChild(new Label(Msg.getElement(Env.getCtx(), "C_UOM_ID")).rightAlign());
		row.appendChild(editorUOM.getComponent());

		Hlayout buttons = new Hlayout();

		Button apply = new Button("Aplicar ao item");
		apply.setId("Apply");
		apply.addActionListener(this);
		buttons.appendChild(apply);

		Button applyBatch = new Button("Aplicar ao lote");
		applyBatch.setId("ApplyBatch");
		applyBatch.addActionListener(this);
		buttons.appendChild(applyBatch);

		row.appendCellChild(buttons, 2);
		rows.appendChild(row);

		return grid;
	}

	// -------------------------------------------------------------------------
	// Carga de documentos
	// -------------------------------------------------------------------------

	/**
	 * Traz do monitor os DF-e prontos para importar — os que já têm o XML
	 * completo e ainda não viraram nota.
	 */
	private void loadFromDFe() {
		int limit = MSysConfig.getIntValue(SYSCONFIG_MAX_DOCUMENTS, DEFAULT_MAX_DOCUMENTS,
				Env.getAD_Client_ID(Env.getCtx()));

		List<MLBRNFeXML> documents = new Query(Env.getCtx(), MLBRNFeXML.Table_Name,
				"LBR_DFeStatus=? AND LBR_IsXMLComplete=? AND LBR_NotaFiscal_ID IS NULL", null)
			.setParameters(MLBRNFeXML.LBR_DFESTATUS_ProntoParaImportar, "Y")
			.setClient_ID()
			.setOnlyActiveRecords(true)
			.setOrderBy("DateDoc, LBR_NSU")
			.list();

		int loaded = 0;
		int failed = 0;

		for (MLBRNFeXML dfe : documents) {
			if (loaded >= limit)
				break;

			if (isLoaded(dfe.getLBR_NFeID()))
				continue;

			String xml = readAttachment(dfe);

			if (xml == null) {
				failed++;
				continue;
			}

			if (addDocument(xml, dfe.getLBR_NFeID() + ".xml", NFeImportDocument.SOURCE_DFE, dfe.get_ID()))
				loaded++;
			else
				failed++;
		}

		refresh();

		String message = loaded + " documento(s) carregado(s) do monitor";

		if (failed > 0)
			message += ", " + failed + " sem XML legível";

		if (documents.size() > limit)
			message += ". Há mais documentos prontos — importe estes primeiro";

		Dialog.info(getWindowNo(), "", message);
	}

	/**
	 * Carrega um XML avulso ou um ZIP com vários — o fornecedor que manda por
	 * e-mail costuma mandar assim.
	 */
	private void loadFromFile(Media media) throws Exception {
		if (media == null)
			return;

		String name = media.getName() == null ? "" : media.getName().toLowerCase();
		int loaded = 0;
		int failed = 0;

		if (name.endsWith(".zip")) {
			try (ZipInputStream zip = new ZipInputStream(getStream(media))) {
				ZipEntry entry;

				while ((entry = zip.getNextEntry()) != null) {
					if (entry.isDirectory() || !entry.getName().toLowerCase().endsWith(".xml"))
						continue;

					String xml = new String(zip.readAllBytes(), StandardCharsets.UTF_8);

					if (addDocument(xml, entry.getName(), NFeImportDocument.SOURCE_FILE, 0))
						loaded++;
					else
						failed++;
				}
			}
		} else {
			String xml = new String(getStream(media).readAllBytes(), StandardCharsets.UTF_8);

			if (addDocument(xml, media.getName(), NFeImportDocument.SOURCE_FILE, 0))
				loaded++;
			else
				failed++;
		}

		refresh();

		if (failed > 0)
			Dialog.warn(getWindowNo(), "", loaded + " documento(s) carregado(s), " + failed
					+ " ignorado(s) por não ser NF-e válida ou já estar na lista");
	}

	private InputStream getStream(Media media) throws Exception {
		if (media.isBinary())
			return media.getStreamData();

		return new ByteArrayInputStream(media.getStringData().getBytes(StandardCharsets.UTF_8));
	}

	private String readAttachment(MLBRNFeXML dfe) {
		MAttachment attachment = dfe.getAttachment(true);

		if (attachment == null || attachment.getEntryCount() == 0)
			return null;

		MAttachmentEntry entry = attachment.getEntry(0);

		return entry == null ? null : new String(entry.getData(), StandardCharsets.UTF_8);
	}

	/**
	 * Lê o XML, resolve as partes e roda a cascata de de-para. O que sobrar vai
	 * para a fila de pendências.
	 *
	 * @return true se o documento entrou no lote
	 */
	private boolean addDocument(String xml, String fileName, String source, int LBR_NFeXML_ID) {
		try {
			Document doc = SefazSoapUtils.newHardenedDocumentBuilder()
				.parse(new ByteArrayInputStream(xml.getBytes(StandardCharsets.UTF_8)));

			NFeImportDocument nfe = NFeXMLParser.parse(doc);

			if (nfe.chNFe == null || nfe.items.isEmpty())
				return false;

			if (isLoaded(nfe.chNFe))
				return false;

			nfe.xml = xml;
			nfe.fileName = fileName;
			nfe.source = source;
			nfe.LBR_NFeXML_ID = LBR_NFeXML_ID;

			readService.resolveParties(nfe);
			readService.matchProducts(nfe);

			batch.add(nfe);

			return true;
		} catch (Exception e) {
			log.log(Level.WARNING, "Não foi possível ler o XML " + fileName, e);
			return false;
		}
	}

	private boolean isLoaded(String chNFe) {
		if (chNFe == null)
			return false;

		for (NFeImportDocument nfe : batch) {
			if (chNFe.equals(nfe.chNFe))
				return true;
		}

		return false;
	}

	// -------------------------------------------------------------------------
	// Atualização das listas
	// -------------------------------------------------------------------------

	private void refresh() {
		refreshDocuments();
		refreshPending();
		refreshStatus();
	}

	private void refreshDocuments() {
		clearItems(documentList);
		readyCount = 0;

		for (NFeImportDocument nfe : batch) {
			String status = readService.validateDocument(nfe);

			if (status == null)
				readyCount++;

			ListItem item = new ListItem();
			item.appendChild(new Listcell(documentNo(nfe)));
			item.appendChild(new Listcell(nfe.emitName));
			item.appendChild(new Listcell(format(nfe.dhEmi)));
			item.appendChild(new Listcell(format(nfe.vNF)));
			item.appendChild(new Listcell(String.valueOf(nfe.items.size())));
			item.appendChild(new Listcell(String.valueOf(nfe.getPendingItems().size())));
			item.appendChild(new Listcell(status == null ? "Pronta" : status));
			item.setValue(nfe);
			documentList.appendChild(item);
		}
	}

	private void refreshPending() {
		clearItems(pendingList);
		pending.clear();
		pendingOwner.clear();

		for (NFeImportDocument nfe : batch) {
			for (NFeImportItem item : nfe.getPendingItems()) {
				pending.add(item);
				pendingOwner.add(nfe);

				ListItem listItem = new ListItem();
				listItem.appendChild(new Listcell(documentNo(nfe)));
				listItem.appendChild(new Listcell(String.valueOf(item.nItem)));
				listItem.appendChild(new Listcell(item.cProd));
				listItem.appendChild(new Listcell(item.xProd));
				listItem.appendChild(new Listcell(item.cEAN));
				listItem.appendChild(new Listcell(item.NCM));
				listItem.appendChild(new Listcell(item.uCom));
				listItem.appendChild(new Listcell(format(item.qCom)));
				listItem.setValue(item);
				pendingList.appendChild(listItem);
			}
		}

		pendingLabel.setValue(pending.isEmpty()
				? "Nenhuma pendência — todos os itens foram identificados"
				: pending.size() + " item(ns) aguardando identificação");
	}

	private void refreshStatus() {
		statusLabel.setValue(batch.size() + " documento(s) carregado(s), " + readyCount
				+ " pronto(s) para importar, " + pending.size() + " pendência(s) de produto");
	}

	private void clearItems(Listbox listbox) {
		listbox.getItems().clear();
	}

	// -------------------------------------------------------------------------
	// Conciliação
	// -------------------------------------------------------------------------

	private NFeImportItem getSelectedPending() {
		int index = pendingList.getSelectedIndex();

		return index < 0 || index >= pending.size() ? null : pending.get(index);
	}

	private void onSelectPending() {
		NFeImportItem item = getSelectedPending();

		if (item == null)
			return;

		editorProduct.setValue(item.M_Product_ID);
		editorCharge.setValue(item.C_Charge_ID);
		editorUOM.setValue(item.C_UOM_ID);

		refreshSuggestions(item);
	}

	private void refreshSuggestions(NFeImportItem item) {
		clearItems(suggestionList);
		suggestions.clear();

		suggestions.addAll(readService.getMatcher().suggest(item, NFeProductMatcher.DEFAULT_SUGGESTIONS));

		for (MProduct product : suggestions) {
			ListItem listItem = new ListItem();
			listItem.appendChild(new Listcell(product.getName()));
			listItem.appendChild(new Listcell(product.getValue()));
			listItem.appendChild(new Listcell(product.getUPC()));
			listItem.setValue(product);
			suggestionList.appendChild(listItem);
		}
	}

	private void onSelectSuggestion() {
		int index = suggestionList.getSelectedIndex();

		if (index < 0 || index >= suggestions.size())
			return;

		MProduct product = suggestions.get(index);
		editorProduct.setValue(product.getM_Product_ID());
		editorUOM.setValue(product.getC_UOM_ID());
	}

	/**
	 * Aplica o que o usuário escolheu. Com {@code toBatch}, o mesmo código do
	 * mesmo fornecedor é resolvido em todas as notas da fila.
	 */
	private void applyResolution(boolean toBatch) {
		NFeImportItem item = getSelectedPending();

		if (item == null) {
			Dialog.warn(getWindowNo(), "", "Selecione uma pendência para resolver");
			return;
		}

		Integer M_Product_ID = (Integer) editorProduct.getValue();
		Integer C_Charge_ID = (Integer) editorCharge.getValue();
		Integer C_UOM_ID = (Integer) editorUOM.getValue();

		if (M_Product_ID == null && C_Charge_ID == null) {
			Dialog.warn(getWindowNo(), "", "Informe o produto ou o encargo");
			return;
		}

		if (C_UOM_ID == null) {
			Dialog.warn(getWindowNo(), "", "Informe a unidade de medida");
			return;
		}

		item.M_Product_ID = M_Product_ID;
		item.C_Charge_ID = C_Charge_ID;
		item.C_UOM_ID = C_UOM_ID;
		item.matchLevel = NFeImportItem.MATCH_MANUAL;

		int applied = 0;

		if (toBatch) {
			NFeImportDocument owner = pendingOwner.get(pendingList.getSelectedIndex());
			applied = NFeProductMatcher.applyToBatch(batch, item, owner.C_BPartner_ID);
		}

		refresh();

		if (applied > 0)
			Dialog.info(getWindowNo(), "", "Vínculo aplicado a mais " + applied + " item(ns) do lote");
	}

	// -------------------------------------------------------------------------
	// Importação
	// -------------------------------------------------------------------------

	/**
	 * Importa o que está pronto, cada nota em sua própria transação: uma nota
	 * problemática não derruba o lote nem desfaz o que já entrou.
	 */
	private void doImport() {
		if (batch.isEmpty()) {
			dispose();
			return;
		}

		String optionsError = options.validate();

		if (optionsError != null) {
			Dialog.error(getWindowNo(), "", optionsError);
			return;
		}

		List<NFeImportDocument> imported = new ArrayList<NFeImportDocument>();
		StringBuilder errors = new StringBuilder();
		int skipped = 0;

		for (NFeImportDocument nfe : batch) {
			String trxName = Trx.createTrxName("NFImp");
			Trx trx = Trx.get(trxName, true);

			try {
				NFeImportService service = new NFeImportService(Env.getCtx(), trxName);

				if (service.validate(nfe, options) != null) {
					skipped++;
					continue;
				}

				MLBRNotaFiscal nf = service.importDocument(nfe, options);
				trx.commit(true);
				imported.add(nfe);

				log.info("Nota Fiscal importada: " + nf.getDocumentNo() + " (" + nfe.chNFe + ")");
			} catch (Exception e) {
				trx.rollback();
				log.log(Level.SEVERE, "Falha ao importar " + nfe.getLabel(), e);
				errors.append("\n").append(nfe.getLabel()).append(": ").append(e.getMessage());
			} finally {
				trx.close();
			}
		}

		batch.removeAll(imported);
		refresh();

		StringBuilder message = new StringBuilder(imported.size() + " nota(s) importada(s)");

		if (skipped > 0)
			message.append(", ").append(skipped).append(" ainda com pendência");

		if (errors.length() > 0)
			message.append("\n\nFalhas:").append(errors);

		if (errors.length() > 0)
			Dialog.error(getWindowNo(), "", message.toString());
		else
			Dialog.info(getWindowNo(), "", message.toString());
	}

	private void removeSelectedDocument() {
		int index = documentList.getSelectedIndex();

		if (index < 0 || index >= batch.size()) {
			Dialog.warn(getWindowNo(), "", "Selecione um documento para remover da lista");
			return;
		}

		batch.remove(index);
		refresh();
	}

	// -------------------------------------------------------------------------
	// Eventos
	// -------------------------------------------------------------------------

	@Override
	public void onEvent(Event e) throws Exception {
		if (e instanceof UploadEvent) {
			try {
				loadFromFile(((UploadEvent) e).getMedia());
			} catch (Exception ex) {
				log.log(Level.SEVERE, "Não foi possível abrir o arquivo selecionado", ex);
				Dialog.error(getWindowNo(), "", "Não foi possível abrir o arquivo selecionado."
						+ "\nVerifique se é um XML de NF-e ou um ZIP com XMLs.");
			}

			return;
		}

		String id = e.getTarget().getId();

		if (Events.ON_SELECT.equals(e.getName())) {
			if (e.getTarget() == pendingList)
				onSelectPending();
			else if (e.getTarget() == suggestionList)
				onSelectSuggestion();

			return;
		}

		if ("LoadDFe".equals(id))
			loadFromDFe();
		else if ("Remove".equals(id))
			removeSelectedDocument();
		else if ("Apply".equals(id))
			applyResolution(false);
		else if ("ApplyBatch".equals(id))
			applyResolution(true);
		else if (ConfirmPanel.A_OK.equals(id))
			doImport();
		else if (ConfirmPanel.A_CANCEL.equals(id))
			dispose();
	}

	@Override
	public void valueChange(ValueChangeEvent e) {
		String property = e.getPropertyName();

		if ("C_DocType_ID".equals(property)) {
			options.C_DocType_ID = e.getNewValue() == null ? 0 : (Integer) e.getNewValue();
		} else if ("LBR_TransactionType".equals(property)) {
			options.LBR_TransactionType = (String) e.getNewValue();
		} else if ("Description".equals(property)) {
			options.description = (String) e.getNewValue();
		} else if ("LBR_OwnDateDelivered".equals(property)) {
			options.LBR_OwnDateDelivered = (Timestamp) e.getNewValue();
		} else if ("DocAction".equals(property)) {
			options.docAction = e.getNewValue() == null ? DocAction.ACTION_None : (String) e.getNewValue();
		}
	}

	public void dispose() {
		SessionManager.getAppDesktop().closeActiveWindow();
	}

	/** Número e série como o usuário lê na nota */
	private static String documentNo(NFeImportDocument nfe) {
		if (nfe.nNF == null)
			return nfe.fileName;

		return nfe.serie == null ? nfe.nNF : nfe.nNF + "/" + nfe.serie;
	}

	private static String format(Timestamp value) {
		return value == null ? "" : TextUtil.timeToString(value, "dd/MM/yyyy");
	}

	private static String format(BigDecimal value) {
		return value == null ? "" : value.toPlainString();
	}
}	//	WNFeImportDFe
