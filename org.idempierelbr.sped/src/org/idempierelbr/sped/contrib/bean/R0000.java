/******************************************************************************
 * Copyright (C) 2011 Kenos Assessoria e Consultoria de Sistemas Ltda         *
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
package org.idempierelbr.sped.contrib.bean;

import java.sql.Timestamp;

import org.idempierelbr.sped.annotation.XMLFieldProperties;
import org.idempierelbr.sped.icmsipi.bean.I_R0000;
import org.idempierelbr.sped.icmsipi.util.RegSped;


import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;
/**
 * 	REGISTRO 0000: 
 * 		ABERTURA DO ARQUIVO DIGITAL E IDENTIFICAÇÃO DA PESSOA JURÍDICA
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: R0000.java, v1.0 2013/02/02 11:17:42 AM, ralexsander Exp $
 */
public class R0000 extends RegSped implements I_R0000
{
    @XStreamAlias("Id")
    @XStreamAsAttribute
	@XMLFieldProperties(minSize=3, maxSize=3, id="COD_VER", isNumber=true)
	private String COD_VER;
	
	@XMLFieldProperties(minSize=1, maxSize=1, id="TIPO_ESCRIT", isNumber=true)
	private String TIPO_ESCRIT;
	
	@XMLFieldProperties(minSize=1, maxSize=1, id="IND_SIT_ESP", isMandatory=false, isNumber=true)
	private String IND_SIT_ESP;
	
	@XMLFieldProperties(maxSize=41, id="NUM_REC_ANTERIOR")
	private String NUM_REC_ANTERIOR;
	
	@XMLFieldProperties(id="DT_INI")
	private Timestamp DT_INI;
	
	@XMLFieldProperties(id="DT_FIN")
	private Timestamp DT_FIN;
	
	@XMLFieldProperties(minSize=1, maxSize=100, id="NOME")
	private String NOME;
	
	@XMLFieldProperties(minSize=14, maxSize=14, id="CNPJ", isNumber=true)
	private String CNPJ;
	
	@XMLFieldProperties(minSize=2, maxSize=2, id="UF")
	private String UF;
	
	@XMLFieldProperties(minSize=7, maxSize=7, id="COD_MUN", isNumber=true)
	private String COD_MUN;
	
	@XMLFieldProperties(maxSize=9, id="SUFRAMA", isMandatory=false, isNumber=true)
	private String SUFRAMA;
	
	@XMLFieldProperties(maxSize=2, id="IND_NAT_PJ", isMandatory=false, isNumber=true)
	private String IND_NAT_PJ;
	
	@XMLFieldProperties(minSize=1, maxSize=1, id="IND_ATIV", isNumber=true)
	private String IND_ATIV;

	public String getCOD_VER()
	{
		return COD_VER;
	}

	public void setCOD_VER(String cOD_VER)
	{
		COD_VER = cOD_VER;
	}

	public String getTIPO_ESCRIT()
	{
		return TIPO_ESCRIT;
	}

	public void setTIPO_ESCRIT(String tIPO_ESCRIT)
	{
		TIPO_ESCRIT = tIPO_ESCRIT;
	}

	public String getIND_SIT_ESP()
	{
		return IND_SIT_ESP;
	}

	public void setIND_SIT_ESP(String iND_SIT_ESP)
	{
		IND_SIT_ESP = iND_SIT_ESP;
	}

	public String getNUM_REC_ANTERIOR()
	{
		return NUM_REC_ANTERIOR;
	}

	public void setNUM_REC_ANTERIOR(String nUM_REC_ANTERIOR)
	{
		NUM_REC_ANTERIOR = nUM_REC_ANTERIOR;
	}

	public Timestamp getDT_INI()
	{
		return DT_INI;
	}

	public void setDT_INI(Timestamp dT_INI)
	{
		DT_INI = dT_INI;
	}

	public Timestamp getDT_FIN()
	{
		return DT_FIN;
	}

	public void setDT_FIN(Timestamp dT_FIN)
	{
		DT_FIN = dT_FIN;
	}

	public String getNOME()
	{
		return NOME;
	}

	public void setNOME(String nOME)
	{
		NOME = nOME;
	}

	public String getCNPJ()
	{
		return CNPJ;
	}

	public void setCNPJ(String cNPJ)
	{
		CNPJ = cNPJ;
	}

	public String getUF()
	{
		return UF;
	}

	public void setUF(String uF)
	{
		UF = uF;
	}

	public String getCOD_MUN()
	{
		return COD_MUN;
	}

	public void setCOD_MUN(String cOD_MUN)
	{
		COD_MUN = cOD_MUN;
	}

	public String getSUFRAMA()
	{
		return SUFRAMA;
	}

	public void setSUFRAMA(String sUFRAMA)
	{
		SUFRAMA = sUFRAMA;
	}

	public String getIND_NAT_PJ()
	{
		return IND_NAT_PJ;
	}

	public void setIND_NAT_PJ(String iND_NAT_PJ)
	{
		IND_NAT_PJ = iND_NAT_PJ;
	}

	public String getIND_ATIV()
	{
		return IND_ATIV;
	}

	public void setIND_ATIV(String iND_ATIV)
	{
		IND_ATIV = iND_ATIV;
	}
}	//	R0000
