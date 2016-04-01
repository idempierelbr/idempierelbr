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

import org.idempierelbr.sped.annotation.XMLFieldProperties;
import org.idempierelbr.sped.icmsipi.util.RegSped;


import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;
/**
 * 	REGISTRO M105: 
 * 		DETALHAMENTO DA BASE DE CALCULO DO CRÉDITO APURADO NO PERÍODO – PIS
 * 
 * 	@author Priscila Pinheiro (Kenos, www.kenos.com.br)
 *	@version $Id: RM105.java, v1.0 2013/03/14 11:17:42 AM, ppinheiro Exp $
 */
public class RM105 extends RegSped
{
        @XStreamAlias("Id")
        @XStreamAsAttribute
        @XMLFieldProperties(minSize=2, maxSize=2, id = "NAT_BC_CRED")
        private String NAT_BC_CRED;
        
        @XMLFieldProperties(minSize=2, maxSize=2, id = "CST_PIS")
        private String CST_PIS;

        @XMLFieldProperties(isMandatory=false, id = "VL_BC_PIS_TOT")
        private BigDecimal VL_BC_PIS_TOT;
        
        @XMLFieldProperties(isMandatory=false, id = "VL_BC_PIS_CUM")
        private BigDecimal VL_BC_PIS_CUM;
        
        @XMLFieldProperties(isMandatory=false, id = "VL_BC_PIS_NC")
        private BigDecimal VL_BC_PIS_NC;
        
        @XMLFieldProperties(isMandatory=false, id = "VL_BC_PIS")
        private BigDecimal VL_BC_PIS;
        
        @XMLFieldProperties(isMandatory=false, id = "QUANT_BC_PIS_TOT")
        private BigDecimal QUANT_BC_PIS_TOT;
        
        @XMLFieldProperties(isMandatory=false, id = "QUANT_BC_PIS")
        private BigDecimal QUANT_BC_PIS;
        
        @XMLFieldProperties(minSize=1, maxSize=1, id = "DESC_CRED")
        private String DESC_CRED;
        
        public String getNAT_BC_CRED()
        {
                return NAT_BC_CRED;
        }

        public void setNAT_BC_CRED(String nAT_BC_CRED)
        {
                NAT_BC_CRED = nAT_BC_CRED;
        }

        public String getCST_PIS()
        {
                return CST_PIS;
        }

        public void setCST_PIS(String cST_PIS)
        {
                CST_PIS = cST_PIS;
        }
        

        public BigDecimal getVL_BC_PIS_TOT()
        {
                return VL_BC_PIS_TOT;
        }

        public void setVL_BC_PIS_TOT(BigDecimal vL_BC_PIS_TOT)
        {
                VL_BC_PIS_TOT = vL_BC_PIS_TOT;
        }
        

        public BigDecimal getVL_BC_PIS_CUM()
        {
                return VL_BC_PIS_CUM;
        }

        public void setVL_BC_PIS_CUM(BigDecimal vL_BC_PIS_CUM)
        {
                VL_BC_PIS_CUM = vL_BC_PIS_CUM;
        }
        

        public BigDecimal getQUANT_BC_PIS_TOT()
        {
                return QUANT_BC_PIS_TOT;
        }

        public void setQUANT_BC_PIS_TOT(BigDecimal qUANT_BC_PIS_TOT)
        {
                QUANT_BC_PIS_TOT = qUANT_BC_PIS_TOT;
        }
        

        public BigDecimal getQUANT_BC_PIS()
        {
                return QUANT_BC_PIS;
        }

        public void setQUANT_BC_PIS(BigDecimal qUANT_BC_PIS)
        {
                QUANT_BC_PIS = qUANT_BC_PIS;
        }
        

        public BigDecimal getVL_BC_PIS_NC()
        {
                return VL_BC_PIS_NC;
        }

        public void setVL_BC_PIS_NC(BigDecimal vL_BC_PIS_NC)
        {
                VL_BC_PIS_NC = vL_BC_PIS_NC;
        }

        public String getDESC_CRED()
        {
                return DESC_CRED;
        }

        public void setDESC_CRED(String dESC_CRED)
        {
                DESC_CRED = dESC_CRED;
        }
        
        public BigDecimal getVL_BC_PIS()
        {
                return VL_BC_PIS;
        }

        public void setVL_BC_PIS(BigDecimal vL_BC_PIS)
        {
                VL_BC_PIS = vL_BC_PIS;
        }

}       //      RM105