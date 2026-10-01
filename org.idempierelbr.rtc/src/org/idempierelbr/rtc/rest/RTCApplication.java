package org.idempierelbr.rtc.rest;

import java.util.HashSet;
import java.util.Set;

import javax.ws.rs.core.Application;

import org.idempierelbr.rtc.rest.filter.RTCRequestFilter;
import org.idempierelbr.rtc.rest.filter.RTCResponseFilter;
import org.idempierelbr.rtc.rest.resource.impl.RTCFiscoWebhookResourceImpl;

/**
 * Aplicação JAX-RS do bundle, publicada em {@code /rtc} pelo
 * {@code Web-ContextPath} do MANIFEST e registrada no {@code WEB-INF/web.xml}.
 *
 * @author Alan Lescano
 */
public class RTCApplication extends Application {

	@Override
	public Set<Class<?>> getClasses() {
		Set<Class<?>> classes = new HashSet<Class<?>>();

		classes.add(RTCRequestFilter.class);
		classes.add(RTCResponseFilter.class);
		classes.add(RTCFiscoWebhookResourceImpl.class);

		return classes;
	}
}
