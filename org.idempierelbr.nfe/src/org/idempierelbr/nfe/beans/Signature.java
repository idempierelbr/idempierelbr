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
package org.idempierelbr.nfe.beans;

import java.util.List;

import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;
import com.thoughtworks.xstream.annotations.XStreamImplicit;

/**
 * 		Assinatura
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: Signature.java, v1.0 2012/05/21 3:47:28 PM, ralexsander Exp $
 */
@XStreamAlias ("Signature")
public class Signature
{
	@XStreamAsAttribute
	String xmlns;
	
	@XStreamAlias ("SignedInfo")
	SignedInfo signedInfo;
	
	@XStreamAlias ("SignatureValue")
	String signatureValue;
	
	@XStreamAlias ("KeyInfo")
	KeyInfo keyInfo;
	
	public class SignedInfo
	{
		@XStreamAlias ("CanonicalizationMethod")
		CanonicalizationMethod canonicalizationMethod;
		
		@XStreamAlias ("SignatureMethod")
		SignatureMethod signatureMethod;
		
		@XStreamAlias ("Reference")
		Reference reference;
	}	//	SignedInfo
	public class CanonicalizationMethod
	{
		@XStreamAlias ("Algorithm")
		@XStreamAsAttribute
		String algorithm;
	}	//	CanonicalizationMethod
	public class SignatureMethod
	{
		@XStreamAlias ("Algorithm")
		@XStreamAsAttribute
		String algorithm;
	}	//	SignatureMethod
	public class Reference
	{
		@XStreamAlias ("URI")
		@XStreamAsAttribute
		String uri;
		
		@XStreamAlias ("Transforms")
		Transforms transforms;

		@XStreamAlias ("DigestMethod")
		DigestMethod digestMethod;
		
		@XStreamAlias ("DigestValue")
		String digestValue;
	}	//	Reference
	public class Transforms
	{
		@XStreamAlias ("Transform")
		@XStreamImplicit (itemFieldName = "Transform")
		List<Transform> transform;
	}	//	Transforms
	public class Transform
	{
		@XStreamAlias ("Algorithm")
		@XStreamAsAttribute
		String algorithm;
	}	//	Transform
	public class DigestMethod
	{
		@XStreamAlias ("Algorithm")
		@XStreamAsAttribute
		String algorithm;
	}	//	DigestMethod
	public class KeyInfo
	{
		@XStreamAlias ("X509Data")
		X509Data x509Data;
	}	//	KeyInfo
	public class X509Data
	{
		@XStreamAlias ("X509Certificate")
		String x509Certificate;
	}	//	X509Data
}	//	Signature
