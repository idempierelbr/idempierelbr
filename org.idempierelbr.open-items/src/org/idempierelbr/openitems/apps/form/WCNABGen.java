/******************************************************************************
 * Copyright (C) 2009 Low Heng Sin                                            *
 * Copyright (C) 2009 Idalica Corporation                                     *
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
package org.idempierelbr.openitems.apps.form;

import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;

import org.adempiere.webui.component.Label;
import org.adempiere.webui.component.Listbox;
import org.adempiere.webui.component.ListboxFactory;
import org.adempiere.webui.component.Row;
import org.adempiere.webui.editor.WTableDirEditor;
import org.adempiere.webui.event.ValueChangeEvent;
import org.adempiere.webui.event.ValueChangeListener;
import org.adempiere.webui.panel.ADForm;
import org.adempiere.webui.panel.IFormController;
import org.adempiere.webui.util.ZKUpdateUtil;
import org.compiere.model.MBankAccount;
import org.compiere.model.MLookup;
import org.compiere.model.MLookupFactory;
import org.compiere.model.MTable;
import org.compiere.model.Query;
import org.compiere.util.CLogger;
import org.compiere.util.DisplayType;
import org.compiere.util.Env;
import org.compiere.util.KeyNamePair;
import org.compiere.util.Msg;
import org.idempierelbr.openitems.model.MLBRBankAccountCarteira;
import org.idempierelbr.openitems.model.MLBRBankAccountConvenio;
import org.zkoss.zk.ui.event.Event;
import org.zkoss.zk.ui.event.EventListener;
import org.zkoss.zul.Space;

/**
 * Generate Invoice (manual) view class
 *
 */
public class WCNABGen extends CNABGen implements IFormController, EventListener<Event>, ValueChangeListener
{
	private LBR_WGenForm form;

	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(WCNABGen.class);
	//
	private Label lOrg = new Label();
	private WTableDirEditor fOrg;
	private Label lBankAccount = new Label();
	private Listbox fBankAccount = ListboxFactory.newDropdownListbox();
	private Label lConvenio = new Label();
	private Listbox fConvenio = ListboxFactory.newDropdownListbox();

	public WCNABGen()
	{
		log.info("");

		form = new LBR_WGenForm(this);
		Env.setContext(Env.getCtx(), form.getWindowNo(), "IsSOTrx", "Y");

		try
		{
			super.dynInit();
			dynInit();
			zkInit();

			form.postQueryEvent();
		}
		catch(Exception ex)
		{
			log.log(Level.SEVERE, "init", ex);
		}
	}	//	init

	/**
	 *	Static Init.
	 *  @throws Exception
	 */
	void zkInit() throws Exception
	{
		lOrg.setText(Msg.translate(Env.getCtx(), "AD_Org_ID"));
		lBankAccount.setText(Msg.translate(Env.getCtx(), "C_BankAccount_ID"));
		lConvenio.setText(Msg.translate(Env.getCtx(), "LBR_BankAccount_Convenio_ID") + 
				" / " + Msg.translate(Env.getCtx(), "LBR_BankAccount_Carteira_ID"));

		Row row = form.getParameterPanel().newRows().newRow();
		row.appendCellChild(lOrg.rightAlign());
		ZKUpdateUtil.setHflex(fOrg.getComponent(), "true");
		row.appendCellChild(fOrg.getComponent());
		row.appendCellChild(new Space());
		row.appendCellChild(lBankAccount.rightAlign());
		ZKUpdateUtil.setHflex(fBankAccount, "true");
		row.appendCellChild(fBankAccount);
		row.appendCellChild(new Space());
		
		row = new Row();
		form.getParameterPanel().getRows().appendChild(row);
		row.appendCellChild(lConvenio.rightAlign());
		ZKUpdateUtil.setHflex(fConvenio, "true");
		row.appendCellChild(fConvenio);
		row.appendCellChild(new Space());
	}	//	jbInit

	/**
	 *	Fill Picks.
	 *		Column_ID from C_Invoice
	 *  @throws Exception if Lookups cannot be initialized
	 */
	public void dynInit() throws Exception
	{
		// Organization
		MLookup orgL = MLookupFactory.get (Env.getCtx(), form.getWindowNo(), 0, 2163, DisplayType.TableDir);
		fOrg = new WTableDirEditor ("AD_Org_ID", false, false, true, orgL);
		fOrg.addValueChangeListener(this);
		
		// Bank accounts
		refreshBankAccountField();
		
		// Convenio
		refreshConvenioField();		

        form.getStatusBar().setStatusLine(Msg.getMsg(Env.getCtx(), "InvGenerateSel"));//@@
	}	//	fillPicks
	
