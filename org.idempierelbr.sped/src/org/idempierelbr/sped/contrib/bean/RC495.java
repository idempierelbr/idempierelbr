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
import org.idempierelbr.sped.icmsipi.bean.I_RC495;
import org.idempierelbr.sped.icmsipi.util.RegSped;


import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;
/**
 * 	REGISTRO C491: DETALHAMENTO DA CONSOLIDAÇÃO DE DOCUMENTOS EMITIDOS POR ECF (CÓDIGOS 02, 2D e 59) – COFINS/PASEP 		
 *
 *      @author Arthur Oliveira de Melo (aomelo@live.com)
 *      @version $Id: I_RC495.java, v1.0 2016/02/12 arthurmelo $
 */
public class RC495 extends RegSped implements I_RC495
{
	@XStreamAlias("Id")
	@XStreamAsAttribute
        @XMLFieldProperties(maxSize = 60, id = "COD_ITEM")
	private String COD_ITEM;

	/**  Tabela II constante no Anexo Único da Instrução Normativa RFB nº 1.009, de 2010, */ 
        @XMLFieldProperties(id = "CST_COFINS", isMandatory = true, maxSize = 2, isNumber=true)
        private String CST_COFINS;
        
        @XMLFieldProperties(minSize = 4, maxSize = 4, id = "CFOP", isNumber = true,isMandatory = false)
        private String CFOP;
        
        @XMLFieldProperties(id = "VL_ITEM", scale = 2,isMandatory = true)
        private BigDecimal VL_ITEM;
        
        @XMLFieldProperties(id = "VL_BC_COFINS", scale = 2, isMandatory = false)
        private BigDecimal VL_BC_COFINS;
        
        @XMLFieldProperties(id = "ALIQ_COFINS", maxSize = 8, isMandatory = false)
        private BigDecimal ALIQ_COFINS;
        
        @XMLFieldProperties(id = "QUANT_BC_COFINS", isMandatory = false)
        private BigDecimal QUANT_BC_COFINS;
        
        @XMLFieldProperties(id = "ALIQ_COFINS_QUANT", isMandatory = false)
        private BigDecimal ALIQ_COFINS_QUANT;
        
        @XMLFieldProperties(id = "VL_COFINS", scale = 2,isMandatory = false)
        private BigDecimal VL_COFINS;
        
        @XMLFieldProperties(maxSize = 60, id = "COD_CTA")
        private String COD_CTA;
	    
        public String getCOD_ITEM() {
            return COD_ITEM;
        }
    
        public void setCOD_ITEM(String cOD_ITEM) {
            COD_ITEM = cOD_ITEM;
        }
    
        public String getCST_COFINS() {
            return CST_COFINS;
        }
    
        public void setCST_COFINS(String cST_COFINS) {
            CST_COFINS = cST_COFINS;
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
    
        public BigDecimal getVL_BC_COFINS() {
            return VL_BC_COFINS;
        }
    
        public void setVL_BC_COFINS(BigDecimal vL_BC_COFINS) {
            VL_BC_COFINS = vL_BC_COFINS;
        }
    
        public BigDecimal getALIQ_COFINS() {
            return ALIQ_COFINS;
        }
    
        public void setALIQ_COFINS(BigDecimal aLIQ_COFINS) {
            ALIQ_COFINS = aLIQ_COFINS;
        }
    
        public BigDecimal getQUANT_BC_COFINS() {
            return QUANT_BC_COFINS;
        }
    
        public void setQUANT_BC_COFINS(BigDecimal qUANT_BC_COFINS) {
            QUANT_BC_COFINS = qUANT_BC_COFINS;
        }
    
        public BigDecimal getALIQ_COFINS_QUANT() {
            return ALIQ_COFINS_QUANT;
        }
    
        public void setALIQ_COFINS_QUANT(BigDecimal aLIQ_COFINS_QUANT) {
            ALIQ_COFINS_QUANT = aLIQ_COFINS_QUANT;
        }
    
        public BigDecimal getVL_COFINS() {
            return VL_COFINS;
        }
    
        public void setVL_COFINS(BigDecimal vL_COFINS) {
            VL_COFINS = vL_COFINS;
        }
    
        public String getCOD_CTA() {
            return COD_CTA;
        }
    
        public void setCOD_CTA(String cOD_CTA) {
            COD_CTA = cOD_CTA;
        }
        
        /**
         * TODO: implementar as validacoes do registro C495 
         */
        
        public void checkExceptions() 
        {
                     
        }

	
}	//	RC495
