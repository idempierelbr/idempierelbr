package org.idempierelbr.rtc.rest.resource.impl;

import javax.ws.rs.core.Response;

import org.compiere.util.Env;
import org.idempierelbr.rtc.rest.resource.RTCFiscoWebhookResource;
import org.idempierelbr.rtc.service.RTCFiscoWebhookService;

/**
 * @author Alan Lescano
 */
public class RTCFiscoWebhookResourceImpl implements RTCFiscoWebhookResource {

	@Override
	public Response validate(String secret) {
		return Response.status(new RTCFiscoWebhookService(Env.getCtx()).validate(secret)).build();
	}

	@Override
	public Response receive(String secret, String body) {
		return Response.status(new RTCFiscoWebhookService(Env.getCtx()).receive(secret, body)).build();
	}
}
