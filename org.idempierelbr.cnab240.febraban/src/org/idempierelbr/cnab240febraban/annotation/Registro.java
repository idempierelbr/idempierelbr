package org.idempierelbr.cnab240febraban.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

import org.idempierelbr.cnab240febraban.enums.TipoEnvio;
import org.idempierelbr.cnab240febraban.enums.TipoRegistro;



@Retention(RetentionPolicy.RUNTIME)
@Target(ElementType.TYPE)
public @interface Registro {
	boolean obrigatorio();
	TipoEnvio tipoEnvio() default TipoEnvio.REMESSA_OU_RETORNO;
	TipoRegistro tipoRegistro();
}
