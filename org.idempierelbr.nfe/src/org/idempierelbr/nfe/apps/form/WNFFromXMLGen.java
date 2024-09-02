package org.idempierelbr.nfe.apps.form;

import static org.compiere.model.SystemIDs.COLUMN_C_INVOICE_C_BPARTNER_ID;
import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;

import org.adempiere.webui.AdempiereWebUI;
import org.adempiere.webui.LayoutUtils;
import org.adempiere.webui.component.Button;
import org.adempiere.webui.component.Column;
import org.adempiere.webui.component.ConfirmPanel;
import org.adempiere.webui.component.Grid;
import org.adempiere.webui.component.GridFactory;
import org.adempiere.webui.component.Group;
import org.adempiere.webui.component.Label;
import org.adempiere.webui.component.ListHead;
import org.adempiere.webui.component.ListHeader;
import org.adempiere.webui.component.Listbox;
import org.adempiere.webui.component.Row;
import org.adempiere.webui.component.Rows;
import org.adempiere.webui.editor.WDateEditor;
import org.adempiere.webui.editor.WEditor;
import org.adempiere.webui.editor.WNumberEditor;
import org.adempiere.webui.editor.WSearchEditor;
import org.adempiere.webui.editor.WStringEditor;
import org.adempiere.webui.editor.WTableDirEditor;
import org.adempiere.webui.event.ValueChangeEvent;
import org.adempiere.webui.event.ValueChangeListener;
import org.adempiere.webui.panel.ADForm;
import org.adempiere.webui.panel.IFormController;
import org.adempiere.webui.session.SessionManager;
import org.adempiere.webui.util.ZKUpdateUtil;
import org.adempiere.webui.window.FDialog;
import org.compiere.model.GridField;
import org.compiere.model.MColumn;
import org.compiere.model.MField;
import org.compiere.model.MLookup;
import org.compiere.model.MLookupFactory;
import org.compiere.model.MSysConfig;
import org.compiere.util.DisplayType;
import org.compiere.util.Env;
import org.compiere.util.KeyNamePair;
import org.compiere.util.Msg;
import org.zkoss.zk.ui.event.Event;
import org.zkoss.zk.ui.event.EventListener;
import org.zkoss.zk.ui.event.Events;
import org.zkoss.zk.ui.event.UploadEvent;
import org.zkoss.zul.Borderlayout;
import org.zkoss.zul.Cell;
import org.zkoss.zul.Center;
import org.zkoss.zul.Columns;
import org.zkoss.zul.East;
import org.zkoss.zul.Separator;
import org.zkoss.zul.Space;
import org.zkoss.zul.Vlayout;
import org.zkoss.zul.West;

public class WNFFromXMLGen extends NFFromXMLGen implements IFormController, EventListener<Event>, ValueChangeListener
{
	private WNFFromXMLGenForm   genform =null;

	private Borderlayout	mainLayout	= new Borderlayout();

	/**	Window No			*/
	public int            	m_WindowNo = 0;

	private ConfirmPanel confirmPanel = new ConfirmPanel(true);
	
	WEditor editorC_DocType_ID = null;
	WEditor editorLBR_TransactionType = null;
	WEditor editorDescription = null;
	WEditor editorLBR_OwnDateDelivered = null;
	WEditor editorDocAction = null;	

	// The grid components
	Group currentGroup;
	ArrayList<Row> rowList;
	
	private Listbox visible =  new Listbox();

	Map<Cell, GridField> mapCellField = new HashMap<Cell, GridField>();
	Map<Cell, Integer> mapEmptyCellField = new HashMap<Cell, Integer>();

	Grid form;
	Vlayout centerVLayout;
	Vlayout westVLayout;
	
	public WNFFromXMLGen()
	{
		genform = new WNFFromXMLGenForm(this);
		LayoutUtils.addSclass("tab-editor-form", genform);
	}

	public void initForm() {
		try
		{
			jbInit();
			LayoutUtils.sendDeferLayoutEvent(mainLayout, 100);
		}
		catch (Exception ex)
		{
			log.log(Level.SEVERE, "WTabEditor.preInit", ex);
		}
	}

