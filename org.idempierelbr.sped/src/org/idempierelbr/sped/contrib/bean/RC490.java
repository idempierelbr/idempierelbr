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

import java.sql.Timestamp;

import org.idempierelbr.sped.annotation.XMLFieldProperties;
import org.idempierelbr.sped.icmsipi.bean.I_RC490;
import org.idempierelbr.sped.icmsipi.util.RegSped;


import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;
/**
 *      REGISTRO C490: CONSOLIDAÇÃO DE DOCUMENTOS EMITIDOS POR ECF (CÓDIGOS 02, 2D, 59 e 60)  		
 *
 *      @author Arthur Oliveira de Melo (aomelo@live.com)
 *      @version $Id: I_RC490.java, v1.0 2016/02/12 arthurmelo $
 */
public class RC490 extends RegSped implements I_RC490
{
	@XStreamAlias("Id")
	@XStreamAsAttribute
        @XMLFieldProperties(id = "DT_DOC_INI", isMandatory = true, minSize = 8, maxSize = 8)
        private Timestamp DT_DOC_INI;
    
        @XMLFieldProperties(id = "DT_DOC_FIN", isMandatory = true, minSize = 8, maxSize = 8)
        private Timestamp DT_DOC_FIN;
    
        @XMLFieldProperties(minSize = 2, maxSize = 2, id = "COD_MOD")
        private String COD_MOD;

	public String getCOD_MOD()
	{
		return COD_MOD;
	}

	public void setCOD_MOD(String cOD_MOD)
	{
		COD_MOD = cOD_MOD;
	}

	public Timestamp getDT_DOC_INI()
	{
		return DT_DOC_INI;
	}

	public void setDT_DOC_INI(Timestamp dt_doc_ini)
	{
	    DT_DOC_INI = dt_doc_ini;
	}

	public Timestamp getDT_DOC_FIN()
	{
		return DT_DOC_FIN;
	}

	public void setDT_DOC_FIN(Timestamp dt_doc_fin)
	{
	    DT_DOC_FIN = dt_doc_fin;
	}
	
	/**
         * TODO: implementar as validacoes do registro C490 
         */
	
        public void checkExceptions() 
        {
            
        /* Campo 02 - Preenchimento: informar a data de emissão inicial dos documentos
         * consolidados no registro, representativos de operações de vendas
         * mediante emissão de cupom fiscal, no formato “ddmmaaaa”, excluindo-se
         * quaisquer caracteres de separação, tais como: “.”, “/”, “-”.
         * Validação: o valor informado no campo deve ser menor ou igual ao
         * valor do campo DT_FIN do registro 0000. 
         * Campo 03 - Preenchimento:
         * informar a data de emissão Final dos documentos consolidados no
         * registro, representativos de operações de vendas mediante emissão de
         * cupom fiscal, no formato “ddmmaaaa”, excluindo-se quaisquer
         * caracteres de separação, tais como: “.”, “/”, “-”. 
         * Validação: o valor
         * informado no campo deve ser menor ou igual ao valor do campo DT_FIN
         * do registro 0000.
         */    
                        
        }

	
}	//	RC490
