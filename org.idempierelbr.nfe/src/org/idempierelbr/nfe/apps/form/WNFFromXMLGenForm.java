package org.idempierelbr.nfe.apps.form;

import org.adempiere.webui.panel.ADForm;

public class WNFFromXMLGenForm extends ADForm
{
	/**
	 * 
	 */
	private static final long serialVersionUID = -4275704807167431211L;
	
	private WNFFromXMLGen gen;

	public WNFFromXMLGenForm(WNFFromXMLGen wNFFromXMLGen) {
		gen = wNFFromXMLGen;
	}

	@Override
	public Mode getWindowMode() {
		return Mode.HIGHLIGHTED;
	}

	@Override
	public boolean setVisible(boolean visible) {
		 boolean ok = super.setVisible(visible);

		 if (visible)
			 gen.initForm();
		 
		 return ok;
	}

	@Override
	protected void initForm() {
	}
}