	private void refreshBankAccountField() {
		fBankAccount.removeAllItems();
		fBankAccount.addItem(new KeyNamePair(0, ""));
		
		List<MBankAccount> bAList = getBankAccounts();
		
		for (MBankAccount bA : bAList) {
			fBankAccount.addItem(new KeyNamePair(bA.get_ID(), bA.getName()));
		}
		
		fBankAccount.addActionListener(this);
		fBankAccount.setSelectedIndex(0);
	}
	
	private void refreshConvenioField() {
		fConvenio.removeAllItems();
		fConvenio.addItem(new KeyNamePair(0, ""));
		
		List<MLBRBankAccountConvenio> convenioList = getConvenios();
		
		for (MLBRBankAccountConvenio convenio : convenioList) {
			fConvenio.addItem(new KeyNamePair(convenio.get_ID(), convenio.getName() + getCarteiraList(convenio)));
		}
		
		fConvenio.addActionListener(this);
		fConvenio.setSelectedIndex(0);
	}
	
	private String getCarteiraList(MLBRBankAccountConvenio convenio) {
		StringBuilder carteiraList = new StringBuilder("");
		
		if (convenio == null)
			return carteiraList.toString();
		
		MLBRBankAccountCarteira[] carteiras = convenio.getCarteiras();
		
		for (MLBRBankAccountCarteira carteira : carteiras) {
			if (!carteira.isActive())
				continue;
			
			if (carteiraList.length() == 0)
				carteiraList.append(" / ");
			else
				carteiraList.append(", ");
			
			carteiraList.append(carteira.getName());				
		}
		
		return carteiraList.toString();
	}

	private List<MBankAccount> getBankAccounts() {
		if (m_AD_Org_ID == null) 
			return new ArrayList<MBankAccount>();
			
		MTable table = MTable.get (Env.getCtx(), MBankAccount.Table_Name);
		Query query =  new Query(Env.getCtx(), table, "LBR_AllowBankCollection=? AND AD_Org_ID IN (0,?)", null);
		query.setParameters(new Object[]{true, m_AD_Org_ID});

		return query.list();
	}
	
	private List<MLBRBankAccountConvenio> getConvenios() {
		if (m_C_BankAccount_ID == null) 
			return new ArrayList<MLBRBankAccountConvenio>();
			
		MTable table = MTable.get (Env.getCtx(), MLBRBankAccountConvenio.Table_Name);
		Query query =  new Query(Env.getCtx(), table, "C_BankAccount_ID=?", null);
		query.setParameters(new Object[]{(Integer)m_C_BankAccount_ID});

		return query.list();
	}

	/**
	 *  Query Info
	 */
	public void executeQuery()
	{
		executeQuery(form.getMiniTable());
		form.getMiniTable().repaint();
		form.invalidate();
	}   //  executeQuery

	/**
	 *	Action Listener
	 *  @param e event
	 */
	public void onEvent(Event e)
	{
		if (log.isLoggable(Level.INFO)) log.info("Cmd=" + e.getTarget().getId());

		if(fBankAccount.equals(e.getTarget()))
		{
			KeyNamePair bankAccountKNPair = (KeyNamePair)fBankAccount.getSelectedItem().toKeyNamePair();
			m_C_BankAccount_ID = bankAccountKNPair.getKey();
			m_LBR_BankAccount_Convenio_ID = null;
			refreshConvenioField();
			
		    form.postQueryEvent();
		    return;
		}
		else if(fConvenio.equals(e.getTarget()))
		{
			KeyNamePair convenioKNPair = (KeyNamePair)fConvenio.getSelectedItem().toKeyNamePair();
			m_LBR_BankAccount_Convenio_ID = convenioKNPair.getKey();
			
		    form.postQueryEvent();
		    return;
		}

		validate();
	}	//	actionPerformed

	public void validate()
	{
		form.saveSelection();

		ArrayList<Integer> selection = getSelection();
		if (selection != null && selection.size() > 0 && isSelectionActive())
			form.generate();
		else
			form.dispose();
	}

	/**
	 *	Value Change Listener - requery
	 *  @param e event
	 */
	public void valueChange(ValueChangeEvent e)
	{
		if (log.isLoggable(Level.INFO)) log.info(e.getPropertyName() + "=" + e.getNewValue());
		
		if (e.getPropertyName().equals("AD_Org_ID")) {
			m_AD_Org_ID = e.getNewValue();
			refreshBankAccountField();
			refreshConvenioField();
		}
		
		if (e.getPropertyName().equals("C_BankAccount_ID"))
		{
			m_C_BankAccount_ID = e.getNewValue();
			fBankAccount.setValue(m_C_BankAccount_ID);	//	display value
			m_C_BankAccount_ID = null;
			m_LBR_BankAccount_Convenio_ID = null;
		}
		
		form.postQueryEvent();
	}	//	vetoableChange

	/**************************************************************************
	 *	Generate CNAB
	 */
	public String generate()
	{
		return generate(form.getStatusBar());
	}	//	generateCNAB

	public ADForm getForm()
	{
		return form;
	}
}