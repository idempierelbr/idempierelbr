package org.idempierelbr.mdfe.factory;

import java.util.logging.Level;

import org.adempiere.webui.factory.IFormFactory;
import org.adempiere.webui.panel.ADForm;
import org.adempiere.webui.panel.IFormController;
import org.compiere.util.CLogger;

/**
 * Instancia o formulario de emissao do MDF-e.
 *
 * <p>Sem esta fabrica o iDempiere cai no DefaultFormFactory, que so enxerga o
 * classloader do proprio core: a classe do plugin nunca e encontrada e o erro
 * que aparece e o enganoso "Web UI form not implemented for the swing form".
 * Cada plugin com formulario proprio precisa registrar a sua.
 */
public class MDFeFormFactory implements IFormFactory
{
	private static final String PACOTE = "org.idempierelbr.mdfe.apps.form";

	protected transient CLogger log = CLogger.getCLogger(getClass());

	@Override
	public ADForm newFormInstance(String formName)
	{
		if (formName == null || !formName.startsWith(PACOTE))
			return null;

		Object form;

		try
		{
			form = getClass().getClassLoader().loadClass(formName).getDeclaredConstructor().newInstance();
		}
		catch (Exception e)
		{
			log.log(Level.WARNING, "Falha ao abrir o formulario " + formName, e);
			return null;
		}

		if (form instanceof ADForm)
			return (ADForm) form;

		if (form instanceof IFormController)
		{
			IFormController controlador = (IFormController) form;
			ADForm adForm = controlador.getForm();
			adForm.setICustomForm(controlador);

			return adForm;
		}

		return null;
	}
}
