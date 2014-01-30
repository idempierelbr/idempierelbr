package org.idempierelbr.tax.webui.editor;

import org.adempiere.webui.editor.WEditor;
import org.adempiere.webui.event.ContextMenuEvent;
import org.adempiere.webui.event.ContextMenuListener;
import org.adempiere.webui.event.ValueChangeEvent;
import org.zkoss.zk.ui.event.Event;
import org.zkoss.zk.ui.event.Events;
import org.adempiere.webui.editor.WEditorPopupMenu;
import org.adempiere.webui.theme.ThemeManager;
import org.adempiere.webui.window.WFieldRecordInfo;
import org.compiere.model.GridField;
import org.idempierelbr.tax.model.MLBRTax;
import org.idempierelbr.tax.model.MLBRTaxesLookup;
import org.idempierelbr.tax.webui.component.Taxesbox;

public class WTaxesEditor extends WEditor implements ContextMenuListener
{
	private MLBRTax m_value;
	private MLBRTaxesLookup m_Taxes;
	
	/**
     * 
     * @param gridField
     */
    public WTaxesEditor(GridField gridField) {
		super(new Taxesbox(), gridField);
		m_Taxes = (MLBRTaxesLookup)gridField.getLookup();
        init();
	}
    
    private void init()
    {
    	getComponent().setButtonImage(ThemeManager.getThemeResource("images/Editor16.png"));   
    	getComponent().getTextbox().setReadonly(true);
		getComponent().addEventListener(Events.ON_CLICK, this);
    	
    	popupMenu = new WEditorPopupMenu(false, false, isShowPreference());
    	popupMenu.addMenuListener(this);
    	addChangeLogMenu(popupMenu);
    }
	
	@Override
	public void onEvent(Event event) throws Exception {
		if (Events.ON_CHANGE.equals(event.getName()) || Events.ON_OK.equals(event.getName()))
		{
			String newText = getComponent().getText();
			String oldText = null;
			if (m_value != null)
			{
				oldText = m_Taxes.getDisplay(m_value);
			}
			if (oldText != null && newText != null && oldText.equals(newText))
			{
	    	    return;
	    	}
	        if (oldText == null && newText == null)
	        {
	        	return;
	        }
			ValueChangeEvent changeEvent = new ValueChangeEvent(this, this.getColumnName(), oldText, newText);
			fireValueChange(changeEvent);
		}
		else if (Events.ON_CLICK.equals(event.getName()))
		{
			cmd_dialog();
		}
	}
	
	/**
	 *  Start dialog
	 */
	private void cmd_dialog()
	{

	}

	@Override
	public void onMenu(ContextMenuEvent evt) {
		if (WEditorPopupMenu.CHANGE_LOG_EVENT.equals(evt.getContextEvent()))
		{
			WFieldRecordInfo.start(gridField);
		}
	}
	
	@Override
	public void setReadWrite(boolean readWrite) {
		getComponent().setEnabled(readWrite);
	}
	
	@Override
	public Taxesbox getComponent()
	{
		return (Taxesbox) component;
	}

	@Override
	public boolean isReadWrite() {
		return false;
	}

	@Override
	public void setValue(Object value) {
		if (value == null)
		{
			m_value = null;
			getComponent().setText(null);
		}
		else
		{
			m_value = m_Taxes.getTax(value, null);
			if (m_value == null)
				getComponent().setText("<" + value + ">");
			else
				getComponent().setText(m_value.getDescription());
		}		
	}

	@Override
	public Object getValue() {
		if (m_value == null)
            return null;
		
		return new Integer(m_value.getLBR_Tax_ID());
	}

	@Override
	public String getDisplay() {
		return getComponent().getText();
	}

}
