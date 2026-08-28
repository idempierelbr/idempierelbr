package org.idempierelbr.nfe.apps.form;

import org.adempiere.webui.panel.ADForm;

/**
 * Janela que hospeda a tela de conciliação e importação de DF-e.
 *
 * @author Alan Lescano
 */
public class WNFeImportDFeForm extends ADForm {

	private static final long serialVersionUID = 1L;

	private final WNFeImportDFe controller;

	public WNFeImportDFeForm(WNFeImportDFe controller) {
		this.controller = controller;
	}

	@Override
	public Mode getWindowMode() {
		return Mode.HIGHLIGHTED;
	}

	@Override
	public boolean setVisible(boolean visible) {
		boolean ok = super.setVisible(visible);

		if (visible)
			controller.initForm();

		return ok;
	}

	@Override
	protected void initForm() {
	}
}
