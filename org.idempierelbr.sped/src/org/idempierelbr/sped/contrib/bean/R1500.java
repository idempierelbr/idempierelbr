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
 * 		REGISTRO 1500: CONTROLE DE CRÉDITOS FISCAIS – COFINS
 * 
 * 	@author Priscila Pinheiro (Kenos, www.kenos.com.br)
 *	@version $Id: R1500.java, v1.0 2013/05/02 11:39:22 AM, ppinheiro Exp $
 */
public class R1500 extends RegSped
{
        @XStreamAlias("Id")
        @XStreamAsAttribute
        @XMLFieldProperties(minSize=6, maxSize = 6, id = "PER_APU_CRED")
        private String PER_APU_CRED;
                
        @XMLFieldProperties(minSize=2, maxSize = 2, id = "ORIG_CRED")
        private String ORIG_CRED;
        
        @XMLFieldProperties(minSize=14, maxSize=14, id = "CNPJ_SUC")
        private String CNPJ_SUC;
        
        @XMLFieldProperties(minSize=2, maxSize = 2, id = "COD_CRED")
        private String COD_CRED;
        
        @XMLFieldProperties(id = "VL_CRED_APU")
        private BigDecimal VL_CRED_APU;
        
        @XMLFieldProperties(id = "VL_CRED_DESC_PA_ANT")
        private BigDecimal VL_CRED_DESC_PA_ANT;
        
        @XMLFieldProperties(id = "VL_CRED_PER_PA_ANT")
        private BigDecimal VL_CRED_PER_PA_ANT;
        
        @XMLFieldProperties(id = "VL_CRED_DCOMP_PA_ANT")
        private BigDecimal VL_CRED_DCOMP_PA_ANT;
        
        @XMLFieldProperties(id = "SD_CRED_DISP_EFD")
        private BigDecimal SD_CRED_DISP_EFD;
        
        @XMLFieldProperties(id = "VL_CRED_DESC_EFD")
        private BigDecimal VL_CRED_DESC_EFD ;
        
        @XMLFieldProperties(id = "VL_CRED_PER_EFD")
        private BigDecimal VL_CRED_PER_EFD;
        
        @XMLFieldProperties(id = "VL_CRED_DCOMP_EFD")
        private BigDecimal VL_CRED_DCOMP_EFD;
        
        @XMLFieldProperties(id = "VL_CRED_TRANS")
        private BigDecimal VL_CRED_TRANS;
        
        @XMLFieldProperties(id = "VL_CRED_OUT")
        private BigDecimal VL_CRED_OUT;
        
        @XMLFieldProperties(id = "SLD_CRED_FIM")
        private BigDecimal SLD_CRED_FIM;

        public String getPER_APU_CRED()
        {
                return PER_APU_CRED;
        }

        public void setPER_APU_CRED(String pER_APU_CRED)
        {
                PER_APU_CRED = pER_APU_CRED;
        }

        public String getORIG_CRED()
        {
                return ORIG_CRED;
        }

        public void setORIG_CRED(String oRIG_CRED)
        {
                ORIG_CRED = oRIG_CRED;
        }

        public String getCNPJ_SUC()
        {
                return CNPJ_SUC;
        }

        public void setCNPJ_SUC(String cNPJ_SUC)
        {
                CNPJ_SUC = cNPJ_SUC;
        }
        
        public String getCOD_CRED()
        {
                return COD_CRED;
        }

        public void setCOD_CRED(String cOD_CRED)
        {
                COD_CRED = cOD_CRED;
        }

        public BigDecimal getVL_CRED_APU()
        {
                return VL_CRED_APU;
        }

        public void setVL_CRED_APU(BigDecimal vL_CRED_APU)
        {
                VL_CRED_APU = vL_CRED_APU;
        }
        
        public BigDecimal getVL_CRED_DESC_PA_ANT()
        {
                return VL_CRED_DESC_PA_ANT;
        }

        public void setVL_CRED_DESC_PA_ANT(BigDecimal vL_CRED_DESC_PA_ANT)
        {
                VL_CRED_DESC_PA_ANT = vL_CRED_DESC_PA_ANT;
        }
        
        public BigDecimal getVL_CRED_PER_PA_ANT()
        {
                return VL_CRED_PER_PA_ANT;
        }

        public void setVL_CRED_PER_PA_ANT(BigDecimal vL_CRED_PER_PA_ANT)
        {
                VL_CRED_PER_PA_ANT = vL_CRED_PER_PA_ANT;
        }
        
        public BigDecimal getVL_CRED_DCOMP_PA_ANT()
        {
                return VL_CRED_DCOMP_PA_ANT;
        }

        public void setVL_CRED_DCOMP_PA_ANT(BigDecimal vL_CRED_DCOMP_PA_ANT)
        {
                VL_CRED_DCOMP_PA_ANT = vL_CRED_DCOMP_PA_ANT;
        }
        
        public BigDecimal getSD_CRED_DISP_EFD()
        {
                return SD_CRED_DISP_EFD;
        }

        public void setSD_CRED_DISP_EFD(BigDecimal sD_CRED_DISP_EFD)
        {
                SD_CRED_DISP_EFD = sD_CRED_DISP_EFD;
        }
        
        public BigDecimal getVL_CRED_DESC_EFD()
        {
                return VL_CRED_DESC_EFD;
        }

        public void setVL_CRED_DESC_EFD(BigDecimal vL_CRED_DESC_EFD)
        {
                VL_CRED_DESC_EFD = vL_CRED_DESC_EFD;
        }
        
        public BigDecimal getVL_CRED_PER_EFD()
        {
                return VL_CRED_PER_EFD;
        }

        public void setVL_CRED_PER_EFD(BigDecimal vL_CRED_PER_EFD)
        {
                VL_CRED_PER_EFD = vL_CRED_PER_EFD;
        }
        
        public BigDecimal getVL_CRED_DCOMP_EFD()
        {
                return VL_CRED_DCOMP_EFD;
        }

        public void setVL_CRED_DCOMP_EFD(BigDecimal vL_CRED_DCOMP_EFD)
        {
                VL_CRED_DCOMP_EFD = vL_CRED_DCOMP_EFD;
        }
        
        public BigDecimal getVL_CRED_TRANS()
        {
                return VL_CRED_TRANS;
        }

        public void setVL_CRED_TRANS(BigDecimal vL_CRED_TRANS)
        {
                VL_CRED_TRANS = vL_CRED_TRANS;
        }
        
        public BigDecimal getVL_CRED_OUT()
        {
                return VL_CRED_OUT;
        }

        public void setVL_CRED_OUT (BigDecimal vL_CRED_OUT)
        {
                VL_CRED_OUT = vL_CRED_OUT;
        }
        
        public BigDecimal getSLD_CRED_FIM()
        {
                return SLD_CRED_FIM;
        }

        public void setSLD_CRED_FIM(BigDecimal sLD_CRED_FIM)
        {
                SLD_CRED_FIM = sLD_CRED_FIM;
        }
        
}       //      R1500