	/**
	 *  Initialize Tab panel editor
	 *  Same createUI algorithm used on ADTabPanel
	 */
	private void createUI() {
		mapCellField.clear();
		mapEmptyCellField.clear();

		currentGroup = null;
		rowList = null;
	    
		form = new Grid();
		form.makeNoStrip();
		form.setHflex("1");
        form.setHeight(null);
        form.setVflex(false);

    	int numCols = 4;

    	// set size in percentage per column leaving a MARGIN on right
    	Columns columns = new Columns();
    	form.appendChild(columns);
    	int equalWidth = 98 / numCols;

    	for (int h=0;h<numCols;h++){
    		Column col = new Column();
    		col.setWidth(equalWidth + "%");
    		columns.appendChild(col);
    	}

    	Rows rows = form.newRows();
    	Row row = null;
        
        if (doc == null) {
        	row = new Row();
    		Label obs = new Label("Selecione um arquivo XML de NF-e para visualizar e conciliar as informações.");
    		row.appendCellChild(obs, numCols);
    		rows.appendChild(row);
        } else {
        	// NF-e General Info
        	{
        		row = new Row();
	    		Label groupLabel = new Label("Dados da NF-e:");
	    		groupLabel.setStyle("font-weight: bold; text-decoration: underline;");
	    		row.appendCellChild(groupLabel, numCols);
	    		rows.appendChild(row);
	    		
	    		// Document No.
	    		row = new Row();
	    		Label lXmlDocumentNo = new Label("Número da NF-e");
	    		WEditor editorXmlDocumentNo = new WStringEditor("LBR", false, true, true, 0, 0, null, null);
	    		((WStringEditor) editorXmlDocumentNo).getComponent().setHflex("1");
	    		editorXmlDocumentNo.setValue(xmlDocumentNo);
	    		row.appendChild(lXmlDocumentNo.rightAlign());
	    		row.appendChild(editorXmlDocumentNo.getComponent());
	    		
	    		// Issue Date
	    		Label lXmlIssueDate = new Label("Data de Emissão");
	    		WEditor editorXmlIssueDate = new WStringEditor("LBR", false, true, true, 0, 0, null, null);
	    		((WStringEditor) editorXmlIssueDate).getComponent().setHflex("1");
	    		editorXmlIssueDate.setValue(xmlIssueDate);
	    		row.appendChild(lXmlIssueDate.rightAlign());
	    		row.appendChild(editorXmlIssueDate.getComponent());
	    		
	    		rows.appendChild(row);
	    		
	    		// Status
	    		row = new Row();
	    		Label lXmlStatus = new Label("Estado da NF-e");
	    		WEditor editorXmlStatus = new WStringEditor("LBR", false, true, true, 0, 0, null, null);
	    		((WStringEditor) editorXmlStatus).getComponent().setHflex("1");
	    		editorXmlStatus.setValue(xmlStatus);
	    		row.appendChild(lXmlStatus.rightAlign());
	    		row.appendChild(editorXmlStatus.getComponent());
	    		
	    		// ID
	    		Label lXmlNFeID = new Label("Chave de Acesso");
	    		WEditor editorXmlNFeID = new WStringEditor("LBR", false, true, true, 0, 0, null, null);
	    		((WStringEditor) editorXmlNFeID).getComponent().setHflex("1");
	    		editorXmlNFeID.setValue(xmlNFeID);
	    		row.appendChild(lXmlNFeID.rightAlign());
	    		row.appendChild(editorXmlNFeID.getComponent());
	    		
	    		rows.appendChild(row);
	    		
	    		// Total Lines Amount
	    		row = new Row();
	    		Label lXmlTotalLinesAmt = new Label("Total das Linhas");
	    		WEditor editorXmlTotalLinesAmt = new WStringEditor("LBR", false, true, true, 0, 0, null, null);
	    		((WStringEditor) editorXmlTotalLinesAmt).getComponent().setHflex("1");
	    		editorXmlTotalLinesAmt.setValue(xmlTotalLinesAmt);
	    		row.appendChild(lXmlTotalLinesAmt.rightAlign());
	    		row.appendChild(editorXmlTotalLinesAmt.getComponent());
	    		
	    		// Grand Total
	    		Label lXmlGrandTotal = new Label("Total Geral");
	    		WEditor editorXmlGrandTotal = new WStringEditor("LBR", false, true, true, 0, 0, null, null);
	    		((WStringEditor) editorXmlGrandTotal).getComponent().setHflex("1");
	    		editorXmlGrandTotal.setValue(xmlGrandTotal);
	    		row.appendChild(lXmlGrandTotal.rightAlign());
	    		row.appendChild(editorXmlGrandTotal.getComponent());
	    		
	    		rows.appendChild(row);
	    		
	    		// Info
	    		row = new Row();
	    		Label lXmlInfo = new Label("Informações de Interesse do Contribuinte / Fisco");
	    		WEditor editorXmlInfo = new WStringEditor("LBR", false, true, true, 0, 0, null, null);
	    		((WStringEditor) editorXmlInfo).getComponent().setHflex("1");
	    		((WStringEditor) editorXmlInfo).getComponent().setRows(2);
	    		editorXmlInfo.setValue(xmlInfo);
	    		row.appendChild(lXmlInfo.rightAlign());
	    		Cell cell = new Cell();
	    		cell.appendChild(editorXmlInfo.getComponent());
	    		cell.setSclass("z-group-inner");
	    		cell.setColspan(3);
	    		row.appendChild(cell);
	    		rows.appendChild(row);
        	}
        	
        	// Issuer
        	{
	        	row = new Row();
	    		Label groupLabel = new Label("Emitente:");
	    		groupLabel.setStyle("font-weight: bold; text-decoration: underline;");
	    		row.appendCellChild(groupLabel, numCols);
	    		rows.appendChild(row);
	    		
	    		// CNPJ or CPF
	    		row = new Row();
	    		String labelName = "CNPJ";
	    		String editorValue = xmlBPartnerCNPJ;
	    		
	    		if (xmlBPartnerCPF != null) {
	    			labelName = "CPF";
	    			editorValue = xmlBPartnerCPF;
	    		}
	    		
	    		Label lXmlBPartnerCnpjOrCpf = new Label(labelName);
	    		WEditor editorXmlBPartnerCnpjOrCpf = new WStringEditor("LBR", false, true, true, 0, 0, null, null);
	    		((WStringEditor) editorXmlBPartnerCnpjOrCpf).getComponent().setHflex("1");
	    		editorXmlBPartnerCnpjOrCpf.setValue(editorValue);
	    		row.appendChild(lXmlBPartnerCnpjOrCpf.rightAlign());
	    		row.appendChild(editorXmlBPartnerCnpjOrCpf.getComponent());
	    		rows.appendChild(row);
	    		
	    		// Name
	    		row = new Row();
	    		Label lXmlBPartnerName = new Label("Razão Social");
	    		WEditor editorXmlBPartnerName = new WStringEditor("LBR", false, true, true, 0, 0, null, null);
	    		((WStringEditor) editorXmlBPartnerName).getComponent().setHflex("1");
	    		editorXmlBPartnerName.setValue(xmlBPartnerName);
	    		row.appendChild(lXmlBPartnerName.rightAlign());
	    		row.appendCellChild(editorXmlBPartnerName.getComponent(), 3);
	    		rows.appendChild(row);
	    		
	    		// Location
	    		row = new Row();
	    		Label lXmlBPartnerLocation = new Label("Endereço");
	    		WEditor editorXmlBPartnerLocation = new WStringEditor("LBR", false, true, true, 0, 0, null, null);
	    		((WStringEditor) editorXmlBPartnerLocation).getComponent().setHflex("1");
	    		editorXmlBPartnerLocation.setValue(xmlBPartnerLocation);
	    		row.appendChild(lXmlBPartnerLocation.rightAlign());
	    		row.appendCellChild(editorXmlBPartnerLocation.getComponent(), 3);
	    		rows.appendChild(row);
	    		
	    		// Internal Business Partner
	    		row = new Row();
	    		Label lInternalBPartner = new Label(Msg.getElement(Env.getCtx(), "C_BPartner_ID") + "*");
	    		MLookup lookupBP = MLookupFactory.get (Env.getCtx(), genform.getWindowNo(), 0, COLUMN_C_INVOICE_C_BPARTNER_ID, DisplayType.Search);
	    		WEditor editorInternalBPartner = new WSearchEditor("C_BPartner_ID", true, false, true, lookupBP);
	    		editorInternalBPartner.addValueChangeListener(this);
	    		
	    		lInternalBPartner.setStyle("color: red;");
	    		
	    		if (C_BPartner_ID == null) {
	    			//lInternalBPartner.setStyle("color: red;");
	    		} else {
	    			editorInternalBPartner.setValue(C_BPartner_ID);
	    			Env.setContext(Env.getCtx(),genform.getWindowNo(), "C_BPartner_ID", C_BPartner_ID);
	    		}
	    		
	    		row.appendChild(lInternalBPartner.rightAlign());
	    		row.appendChild(editorInternalBPartner.getComponent());
	    		
	    		// Internal Business Partner Location
	    		Label lInternalBPartnerLoc = new Label(Msg.getElement(Env.getCtx(), "C_BPartner_Location_ID") + "*");
	    		MLookup lookupBPLoc = MLookupFactory.get (Env.getCtx(), genform.getWindowNo(), 0, 3501, DisplayType.TableDir);
	    		WEditor editorInternalBPartnerLoc = new WTableDirEditor("C_BPartner_Location_ID", true, false, true, lookupBPLoc);
	    		ZKUpdateUtil.setHflex(((WTableDirEditor) editorInternalBPartnerLoc).getComponent(), "true");
	    		
	    		editorInternalBPartnerLoc.addValueChangeListener(this);
	    		
	    		lInternalBPartnerLoc.setStyle("color: red;");
	    		
	    		if (C_BPartner_Location_ID == null) {
	    			//lInternalBPartnerLoc.setStyle("color: red;");
	    		} else {
	    			editorInternalBPartnerLoc.setValue(C_BPartner_Location_ID);
	    		}
	    		
	    		row.appendChild(lInternalBPartnerLoc.rightAlign());
	    		row.appendChild(editorInternalBPartnerLoc.getComponent());
	    		
	    		rows.appendChild(row);
        	}
        	
        	// Sender / Recipient Group
        	{
	        	row = new Row();
	    		Label groupLabel = new Label("Remetente/Destinatário:");
	    		groupLabel.setStyle("font-weight: bold; text-decoration: underline;");
	    		row.appendCellChild(groupLabel, numCols);
	    		rows.appendChild(row);
	    		
	    		// CNPJ or CPF
	    		row = new Row();
	    		String labelName = "CNPJ";
	    		String editorValue = xmlOrgCNPJ;
	    		
	    		if (xmlOrgCPF != null) {
	    			labelName = "CPF";
	    			editorValue = xmlOrgCPF;
	    		}
	    		
	    		Label lXmlOrgCnpjOrCpf = new Label(labelName);
	    		WEditor editorXmlOrgCnpjOrCpf = new WStringEditor("LBR", false, true, true, 0, 0, null, null);
	    		((WStringEditor) editorXmlOrgCnpjOrCpf).getComponent().setHflex("1");
	    		editorXmlOrgCnpjOrCpf.setValue(editorValue);
	    		row.appendChild(lXmlOrgCnpjOrCpf.rightAlign());
	    		row.appendChild(editorXmlOrgCnpjOrCpf.getComponent());
	    		rows.appendChild(row);
	    		
	    		// Name
	    		row = new Row();
	    		Label lXmlOrgName = new Label("Razão Social");
	    		WEditor editorXmlOrgName = new WStringEditor("LBR", false, true, true, 0, 0, null, null);
	    		((WStringEditor) editorXmlOrgName).getComponent().setHflex("1");
	    		editorXmlOrgName.setValue(xmlOrgName);
	    		row.appendChild(lXmlOrgName.rightAlign());
	    		row.appendCellChild(editorXmlOrgName.getComponent(), 3);
	    		rows.appendChild(row);
	    		
	    		// Location
	    		row = new Row();
	    		Label lXmlOrgLocation = new Label("Endereço");
	    		WEditor editorXmlOrgLocation = new WStringEditor("LBR", false, true, true, 0, 0, null, null);
	    		((WStringEditor) editorXmlOrgLocation).getComponent().setHflex("1");
	    		editorXmlOrgLocation.setValue(xmlOrgLocation);
	    		row.appendChild(lXmlOrgLocation.rightAlign());
	    		row.appendCellChild(editorXmlOrgLocation.getComponent(), 3);
	    		rows.appendChild(row);
	    		
	    		// Internal Organization
	    		row = new Row();
	    		Label lInternalOrg = new Label(Msg.getElement(Env.getCtx(), "AD_Org_ID") + "*");
	    		MLookup lookupOrg = MLookupFactory.get (Env.getCtx(), genform.getWindowNo(), 0, 3486, DisplayType.TableDir);
	    		WEditor editorInternalOrg = new WTableDirEditor("AD_Org_ID", true, false, true, lookupOrg);
	    		ZKUpdateUtil.setHflex(((WTableDirEditor) editorInternalOrg).getComponent(), "true");
	    		editorInternalOrg.addValueChangeListener(this);
	    		
	    		lInternalOrg.setStyle("color: red;");
	    		
	    		if (AD_Org_ID == null) {
	    			//lInternalOrg.setStyle("color: red;");
	    		} else {
	    			editorInternalOrg.setValue(AD_Org_ID);
	    			Env.setContext(Env.getCtx(),genform.getWindowNo(), "AD_Org_ID", AD_Org_ID);
	    		}
	    		
	    		row.appendChild(lInternalOrg.rightAlign());
	    		row.appendChild(editorInternalOrg.getComponent());
	    		rows.appendChild(row);
        	}
    		
    		// Product Group
        	{
	        	row = new Row();
	        	Label groupLabel = new Label("Produtos e Serviços:");
	        	groupLabel.setStyle("font-weight: bold; text-decoration: underline;");
	    		row.appendCellChild(groupLabel, numCols);
	    		rows.appendChild(row);
	    		
	    		for (int i = 1; i <= xmlProductMap.size(); i++) {
	    			String key = String.valueOf(i);
	    			XMLProductInfo group = xmlProductMap.get(key);
	    			
	    			// Line No.
		    		row = new Row();
		    		Label lXmlLineNo = new Label("Linha Núm.");
		    		WEditor editorXmlLineNo = new WStringEditor("LBR", false, true, true, 0, 0, null, null);
		    		((WStringEditor) editorXmlLineNo).getComponent().setHflex("1");
		    		editorXmlLineNo.setValue(group.xmlLineNo);
		    		row.appendChild(lXmlLineNo.rightAlign());
		    		row.appendChild(editorXmlLineNo.getComponent());
		    		
		    		// Value
		    		Label lXmlValue = new Label("Código");
		    		WEditor editorXmlValue = new WStringEditor("LBR", false, true, true, 0, 0, null, null);
		    		((WStringEditor) editorXmlValue).getComponent().setHflex("1");
		    		editorXmlValue.setValue(group.xmlValue);
		    		row.appendChild(lXmlValue.rightAlign());
		    		row.appendChild(editorXmlValue.getComponent());
		    		
		    		rows.appendChild(row);
		    		
		    		// Name
		    		row = new Row();
		    		Label lXmlName = new Label("Descrição");
		    		WEditor editorXmlName = new WStringEditor("LBR", false, true, true, 0, 0, null, null);
		    		((WStringEditor) editorXmlName).getComponent().setHflex("1");
		    		editorXmlName.setValue(group.xmlName);
		    		row.appendChild(lXmlName.rightAlign());
		    		row.appendCellChild(editorXmlName.getComponent(), 3);
		    		rows.appendChild(row);
		    		
		    		// UOM
		    		row = new Row();
		    		Label lXmlUOM = new Label("UDM");
		    		WEditor editorXmlUOM = new WStringEditor("LBR", false, true, true, 0, 0, null, null);
		    		((WStringEditor) editorXmlUOM).getComponent().setHflex("1");
		    		editorXmlUOM.setValue(group.xmlUOM);
		    		row.appendChild(lXmlUOM.rightAlign());
		    		row.appendChild(editorXmlUOM.getComponent());
		    		
		    		// Qty
		    		Label lXmlQty = new Label("Quantidade");
		    		WEditor editorXmlQty = new WStringEditor("LBR", false, true, true, 0, 0, null, null);
		    		((WStringEditor) editorXmlQty).getComponent().setHflex("1");
		    		editorXmlQty.setValue(group.xmlQty);
		    		row.appendChild(lXmlQty.rightAlign());
		    		row.appendChild(editorXmlQty.getComponent());
		    		
		    		rows.appendChild(row);
		    		
		    		// Unit Price
		    		row = new Row();
		    		Label lXmlUnitPrice = new Label("Valor Unitário");
		    		WEditor editorXmlUnitPrice = new WStringEditor("LBR", false, true, true, 0, 0, null, null);
		    		((WStringEditor) editorXmlUnitPrice).getComponent().setHflex("1");
		    		editorXmlUnitPrice.setValue(group.xmlUnitPrice);
		    		row.appendChild(lXmlUnitPrice.rightAlign());
		    		row.appendChild(editorXmlUnitPrice.getComponent());
		    		
		    		// Line Amount
		    		Label lXmlLineAmt = new Label("Valor Total");
		    		WEditor editorXmlLineAmt = new WStringEditor("LBR", false, true, true, 0, 0, null, null);
		    		((WStringEditor) editorXmlLineAmt).getComponent().setHflex("1");
		    		editorXmlLineAmt.setValue(group.xmlLineAmt);
		    		row.appendChild(lXmlLineAmt.rightAlign());
		    		row.appendChild(editorXmlLineAmt.getComponent());
		    		
		    		rows.appendChild(row);
		    		
		    		// Product
		    		boolean readonly = false;
		    		if (group.C_Charge_ID != null)
		    			readonly = true;
		    		
		    		row = new Row();
		    		Label lInternalProduct = new Label(Msg.getElement(Env.getCtx(), "M_Product_ID") + "*");
		    		MLookup lookupProduct = MLookupFactory.get (Env.getCtx(), genform.getWindowNo(), 0, 3840, DisplayType.Search);
		    		WEditor editorInternalProduct = new WSearchEditor("M_Product_ID", true, readonly, true, lookupProduct);
		    		((WSearchEditor) editorInternalProduct).getComponent().setAttribute("id", key);
		    		
		    		editorInternalProduct.addValueChangeListener(this);
		    		
		    		lInternalProduct.setStyle("color: red;");
		    		
		    		if (group.M_Product_ID == null) {
		    			//lInternalProduct.setStyle("color: red;");
		    		} else {
		    			editorInternalProduct.setValue(group.M_Product_ID);
		    			Env.setContext(Env.getCtx(),genform.getWindowNo(), "M_Product_ID", group.M_Product_ID);
		    		}
		    		
		    		if (readonly)
		    			lInternalProduct.setStyle("color: black;");
		    		
		    		row.appendChild(lInternalProduct.rightAlign());
		    		row.appendChild(editorInternalProduct.getComponent());
		    		
		    		// Charge
		    		readonly = false;
		    		if (group.M_Product_ID != null)
		    			readonly = true;
		    		
		    		Label lInternalCharge = new Label(Msg.getElement(Env.getCtx(), "C_Charge_ID") + "*");
		    		MLookup lookupCharge = MLookupFactory.get (Env.getCtx(), genform.getWindowNo(), 0, 3845, DisplayType.TableDir);
		    		WEditor editorInternalCharge = new WTableDirEditor("C_Charge_ID", true, readonly, true, lookupCharge);
		    		ZKUpdateUtil.setHflex(((WTableDirEditor) editorInternalCharge).getComponent(), "true");
		    		((WTableDirEditor) editorInternalCharge).getComponent().setAttribute("id", key);
		    		
		    		editorInternalCharge.addValueChangeListener(this);
		    		
		    		lInternalCharge.setStyle("color: red;");
		    		
		    		if (group.C_Charge_ID == null) {
		    			//lInternalCharge.setStyle("color: red;");
		    		} else {
		    			editorInternalCharge.setValue(group.C_Charge_ID);
		    		}
		    		
		    		if (readonly)
		    			lInternalCharge.setStyle("color: black;");
		    		
		    		row.appendChild(lInternalCharge.rightAlign());
		    		row.appendChild(editorInternalCharge.getComponent());
		    		
		    		rows.appendChild(row);
		    		
		    		// UOM
		    		row = new Row();
		    		Label lInternalUOM = new Label(Msg.getElement(Env.getCtx(), "C_UOM_ID") + "*");
		    		MLookup lookupUOM = MLookupFactory.get (Env.getCtx(), genform.getWindowNo(), 0, 1760, DisplayType.TableDir);
		    		WEditor editorInternalUOM = new WTableDirEditor("C_UOM_ID", true, false, true, lookupUOM);
		    		ZKUpdateUtil.setHflex(((WTableDirEditor) editorInternalUOM).getComponent(), "true");
		    		((WTableDirEditor) editorInternalUOM).getComponent().setAttribute("id", key);
		    		
		    		editorInternalUOM.addValueChangeListener(this);
		    		
		    		lInternalUOM.setStyle("color: red;");
		    		
		    		if (group.C_UOM_ID == null) {
		    			//lInternalUOM.setStyle("color: red;");
		    		} else {
		    			editorInternalUOM.setValue(group.C_UOM_ID);
		    		}
		    		
		    		row.appendChild(lInternalUOM.rightAlign());
		    		row.appendChild(editorInternalUOM.getComponent());
		    		
		    		// Qty
		    		Label lInternalQty = new Label("Quantidade*");
		    		WNumberEditor editorInternalQty = new WNumberEditor("qty", true, false, true, DisplayType.Amount, null);
		    		((WNumberEditor) editorInternalQty).getComponent().setHflex("1");
		    		((WNumberEditor) editorInternalQty).getComponent().setAttribute("id", key);

		    		editorInternalQty.addValueChangeListener(this);
		    		
		    		lInternalQty.setStyle("color: red;");
		    		
		    		if (group.qty == null) {
		    			//lInternalQty.setStyle("color: red;");
		    		} else {
		    			editorInternalQty.setValue(group.qty);
		    		}
		    		
		    		row.appendChild(lInternalQty.rightAlign());
		    		row.appendChild(editorInternalQty.getComponent());
		    		
		    		rows.appendChild(row);
		    		
		    		// Unit Price
		    		row = new Row();
		    		Label lInternalUnitPrice = new Label("Valor Unitário*");
		    		WNumberEditor editorInternalUnitPrice = new WNumberEditor("unitPrice", true, false, true, DisplayType.Amount, null);
		    		((WNumberEditor) editorInternalUnitPrice).getComponent().setHflex("1");
		    		((WNumberEditor) editorInternalUnitPrice).getComponent().setAttribute("id", key);

		    		editorInternalUnitPrice.addValueChangeListener(this);
		    		
		    		lInternalUnitPrice.setStyle("color: red;");
		    		
		    		if (group.unitPrice == null) {
		    			//lInternalUnitPrice.setStyle("color: red;");
		    		} else {
		    			editorInternalUnitPrice.setValue(group.unitPrice);
		    		}
		    		
		    		row.appendChild(lInternalUnitPrice.rightAlign());
		    		row.appendChild(editorInternalUnitPrice.getComponent());
		    		
		    		rows.appendChild(row);
		    		
		    		// Separator
		    		row = new Row();
		    		Space space = new Space();
		    		row.appendCellChild(space, 4);
		    		rows.appendChild(row);
				}	    		
        	}    		
    		
    		currentGroup = null;		
    		row.setGroup(currentGroup);
    		rows.appendChild(row);
    		
    		rowList = new ArrayList<Row>();
            if (rowList != null)
    			rowList.add(row);
        }

        form.appendChild(rows);
	}

