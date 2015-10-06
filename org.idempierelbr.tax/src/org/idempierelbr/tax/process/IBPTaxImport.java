/******************************************************************************
 * Product: Adempiere ERP & CRM Smart Business Solution                       *
 * Copyright (C) 1999-2006 ComPiere, Inc. All Rights Reserved.                *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 * For the text or an alternative of this public license, you may reach us    *
 * ComPiere, Inc., 2620 Augustine Dr. #245, Santa Clara, CA 95054, USA        *
 * or via info@compiere.org or http://www.compiere.org/license.html           *
 * Contributor: Carlos Ruiz - globalqss                                       *
 *****************************************************************************/
package org.idempierelbr.tax.process;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileReader;
import java.math.BigDecimal;
import java.util.logging.Level;

import org.adempiere.process.ImportProcess;
import org.compiere.model.MOrg;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.idempierelbr.core.util.TextUtil;
import org.idempierelbr.tax.model.MLBRIBPTax;
import org.zkoss.io.Files;

/**
 * Import IBPT CSV file
 * 
 * @author pablo 
 * @version 1.0 06/02/2014 - 18:25
 */
public class IBPTaxImport extends SvrProcess implements ImportProcess {
	
	// file path
	private String p_FilePath;
	private int p_AD_Org_ID;

	
	/**
	 * Prepare - e.g., get Parameters.
	 */
	protected void prepare() {
		ProcessInfoParameter[] para = getParameter();
		for (int i = 0; i < para.length; i++) {
			String name = para[i].getParameterName();
			
			// 
			if (name.equals("FileName"))
				p_FilePath = para[i].getParameterAsString();

			// 
			if (name.equals("AD_Org_ID"))
				p_AD_Org_ID = para[i].getParameterAsInt();

			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
			
		}
	} // prepare

	/**
	 * Perform process.
	 * 
	 * @return Message
	 * @throws Exception
	 */
	protected String doIt() throws java.lang.Exception {
		FileInputStream fis = null;
		BufferedReader in = null;
		
		try {			
			// input stream
			fis = new FileInputStream(p_FilePath);
			File file = File.createTempFile("IBPT_CSV_", ".csv");
			Files.copy(file, fis);
			
			// buffer string file
			in = new BufferedReader(new FileReader(file));
			String line = "";
			int idx = 0;

			// load org
			MOrg m_org = null;
			if (p_AD_Org_ID > 0)
				m_org = MOrg.get(getCtx(), p_AD_Org_ID);
			
			// for each line, get read data
			while ((line = in.readLine()) != null) {
				
				// split string 
				String content[] = line.split(";");

				// skip first line because is the column header
				idx ++;
				if (idx == 1)
					continue;
				
				// check if exists, if true, cancel
				if (idx == 2 && MLBRIBPTax.exists(content[10], p_AD_Org_ID))
					throw new Exception("Um arquivo este período já foi importado!");

				// ibptax
				MLBRIBPTax m_ibptax = new MLBRIBPTax(getCtx(), 0, get_TrxName());
				m_ibptax.setAD_Org_ID(m_org != null ? m_org.get_ID() : 0);
				m_ibptax.setCode(content[0]);
				m_ibptax.setLBR_Exception(content[1]);
				m_ibptax.setType(content[2]);
				m_ibptax.setDescription("");
				m_ibptax.setLBR_DomesticFederalTax(new BigDecimal(content[4]));
				m_ibptax.setLBR_ImportedFederalTax(new BigDecimal(content[5]));
				m_ibptax.setLBR_StateTax(new BigDecimal(content[6]));
				m_ibptax.setLBR_MunicipalTax(new BigDecimal(content[7]));
				m_ibptax.setStartDate(TextUtil.stringToTime(content[8], "dd/MM/yyyy"));
				m_ibptax.setEndDate(TextUtil.stringToTime(content[9], "dd/MM/yyyy"));
				m_ibptax.setLBR_IBPTaxKey(content[10]);
				m_ibptax.setVersionNo(content[11]);				
				m_ibptax.setLBR_Source(content[12]);
				m_ibptax.save(get_TrxName());
			}
		} catch (Exception ex) {
			ex.printStackTrace();
			
			// logar erro
			log.severe("Falha ao importar dados do IBPT. Erro: " + ex.getMessage());
			
			//
			throw new Exception("Erro: " + ex.getMessage());
		} finally {
			in.close();
			fis.close();
		}

		//
		return "Arquivo importado com sucesso!";
	} 


	@Override
	public String getImportTableName() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String getWhereClause() {
		// TODO Auto-generated method stub
		return null;
	}
}