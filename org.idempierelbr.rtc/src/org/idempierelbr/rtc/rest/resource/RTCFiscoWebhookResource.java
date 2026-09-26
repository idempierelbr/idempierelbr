package org.idempierelbr.rtc.rest.resource;

import javax.ws.rs.HEAD;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.core.Response;

/**
 * Webhook das APIs de apuração do fisco:
 * {@code https://<host>/rtc/v1/fisco/webhook/<segredo>}.
 *
 * <p>O proxy reverso precisa publicar só este caminho — nada mais do
 * iDempiere fica exposto por ele.
 *
 * @author Alan Lescano
 */
@Path("v1/fisco/webhook/{secret}")
public interface RTCFiscoWebhookResource {

	/**
	 * Validação do endereço na abertura da solicitação. Precisa ser declarado:
	 * o JAX-RS só responde HEAD sozinho para recursos que têm {@code @GET}.
	 */
	@HEAD
	Response validate(@PathParam("secret") String secret);

	/**
	 * Aviso de conclusão, com a URL de download ou com o erro. Sem
	 * {@code @Consumes}, para não recusar o aviso por causa do Content-Type.
	 */
	@POST
	Response receive(@PathParam("secret") String secret, String body);
}
