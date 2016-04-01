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


import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;

import java.util.Set;

import org.idempierelbr.sped.annotation.XMLFieldProperties;
import org.idempierelbr.sped.icmsipi.bean.I_RC100;
import org.idempierelbr.sped.icmsipi.bean.I_RC490;
import org.idempierelbr.sped.icmsipi.bean.I_RC491;
import org.idempierelbr.sped.icmsipi.bean.I_RC495;
import org.idempierelbr.sped.icmsipi.bean.I_RC500;
import org.idempierelbr.sped.icmsipi.bean.I_RX001;
import org.idempierelbr.sped.icmsipi.bean.I_RX990;
import org.idempierelbr.sped.utils.BlocoSPED;

/**
 * 		Registro hierárquico do SPED Contribuições
 * 
 *  @author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: BlocoC.java, v1.0 2013/MM/DD 2:51:51 PM, ralexsander Exp $
 */
public class BlocoC extends BlocoSPED
{
    @XStreamAlias("Id")
    @XStreamAsAttribute
	@XMLFieldProperties (id = "RC001")
	private I_RX001 rC001;
	
	@XMLFieldProperties (id = "RC010")
	private Set<RC010> rC010;
	
	@XMLFieldProperties (id = "RC100")
	private Set<I_RC100> rC100;
	
	@XMLFieldProperties (id = "RC490")
        private Set<I_RC490> rC490;
        
        @XMLFieldProperties (id = "RC491")
        private Set<I_RC491> rC491;
        
        @XMLFieldProperties (id = "RC495")
        private Set<I_RC495> rC495;
	
	@XMLFieldProperties (id = "RC500")
	private Set<I_RC500> rC500;
	
	@XMLFieldProperties (id = "RC990")
	private I_RX990 rC990;

	public I_RX001 getRC001()
	{
		return rC001;
	}

	public void setRC001(I_RX001 rC001)
	{
		this.rC001 = rC001;
	}

	public Set<RC010> getRC010()
	{
		return rC010;
	}

	public void setRC010(Set<RC010> rC010)
	{
		this.rC010 = rC010;
	}

	public Set<I_RC100> getRC100()
	{
		return rC100;
	}

	public void setRC100(Set<I_RC100> rC100)
	{
		this.rC100 = rC100;
	}
	
	public Set<I_RC490> getRC490()
        {
                return rC490;
        }

        public void setRC490(Set<I_RC490> rC490)
        {
                this.rC490 = rC490;
        }
        
        public Set<I_RC491> getRC491()
        {
                return rC491;
        }

        public void setRC491(Set<I_RC491> rC491)
        {
                this.rC491 = rC491;
        }
        
        public Set<I_RC495> getRC495()
        {
                return rC495;
        }

        public void setRC495(Set<I_RC495> rC495)
        {
                this.rC495 = rC495;
        }

	public Set<I_RC500> getRC500()
	{
		return rC500;
	}

	public void setRC500(Set<I_RC500> rC500)
	{
		this.rC500 = rC500;
	}

	public I_RX990 getRC990()
	{
		return rC990;
	}

	public void setRC990(I_RX990 rC990)
	{
		this.rC990 = rC990;
	}
}	//	BlocoC