	/**
	 *  Initialize Grid of Field's Properties
	 *  return @Grid
	 */
	private Grid createPropertiesGrid()
	{
		Grid gridView = GridFactory.newGridLayout();
		//
		Columns columns = new Columns();
		gridView.appendChild(columns);
    	//
    	Column  column = new Column();
    	columns.appendChild(column);
    	column.setHflex("min");
    	column.setAlign("right");

    	column = new Column();
    	columns.appendChild(column);
    	column.setHflex("1");
		Rows rows = new Rows();
		gridView.appendChild(rows);
		
		Row row = null;

		row = new Row();
		Group group = new Group("XML");
		Cell cell = (Cell) group.getFirstChild();
		cell.setSclass("z-group-inner");
		cell.setColspan(2);
		group.setOpen(true);
		rows.appendChild(group);
		
		row = new Row();
		Label labelXMLFile =  new Label("Arquivo XML de NF-e");
		Button bImport = new Button();
		bImport.setLabel("Selecionar");
		bImport.setUpload(AdempiereWebUI.getUploadSetting());
		bImport.addEventListener(Events.ON_UPLOAD, this);
		bImport.addActionListener(this);
		bImport.setHflex("1");
		row.appendChild(labelXMLFile.rightAlign());
		row.appendChild(bImport);
		row.setGroup(group);
		rows.appendChild(row);
		
		row = new Row();
		Separator esep = new Separator("horizontal");
		esep.setSpacing("10px");
		row.appendCellChild(esep, 2);
		row.setGroup(group);
		rows.appendChild(row);
		
		row = new Row();
		group = new Group(Msg.getElement(Env.getCtx(), "LBR_Document"));
		cell = (Cell) group.getFirstChild();
		cell.setSclass("z-group-inner");
		cell.setColspan(2);
		group.setOpen(true);
		rows.appendChild(group);
		
		row = new Row();
		Label labelC_DocType_ID =  new Label(Msg.getElement(Env.getCtx(), "C_DocType_ID") + "*");
		labelC_DocType_ID.setStyle("color: red;");
		MLookup lookup = MLookupFactory.get (Env.getCtx(), genform.getWindowNo(), 0,
				MColumn.getColumn_ID("LBR_NotaFiscal", "C_DocType_ID"), DisplayType.TableDir);
		editorC_DocType_ID = new WTableDirEditor("C_DocType_ID", true, false, true, lookup);
		editorC_DocType_ID.setMandatory(true);
		ZKUpdateUtil.setHflex(((WTableDirEditor) editorC_DocType_ID).getComponent(), "true");
		row.appendChild(labelC_DocType_ID.rightAlign());
		row.appendChild(editorC_DocType_ID.getComponent());
		editorC_DocType_ID.addValueChangeListener(this);
		row.setGroup(group);
		rows.appendChild(row);

		row = new Row();
		Label labelLBR_TransactionType =  new Label(Msg.getElement(Env.getCtx(), "LBR_TransactionType"));
		lookup = MLookupFactory.get (Env.getCtx(), genform.getWindowNo(), 0,
				MColumn.getColumn_ID("LBR_NotaFiscal", "LBR_TransactionType"), DisplayType.List);
		editorLBR_TransactionType = new WTableDirEditor("LBR_TransactionType", false, false, true, lookup);
		ZKUpdateUtil.setHflex(((WTableDirEditor) editorLBR_TransactionType).getComponent(), "true");
		row.appendChild(labelLBR_TransactionType.rightAlign());
		row.appendChild(editorLBR_TransactionType.getComponent());
		editorLBR_TransactionType.addValueChangeListener(this);
		row.setGroup(group);
		rows.appendChild(row);
		
		row = new Row();
		Label labelDescription =  new Label(Msg.getElement(Env.getCtx(), MField.COLUMNNAME_Description));
		editorDescription = new WStringEditor(MField.COLUMNNAME_Description, false, false, true, 0, 0, null, null);
		((WStringEditor) editorDescription).getComponent().setHflex("1");
		row.appendChild(labelDescription.rightAlign());
		row.appendChild(editorDescription.getComponent());
		// editorName.addValueChangeListener(this);
		row.setGroup(group);
		rows.appendChild(row);
		
		row = new Row();
		Label labelLBR_OwnDateDelivered =  new Label(Msg.getElement(Env.getCtx(), "LBR_OwnDateDelivered"));
		
		boolean isReadOnly = MSysConfig.getBooleanValue("LBR_READONLYDELIVERYDATE_WHEN_GEN_NF_FROM_XML",
				false, Env.getAD_Client_ID(Env.getCtx()), Env.getAD_Org_ID(Env.getCtx()));
		
		editorLBR_OwnDateDelivered = new WDateEditor("LBR_OwnDateDelivered", false, isReadOnly, true,
				Msg.getElement(Env.getCtx(), "LBR_OwnDateDelivered"));
		((WDateEditor) editorLBR_OwnDateDelivered).getComponent().setHflex("1");
		row.appendChild(labelLBR_OwnDateDelivered.rightAlign());
		row.appendChild(editorLBR_OwnDateDelivered.getComponent());
		editorLBR_OwnDateDelivered.addValueChangeListener(this);
		((WDateEditor) editorLBR_OwnDateDelivered).setValue(new Timestamp(new java.util.Date().getTime()));
		row.setGroup(group);
		rows.appendChild(row);
		
		row = new Row();
		Label labelDocAction =  new Label(Msg.getElement(Env.getCtx(), "DocAction") + "*");
		labelDocAction.setStyle("color: red;");
		try {
			lookup = MLookupFactory.get(Env.getCtx(), genform.getWindowNo(), 4324,
					DisplayType.List, Env.getLanguage(Env.getCtx()), "DocAction", 135,
					false, "AD_Ref_List.Value IN ('CO','PR','--')");
		} catch (Exception e) {
			e.printStackTrace();
		}
		editorDocAction = new WTableDirEditor("DocAction", true, false, true, lookup);
		editorDocAction.setMandatory(true);
		ZKUpdateUtil.setHflex(((WTableDirEditor) editorDocAction).getComponent(), "true");
		row.appendChild(labelDocAction.rightAlign());
		row.appendChild(editorDocAction.getComponent());
		editorDocAction.addValueChangeListener(this);
		row.setGroup(group);
		rows.appendChild(row);
	
		row = new Row();
		esep = new Separator("horizontal");
		esep.setSpacing("10px");
		row.appendCellChild(esep, 2);
		row.setGroup(group);
		rows.appendChild(row);
		
		row = new Row();
		row.appendCellChild(confirmPanel, 2);
		row.setGroup(group);
		rows.appendChild(row);

	    return gridView;
	}

