/******************************************************************************
 * Copyright (C) 2011 Kenos Assessoria e Consultoria de Sistemas Ltda         *
 * Copyright (C) 2011 Ricardo Santana                                         *
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
package org.kenos.idempiere.lbr.mdfe.process;

import java.io.File;
import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.logging.Level;

import org.adempiere.exceptions.AdempiereException;
import org.adempiere.model.POWrapper;
import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.util.NFeUtil;
import org.adempierelbr.util.TextUtil;
import org.adempierelbr.wrapper.I_W_C_City;
import org.compiere.model.MAttachment;
import org.compiere.model.MCity;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.kenos.idempiere.lbr.mdfe.model.MLBRMDFe;
import org.kenos.idempiere.lbr.mdfe.model.MLBRMDFeUnload;
import org.kenos.idempiere.lbr.mdfe.model.MLBRMDFeUnloadDoc;
import org.kenos.idempiere.lbr.mdfe.util.MDFeUtil;

import br.inf.portalfiscal.mdfe.EvIncDFeMDFeDocument;
import br.inf.portalfiscal.mdfe.EvIncDFeMDFeDocument.EvIncDFeMDFe.InfDoc;
import br.inf.portalfiscal.mdfe.RetEventoMDFeDocument;


/**
 * 		Registro de Evento de Inclusão de Documento
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: IncludeDocument.java, v1.0 2019/10/23 22:47:09 PM, ralexsander Exp $
 */
public class IncludeDocument extends SvrProcess
{
	protected int p_Record_ID 			= -1;
	protected int p_LoadRegion_ID	= -1;
	protected int p_LoadCity_ID		= -1;
	protected int p_UnloadRegion_ID			= -1;
	protected int p_UnloadCity_ID			= -1;
	protected int p_LBR_NotaFiscal_ID	= -1;
	protected BigDecimal p_GrandTotal;
	protected String p_LBR_NFeID;
	
	/**
	 *  Prepare - e.g., get Parameters.
	 */
	protected void prepare()
	{
		ProcessInfoParameter[] para = getParameter();
		for (int i = 0; i < para.length; i++)
		{
			String name = para[i].getParameterName();
			if (para[i].getParameter() == null)
				;
			
			else if (name.equals(MLBRNotaFiscal.COLUMNNAME_LBR_NotaFiscal_ID))
				p_LBR_NotaFiscal_ID = para[i].getParameterAsInt();
			
			else if (name.equals(MLBRMDFeUnload.COLUMNNAME_C_Region_ID))
				p_LoadRegion_ID = para[i].getParameterAsInt();
			
			else if (name.equals(MLBRMDFeUnload.COLUMNNAME_C_City_ID))
				p_LoadCity_ID = para[i].getParameterAsInt();
			
			else if (name.equals(MLBRMDFe.COLUMNNAME_LBR_EndRegion_ID))
				p_UnloadRegion_ID = para[i].getParameterAsInt();
			
			else if (name.equals("LBR_UnloadCity_ID"))
				p_UnloadCity_ID = para[i].getParameterAsInt();
			
			else if (name.equals(MLBRMDFeUnloadDoc.COLUMNNAME_GrandTotal))
				p_GrandTotal = para[i].getParameterAsBigDecimal();
			
			else if (name.equals(MLBRMDFeUnloadDoc.COLUMNNAME_lbr_NFeID))
				p_LBR_NFeID = para[i].getParameterAsString();
			
			else
				log.log(Level.SEVERE, "prepare - Unknown Parameter: " + name);
		}
		//
		p_Record_ID = getRecord_ID();
		
		//	Override in case a Nota Fiscal is valid
		if (p_LBR_NotaFiscal_ID > 0)
		{
			MLBRNotaFiscal nf = new MLBRNotaFiscal (getCtx(), p_LBR_NotaFiscal_ID, get_TrxName());
			p_LBR_NFeID = nf.getlbr_NFeID();
			p_GrandTotal = nf.getGrandTotal();
			//
			if (nf.getC_BPartner_Location_ID() > 0)
			{
				p_UnloadRegion_ID = nf.getC_BPartner_Location().getC_Location().getC_Region_ID();
				p_UnloadCity_ID = nf.getC_BPartner_Location().getC_Location().getC_City_ID();
			}
			//
			if (nf.getOrg_Location_ID() > 0)
			{
				p_LoadRegion_ID = nf.getOrg_Location().getC_Region_ID();
				p_LoadCity_ID = nf.getOrg_Location().getC_City_ID();
			}
		}
	}	//	prepare

