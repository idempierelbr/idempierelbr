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

import java.util.ArrayList;
import java.util.List;

import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;

/**
 * 		EnvEvento
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 * 	@version $Id: EnvEvento.java, v1.0 2012/05/14 1:22:43 AM, ralexsander Exp $
 */
@XStreamAlias ("envEvento")
public class EnvEvento
{
	@XStreamAsAttribute
	private String versao;
	
	@XStreamAsAttribute
	private final String xmlns="http://www.portalfiscal.inf.br/nfe";
	
	private String idLote;
	
	//private Evento evento;
	private List<Evento> eventos = null;
	
	public String getVersao()
	{
		return versao;
	}

	public void setVersao(String versao)
	{
		this.versao = versao;
	}

	public String getIdLote()
	{
		return idLote;
	}

	public void setIdLote(String idLote)
	{
		this.idLote = idLote;
	}

	public List<Evento> getEvento() {
		return eventos;
	}

	public void setEvento(List<Evento> eventos) {
		this.eventos = eventos;
	}
	
	public boolean addEvento(Evento e) {
		if (eventos == null)
				eventos = new ArrayList<Evento>();
		return eventos.add(e);
	}


}	//	EnvEvento