	/**
	 * 	Static init
	 *	@throws Exception
	 */
	private void jbInit() throws Exception
	{
		genform.setSizable(true);
		genform.setClosable(true);
		genform.setMaximizable(true);
		genform.setWidth("95%");
		genform.setHeight("95%");
		genform.appendChild (mainLayout);
		LayoutUtils.addSclass("tab-editor-form-content", mainLayout);
		genform.setBorder("normal");

		confirmPanel.addActionListener(Events.ON_CLICK, this);

		Grid propGrid = createPropertiesGrid();

		East east = new East();
		LayoutUtils.addSclass("tab-editor-form-east-panel", east);
		mainLayout.appendChild(east);
		east.appendChild(propGrid);
		east.setWidth("320px");
		
		ListHead visibleHead = new ListHead();
		visibleHead.setParent(visible);
		ListHeader visibleHeader = new ListHeader();
		visibleHeader.appendChild(new Label("Notas Fiscais Geradas"));
		visibleHeader.setParent(visibleHead);

		westVLayout = new Vlayout();
		westVLayout.setHeight("100%");
		westVLayout.appendChild(visible);

		createUI();

		centerVLayout = new Vlayout();
		centerVLayout.setHeight("100%");
		centerVLayout.appendChild(form);
		centerVLayout.setStyle("overflow:auto");
		
		Center center = new Center();
		LayoutUtils.addSclass("tab-editor-form-center-panel", center);
		mainLayout.appendChild(center);
		center.appendChild(centerVLayout);

		West west = new West();
		LayoutUtils.addSclass("tab-editor-form-west-panel", west);
		mainLayout.appendChild(west);
		west.appendChild(westVLayout);
		west.setCollapsible(true);
		west.setSplittable(true);
		west.setWidth("150px");
	}	//	jbInit

