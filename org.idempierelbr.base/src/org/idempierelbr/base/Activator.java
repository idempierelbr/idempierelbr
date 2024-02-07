package org.idempierelbr.base;

import org.adempiere.base.Core;
import org.adempiere.plugin.utils.Incremental2PackActivator;
import org.osgi.framework.BundleContext;

public class Activator extends Incremental2PackActivator {	
	@Override
	public void start(BundleContext context) throws Exception {
		Core.getMappedModelFactory().scan(context, "org.idempierelbr.base.model");

		super.start(context);
	}
}
