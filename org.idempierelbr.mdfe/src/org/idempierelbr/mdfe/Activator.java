package org.idempierelbr.mdfe;

import org.adempiere.base.Core;
import org.osgi.framework.BundleActivator;
import org.osgi.framework.BundleContext;

/**
 * Registra os modelos do MDF-e no MappedModelFactory.
 *
 * <p>O AnnotationBasedModelFactory do core so varre o proprio bundle
 * org.adempiere.base, entao a anotacao {@code @Model} nas classes X_ nao basta:
 * cada plugin precisa mandar varrer o seu pacote de modelos. Mesma coisa que
 * org.idempierelbr.base faz.
 *
 * <p>O scan segue a cadeia de heranca ate a subclasse mais derivada, entao
 * LBR_MDFe resolve para MLBRMDFe (e nao para X_LBR_MDFe) sem anotacao extra.
 *
 * <p>Nao estende Incremental2PackActivator de proposito: este plugin nao
 * empacota 2Pack, as mudancas de dicionario dele vem dos scripts em migration/.
 */
public class Activator implements BundleActivator
{
	@Override
	public void start(BundleContext context) throws Exception
	{
		Core.getMappedModelFactory().scan(context, "org.idempierelbr.mdfe.model");
	}

	@Override
	public void stop(BundleContext context) throws Exception
	{
	}
}