	/**
	 * 	Dispose
	 */
	public void dispose()
	{
		SessionManager.getAppDesktop().closeActiveWindow();
	}	//	dispose

	/**
	 * 	Action Listener
	 *	@param e event
	 */
	public void onEvent (Event e) throws Exception 
	{
		if (e instanceof UploadEvent) 
		{
			// upload and view info
			UploadEvent ue = (UploadEvent) e;
			try {
				processUploadMedia(ue.getMedia());
				repaintGrid();
			} catch (Exception e1) {
				e1.printStackTrace();
				FDialog.error(m_WindowNo, form, "", "Não foi possível abrir o arquivo selecionado!"
						+ "\nPor favor verifique se é um arquivo XML de NF-e válido.");
			}
			return;
		}
		
		// select an item within the list -- set it active and show the properties
		if (Events.ON_SELECT.equals(e.getName()) && e.getTarget() instanceof Listbox) {
		}

		// Check event ONCLICK on a cell -- set it active and show the properties
		else if (Events.ON_CLICK.equals(e.getName()) && (e.getTarget() instanceof Cell)) {
		}

		else if (e.getTarget().getId().equals("Cancel"))
		{
			genform.detach();
		}

		//	OK - Save
		else if (e.getTarget().getId().equals("Ok"))
		{
			if (doc == null) {
				genform.detach();
				return;
			}

			if (LBR_OwnDateDelivered == null)
				LBR_OwnDateDelivered = (Timestamp)editorLBR_OwnDateDelivered.getValue();
			
			String errorMsg = cmd_save();
			if (errorMsg != null && errorMsg.length() > 0) {
				FDialog.error(m_WindowNo, form, "", errorMsg);
				return;
			}

			FDialog.info(m_WindowNo, form, "", "Nota Fiscal " + xmlDocumentNo + " gerada com sucesso.");
			KeyNamePair pair = new KeyNamePair(1, xmlDocumentNo);
			visible.addItem(pair);
				
			refreshXMLInfo();
			repaintGrid();
		}
	}	//	actionPerformed

