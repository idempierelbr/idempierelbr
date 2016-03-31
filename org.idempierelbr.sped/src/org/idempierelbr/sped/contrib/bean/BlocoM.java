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

import java.util.Set;

import org.idempierelbr.sped.annotation.XMLFieldProperties;
import org.idempierelbr.sped.icmsipi.bean.I_RX001;
import org.idempierelbr.sped.icmsipi.bean.I_RX990;
import org.idempierelbr.sped.utils.BlocoSPED;


import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;
/**
 * 		Registro hierárquico do SPED Contribuições
 * 
 *  @author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: BlocoM.java, v1.0 2013/MM/DD 2:51:51 PM, ralexsander Exp $
 */
public class BlocoM extends BlocoSPED
{
        @XStreamAlias("Id")
        @XStreamAsAttribute
        @XMLFieldProperties (id = "RM001")
        private I_RX001 rM001;
        
        @XMLFieldProperties (id = "RM100")
        private RM100 rM100;
        
        @XMLFieldProperties (id = "RM200")
        private RM200 rM200;
        
        @XMLFieldProperties (id = "RM400")
        private Set<RM400> rM400;
        
        @XMLFieldProperties (id = "RM500")
        private RM500 rM500;
        
        @XMLFieldProperties (id = "RM600")
        private RM600 rM600;
        
        @XMLFieldProperties (id = "RM800")
        private Set<RM800> rM800;
        
        @XMLFieldProperties (id = "RM990")
        private I_RX990 rM990;
        
        public I_RX001 getRM001()
        {
                return rM001;
        }
        public void setRM001(I_RX001 rM001)
        {
                this.rM001 = rM001;
        }
        public RM100 getRM100()
        {
                return rM100;
        }
        public void setRM100(RM100 rM100)
        {
                this.rM100 = rM100;
        }
        public RM200 getRM200()
        {
                return rM200;
        }
        public void setRM200(RM200 rM200)
        {
                this.rM200 = rM200;
        }
        public Set<RM400> getRM400()
        {
                return rM400;
        }
        public void setRM400(Set<RM400> rM400)
        {
                this.rM400 = rM400;
        }
        public RM500 getRM500()
        {
                return rM500;
        }
        public void setRM500(RM500 rM500)
        {
                this.rM500 = rM500;
        }
        public RM600 getRM600()
        {
                return rM600;
        }
        public void setRM600(RM600 rM600)
        {
                this.rM600 = rM600;
        }
        public Set<RM800> getRM800()
        {
                return rM800;
        }
        public void setRM800(Set<RM800> rM800)
        {
                this.rM800 = rM800;
        }
        public I_RX990 getRM990()
        {
                return rM990;
        }
        public void setRM990(I_RX990 rM990)
        {
                this.rM990 = rM990;
        }
}       //      BlocoM