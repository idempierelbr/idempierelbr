package org.idempierelbr.rtc.rest.filter;

import java.io.IOException;

import javax.ws.rs.container.ContainerRequestContext;
import javax.ws.rs.container.ContainerResponseContext;
import javax.ws.rs.container.ContainerResponseFilter;
import javax.ws.rs.ext.Provider;

import org.adempiere.util.ServerContext;

/**
 * Descarta o contexto criado por {@link RTCRequestFilter}, para que a thread
 * do servidor volte ao pool sem o tenant da requisição anterior.
 *
 * @author Alan Lescano
 */
@Provider
public class RTCResponseFilter implements ContainerResponseFilter {

	@Override
	public void filter(ContainerRequestContext requestContext, ContainerResponseContext responseContext)
			throws IOException {
		ServerContext.dispose();
	}
}