	public ADForm getForm()
	{
		return genform;
	}
	
	@Override
	public void valueChange(ValueChangeEvent e) {
		// changed a value on the grid
		String propertyName = e.getPropertyName();
		
		if (propertyName.equals("C_DocType_ID")) {
			C_DocType_ID = (Integer)e.getNewValue();
		} else if (propertyName.equals("LBR_TransactionType")) {
			LBR_TransactionType = (String)e.getNewValue();
		} else if (propertyName.equals("LBR_OwnDateDelivered")) {
			LBR_OwnDateDelivered = (Timestamp)e.getNewValue();
		} else if (propertyName.equals("DocAction")) {
			docAction = (String)e.getNewValue();
		} else if (propertyName.equals("C_BPartner_ID")) {
			C_BPartner_ID = (Integer)e.getNewValue();
			
			if (C_BPartner_ID == null)
				C_BPartner_Location_ID = null;
			
			getPresumedProducts();
			repaintGrid();
		} else if (propertyName.equals("C_BPartner_Location_ID")) {
			C_BPartner_Location_ID = (Integer)e.getNewValue();
		} else if (propertyName.equals("AD_Org_ID")) {
			AD_Org_ID = (Integer)e.getNewValue();
		} else if (propertyName.equals("M_Product_ID")) {
			xmlProductMap.get(((WSearchEditor)e.getSource()).getComponent().getAttribute("id")).M_Product_ID = (Integer)e.getNewValue();
		} else if (propertyName.equals("C_Charge_ID")) {
			xmlProductMap.get(((WTableDirEditor)e.getSource()).getComponent().getAttribute("id")).C_Charge_ID = (Integer)e.getNewValue();
		} else if (propertyName.equals("C_UOM_ID")) {
			xmlProductMap.get(((WTableDirEditor)e.getSource()).getComponent().getAttribute("id")).C_UOM_ID = (Integer)e.getNewValue();
		} else if (propertyName.equals("qty")) {
			xmlProductMap.get(((WNumberEditor)e.getSource()).getComponent().getAttribute("id")).qty = (BigDecimal)e.getNewValue();
		} else if (propertyName.equals("unitPrice")) {
			xmlProductMap.get(((WNumberEditor)e.getSource()).getComponent().getAttribute("id")).unitPrice = (BigDecimal)e.getNewValue();
		}
	}

	private void repaintGrid() {
		centerVLayout.removeChild(form);
		if (form.getRows() != null)
			form.removeChild(form.getRows());

		createUI();
		centerVLayout.appendChild(form);
	}	
	
}