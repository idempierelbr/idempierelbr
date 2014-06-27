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

import com.thoughtworks.xstream.annotations.XStreamAsAttribute;

/**
 * 		Informações da carta de correção
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: InfEvento.java, v1.0 2012/05/12 16:44:58 PM, ralexsander Exp $
 */
public class DetEventoCartaDeCorrecao implements I_DetEvento
{
	@XStreamAsAttribute
	private String versao;
	
	private final String descEvento = "Carta de Corre\u00e7\u00e3o";
	
	private String xCorrecao;
	
	private final String xCondUso = "A Carta de Corre\u00E7\u00E3o \u00E9 disciplinada pelo \u00A7 1\u00BA-A do art. 7\u00BA do Conv\u00EAnio S/N, " +
			"de 15 de dezembro de 1970 e pode ser utilizada para regulariza\u00E7\u00E3o de erro ocorrido na emiss\u00E3o de documento fiscal, " +
			"desde que o erro n\u00E3o esteja relacionado com: I - as vari\u00E1veis que determinam o valor do imposto tais como: base de c\u00E1lculo, " +
			"al\u00EDquota, diferen\u00E7a de pre\u00E7o, quantidade, valor da opera\u00E7\u00E3o ou da presta\u00E7\u00E3o; " +
			"II - a corre\u00E7\u00E3o de dados cadastrais que implique mudan\u00E7a do remetente ou do destinat\u00E1rio; " +
			"III - a data de emiss\u00E3o ou de sa\u00EDda.";

	public String getVersao()
	{
		return versao;
	}	//	getVersao

	public void setVersao(String versao)
	{
		this.versao = versao;
	}	//	setVersao
	
	public String getDescEvento()
	{
		return descEvento;
	}	//	getDescEvento

	public String getXCorrecao()
	{
		return xCorrecao;
	}	//	getXCorrecao

	public void setXCorrecao(String xCorrecao)
	{
		if (xCorrecao != null)
			xCorrecao = xCorrecao.replace("\n", " | ");
		this.xCorrecao = xCorrecao;
	}	//	setXCorrecao

	public String getXCondUso()
	{
		return xCondUso;
	}	//	getXCondUso
	
}	//	DetEvento
