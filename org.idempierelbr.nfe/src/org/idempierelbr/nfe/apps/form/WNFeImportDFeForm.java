package org.idempierelbr.nfe.apps.form;

import org.adempiere.webui.panel.ADForm;

/**
 * Janela que hospeda a tela de conciliação e importação de DF-e.
 *
 * <p>Não sobrescreve {@code getWindowMode()}: o padrão do {@link ADForm} é
 * abrir embutido numa aba, e é o que se quer aqui. Conciliar um lote leva
 * tempo, e prender o iDempiere inteiro numa janela sobreposta obrigaria a
 * abandonar o trabalho para consultar qualquer outra coisa.
 *
 * @author Alan Lescano
 */
public class WNFeImportDFeForm extends ADForm {

	private static final long serialVersionUID = 1L;

	private final WNFeImportDFe controller;

	public WNFeImportDFeForm(WNFeImportDFe controller) {
		this.controller = controller;
	}

	/**
	 * Monta a tela. É aqui que o layout tem de ser criado, e não em
	 * {@code setVisible}: numa aba embutida o componente já nasce visível e
	 * aquele evento nunca chega — a aba abriria vazia.
	 */
	@Override
	protected void initForm() {
		controller.initForm();
	}
}
