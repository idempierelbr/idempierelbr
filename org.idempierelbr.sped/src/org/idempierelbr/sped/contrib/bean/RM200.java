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

import java.math.BigDecimal;
import java.util.Set;

import org.idempierelbr.sped.annotation.XMLFieldProperties;
import org.idempierelbr.sped.icmsipi.util.RegSped;
import org.idempierelbr.sped.utils.SPEDSet;


import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;
/**
 * 	REGISTRO M200: 
 * 		CONSOLIDAÇÃO	DA	CONTRIBUIÇÃO	P ARA	O	PIS/P ASEP	DO PERÍODO
 * 
 * 	@author Priscila Pinheiro (Kenos, www.kenos.com.br)
 *	@version $Id: RM200.java, v1.0 2013/03/14 11:17:42 AM, ppinheiro Exp $
 */
public class RM200 extends RegSped
{

        @XStreamAlias("Id")
        @XStreamAsAttribute
        @XMLFieldProperties(isMandatory=false, id = "VL_TOT_CONT_NC_PER")
        private BigDecimal VL_TOT_CONT_NC_PER;
        
        @XMLFieldProperties(isMandatory=false, id = "VL_TOT_CRED_DESC")
        private BigDecimal VL_TOT_CRED_DESC;
        
        @XMLFieldProperties(isMandatory=false, id = "VL_TOT_CRED_DESC_ANT")
        private BigDecimal VL_TOT_CRED_DESC_ANT;

        @XMLFieldProperties(isMandatory=false, id = "VL_TOT_CONT_NC_DEV")
        private BigDecimal VL_TOT_CONT_NC_DEV;

        @XMLFieldProperties(isMandatory=false, id = "VL_RET_NC")
        private BigDecimal VL_RET_NC;

        @XMLFieldProperties(isMandatory=false, id = "VL_OUT_DED_NC")
        private BigDecimal VL_OUT_DED_NC;

        @XMLFieldProperties(isMandatory=false, id = "VL_CONT_NC_REC")
        private BigDecimal VL_CONT_NC_REC;

        @XMLFieldProperties(isMandatory=false, id = "VL_TOT_CONT_CUM_PER")
        private BigDecimal VL_TOT_CONT_CUM_PER;

        @XMLFieldProperties(isMandatory=false, id = "VL_RET_CUM")
        private BigDecimal VL_RET_CUM;

        @XMLFieldProperties(isMandatory=false, id = "VL_OUT_DED_CUM")
        private BigDecimal VL_OUT_DED_CUM;

        @XMLFieldProperties(isMandatory=false, id = "VL_CONT_CUM_REC")
        private BigDecimal VL_CONT_CUM_REC;
        
        @XMLFieldProperties(isMandatory=false, id = "VL_TOT_CONT_REC")
        private BigDecimal VL_TOT_CONT_REC;
        
        @XMLFieldProperties (id = "RM205")
        private RM205 _RM205 = new RM205();

        @XMLFieldProperties (id = "RM210")
        private Set<RM210> _RM210 = new SPEDSet<RM210>();
        

        public BigDecimal getVL_TOT_CONT_NC_PER()
        {
                return VL_TOT_CONT_NC_PER;
        }

        public void setVL_TOT_CONT_NC_PER(BigDecimal vL_TOT_CONT_NC_PER)
        {
                VL_TOT_CONT_NC_PER = vL_TOT_CONT_NC_PER;
        }
        
        public BigDecimal getVL_TOT_CRED_DESC()
        {
                return VL_TOT_CRED_DESC;
        }

        public void setVL_TOT_CRED_DESC(BigDecimal vL_TOT_CRED_DESC)
        {
                VL_TOT_CRED_DESC = vL_TOT_CRED_DESC;
        }
        
        public BigDecimal getVL_TOT_CRED_DESC_ANT()
        {
                return VL_TOT_CRED_DESC_ANT;
        }

        public void setVL_TOT_CRED_DESC_ANT(BigDecimal vL_TOT_CRED_DESC_ANT)
        {
                VL_TOT_CRED_DESC_ANT = vL_TOT_CRED_DESC_ANT;
        }
        
        public BigDecimal getVL_TOT_CONT_NC_DEV()
        {
                return VL_TOT_CONT_NC_DEV;
        }

        public void setVL_TOT_CONT_NC_DEV(BigDecimal vL_TOT_CONT_NC_DEV)
        {
                VL_TOT_CONT_NC_DEV = vL_TOT_CONT_NC_DEV;
        }
        
        public BigDecimal getVL_RET_NC()
        {
                return VL_RET_NC;
        }

        public void setVL_RET_NC(BigDecimal vL_RET_NC)
        {
                VL_RET_NC = vL_RET_NC;
        }
        
        public BigDecimal getVL_OUT_DED_NC()
        {
                return VL_OUT_DED_NC;
        }

        public void setVL_OUT_DED_NC(BigDecimal vL_OUT_DED_NC)
        {
                VL_OUT_DED_NC = vL_OUT_DED_NC;
        }
        
        public BigDecimal getVL_CONT_NC_REC()
        {
                return VL_CONT_NC_REC;
        }

        public void setVL_CONT_NC_REC(BigDecimal vL_CONT_NC_REC)
        {
                VL_CONT_NC_REC = vL_CONT_NC_REC;
        }
        
        public BigDecimal getVL_TOT_CONT_CUM_PER()
        {
                return VL_TOT_CONT_CUM_PER;
        }

        public void setVL_TOT_CONT_CUM_PER(BigDecimal vL_TOT_CONT_CUM_PER)
        {
                VL_TOT_CONT_CUM_PER = vL_TOT_CONT_CUM_PER;
        }
        
        public BigDecimal getVL_RET_CUM()
        {
                return VL_RET_CUM;
        }

        public void setVL_RET_CUM(BigDecimal vL_RET_CUM)
        {
                VL_RET_CUM = vL_RET_CUM;
        }
        
        public BigDecimal getVL_OUT_DED_CUM()
        {
                return VL_OUT_DED_CUM;
        }

        public void setVL_OUT_DED_CUM(BigDecimal vL_OUT_DED_CUM)
        {
                VL_OUT_DED_CUM = vL_OUT_DED_CUM;
        }
        
        public BigDecimal getVL_CONT_CUM_REC()
        {
                return VL_CONT_CUM_REC;
        }

        public void setVL_CONT_CUM_REC(BigDecimal vL_CONT_CUM_REC)
        {
                VL_CONT_CUM_REC = vL_CONT_CUM_REC;
        }
        
        public BigDecimal getVL_TOT_CONT_REC()
        {
                return VL_TOT_CONT_REC;
        }

        public void setVL_TOT_CONT_REC(BigDecimal vL_TOT_CONT_REC)
        {
                VL_TOT_CONT_REC = vL_TOT_CONT_REC;
        }
        
        public RM205 get_RM205()
        {
                return _RM205;
        }

        public void setRM205 (RM205 rM205)
        {
                _RM205 = rM205;
        }
        
        public Set<RM210> get_RM210()
        {
                return _RM210;
        }

        public void addRM210 (RM210 rM210)
        {
                _RM210.add(rM210);
        }
}       //      RM200