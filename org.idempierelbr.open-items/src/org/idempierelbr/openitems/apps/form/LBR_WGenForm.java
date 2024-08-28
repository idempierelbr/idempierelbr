package org.idempierelbr.openitems.apps.form;

import java.math.BigDecimal;

import org.adempiere.webui.apps.form.WGenForm;
import org.adempiere.webui.event.WTableModelEvent;
import org.compiere.apps.form.GenForm;
import org.compiere.minigrid.IDColumn;
import org.compiere.util.Env;
import org.idempierelbr.base.util.TextUtil;

public class LBR_WGenForm extends WGenForm {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -3469948684863340693L;

	public LBR_WGenForm(GenForm genForm) {
		super(genForm);
	}

	/**
	 *  Table Model Listener
	 *  @param e event
	 */
	public void tableChanged(WTableModelEvent e)
	{
		super.tableChanged(e);
		int rowsSelected = 0;
		int rows = getMiniTable().getRowCount();
		BigDecimal amount = Env.ZERO;
		for (int i = 0; i < rows; i++)
		{
			IDColumn id = (IDColumn)getMiniTable().getValueAt(i, 0);     //  ID in column 0
			if (id != null && id.isSelected()) {
				String codMovimento = (String)getMiniTable().getValueAt(i, 6);
				
				if (codMovimento != null && codMovimento.startsWith("01")) {
					BigDecimal grandTotal = (BigDecimal)getMiniTable().getValueAt(i, 7);
					amount = amount.add(grandTotal);
				}
				
				rowsSelected++;
			}
		}
		
		getStatusBar().setStatusDB(rowsSelected + " | " + TextUtil.toNumeric(amount));
	}   //  tableChanged
}
