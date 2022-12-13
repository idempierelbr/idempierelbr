package org.idempierelbr.cnab240febraban.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

import org.idempierelbr.cnab240febraban.model.TipoCampo;



@Retention(RetentionPolicy.RUNTIME)
@Target(ElementType.FIELD)
public @interface Campo {
	int tamanho();
	TipoCampo tipoCampo();
}
