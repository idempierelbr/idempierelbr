/******************************************************************************
 * Copyright (C) 2015 RoundIT Desenvolvimento de Sistemas Ltda                *
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
import org.idempierelbr.sped.icmsipi.bean.I_RC491;
import org.idempierelbr.sped.icmsipi.util.RegSped;


import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;
/**
 * 	REGISTRO C491: DETALHAMENTO DA CONSOLIDAÇÃO DE DOCUMENTOS EMITIDOS POR ECF (CÓDIGOS 02, 2D e 59) – PIS/PASEP 		
 *
 *      @author Arthur Oliveira de Melo (aomelo@live.com)
 *      @version $Id: I_RC491.java, v1.0 2016/02/12 arthurmelo $
 */
public class RC491 extends RegSped implements I_RC491
{
	@XStreamAlias("Id")
	@XStreamAsAttribute
        @XMLFieldProperties(maxSize = 60, id = "COD_ITEM")
	private String COD_ITEM;

	/**  Tabela II constante no Anexo Único da Instrução Normativa RFB nº 1.009, de 2010, */ 
        @XMLFieldProperties(id = "CST_PIS", isMandatory = true, maxSize = 2, isNumber=true)
        private String CST_PIS;
        
        @XMLFieldProperties(minSize = 4, maxSize = 4, id = "CFOP", isNumber = true,isMandatory = false)
        private String CFOP;
        
        @XMLFieldProperties(id = "VL_ITEM", scale = 2,isMandatory = true)
        private BigDecimal VL_ITEM;
        
        @XMLFieldProperties(id = "VL_BC_PIS", scale = 2, isMandatory = false)
        private BigDecimal VL_BC_PIS;
        
        @XMLFieldProperties(id = "ALIQ_PIS", maxSize = 8, isMandatory = false)
        private BigDecimal ALIQ_PIS;
        
        @XMLFieldProperties(id = "QUANT_BC_PIS", isMandatory = false)
        private BigDecimal QUANT_BC_PIS;
        
        @XMLFieldProperties(id = "ALIQ_PIS_QUANT", isMandatory = false)
        private BigDecimal ALIQ_PIS_QUANT;
        
        @XMLFieldProperties(id = "VL_PIS", scale = 2,isMandatory = false)
        private BigDecimal VL_PIS;
        
        @XMLFieldProperties(maxSize = 60, id = "COD_CTA")
        private String COD_CTA;
	    
        public String getCOD_ITEM() {
            return COD_ITEM;
        }
    
        public void setCOD_ITEM(String cOD_ITEM) {
            COD_ITEM = cOD_ITEM;
        }
    
        public String getCST_PIS() {
            return CST_PIS;
        }
    
        public void setCST_PIS(String cST_PIS) {
            CST_PIS = cST_PIS;
        }
    
        public String getCFOP() {
            return CFOP;
        }
    
        public void setCFOP(String cFOP) {
            CFOP = cFOP;
        }
    
        public BigDecimal getVL_ITEM() {
            return VL_ITEM;
        }
    
        public void setVL_ITEM(BigDecimal vL_ITEM) {
            VL_ITEM = vL_ITEM;
        }
    
        public BigDecimal getVL_BC_PIS() {
            return VL_BC_PIS;
        }
    
        public void setVL_BC_PIS(BigDecimal vL_BC_PIS) {
            VL_BC_PIS = vL_BC_PIS;
        }
    
        public BigDecimal getALIQ_PIS() {
            return ALIQ_PIS;
        }
    
        public void setALIQ_PIS(BigDecimal aLIQ_PIS) {
            ALIQ_PIS = aLIQ_PIS;
        }
    
        public BigDecimal getQUANT_BC_PIS() {
            return QUANT_BC_PIS;
        }
    
        public void setQUANT_BC_PIS(BigDecimal qUANT_BC_PIS) {
            QUANT_BC_PIS = qUANT_BC_PIS;
        }
    
        public BigDecimal getALIQ_PIS_QUANT() {
            return ALIQ_PIS_QUANT;
        }
    
        public void setALIQ_PIS_QUANT(BigDecimal aLIQ_PIS_QUANT) {
            ALIQ_PIS_QUANT = aLIQ_PIS_QUANT;
        }
    
        public BigDecimal getVL_PIS() {
            return VL_PIS;
        }
    
        public void setVL_PIS(BigDecimal vL_PIS) {
            VL_PIS = vL_PIS;
        }
    
        public String getCOD_CTA() {
            return COD_CTA;
        }
    
        public void setCOD_CTA(String cOD_CTA) {
            COD_CTA = cOD_CTA;
        }
        
        /**
         * TODO: implementar as validacoes do registro C491 
         */
        
        public void checkExceptions() 
        {
                     
        }


	
}	//	RC491
