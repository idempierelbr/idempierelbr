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
import java.util.logging.Level;

import org.adempiere.util.Callback;
import org.adempiere.webui.adwindow.ADTabpanel;
import org.adempiere.webui.apps.AEnv;
import org.adempiere.webui.component.ConfirmPanel;
import org.adempiere.webui.component.Grid;
import org.adempiere.webui.component.Label;
import org.adempiere.webui.component.Row;
import org.adempiere.webui.component.Rows;
import org.adempiere.webui.component.ToolBar;
import org.adempiere.webui.component.ToolBarButton;
import org.adempiere.webui.component.Window;
import org.adempiere.webui.editor.WEditor;
import org.adempiere.webui.editor.WebEditorFactory;
import org.adempiere.webui.event.ValueChangeEvent;
import org.adempiere.webui.event.ValueChangeListener;
import org.adempiere.webui.panel.StatusBarPanel;
import org.adempiere.webui.session.SessionManager;
import org.adempiere.webui.theme.ThemeManager;
import org.adempiere.webui.window.FDialog;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;
import org.compiere.model.GridWindow;
import org.compiere.model.GridWindowVO;
import org.compiere.model.MQuery;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;
import org.idempierelbr.tax.model.MLBRTax;
import org.idempierelbr.tax.model.MLBRTaxLine;
import org.zkoss.zk.ui.Page;
import org.zkoss.zk.ui.event.Event;
import org.zkoss.zk.ui.event.EventListener;
import org.zkoss.zk.ui.event.Events;
import org.zkoss.zul.Borderlayout;
import org.zkoss.zul.Cell;
import org.zkoss.zul.Center;
import org.zkoss.zul.North;
import org.zkoss.zul.South;
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
		this.setHeight("510px");
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
	//  Editors for Query
	private WEditor f_LBR_TaxName_ID, f_LBR_TaxStatus_ID, f_LBR_TaxRate,
		f_LBR_TaxBase, f_LBR_LegalMessage_ID, f_LBR_TaxBaseType_ID, f_LBR_PostTax;
	private Label f_Description = new Label ("");
	private boolean	m_newRow = true;
	@SuppressWarnings("unused")
	private Vbox panel = new Vbox();
	private ConfirmPanel confirmPanel = new ConfirmPanel(true);
	private StatusBarPanel statusBar = new StatusBarPanel();
	private Hbox northPanel = new Hbox();
	private Groupbox parameterPanel = new Groupbox();
	private Grid parameterLayout = new Grid();
	private ToolBar toolBar = new ToolBar();
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
	 *    - toolBar
	 *  - center
	 *    - adtabpanel
	 *  - south
	 *    - confirmPanel
	 *    - statusBar
	 *  </pre>
	 *  @throws Exception
	 */
	void init() throws Exception
	{
		Caption caption = new Caption(Msg.getMsg(Env.getCtx(),"Parameter"));
		parameterPanel.appendChild(caption);
		parameterPanel.setStyle("background-color: transparent;");
		toolBar.setOrient("vertical");
		toolBar.setStyle("border: none; margin: 5px");

		bSave.setImage(ThemeManager.getThemeResource("images/Save24.png"));
		bSave.setTooltiptext(Msg.getMsg(Env.getCtx(),"Save"));
		bSave.addEventListener(Events.ON_CLICK, this);
		bIgnore.setImage(ThemeManager.getThemeResource("images/Ignore24.png"));
		bIgnore.setTooltiptext(Msg.getMsg(Env.getCtx(),"Ignore"));
		bIgnore.addEventListener(Events.ON_CLICK, this);
		bDelete.setImage(ThemeManager.getThemeResource("images/Delete24.png"));
		bDelete.setTooltiptext(Msg.getMsg(Env.getCtx(),"Delete"));
		bDelete.addEventListener(Events.ON_CLICK, this);
		toolBar.appendChild(bIgnore);
		toolBar.appendChild(bSave);
		toolBar.appendChild(bDelete);

		northPanel.appendChild(parameterPanel);
		parameterPanel.setWidth("95%");
		northPanel.appendChild(toolBar);
		northPanel.setWidth("100%");

		m_adTabPanel = new ADTabpanel();

		Borderlayout layout = new Borderlayout();
		layout.setParent(this);
		layout.setHeight("100%");
		layout.setWidth("100%");
		layout.setStyle("background-color: transparent;");

		North nRegion = new North();
		nRegion.setParent(layout);
		northPanel.setVflex("false");
		nRegion.appendChild(northPanel);
		nRegion.setStyle("background-color: transparent; border: none");
		northPanel.setStyle("background-color: transparent;");

		Center cRegion = new Center();
		cRegion.setParent(layout);
		m_adTabPanel.setVflex("true");
		cRegion.appendChild(m_adTabPanel);

		South sRegion = new South();
		sRegion.setParent(layout);
		Div div = new Div();
		div.appendChild(confirmPanel);
		confirmPanel.setStyle("margin-top: 5px; margin-bottom: 5px");
		sRegion.appendChild(div);
		sRegion.setStyle("background-color: transparent; border: none");

		confirmPanel.addActionListener(Events.ON_CLICK, this);

		this.setBorder("normal");
		this.setClosable(false);
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
		parameterLayout.setStyle("background-color: transparent; margin:none; border:none; padding:none;");

		m_rows = new Rows();
		m_rows.setParent(parameterLayout);
		
		// Add description
		m_newRow = true;
		Row row = new Row();
		f_Description.setStyle("font-decoration: italic;");
		f_Description.setText("Para ADICIONAR um imposto, clique em 'Desfazer', preencha os campos e clique em 'Salvar'." +
				" Para ALTERAR, clique sobre o imposto na grade, faça as alterações no(s) campo(s) e clique em 'Salvar'." +
				" Para EXCLUIR, clique sobre o imposto na grade e clique em 'Excluir'.");
		Cell cell = new Cell();
		cell.setColspan(4);
		cell.appendChild(f_Description);
		row.appendChild(cell);
		row.setStyle("background-color: transparent; padding: 10px");
		m_rows.appendChild(row);
		
		// Campos
		GridField field = null; 
		
		field = m_mTab.getField("LBR_TaxName_ID");
		f_LBR_TaxName_ID = WebEditorFactory.getEditor(field, false);
		f_LBR_TaxName_ID.addValueChangeListener(this);
		addLine(field, f_LBR_TaxName_ID, true);
		
		field = m_mTab.getField("LBR_TaxStatus_ID");
		f_LBR_TaxStatus_ID = WebEditorFactory.getEditor(field, false);
		f_LBR_TaxStatus_ID.addValueChangeListener(this);
		addLine(field, f_LBR_TaxStatus_ID, true);
		
		field = m_mTab.getField("LBR_TaxRate");
		f_LBR_TaxRate = WebEditorFactory.getEditor(field, false);
		addLine(field, f_LBR_TaxRate, true);
		
		field = m_mTab.getField("LBR_TaxBase");
		f_LBR_TaxBase = WebEditorFactory.getEditor(field, false);
		addLine(field, f_LBR_TaxBase, true);
		
		field = m_mTab.getField("LBR_LegalMessage_ID");
		f_LBR_LegalMessage_ID = WebEditorFactory.getEditor(field, false);
		addLine(field, f_LBR_LegalMessage_ID, true);
		
		field = m_mTab.getField("LBR_TaxBaseType_ID");
		f_LBR_TaxBaseType_ID = WebEditorFactory.getEditor(field, false);
		addLine(field, f_LBR_TaxBaseType_ID, true);
		
		field = m_mTab.getField("LBR_PostTax");
		f_LBR_PostTax = WebEditorFactory.getEditor(field, false);
		addLine(field, f_LBR_PostTax, true);
		
		// Finish
		m_query = new MQuery();
		m_query.addRestriction("LBR_Tax_ID", MQuery.EQUAL, m_MLBRTax_new.get_ID());
		m_query.addRestriction("IsActive", MQuery.EQUAL, "Y");

		m_mTab.setQuery(m_query);
		m_mTab.query(false);
		m_adTabPanel.activate(true);
		
		if (!m_adTabPanel.isGridView())
			m_adTabPanel.switchRowPresentation();

		statusBar.setStatusLine("Teste");
		statusBar.setStatusDB("");
		
		return true;
	}

	/**
	 *	Add Editor to parameterPanel alternative right/left depending on m_newRow.
	 *  Field Value changes update Editors
	 *  @param field field
	 *  @param editor editor
	 *  @param mandatory mandatory
	 */
	private void addLine (GridField field, WEditor editor, boolean mandatory)
	{
		if (log.isLoggable(Level.FINE)) log.fine("Field=" + field);
		Label label = editor.getLabel();
		editor.setReadWrite(true);
		editor.setMandatory(mandatory);
		
		// MField => VEditor
		field.addPropertyChangeListener(editor);

		// label
		if (m_newRow) {
			m_row = new Row();
			m_row.setStyle("background-color: transparent");
			m_rows.appendChild(m_row);
		}

		Div div = new Div();
		div.setStyle("text-align: right");
		div.appendChild(label);
		m_row.appendChild(div);

		m_row.appendChild(editor.getComponent());
		editor.fillHorizontal();
		editor.dynamicDisplay();		

		m_newRow = !m_newRow;
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
		if (event.getTarget().getId().equals("Ok"))	{
			m_changed = true;
			dispose();
		} else if (event.getTarget().getId().equals("Cancel")) {
			m_changed = false;
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
			FDialog.error(m_WindowNo, this, "FillMandatory", Msg.getElement(Env.getCtx(), "LBR_TaxName_ID"));
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
			
			// Tax Status
			value = f_LBR_TaxStatus_ID.getValue();
			sql.append(", LBR_TaxStatus_ID");
			if (isEmpty(value))
				sql.append("=NULL");
			else
				sql.append("=").append(value);
			
			// Tax Rate
			value = f_LBR_TaxRate.getValue();
			sql.append(", LBR_TaxRate");
			if (isEmpty(value))
				sql.append("=NULL");
			else
				sql.append("='").append(value).append("'");
			
			// Tax Base
			value = f_LBR_TaxBase.getValue();
			sql.append(", LBR_TaxBase");
			if (isEmpty(value))
				sql.append("=NULL");
			else
				sql.append("='").append(value).append("'");
			
			// Legal Message
			value = f_LBR_LegalMessage_ID.getValue();
			sql.append(", LBR_LegalMessage_ID");
			if (isEmpty(value))
				sql.append("=NULL");
			else
				sql.append("=").append(value);
			
			// Tax Base Type
			value = f_LBR_TaxBaseType_ID.getValue();
			sql.append(", LBR_TaxBaseType_ID");
			if (isEmpty(value))
				sql.append("=NULL");
			else
				sql.append("=").append(value);
			
			// Tax Post?
			value = f_LBR_PostTax.getValue();
			Boolean valueB = (Boolean)value;
			sql.append(", LBR_PostTax");
			if (valueB.booleanValue())
				sql.append("='Y'");
			else
				sql.append("='N'");
			
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
				FDialog.error(m_WindowNo, this, "TaxNotUpdated");
			
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
			
			// Tax Status
			value = f_LBR_TaxStatus_ID.getValue();
			if (!isEmpty(value))
				line.setLBR_TaxStatus_ID((Integer)value);
			
			// Tax Rate
			value = f_LBR_TaxRate.getValue();
			if (!isEmpty(value))
				line.setLBR_TaxRate((BigDecimal)value);
			
			// Tax Base
			value = f_LBR_TaxBase.getValue();
			if (!isEmpty(value))
				line.setLBR_TaxBase((BigDecimal)value);
			
			// Legal Message
			value = f_LBR_LegalMessage_ID.getValue();
			if (!isEmpty(value))
				line.setLBR_LegalMessage_ID((Integer)value);
			
			// Tax Base Type
			value = f_LBR_TaxBaseType_ID.getValue();
			if (!isEmpty(value))
				line.setLBR_TaxBaseType_ID((Integer)value);
			
			// Tax Post?
			value = f_LBR_PostTax.getValue();
			if (!isEmpty(value))
				line.setLBR_PostTax((Boolean)value);
			
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
		//	Tax Status
		if (f_LBR_TaxStatus_ID != null)
			f_LBR_TaxStatus_ID.setValue(null);
		//	Tax Rate
		if (f_LBR_TaxRate != null)
			f_LBR_TaxRate.setValue(null);
		//	Tax Base
		if (f_LBR_TaxBase != null)
			f_LBR_TaxBase.setValue(null);
		//	Legal Message
		if (f_LBR_LegalMessage_ID != null)
			f_LBR_LegalMessage_ID.setValue(null);
		//	Tax Base Type
		if (f_LBR_TaxBaseType_ID != null)
			f_LBR_TaxBaseType_ID.setValue(null);
		//	Tax Post?
		f_LBR_PostTax.setValue(true);
		
		Env.setContext(Env.getCtx(), m_WindowNo, "LBR_TaxName_ID", 0);
		Env.setContext(Env.getCtx(), m_WindowNo, "LBR_TaxStatus_ID", 0);
		Env.setContext(Env.getCtx(), m_WindowNo, "LBR_TaxBasetype_ID", 0);
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
			f_LBR_TaxStatus_ID.setValue(null);
			f_LBR_TaxBaseType_ID.setValue(null);
			f_LBR_TaxBaseType_ID.dynamicDisplay();
		} else if (evt.getPropertyName().equalsIgnoreCase("LBR_TaxStatus_ID")) {
			f_LBR_TaxBaseType_ID.setValue(null);
			f_LBR_TaxBaseType_ID.dynamicDisplay();
		}
	}
	
	/**
	 * 	Fill default values to fields
	 */
	private void checkDefaultValues() {
		// Default for Post field is true
		if (m_MLBRTax_new.getLines().length < 1)
			f_LBR_PostTax.setValue(true);
	}
}
