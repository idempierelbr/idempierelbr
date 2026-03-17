/******************************************************************************
 * Product: Adempiere ERP & CRM Smart Business Solution                       *
 * Copyright (C) 1999-2006 ComPiere, Inc. All Rights Reserved.                *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 * For the text or an alternative of this public license, you may reach us    *
 * ComPiere, Inc., 2620 Augustine Dr. #245, Santa Clara, CA 95054, USA        *
 * or via info@compiere.org or http://www.compiere.org/license.html           *
 *****************************************************************************/
package org.idempierelbr.tax.webui.window;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;

import org.adempiere.util.Callback;
import org.adempiere.webui.adwindow.ADTabpanel;
import org.adempiere.webui.apps.AEnv;
import org.adempiere.webui.component.Grid;
import org.adempiere.webui.component.Label;
import org.adempiere.webui.component.Row;
import org.adempiere.webui.component.Rows;
import org.adempiere.webui.component.ToolBarButton;
import org.adempiere.webui.component.Window;
import org.adempiere.webui.editor.WEditor;
import org.adempiere.webui.editor.WebEditorFactory;
import org.adempiere.webui.event.ValueChangeEvent;
import org.adempiere.webui.event.ValueChangeListener;
import org.adempiere.webui.session.SessionManager;
import org.adempiere.webui.theme.ThemeManager;
import org.adempiere.webui.window.Dialog;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;
import org.compiere.model.GridWindow;
import org.compiere.model.GridWindowVO;
import org.compiere.model.MQuery;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;
import org.idempierelbr.base.model.MLBRTax;
import org.idempierelbr.base.model.MLBRTaxLine;
import org.zkoss.zk.ui.Page;
import org.zkoss.zk.ui.event.Event;
import org.zkoss.zk.ui.event.EventListener;
import org.zkoss.zk.ui.event.Events;
import org.zkoss.zul.Borderlayout;
import org.zkoss.zul.Cell;
import org.zkoss.zul.Center;
import org.zkoss.zul.North;
import org.zkoss.zul.Caption;
import org.zkoss.zul.Div;
import org.zkoss.zul.Groupbox;
import org.zkoss.zul.Hbox;
import org.zkoss.zul.Vbox;

/**
 *	Dialog to enter Tax Transaction
 *
 * 	@author Alan Rodrigo Lescano
 */
