/******************************************************************************
 * Copyright (C) 2011 Kenos Assessoria e Consultoria de Sistemas Ltda         *
 * Copyright (C) 2011 Ricardo Santana                                         *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 *****************************************************************************/
package org.idempierelbr.sped.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target (ElementType.FIELD)
@Retention (RetentionPolicy.RUNTIME)

public @interface XMLFieldProperties
{
	String id ();
	String name () default "";
	int minSize () default 0;
	int maxSize () default 0;
	boolean isMandatory () default true;
	boolean needsValidation () default true;
	
	/**
	 * Escala do BigDecimal
	 * 
	 * Default : 2 casas
	 * @return
	 */
	int scale () default 2;
	
	/**
	 * Verificar se é somente números, usado para campos como CPF, CNPJ...
	 * @return
	 */
	boolean isNumber () default false;

	/**
	 * Verificar se a variavel é um campo do SPED
	 * 
	 * @return
	 */
	boolean isSPEDField () default true;
	
}	//	XMLFieldProperties
