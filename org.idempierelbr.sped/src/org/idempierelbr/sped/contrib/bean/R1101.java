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
import java.sql.Timestamp;

import org.idempierelbr.sped.annotation.XMLFieldProperties;
import org.idempierelbr.sped.icmsipi.util.RegSped;


import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;
/**
 * 		REGISTRO 1101: APURAÇÃO DE CRÉDITO EXTEMPORÂNEO - DOCUMENTOS E 
 *		OPERAÇÕES DE PERÍODOS ANTERIORES – PIS/PASEP
 * 
 * 	@author Priscila Pinheiro (Kenos, www.kenos.com.br)
 *	@version $Id: R1101.java, v1.0 2013/05/02 11:39:22 AM, ppinheiro Exp $
 */
public class R1101 extends RegSped
{
        @XStreamAlias("Id")
        @XStreamAsAttribute
        @XMLFieldProperties(minSize=1, maxSize = 60, id = "COD_PART")
        private String COD_PART;
                
        @XMLFieldProperties(minSize=1, maxSize = 60, id = "COD_ITEM")
        private String COD_ITEM;
        
        @XMLFieldProperties(minSize=2, maxSize = 2, id = "COD_MOD")
        private String COD_MOD;

        @XMLFieldProperties(maxSize = 3, id = "SER", isMandatory=false)
        private String SER;
        
        @XMLFieldProperties(maxSize = 3, id = "SUB_SER", isMandatory=false)
        private String SUB_SER;
        
        @XMLFieldProperties(minSize=1, maxSize = 9, id = "NUM_DOC", isNumber=true)
        private String NUM_DOC;
        
        @XMLFieldProperties(id = "DT_OPER")
        private Timestamp DT_OPER;
        
        @XMLFieldProperties(minSize=44, maxSize = 44, id = "CHV_NFE", isMandatory=false, isNumber=true)
        private String CHV_NFE;
        
        @XMLFieldProperties(id = "VL_OPER")
        private BigDecimal VL_OPER;
        
        @XMLFieldProperties(minSize=4, maxSize = 4, id = "CFOP")
        private String CFOP;
        
        @XMLFieldProperties(minSize=2, maxSize = 2, id = "NAT_BC_CRED")
        private String NAT_BC_CRED;
        
        @XMLFieldProperties(minSize=1, maxSize = 1, id = "IND_ORIG_CRED")
        private String IND_ORIG_CRED;
        
        @XMLFieldProperties(minSize=2, maxSize = 2, id = "CST_PIS")
        private String CST_PIS;
        
        @XMLFieldProperties(id = "VL_BC_PIS", isMandatory=false)
        private BigDecimal VL_BC_PIS;
        
        @XMLFieldProperties(id = "ALIQ_PIS", isMandatory=false)
        private BigDecimal ALIQ_PIS;
        
        @XMLFieldProperties(minSize=1, maxSize=60, id = "COD_CTA")
        private String COD_CTA;
        
        @XMLFieldProperties(minSize=1, maxSize=60, id = "COD_CCUS")
        private String COD_CCUS; 
        
        @XMLFieldProperties(minSize=1, maxSize=255, id = "DESC_COMPL")
        private String DESC_COMPL;
        
        @XMLFieldProperties(id = "PER_ESCRIT")
        private Timestamp PER_ESCRIT;
        
        @XMLFieldProperties(minSize=14, maxSize=14, id = "CNPJ")
        private String CNPJ;
        
        
        public String getCOD_PART()
        {
                return COD_PART;
        }

        public void setCOD_PART(String cOD_PART)
        {
                COD_PART = cOD_PART;
        }

        
        public String getCOD_ITEM()
        {
                return COD_ITEM;
        }

        public void setCOD_ITEM(String cOD_ITEM)
        {
                COD_ITEM = cOD_ITEM;
        }

        public String getCOD_MOD()
        {
                return COD_MOD;
        }

        public void setCOD_MOD(String cOD_MOD)
        {
                COD_MOD = cOD_MOD;
        }

        public String getSER()
        {
                return SER;
        }

        public void setSER(String sER)
        {
                SER = sER;
        }
        
        public String getSUB_SER()
        {
                return SUB_SER;
        }

        public void setSUB_SER(String sUB_SER)
        {
                SUB_SER = sUB_SER;
        }

        public String getNUM_DOC()
        {
                return NUM_DOC;
        }

        public void setNUM_DOC(String nUM_DOC)
        {
                NUM_DOC = nUM_DOC;
        }

        public String getCHV_NFE()
        {
                return CHV_NFE;
        }

        public void setCHV_NFE(String cHV_NFE)
        {
                CHV_NFE = cHV_NFE;
        }
        
        public Timestamp getDT_OPER()
        {
                return DT_OPER;
        }

        public void setDT_OPER(Timestamp dT_OPER)
        {
                DT_OPER = dT_OPER;
        }
        
        public BigDecimal getVL_OPER()
        {
                return VL_OPER;
        }

        public void setVL_OPER(BigDecimal vL_OPER)
        {
                VL_OPER = vL_OPER;
        }
        
        public String getCFOP()
        {
                return CFOP;
        }

        public void setCFOP(String cFOP)
        {
                CFOP = cFOP;
        }
        
        public String getCST_PIS()
        {
                return CST_PIS;
        }

        public void setCST_PIS(String cST_PIS)
        {
                CST_PIS = cST_PIS;
        }
        
        public String getIND_ORIG_CRED()
        {
                return IND_ORIG_CRED;
        }

        public void setIND_ORIG_CRED(String iND_ORIG_CRED)
        {
                IND_ORIG_CRED = iND_ORIG_CRED;
        }
        
        public BigDecimal getVL_BC_PIS()
        {
                return VL_BC_PIS;
        }

        public void setVL_BC_PIS(BigDecimal vL_BC_PIS)
        {
                VL_BC_PIS = vL_BC_PIS;
        }
        
        public BigDecimal getALIQ_PIS()
        {
                return ALIQ_PIS;
        }

        public void setALIQ_PIS(BigDecimal aLIQ_PIS)
        {
                ALIQ_PIS = aLIQ_PIS;
        }
        
        public String getNAT_BC_CRED()
        {
                return NAT_BC_CRED;
        }

        public void NAT_BC_CRED(String nAT_BC_CRED)
        {
                NAT_BC_CRED = nAT_BC_CRED;
        }
        
        public String getCOD_CTA()
        {
                return COD_CTA;
        }

        public void setCOD_CTA(String cOD_CTA)
        {
                COD_CTA = cOD_CTA;
        }
        
        public String getCOD_CCUS()
        {
                return COD_CCUS;
        }

        public void setCOD_CCUS(String cOD_CCUS)
        {
                COD_CCUS = cOD_CCUS;
        }
        
        public String getDESC_COMPL()
        {
                return DESC_COMPL;
        }

        public void setDESC_COMPL(String dESC_COMPL)
        {
                DESC_COMPL = dESC_COMPL;
        }
        
        public Timestamp getPER_ESCRIT()
        {
                return PER_ESCRIT;
        }

        public void setPER_ESCRIT(Timestamp pER_ESCRIT)
        {
                PER_ESCRIT = pER_ESCRIT;
        }
        
        public String getCNPJ()
        {
                return CNPJ;
        }

        public void setCNPJ(String cNPJ)
        {
                CNPJ = cNPJ;
        }
        
        
}       //      R1101