@SuppressWarnings("removal")
public final class WTaxesDialog extends Window
	implements EventListener<Event>, ValueChangeListener
{

	private static final long serialVersionUID = 7999516267209766287L;
	private Callback<Integer> m_callback;

	/**
	 * 	Constructor
	 *  @param title title
	 *  @param MLBRTax tax info
	 */
	public WTaxesDialog (String title, MLBRTax tax, Callback<Integer> callback)
	{
		super ();
		this.setTitle(title);
		this.setHeight("550px");
		this.setWidth("750px");
		
		m_MLBRTax_original = tax;
		
		if (tax == null) {
			tax = new MLBRTax(Env.getCtx(), 0, null);
			tax.setAD_Org_ID(0);
			tax.saveEx();
			m_MLBRTax_new = tax;
		} else
			m_MLBRTax_new = tax.copyTo();
		
		m_callback = callback;
		m_WindowNo = SessionManager.getAppDesktop().registerWindow(this);
		
		try	{
			init();
		} catch(Exception ex) {
			log.log(Level.SEVERE, ex.toString());
		}
		
		if (initTax()) {
			AEnv.showCenterScreen(this);
			checkDefaultValues();
		} else
			dispose();
	}

	/** Window No						*/
	private int m_WindowNo;
	/** Selection changed				*/
	protected boolean m_changed = false;
	/** MWindow for Tax Transaction  	*/
	private GridWindow m_mWindow = null;
	/** MTab for Tax Transaction	    */
	private GridTab m_mTab = null;
	/** GridController                  */
	private ADTabpanel m_adTabPanel = null;
	/** Tax	New	(or changed)			*/
	private MLBRTax m_MLBRTax_new = null;
	/** Tax	Original					*/
	private MLBRTax m_MLBRTax_original = null;
	/** Where clause					*/
	private MQuery m_query;
	/**	Logger							*/
	private static CLogger log = CLogger.getCLogger(WTaxesDialog.class);
	
	private WEditor f_LBR_TaxName_ID;
	
	//  Editors for Query - Grupo padrão (original)
	private WEditor f_LBR_TaxStatus_ID, f_LBR_TaxRate,
		f_LBR_TaxBase, f_LBR_LegalMessage_ID, f_LBR_TaxBaseType_ID, f_LBR_PostTax;
	
	//  Editors for Query - Grupo IBS/CBS
	private WEditor f_LBR_CST_IBSCBS_ID, f_LBR_ClassTrib_IBSCBS_ID, f_LBR_TaxDeferralRate,
		f_LBR_TaxRedRate, f_LBR_TaxRedEfetRate;
	
	//  Editors for Query - Grupo IS
	private WEditor f_LBR_CST_IS_ID, f_LBR_ClassTrib_IS_ID;
	
	// Map para armazenar todos os editores criados dinamicamente
	private Map<String, WEditor> allEditors = new HashMap<>();
	// Map para armazenar os campos (GridField) por nome
	private Map<String, GridField> allFields = new HashMap<>();
	// Lista de rows dinâmicas (para poder remover/recriar)
	private List<Row> dynamicRows = new ArrayList<>();
	// Groupbox para conter os campos dinâmicos
	private Groupbox dynamicFieldsGroupbox = new Groupbox();
	private Grid dynamicFieldsLayout = new Grid();
	private Rows dynamicFieldsRows = new Rows();
	private Label emptyFieldsMessage = new Label();
	
	private Label f_Description = new Label ("");
	private int m_columnCount = 0; // Contador de colunas (0, 1, 2 = 3 colunas)
	@SuppressWarnings("unused")
	private Vbox panel = new Vbox();
	private Hbox northPanel = new Hbox();
	private Groupbox parameterPanel = new Groupbox();
	private Grid parameterLayout = new Grid();
	private Vbox toolBar = new Vbox();
	private ToolBarButton bSave = new ToolBarButton();
	private ToolBarButton bIgnore = new ToolBarButton();
	private ToolBarButton bDelete = new ToolBarButton();
	private Row m_row;
	private Rows m_rows;

	/**
	 *	Static component init.
	 *  <pre>
	 *  - north
	 *    - parameterPanel
	 *    - toolBar (vertical)
	 *  - center
	 *    - adtabpanel (grid)
	 *  </pre>
	 *  @throws Exception
	 */
	void init() throws Exception
	{
		//Caption caption = new Caption(Msg.getMsg(Env.getCtx(),"Parameter"));
		//parameterPanel.appendChild(caption);
		parameterPanel.setStyle("background-color: transparent !important; border: none !important; padding: 0px !important; margin: 0px !important;");
		parameterPanel.setContentStyle("border: none !important; padding: 0px !important; margin: 0px !important;");
		parameterPanel.setSclass("groupbox-noborder");
		toolBar.setStyle("border: none; padding: 5px; margin-left: 10px;");
		toolBar.setAlign("center");

		bSave.setImage(ThemeManager.getThemeResource("images/Save24.png"));
		bSave.setTooltiptext(Msg.getMsg(Env.getCtx(),"Save"));
		bSave.addEventListener(Events.ON_CLICK, this);
		bSave.setStyle("margin-bottom: 5px;");
		
		bIgnore.setImage(ThemeManager.getThemeResource("images/Ignore24.png"));
		bIgnore.setTooltiptext(Msg.getMsg(Env.getCtx(),"Ignore"));
		bIgnore.addEventListener(Events.ON_CLICK, this);
		bIgnore.setStyle("margin-bottom: 5px;");
		
		bDelete.setImage(ThemeManager.getThemeResource("images/Delete24.png"));
		bDelete.setTooltiptext(Msg.getMsg(Env.getCtx(),"Delete"));
		bDelete.addEventListener(Events.ON_CLICK, this);
		
		toolBar.appendChild(bIgnore);
		toolBar.appendChild(bSave);
		toolBar.appendChild(bDelete);

		northPanel.appendChild(parameterPanel);
		parameterPanel.setHflex("1");
		northPanel.appendChild(toolBar);
		toolBar.setWidth("auto");
		northPanel.setWidth("100%");

		m_adTabPanel = new ADTabpanel();

		Borderlayout layout = new Borderlayout();
		layout.setParent(this);
		layout.setHeight("100%");
		layout.setWidth("100%");
		layout.setStyle("background-color: transparent;");

		North nRegion = new North();
		nRegion.setParent(layout);
		nRegion.setSplittable(true);
		nRegion.setCollapsible(true);
		nRegion.setAutoscroll(true);
		nRegion.setSize("60%");
		northPanel.setVflex("false");
		nRegion.appendChild(northPanel);
		nRegion.setStyle("background-color: transparent; border: none; overflow: auto;");
		northPanel.setStyle("background-color: transparent;");

		Center cRegion = new Center();
		cRegion.setParent(layout);
		m_adTabPanel.setVflex("true");
		cRegion.appendChild(m_adTabPanel);

		this.setBorder("normal");
		this.setClosable(true);
		this.addEventListener(Events.ON_CLOSE, this);
		this.setSizable(true);
	}	//	jbInit

	/**
	 *	Dyanmic Init.
	 *  When a row is selected, the editor values are set
	 *  (editors do not change grid)
	 *  @return true if initialized
	 */
	private boolean initTax()
	{
		Env.setContext(Env.getCtx(), m_WindowNo, "LBR_Tax_ID", m_MLBRTax_new.get_ID());
		Env.setContext(Env.getCtx(), m_WindowNo, "LBR_TaxName_ID", 0);
		Env.setContext(Env.getCtx(), m_WindowNo, "LBR_TaxStatus_ID", 0);
		Env.setContext(Env.getCtx(), m_WindowNo, "LBR_TaxBaseType_ID", 0);
		Env.setContext(Env.getCtx(), m_WindowNo, "LBR_CST_IBSCBS_ID", 0);
		Env.setContext(Env.getCtx(), m_WindowNo, "LBR_ClassTrib_IBSCBS_ID", 0);
		Env.setContext(Env.getCtx(), m_WindowNo, "LBR_CST_IS_ID", 0);
		Env.setContext(Env.getCtx(), m_WindowNo, "LBR_ClassTrib_IS_ID", 0);
		
		// Model
		// Transaction Tax - AD_Window_UU = 06389dc4-c8ab-469f-8dbf-1d080984bd80
		int AD_Window_ID = DB.getSQLValue(null, "SELECT AD_Window_ID FROM AD_Window WHERE AD_Window_UU='06389dc4-c8ab-469f-8dbf-1d080984bd80'");
		GridWindowVO wVO = AEnv.getMWindowVO (m_WindowNo, AD_Window_ID, 0);
		
		if (wVO == null)
			return false;
		
		// Force window/tab to be read-only
		wVO.WindowType = GridWindowVO.WINDOWTYPE_QUERY;
		wVO.Tabs.get(1).IsReadOnly = true;
		m_mWindow = new GridWindow (wVO);
		m_mTab = m_mWindow.getTab(1);
		
		// Make sure is the tab is loaded - teo_sarca [ 1659124 ]
		if (!m_mTab.isLoadComplete())
			m_mWindow.initTab(1);
		
		// Grid restrictions
		m_mTab.getField("AD_Client_ID").setDisplayed(false);
		
		// don't show fields not being displayed in this environment
		for (int i = 0; i < m_mTab.getFieldCount(); i++) {
			GridField field = m_mTab.getField(i);
			if (!field.isDisplayed (true)) // check context
				field.setDisplayed (false);
		}
		
		// GridController
		m_adTabPanel.init(null, m_mTab);

		// Prepare Parameter
		parameterLayout.makeNoStrip();
		parameterLayout.setOddRowSclass("even");
		parameterLayout.setParent(parameterPanel);
		parameterLayout.setWidth("100%");
		parameterLayout.setStyle("background-color: transparent; margin:none; border:none !important; padding:none;");

		m_rows = new Rows();
		m_rows.setStyle("border: none !important;");
		m_rows.setParent(parameterLayout);
		
		// Add description
		m_columnCount = 0;
		Row row = new Row();
		f_Description.setStyle("color: #666; padding-bottom: 8px;");
		f_Description.setText("Para ADICIONAR: Clique 'Desfazer', preencha os campos e 'Salvar'. " +
				"Para ALTERAR: Selecione o imposto na grade, edite os campos e 'Salvar'. " +
				"Para EXCLUIR: Selecione o imposto e clique 'Excluir'.");
		Cell cell = new Cell();
		cell.setColspan(6);
		cell.appendChild(f_Description);
		row.appendChild(cell);
		row.setStyle("background-color: transparent; padding: 5px; border: none !important; border-top: none !important; border-bottom: none !important;");
		m_rows.appendChild(row);
		
		// Campo do nome do imposto (sempre visível)
		GridField field = null; 
		
		field = m_mTab.getField("LBR_TaxName_ID");
		f_LBR_TaxName_ID = WebEditorFactory.getEditor(field, false);
		f_LBR_TaxName_ID.addValueChangeListener(this);
		addLine(field, f_LBR_TaxName_ID, true, 2); // Ocupa 2 colunas
		allEditors.put("LBR_TaxName_ID", f_LBR_TaxName_ID);
		allFields.put("LBR_TaxName_ID", field);
		
		// Criar todos os editores possíveis (mas não exibi-los ainda)
		createAllEditors();
		
		// Criar o groupbox para campos dinâmicos
		setupDynamicFieldsGroupbox();
		
		// Finish
		m_query = new MQuery();
		m_query.addRestriction("LBR_Tax_ID", MQuery.EQUAL, m_MLBRTax_new.get_ID());
		m_query.addRestriction("IsActive", MQuery.EQUAL, "Y");

		m_mTab.setQuery(m_query);
		m_mTab.query(false);
		m_adTabPanel.activate(true);
		
		if (!m_adTabPanel.isGridView())
			m_adTabPanel.switchRowPresentation();
		
		// Adicionar listener para detectar mudanças na linha selecionada do grid
		m_mTab.addDataStatusListener(evt -> {
			onGridRowChanged();
		});
		
		return true;
	}
	
	/**
	 * Cria todos os editores possíveis para todos os grupos de impostos
	 */
	private void createAllEditors() {
		GridField field = null;
		
		// Grupo padrão
		field = m_mTab.getField("LBR_TaxStatus_ID");
		if (field != null) {
			f_LBR_TaxStatus_ID = WebEditorFactory.getEditor(field, false);
			f_LBR_TaxStatus_ID.addValueChangeListener(this);
			allEditors.put("LBR_TaxStatus_ID", f_LBR_TaxStatus_ID);
			allFields.put("LBR_TaxStatus_ID", field);
		}
		
		field = m_mTab.getField("LBR_TaxRate");
		if (field != null) {
			f_LBR_TaxRate = WebEditorFactory.getEditor(field, false);
			allEditors.put("LBR_TaxRate", f_LBR_TaxRate);
			allFields.put("LBR_TaxRate", field);
		}
		
		field = m_mTab.getField("LBR_TaxBase");
		if (field != null) {
			f_LBR_TaxBase = WebEditorFactory.getEditor(field, false);
			allEditors.put("LBR_TaxBase", f_LBR_TaxBase);
			allFields.put("LBR_TaxBase", field);
		}
		
		field = m_mTab.getField("LBR_LegalMessage_ID");
		if (field != null) {
			f_LBR_LegalMessage_ID = WebEditorFactory.getEditor(field, false);
			allEditors.put("LBR_LegalMessage_ID", f_LBR_LegalMessage_ID);
			allFields.put("LBR_LegalMessage_ID", field);
		}
		
		field = m_mTab.getField("LBR_TaxBaseType_ID");
		if (field != null) {
			f_LBR_TaxBaseType_ID = WebEditorFactory.getEditor(field, false);
			allEditors.put("LBR_TaxBaseType_ID", f_LBR_TaxBaseType_ID);
			allFields.put("LBR_TaxBaseType_ID", field);
		}
		
		field = m_mTab.getField("LBR_PostTax");
		if (field != null) {
			f_LBR_PostTax = WebEditorFactory.getEditor(field, false);
			allEditors.put("LBR_PostTax", f_LBR_PostTax);
			allFields.put("LBR_PostTax", field);
		}
		
		// Grupo IBS/CBS
		field = m_mTab.getField("LBR_CST_IBSCBS_ID");
		if (field != null) {
			f_LBR_CST_IBSCBS_ID = WebEditorFactory.getEditor(field, false);
			f_LBR_CST_IBSCBS_ID.addValueChangeListener(this);
			allEditors.put("LBR_CST_IBSCBS_ID", f_LBR_CST_IBSCBS_ID);
			allFields.put("LBR_CST_IBSCBS_ID", field);
		}
		
		field = m_mTab.getField("LBR_ClassTrib_IBSCBS_ID");
		if (field != null) {
			f_LBR_ClassTrib_IBSCBS_ID = WebEditorFactory.getEditor(field, false);
			f_LBR_ClassTrib_IBSCBS_ID.addValueChangeListener(this);
			allEditors.put("LBR_ClassTrib_IBSCBS_ID", f_LBR_ClassTrib_IBSCBS_ID);
			allFields.put("LBR_ClassTrib_IBSCBS_ID", field);
		}
		
		field = m_mTab.getField("LBR_TaxDeferralRate");
		if (field != null) {
			f_LBR_TaxDeferralRate = WebEditorFactory.getEditor(field, false);
			allEditors.put("LBR_TaxDeferralRate", f_LBR_TaxDeferralRate);
			allFields.put("LBR_TaxDeferralRate", field);
		}
		
		field = m_mTab.getField("LBR_TaxRedRate");
		if (field != null) {
			f_LBR_TaxRedRate = WebEditorFactory.getEditor(field, false);
			allEditors.put("LBR_TaxRedRate", f_LBR_TaxRedRate);
			allFields.put("LBR_TaxRedRate", field);
		}
		
		field = m_mTab.getField("LBR_TaxRedEfetRate");
		if (field != null) {
			f_LBR_TaxRedEfetRate = WebEditorFactory.getEditor(field, false);
			allEditors.put("LBR_TaxRedEfetRate", f_LBR_TaxRedEfetRate);
			allFields.put("LBR_TaxRedEfetRate", field);
		}
		
		// Grupo IS
		field = m_mTab.getField("LBR_CST_IS_ID");
		if (field != null) {
			f_LBR_CST_IS_ID = WebEditorFactory.getEditor(field, false);
			f_LBR_CST_IS_ID.addValueChangeListener(this);
			allEditors.put("LBR_CST_IS_ID", f_LBR_CST_IS_ID);
			allFields.put("LBR_CST_IS_ID", field);
		}
		
		field = m_mTab.getField("LBR_ClassTrib_IS_ID");
		if (field != null) {
			f_LBR_ClassTrib_IS_ID = WebEditorFactory.getEditor(field, false);
			f_LBR_ClassTrib_IS_ID.addValueChangeListener(this);
			allEditors.put("LBR_ClassTrib_IS_ID", f_LBR_ClassTrib_IS_ID);
			allFields.put("LBR_ClassTrib_IS_ID", field);
		}
		
		// Adicionar property listeners aos campos
		for (Map.Entry<String, GridField> entry : allFields.entrySet()) {
			if (!entry.getKey().equals("LBR_TaxName_ID")) {
				WEditor editor = allEditors.get(entry.getKey());
				if (editor != null) {
					entry.getValue().addPropertyChangeListener(editor);
				}
			}
		}
	}
	
	/**
	 * Configura o groupbox para campos dinâmicos
	 */
	private void setupDynamicFieldsGroupbox() {
		// Adicionar o groupbox após o campo LBR_TaxName_ID
		Row row = new Row();
		row.setStyle("background-color: transparent; border: none !important; border-top: none !important; border-bottom: none !important;");
		m_rows.appendChild(row);
		
		Cell cell = new Cell();
		cell.setColspan(6);
		cell.appendChild(dynamicFieldsGroupbox);
		row.appendChild(cell);
		
		dynamicFieldsGroupbox.setStyle("background-color: transparent; border: none; margin-top: 0px;");
		Caption caption = new Caption(Msg.getMsg(Env.getCtx(),"Configurações"));
		dynamicFieldsGroupbox.appendChild(caption);
		
		// Adicionar mensagem para quando não houver imposto selecionado
		emptyFieldsMessage.setValue("Selecione um imposto existente na grade abaixo, ou informe um novo no campo acima para adicionar e configurar.");
		emptyFieldsMessage.setStyle("color: #666; padding: 10px;");
		dynamicFieldsGroupbox.appendChild(emptyFieldsMessage);
		
		dynamicFieldsLayout.makeNoStrip();
		dynamicFieldsLayout.setOddRowSclass("even");
		dynamicFieldsLayout.setParent(dynamicFieldsGroupbox);
		dynamicFieldsLayout.setWidth("100%");
		dynamicFieldsLayout.setStyle("background-color: transparent; margin:none; border:none !important; padding:5px;");
		
		dynamicFieldsRows.setStyle("border: none !important;");
		dynamicFieldsRows.setParent(dynamicFieldsLayout);
		
		// Inicialmente mostrar a mensagem e ocultar o grid
		emptyFieldsMessage.setVisible(true);
		dynamicFieldsLayout.setVisible(false);
	}
	
	/**
	 * Obtém o nome do imposto baseado no ID
	 */
	private String getTaxNameByID(int taxNameID) {
		if (taxNameID <= 0)
			return null;
		
		String sql = "SELECT Name FROM LBR_TaxName WHERE LBR_TaxName_ID=?";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String taxName = null;
		
		try {
			pstmt = DB.prepareStatement(sql, null);
			pstmt.setInt(1, taxNameID);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				taxName = rs.getString(1);
			}
		} catch (SQLException e) {
			log.log(Level.SEVERE, sql, e);
		} finally {
			DB.close(rs, pstmt);
		}
		
		return taxName;
	}
	
	/**
	 * Define quais campos devem ser exibidos para cada imposto
	 * Retorna a lista de nomes de campos a serem exibidos
	 */
	private List<String> getFieldsForTax(String taxName) {
		List<String> fields = new ArrayList<>();
		
		if (taxName == null || taxName.trim().isEmpty())
			return fields;
		
		// Grupo IBS/CBS
		if (taxName.contains("IBS") || taxName.contains("CBS")) {
			fields.add("LBR_CST_IBSCBS_ID");
			fields.add("LBR_ClassTrib_IBSCBS_ID");
			fields.add("LBR_TaxRate");
			fields.add("LBR_TaxDeferralRate");
			fields.add("LBR_TaxRedRate");
			fields.add("LBR_TaxRedEfetRate");			
		}
		// Grupo IS
		else if (taxName.equals("IS")) {
			fields.add("LBR_CST_IS_ID");
			fields.add("LBR_ClassTrib_IS_ID");
			fields.add("LBR_TaxRate");
		}
		// Default: grupo padrão ex: ICMS, IPI, PIS, COFINS, ISS, etc.
		else {
			fields.add("LBR_TaxStatus_ID");
			fields.add("LBR_TaxRate");
			fields.add("LBR_TaxBase");
			fields.add("LBR_LegalMessage_ID");
			fields.add("LBR_TaxBaseType_ID");
			fields.add("LBR_PostTax");
		}
		
		return fields;
	}
	
	/**
	 * Renderiza os campos dinâmicos baseado no imposto selecionado
	 */
	private void renderDynamicFields(String taxName) {
		// Limpar campos dinâmicos anteriores
		dynamicFieldsRows.getChildren().clear();
		dynamicRows.clear();
		
		if (taxName == null || taxName.trim().isEmpty()) {
			// Nenhum imposto selecionado, mostrar mensagem
			emptyFieldsMessage.setVisible(true);
			dynamicFieldsLayout.setVisible(false);
			return;
		}
		
		// Obter campos para este imposto
		List<String> fieldsToShow = getFieldsForTax(taxName);
		
		if (fieldsToShow.isEmpty()) {
			// Nenhum campo para mostrar, exibir mensagem
			emptyFieldsMessage.setVisible(true);
			dynamicFieldsLayout.setVisible(false);
			return;
		}
		
		// Ocultar mensagem e exibir campos
		emptyFieldsMessage.setVisible(false);
		dynamicFieldsLayout.setVisible(true);
		
		// Renderizar campos com 3 colunas por linha
		int columnCount = 0;
		Row currentRow = null;
		
		for (String fieldName : fieldsToShow) {
			WEditor editor = allEditors.get(fieldName);
			GridField field = allFields.get(fieldName);
			
			if (editor == null || field == null)
				continue;
			
			Label label = editor.getLabel();
			editor.setReadWrite(true);
			editor.setMandatory(isMandatoryField(fieldName));
			
			// Criar nova linha se for a primeira coluna
			if (columnCount == 0) {
				currentRow = new Row();
				currentRow.setStyle("background-color: transparent; border: none !important; border-top: none !important; border-bottom: none !important;");
				dynamicFieldsRows.appendChild(currentRow);
				dynamicRows.add(currentRow);
			}
			
			// Adicionar label
			Div div = new Div();
			div.setStyle("text-align: right; padding-right: 5px;");
			div.appendChild(label);
			currentRow.appendChild(div);
			
			// Adicionar campo
			currentRow.appendChild(editor.getComponent());
			editor.fillHorizontal();
			editor.dynamicDisplay();
			
			// Incrementar contador de colunas (0, 1, 2, depois volta para 0)
			columnCount++;
			if (columnCount >= 3) {
				columnCount = 0;
			}
		}
		
		// Se a última linha ficou incompleta, adicionar células vazias para completar
		if (columnCount > 0 && currentRow != null) {
			int cellsToAdd = (3 - columnCount) * 2; // Cada coluna tem 2 células (label + field)
			for (int i = 0; i < cellsToAdd; i++) {
				currentRow.appendChild(new Cell());
			}
		}
	}
	
	/**
	 * Determina se um campo é obrigatório
	 */
	private boolean isMandatoryField(String fieldName) {
		// Campos sempre obrigatórios
		if ("LBR_TaxName_ID".equals(fieldName))
			return true;
		
		// Outros campos não obrigatórios por padrão
		// Ajuste conforme necessário
		return false;
	}

	/**
	 *	Add Editor to parameterPanel with 3 columns per row.
	 *  Field Value changes update Editors
	 *  @param field field
	 *  @param editor editor
	 *  @param mandatory mandatory
	 *  @param colspan number of columns to span (1, 2, or 3)
	 */
	private void addLine (GridField field, WEditor editor, boolean mandatory, int colspan)
	{
		if (log.isLoggable(Level.FINE)) log.fine("Field=" + field);
		Label label = editor.getLabel();
		editor.setReadWrite(true);
		editor.setMandatory(mandatory);
		
		// MField => VEditor
		field.addPropertyChangeListener(editor);

		// Criar nova linha se for a primeira coluna
		if (m_columnCount == 0) {
			m_row = new Row();
			m_row.setStyle("background-color: transparent; border: none !important; border-top: none !important; border-bottom: none !important;");
			m_rows.appendChild(m_row);
		}

		// Adicionar label
		Div div = new Div();
		div.setStyle("text-align: right; padding-right: 5px;");
		div.appendChild(label);
		m_row.appendChild(div);

		// Adicionar campo com colspan
		Cell cell = new Cell();
		// Cada coluna tem 2 células (label + field)
		// colspan de campo = (colspan * 2) - 1 (já contamos o label)
		int fieldColspan = (colspan * 2) - 1;
		cell.setColspan(fieldColspan);
		cell.appendChild(editor.getComponent());
		m_row.appendChild(cell);
		
		editor.fillHorizontal();
		editor.dynamicDisplay();		

		// Incrementar contador de colunas
		m_columnCount += colspan;
		if (m_columnCount >= 3) {
			m_columnCount = 0;
		}
	}

	/**
	 *	dispose
	 */
	public void dispose() {
		saveSelection();

		if (m_adTabPanel != null)
			m_adTabPanel.detach();
		
		m_adTabPanel = null;
		
		// Model
		m_mTab = null;
		
		if (m_mWindow != null)
			m_mWindow.dispose();
		
		m_mWindow = null;
		Env.clearWinContext(m_WindowNo);
		this.onClose();
	}
	
	/* (non-Javadoc)
	 * @see org.adempiere.webui.component.Window#onPageDetached(org.zkoss.zk.ui.Page)
	 */
	@Override
	public void onPageDetached(Page page) {
		super.onPageDetached(page);
		if (m_callback != null) {
			m_callback.onCallback(getValue());
		}
	}

	/**
	 *	Save Selection
	 */
	private void saveSelection() {
		
	}

	public void onEvent(Event event) throws Exception {
		if (event.getName().equals(Events.ON_CLOSE)) {
			// Botão X: fechar a janela (as alterações já foram efetivadas no banco)
			m_changed = true;
			dispose();
		} else if (event.getTarget() == bSave)
			action_Save();
		else if (event.getTarget() == bIgnore)
			action_Ignore();
		else if (event.getTarget() == bDelete)
			action_Delete();
	}

	private void action_Delete() {
		Object value = null;
		value = f_LBR_TaxName_ID.getValue();
		String sql = "DELETE FROM LBR_TaxLine " +
      	      "WHERE LBR_Tax_ID=" + m_MLBRTax_new.get_ID() + " AND LBR_TaxName_ID=" + value;
	    DB.executeUpdate(sql, null);	
	    m_mTab.query(false);
	    
	    m_MLBRTax_new.setDescription();
	    m_MLBRTax_new.saveEx();
	    
	    checkDefaultValues();
	}

	/**
	 *	Create/Save Tax Line
	 */
	private void action_Save() {
		log.info("");
		
		/**
		 *	Check completeness (mandatory fields) ... and for duplicates
		 */
		StringBuilder sql = new StringBuilder ("SELECT LBR_TaxLine_ID FROM LBR_TaxLine WHERE ");
		Object value = null;
		
		// Tax Name
		value = f_LBR_TaxName_ID.getValue();
		sql.append("LBR_TaxName_ID");
		
		if (isEmpty(value))
			sql.append(" IS NULL AND ");
		else
			sql.append("=").append(value).append(" AND ");
		
		// Mandatory
		if (f_LBR_TaxName_ID == null || f_LBR_TaxName_ID.getValue() == null) {
			Dialog.error(m_WindowNo, "FillMandatory", Msg.getElement(Env.getCtx(), "LBR_TaxName_ID"));
			return;
		}
		
		/**
		 *	Check if already exists
		 */
		sql.append("LBR_Tax_ID=?");
		
		if (log.isLoggable(Level.FINE)) log.fine("Check = " + sql.toString());
		int IDvalue = 0;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try	{
			pstmt = DB.prepareStatement(sql.toString(), null);
			pstmt.setInt(1, m_MLBRTax_new.get_ID());
			rs = pstmt.executeQuery();
			if (rs.next()) {
				IDvalue = rs.getInt(1);
			}
		} catch (SQLException e) {
			log.log(Level.SEVERE, sql.toString(), e);
			IDvalue = 0;
		} finally {
			DB.close(rs, pstmt);
			rs = null;
			pstmt = null;
		}
		
		//	Tax already exist, just update
		if (IDvalue != 0) {
			sql = new StringBuilder("UPDATE LBR_TaxLine SET ");
			
			// Tax Name
			value = f_LBR_TaxName_ID.getValue();
			sql.append("LBR_TaxName_ID");
			if (isEmpty(value))
				sql.append("=NULL");
			else
				sql.append("=").append(value);
			
			// Atualizar apenas os campos visíveis/disponíveis
			if (f_LBR_TaxStatus_ID != null && f_LBR_TaxStatus_ID.getComponent().getParent() != null) {
				value = f_LBR_TaxStatus_ID.getValue();
				sql.append(", LBR_TaxStatus_ID");
				if (isEmpty(value))
					sql.append("=NULL");
				else
					sql.append("=").append(value);
			}
			
			if (f_LBR_TaxRate != null && f_LBR_TaxRate.getComponent().getParent() != null) {
				value = f_LBR_TaxRate.getValue();
				sql.append(", LBR_TaxRate");
				if (isEmpty(value))
					sql.append("=NULL");
				else
					sql.append("='").append(value).append("'");
			}
			
			if (f_LBR_TaxBase != null && f_LBR_TaxBase.getComponent().getParent() != null) {
				value = f_LBR_TaxBase.getValue();
				sql.append(", LBR_TaxBase");
				if (isEmpty(value))
					sql.append("=NULL");
				else
					sql.append("='").append(value).append("'");
			}
			
			if (f_LBR_LegalMessage_ID != null && f_LBR_LegalMessage_ID.getComponent().getParent() != null) {
				value = f_LBR_LegalMessage_ID.getValue();
				sql.append(", LBR_LegalMessage_ID");
				if (isEmpty(value))
					sql.append("=NULL");
				else
					sql.append("=").append(value);
			}
			
			if (f_LBR_TaxBaseType_ID != null && f_LBR_TaxBaseType_ID.getComponent().getParent() != null) {
				value = f_LBR_TaxBaseType_ID.getValue();
				sql.append(", LBR_TaxBaseType_ID");
				if (isEmpty(value))
					sql.append("=NULL");
				else
					sql.append("=").append(value);
			}
			
			if (f_LBR_PostTax != null && f_LBR_PostTax.getComponent().getParent() != null) {
				value = f_LBR_PostTax.getValue();
				Boolean valueB = (Boolean)value;
				sql.append(", LBR_PostTax");
				if (valueB.booleanValue())
					sql.append("='Y'");
				else
				 sql.append("='N'");
			}
			
			// IBS/CBS
			if (f_LBR_CST_IBSCBS_ID != null && f_LBR_CST_IBSCBS_ID.getComponent().getParent() != null) {
				value = f_LBR_CST_IBSCBS_ID.getValue();
				sql.append(", LBR_CST_IBSCBS_ID");
				if (isEmpty(value))
					sql.append("=NULL");
				else
					sql.append("=").append(value);
			}
			
			if (f_LBR_ClassTrib_IBSCBS_ID != null && f_LBR_ClassTrib_IBSCBS_ID.getComponent().getParent() != null) {
				value = f_LBR_ClassTrib_IBSCBS_ID.getValue();
				sql.append(", LBR_ClassTrib_IBSCBS_ID");
				if (isEmpty(value))
					sql.append("=NULL");
				else
					sql.append("=").append(value);
			}
			
			if (f_LBR_TaxDeferralRate != null && f_LBR_TaxDeferralRate.getComponent().getParent() != null) {
				value = f_LBR_TaxDeferralRate.getValue();
				sql.append(", LBR_TaxDeferralRate");
				if (isEmpty(value))
					sql.append("=NULL");
				else
					sql.append("='").append(value).append("'");
			}
			
			if (f_LBR_TaxRedRate != null && f_LBR_TaxRedRate.getComponent().getParent() != null) {
				value = f_LBR_TaxRedRate.getValue();
				sql.append(", LBR_TaxRedRate");
				if (isEmpty(value))
					sql.append("=NULL");
				else
					sql.append("='").append(value).append("'");
			}
			
			if (f_LBR_TaxRedEfetRate != null && f_LBR_TaxRedEfetRate.getComponent().getParent() != null) {
				value = f_LBR_TaxRedEfetRate.getValue();
				sql.append(", LBR_TaxRedEfetRate");
				if (isEmpty(value))
					sql.append("=NULL");
				else
					sql.append("='").append(value).append("'");
			}
			
			// IS
			if (f_LBR_CST_IS_ID != null && f_LBR_CST_IS_ID.getComponent().getParent() != null) {
				value = f_LBR_CST_IS_ID.getValue();
				sql.append(", LBR_CST_IS_ID");
				if (isEmpty(value))
					sql.append("=NULL");
				else
					sql.append("=").append(value);
			}
			
			if (f_LBR_ClassTrib_IS_ID != null && f_LBR_ClassTrib_IS_ID.getComponent().getParent() != null) {
				value = f_LBR_ClassTrib_IS_ID.getValue();
				sql.append(", LBR_ClassTrib_IS_ID");
				if (isEmpty(value))
					sql.append("=NULL");
				else
					sql.append("=").append(value);
			}

			sql.append(" WHERE LBR_TaxLine_ID=").append(IDvalue);
			int i = 0;
			PreparedStatement stmt = null;
			
			try	{
				stmt = DB.prepareStatement(sql.toString(),
						ResultSet.TYPE_FORWARD_ONLY, ResultSet.CONCUR_UPDATABLE, null);
				i = stmt.executeUpdate();
			} catch (SQLException e) {
				log.log(Level.SEVERE, sql.toString(), e);
			} finally {
				DB.close(stmt);
				stmt = null;
			}
			if (i == 0)
				Dialog.error(m_WindowNo, "TaxNotUpdated");
			
			int currentRow = m_mTab.getCurrentRow();
			m_mTab.query(false);
			m_mTab.setCurrentRow(currentRow);
		} else {
			MLBRTaxLine line = new MLBRTaxLine(Env.getCtx(), 0, null);
			line.setLBR_Tax_ID(m_MLBRTax_new.get_ID());
			line.setAD_Org_ID(m_MLBRTax_new.getAD_Org_ID());
			line.setIsActive(true);
			
			// Tax Name
			value = f_LBR_TaxName_ID.getValue();
			if (!isEmpty(value))
				line.setLBR_TaxName_ID((Integer)value);
			
			// Salvar apenas os campos visíveis/disponíveis
			if (f_LBR_TaxStatus_ID != null && f_LBR_TaxStatus_ID.getComponent().getParent() != null) {
				value = f_LBR_TaxStatus_ID.getValue();
				if (!isEmpty(value))
					line.setLBR_TaxStatus_ID((Integer)value);
			}
			
			if (f_LBR_TaxRate != null && f_LBR_TaxRate.getComponent().getParent() != null) {
				value = f_LBR_TaxRate.getValue();
				if (!isEmpty(value))
					line.setLBR_TaxRate((BigDecimal)value);
			}
			
			if (f_LBR_TaxBase != null && f_LBR_TaxBase.getComponent().getParent() != null) {
				value = f_LBR_TaxBase.getValue();
				if (!isEmpty(value))
					line.setLBR_TaxBase((BigDecimal)value);
			}
			
			if (f_LBR_LegalMessage_ID != null && f_LBR_LegalMessage_ID.getComponent().getParent() != null) {
				value = f_LBR_LegalMessage_ID.getValue();
				if (!isEmpty(value))
					line.setLBR_LegalMessage_ID((Integer)value);
			}
			
			if (f_LBR_TaxBaseType_ID != null && f_LBR_TaxBaseType_ID.getComponent().getParent() != null) {
				value = f_LBR_TaxBaseType_ID.getValue();
				if (!isEmpty(value))
					line.setLBR_TaxBaseType_ID((Integer)value);
			}
			
			if (f_LBR_PostTax != null && f_LBR_PostTax.getComponent().getParent() != null) {
				value = f_LBR_PostTax.getValue();
				if (!isEmpty(value))
					line.setLBR_PostTax((Boolean)value);
			}
			
			// IBS/CBS
			if (f_LBR_CST_IBSCBS_ID != null && f_LBR_CST_IBSCBS_ID.getComponent().getParent() != null) {
				value = f_LBR_CST_IBSCBS_ID.getValue();
				if (!isEmpty(value))
					line.set_ValueOfColumn("LBR_CST_IBSCBS_ID", (Integer)value);
			}
			
			if (f_LBR_ClassTrib_IBSCBS_ID != null && f_LBR_ClassTrib_IBSCBS_ID.getComponent().getParent() != null) {
				value = f_LBR_ClassTrib_IBSCBS_ID.getValue();
				if (!isEmpty(value))
					line.set_ValueOfColumn("LBR_ClassTrib_IBSCBS_ID", (Integer)value);
			}
			
			if (f_LBR_TaxDeferralRate != null && f_LBR_TaxDeferralRate.getComponent().getParent() != null) {
				value = f_LBR_TaxDeferralRate.getValue();
				if (!isEmpty(value))
					line.set_ValueOfColumn("LBR_TaxDeferralRate", (BigDecimal)value);
			}
			
			if (f_LBR_TaxRedRate != null && f_LBR_TaxRedRate.getComponent().getParent() != null) {
				value = f_LBR_TaxRedRate.getValue();
				if (!isEmpty(value))
					line.set_ValueOfColumn("LBR_TaxRedRate", (BigDecimal)value);
			}
			
			if (f_LBR_TaxRedEfetRate != null && f_LBR_TaxRedEfetRate.getComponent().getParent() != null) {
				value = f_LBR_TaxRedEfetRate.getValue();
				if (!isEmpty(value))
					line.set_ValueOfColumn("LBR_TaxRedEfetRate", (BigDecimal)value);
			}
			
			// IS
			if (f_LBR_CST_IS_ID != null && f_LBR_CST_IS_ID.getComponent().getParent() != null) {
				value = f_LBR_CST_IS_ID.getValue();
				if (!isEmpty(value))
					line.set_ValueOfColumn("LBR_CST_IS_ID", (Integer)value);
			}
			
			if (f_LBR_ClassTrib_IS_ID != null && f_LBR_ClassTrib_IS_ID.getComponent().getParent() != null) {
				value = f_LBR_ClassTrib_IS_ID.getValue();
				if (!isEmpty(value))
					line.set_ValueOfColumn("LBR_ClassTrib_IS_ID", (Integer)value);
			}

			line.saveEx();
			
			m_mTab.query(false);
			m_mTab.setCurrentRow(m_mTab.getRowCount());
		}

		m_MLBRTax_new.setDescription();
		m_MLBRTax_new.saveEx();
	}
	
	private boolean isEmpty(Object value) {
		if (value == null)
			return true;

		if (value instanceof String)
			return ((String)value).trim().length() == 0;

		return false;
	}

	/**
	 *	Ignore
	 */
	private void action_Ignore()
	{
		//	Tax Name
		if (f_LBR_TaxName_ID != null)
			f_LBR_TaxName_ID.setValue(null);
		
		// Limpar todos os editores
		for (WEditor editor : allEditors.values()) {
			if (editor != null && editor != f_LBR_TaxName_ID)
				editor.setValue(null);
		}
		
		Env.setContext(Env.getCtx(), m_WindowNo, "LBR_TaxName_ID", 0);
		Env.setContext(Env.getCtx(), m_WindowNo, "LBR_TaxStatus_ID", 0);
		Env.setContext(Env.getCtx(), m_WindowNo, "LBR_TaxBasetype_ID", 0);
		Env.setContext(Env.getCtx(), m_WindowNo, "LBR_CST_IBSCBS_ID", 0);
		Env.setContext(Env.getCtx(), m_WindowNo, "LBR_ClassTrib_IBSCBS_ID", 0);
		Env.setContext(Env.getCtx(), m_WindowNo, "LBR_CST_IS_ID", 0);
		Env.setContext(Env.getCtx(), m_WindowNo, "LBR_ClassTrib_IS_ID", 0);
		
		// Ocultar campos dinâmicos
		renderDynamicFields(null);
	}

	/**
	 *	Get selected tax
	 *  @return LBR_Tax
	 */
	public Integer getValue() {
		if (log.isLoggable(Level.CONFIG)) log.config("LBR_Tax_ID=" + m_MLBRTax_new.get_ID() + ", Changed=" + m_changed);
		
		if (!m_changed) {
			// Delete new tax
			deleteRecords(m_MLBRTax_new);
			// Return id of original tax
			return m_MLBRTax_original == null ? null : new Integer(m_MLBRTax_original.get_ID());
		}
		
		// Check no. of tax lines. If none, try to delete tax (new). Return null;
		if (m_MLBRTax_new.getLines().length < 1) {
			// Delete new tax
			deleteRecords(m_MLBRTax_new);
			return null;
		}
		
		// Return id of new tax
		return new Integer(m_MLBRTax_new.get_ID());
	}
	
	/**
	 * 	Delete Record
	 */
	private void deleteRecords(MLBRTax tax)
	{
		if (tax != null)
		{
			try {
				tax.deleteLines();
				tax.deleteEx(true);
			} catch (Exception e) {}	
			
			return;
		}
	}	//	deleteRecord

	/**
	 * 	valueChange - Tax Changed
	 *	@param evt event
	 */
	public void valueChange(ValueChangeEvent evt) {
		Object newValue = evt.getNewValue();

		if (newValue instanceof Integer)
			Env.setContext(Env.getCtx(), m_WindowNo, evt.getPropertyName(), ((Integer)newValue).intValue());
		
		if (evt.getPropertyName().equalsIgnoreCase("LBR_TaxName_ID")) {
			// Quando o imposto muda, atualizar os campos exibidos
			int taxNameID = newValue != null ? (Integer)newValue : 0;
			String taxName = getTaxNameByID(taxNameID);
			
			// Renderizar campos apropriados
			renderDynamicFields(taxName);
			
			// Limpar campos que não são mais relevantes
			for (WEditor editor : allEditors.values()) {
				if (editor != f_LBR_TaxName_ID && editor.getComponent().getParent() == null) {
					editor.setValue(null);
				}
			}
			
			// Atualizar context de campos relacionados
			if (f_LBR_TaxStatus_ID != null && f_LBR_TaxStatus_ID.getComponent().getParent() != null) {
				f_LBR_TaxStatus_ID.setValue(null);
				f_LBR_TaxStatus_ID.dynamicDisplay();
			}
			
			if (f_LBR_TaxBaseType_ID != null && f_LBR_TaxBaseType_ID.getComponent().getParent() != null) {
				f_LBR_TaxBaseType_ID.setValue(null);
				f_LBR_TaxBaseType_ID.dynamicDisplay();
			}
			
			if (f_LBR_CST_IBSCBS_ID != null && f_LBR_CST_IBSCBS_ID.getComponent().getParent() != null) {
				f_LBR_CST_IBSCBS_ID.setValue(null);
				f_LBR_CST_IBSCBS_ID.dynamicDisplay();
			}
			
			if (f_LBR_ClassTrib_IBSCBS_ID != null && f_LBR_ClassTrib_IBSCBS_ID.getComponent().getParent() != null) {
				f_LBR_ClassTrib_IBSCBS_ID.setValue(null);
				f_LBR_ClassTrib_IBSCBS_ID.dynamicDisplay();
			}
			
			if (f_LBR_CST_IS_ID != null && f_LBR_CST_IS_ID.getComponent().getParent() != null) {
				f_LBR_CST_IS_ID.setValue(null);
				f_LBR_CST_IS_ID.dynamicDisplay();
			}
			
			if (f_LBR_ClassTrib_IS_ID != null && f_LBR_ClassTrib_IS_ID.getComponent().getParent() != null) {
				f_LBR_ClassTrib_IS_ID.setValue(null);
				f_LBR_ClassTrib_IS_ID.dynamicDisplay();
			}
		} else if (evt.getPropertyName().equalsIgnoreCase("LBR_TaxStatus_ID")) {
			if (f_LBR_TaxBaseType_ID != null && f_LBR_TaxBaseType_ID.getComponent().getParent() != null) {
				f_LBR_TaxBaseType_ID.setValue(null);
				f_LBR_TaxBaseType_ID.dynamicDisplay();
			}
		} else if (evt.getPropertyName().equalsIgnoreCase("LBR_CST_IBSCBS_ID")) {
			if (f_LBR_ClassTrib_IBSCBS_ID != null && f_LBR_ClassTrib_IBSCBS_ID.getComponent().getParent() != null) {
				f_LBR_ClassTrib_IBSCBS_ID.setValue(null);
				f_LBR_ClassTrib_IBSCBS_ID.dynamicDisplay();
			}
		} else if (evt.getPropertyName().equalsIgnoreCase("LBR_CST_IS_ID")) {
			if (f_LBR_ClassTrib_IS_ID != null && f_LBR_ClassTrib_IS_ID.getComponent().getParent() != null) {
				f_LBR_ClassTrib_IS_ID.setValue(null);
				f_LBR_ClassTrib_IS_ID.dynamicDisplay();
			}
		}
	}
	
	/**
	 * 	Fill default values to fields
	 */
	private void checkDefaultValues() {
		// Default for Post field is true
		if (m_MLBRTax_new.getLines().length < 1 && f_LBR_PostTax != null) {
			f_LBR_PostTax.setValue(true);
		}
	}
	
	/**
	 * Chamado quando a linha do grid é alterada
	 * Atualiza os campos dinâmicos baseado no imposto da linha selecionada
	 */
	private void onGridRowChanged() {
		// Obter o LBR_TaxName_ID da linha atual
		GridField field = m_mTab.getField("LBR_TaxName_ID");
		if (field != null) {
			Object value = field.getValue();
			int taxNameID = 0;
			if (value instanceof Integer) {
				taxNameID = (Integer)value;
			}
			
			// Atualizar o campo LBR_TaxName_ID no formulário
			if (f_LBR_TaxName_ID != null) {
				f_LBR_TaxName_ID.setValue(value);
			}
			
			// Obter o nome do imposto e renderizar campos apropriados
			String taxName = getTaxNameByID(taxNameID);
			renderDynamicFields(taxName);
			
			// Atualizar os valores de todos os campos dinâmicos com os valores da linha
			updateDynamicFieldsFromGrid();
		}
	}
	
	/**
	 * Atualiza os valores dos campos dinâmicos com os valores da linha do grid
	 */
	private void updateDynamicFieldsFromGrid() {
		for (Map.Entry<String, WEditor> entry : allEditors.entrySet()) {
			String fieldName = entry.getKey();
			WEditor editor = entry.getValue();
			
			// Pular o campo LBR_TaxName_ID pois já foi atualizado
			if (fieldName.equals("LBR_TaxName_ID"))
				continue;
			
			// Verificar se o editor está visível (tem parent)
			if (editor != null && editor.getComponent().getParent() != null) {
				GridField field = allFields.get(fieldName);
				if (field != null) {
					Object value = field.getValue();
					editor.setValue(value);
				}
			}
		}
	}
}
