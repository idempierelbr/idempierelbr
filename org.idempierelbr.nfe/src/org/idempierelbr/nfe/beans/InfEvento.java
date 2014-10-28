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

import java.sql.Timestamp;

import org.compiere.model.MSysConfig;
import org.compiere.util.Env;
import org.idempierelbr.core.util.TextUtil;

import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;
import com.thoughtworks.xstream.annotations.XStreamOmitField;

/**
 * 		Grupo de informações do registro do Evento
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: InfEvento.java, v1.0 2012/05/12 16:44:58 PM, ralexsander Exp $
 */
@XStreamAlias ("infEvento")
public class InfEvento
{	
	/**		Error Msg	**/
	@XStreamOmitField
	private String errorMsg;
	
	@XStreamAlias ("Id")
	@XStreamAsAttribute
	public String id;
	
	private String cOrgao;
	
	private String tpAmb;
	
	private String CNPJ;
	
	private String CPF;
	
	private String chNFe;
	
	private String dhEvento;
	
	private String tpEvento;
	
	private String nSeqEvento;
	
	private String verEvento;
	
	private I_DetEvento detEvento;

	public String getId()
	{
		return id;
	}	//	getId

	public void setId()
	{
		this.id = "ID" + getTpEvento() + getChNFe() + TextUtil.lPad(getNSeqEvento(), 2);
	}	//	setId

	public String getCOrgao()
	{
		return cOrgao;
	}	//	getCOrgao

	public void setCOrgao(String cOrgao)
	{
		this.cOrgao = cOrgao;
	}	//	setCOrgao

	public String getTpAmb()
	{
		return tpAmb;
	}	//	getTpAmb

	public void setTpAmb(String tpAmb)
	{
		this.tpAmb = tpAmb;
	}	//	setTpAmb

	public String getCNPJ()
	{
		return CNPJ;
	}	//	getCNPJ

	public void setCNPJ(String cNPJ)
	{
		this.CNPJ = TextUtil.retiraEspecial(cNPJ);
	}	//	setCNPJ

	public String getCPF()
	{
		return CPF;
	}	//	getCPF

	public void setCPF(String cPF)
	{
		this.CPF = cPF;
	}	//	setCPF

	public String getChNFe()
	{
		return chNFe;
	}	//	getChNFe

	public void setChNFe(String chNFe)
	{
		this.chNFe = chNFe;
	}	//	setChNFe

	public String getDhEvento()
	{
		return dhEvento;
	}	//	getDhEvento

	public void setDhEvento (Timestamp dhEvento)
	{
		this.dhEvento = TextUtil.timeToString (dhEvento, "yyyy-MM-dd'T'HH:mm:ss") + MSysConfig.getValue ("LBR_TIMEZONE", "-03:00", Env.getAD_Client_ID (Env.getCtx()));
	}	//	setDhEvento
	
	public void setDhEvento (String dhEvento)
	{
		this.dhEvento = dhEvento;
	}	//	setDhEvento

	public void setTpEvento(String tpEvento)
	{
		this.tpEvento = tpEvento;
	}

	public String getTpEvento()
	{
		return tpEvento;
	}	//	getTpEvento

	public String getNSeqEvento()
	{
		return nSeqEvento;
	}	//	getNSeqEvento

	public void setNSeqEvento(String nSeqEvento)
	{
		this.nSeqEvento = nSeqEvento;
	}	//	setNSeqEvento

	public String getVerEvento()
	{
		return verEvento;
	}	//	getVerEvento

	public void setVerEvento(String verEvento)
	{
		this.verEvento = verEvento;
	}	//	setVerEvento

	public I_DetEvento getDetEvento()
	{
		return detEvento;
	}	//	getDetEvento

	public void setDetEvento(I_DetEvento detEvento)
	{
		this.detEvento = detEvento;
	}	//	setDetEvento
	
	public String getErrorMsg()
	{
		return errorMsg;
	}
}	//	InfEvento