	/**
	 *  Perform process.
	 *  @return Message
	 *  @throws Exception if not successful
	 */
	protected String doIt () 
	{
		if (p_LoadCity_ID < 0)
			throw new AdempiereException ("Cidade de carregamento não encontrada.");
		if (p_UnloadCity_ID < 0)
			throw new AdempiereException ("Cidade de descarregamento não encontrada.");
		
		I_W_C_City loadCity = POWrapper.create (new MCity (getCtx(), p_LoadCity_ID, null), I_W_C_City.class);
		I_W_C_City unloadCity = POWrapper.create (new MCity (getCtx(), p_UnloadCity_ID, null), I_W_C_City.class);

		if (loadCity.getlbr_CityCode() < 0)
			throw new AdempiereException ("Código da Cidade de carregamento não encontrado.");
		if (unloadCity.getlbr_CityCode() < 0)
			throw new AdempiereException ("Código da Cidade de descarregamento não encontrado.");
		
		int count = DB.getSQLValue (get_TrxName(), "SELECT COUNT(*) FROM LBR_MDFeUnloadDoc ud, LBR_MDFeUnload u WHERE ud.lbr_NFeID=? AND u.LBR_MDFeUnload_ID=ud.LBR_MDFeUnload_ID AND u.LBR_MDFe_ID=?", p_LBR_NFeID, p_Record_ID);
		
		if (count != 0)
			throw new AdempiereException ("Documento Fiscal já cadastrado anteriormente para este manifesto");
		
		MLBRMDFe mdfe = new MLBRMDFe (getCtx(), p_Record_ID, get_TrxName());
		
		/**
		 * 	Evento de Inclusão de NF-e
		 */
		EvIncDFeMDFeDocument incDoc = EvIncDFeMDFeDocument.Factory.newInstance();
		EvIncDFeMDFeDocument.EvIncDFeMDFe inc = incDoc.addNewEvIncDFeMDFe();
		inc.setDescEvento (EvIncDFeMDFeDocument.EvIncDFeMDFe.DescEvento.INCLUSAO_DF_E);
		inc.setNProt(mdfe.getlbr_NFeProt());
		inc.setCMunCarrega(String.valueOf (loadCity.getlbr_CityCode()));
		inc.setXMunCarrega(loadCity.getName());
		
		InfDoc infDoc = inc.addNewInfDoc();
		infDoc.setChNFe(p_LBR_NFeID);
		infDoc.setCMunDescarga(String.valueOf (unloadCity.getlbr_CityCode()));
		infDoc.setXMunDescarga(unloadCity.getName());
		
		//	Contador de Documentos adicionados
		count = DB.getSQLValue (get_TrxName(), "SELECT COUNT(*)+1 FROM LBR_MDFeUnloadDoc ud, LBR_MDFeUnload u WHERE ud.lbr_NFeProt IS NOT NULL AND u.LBR_MDFeUnload_ID=ud.LBR_MDFeUnload_ID AND u.LBR_MDFe_ID=?", mdfe.getLBR_MDFe_ID());
		
		try
		{
			RetEventoMDFeDocument ret = MDFeRegEvento.registerEvent (mdfe, new Timestamp (System.currentTimeMillis()), MDFeUtil.EVENTO_INCLUSAO_DFE, count, inc.newCursor());
			//
			if (MDFeUtil.STATUS_EVENTO_VINCULADO.equals (ret.getRetEventoMDFe().getInfEvento().getCStat()))
			{
				//	Add Attachment Entry
				MAttachment attachment = mdfe.createAttachment ();
				//
				attachment.addEntry (new File (TextUtil.generateTmpFile (ret.xmlText (NFeUtil.getXmlOpt()), ret.getRetEventoMDFe().getInfEvento().getId() + "-resp.xml")));
				attachment.save();
				//
				attachment.addEntry (new File (TextUtil.generateTmpFile (incDoc.xmlText (NFeUtil.getXmlOpt()), ret.getRetEventoMDFe().getInfEvento().getId() + "-evento.xml")));
				attachment.save();
				
				MLBRMDFeUnload up = mdfe.getUnloadPlace(p_UnloadCity_ID);
				if (up == null)
				{
					up = new MLBRMDFeUnload(getCtx(), get_TrxName(), p_Record_ID, p_UnloadRegion_ID, p_UnloadCity_ID);
					up.save();
				}
				
				MLBRMDFeUnloadDoc doc = new MLBRMDFeUnloadDoc (up);
				doc.setLBR_MDFeDocType(MLBRMDFeUnloadDoc.LBR_MDFEDOCTYPE_NF_E);
				doc.setlbr_NFeID(p_LBR_NFeID);
				doc.setGrandTotal(p_GrandTotal);
				doc.setlbr_NFeProt(ret.getRetEventoMDFe().getInfEvento().getNProt());
				doc.setDateTrx(TextUtil.stringToTime(ret.getRetEventoMDFe().getInfEvento().getDhRegEvento(), "yyyy-MM-dd'T'HH:mm:ss"));
				doc.save();
				
				return "@Success@ " + ret.getRetEventoMDFe().getInfEvento().getCStat() + "-" + ret.getRetEventoMDFe().getInfEvento().getXMotivo();
			}
			else
				throw new AdempiereException (ret.getRetEventoMDFe().getInfEvento().getCStat() + "-" + ret.getRetEventoMDFe().getInfEvento().getXMotivo());
		}
		catch (Exception e)
		{
			e.printStackTrace();
			//
			return "@Error@ " + e.getMessage();
		}
	}	//	doIt
}	//	MDFeRegEvento
