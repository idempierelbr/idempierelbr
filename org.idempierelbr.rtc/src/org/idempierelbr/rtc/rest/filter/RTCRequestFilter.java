package org.idempierelbr.rtc.rest.filter;

import java.io.IOException;
import java.util.Properties;

import javax.ws.rs.container.ContainerRequestContext;
import javax.ws.rs.container.ContainerRequestFilter;
import javax.ws.rs.ext.Provider;

import org.adempiere.util.ServerContext;

/**
 * Dá a cada requisição um contexto do iDempiere próprio e vazio. É o recurso
 * quem decide o tenant, a partir do segredo recebido.
 *
 * @author Alan Lescano
 */
@Provider
public class RTCRequestFilter implements ContainerRequestFilter {

	@Override
	public void filter(ContainerRequestContext requestContext) throws IOException {
		ServerContext.setCurrentInstance(new Properties());
	}
}
