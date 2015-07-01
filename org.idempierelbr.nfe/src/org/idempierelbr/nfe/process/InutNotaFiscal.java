package org.idempierelbr.nfe.process;

import java.sql.Timestamp;
import java.util.Date;
import java.util.logging.Level;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.idempierelbr.core.util.RemoverAcentos;
import org.idempierelbr.nfe.model.MLBRNotaFiscalInut;

/**
 * 	Inutiliza uma NF ou uma Sequência de NF.
 * 
 *  @author Baseado na implementação original de Ricardo Santana (Kenos, www.kenos.com.br)
 */
public class InutNotaFiscal extends SvrProcess
{
	private int p_AD_Org_ID = 0;
	
	/** Ambiente da Sefaz			*/
	private String p_LBR_NFeEnv;
	
	/**	Data de Inutilização	  	*/
	private Timestamp p_DateDoc;
	
	/** Modelo de Nota Fiscal		*/
	private String p_LBR_NFBModel;
	
	/** Série da Nota Fiscal		*/
	private String p_LBR_NFeSerie;
	
	/**	Numeração de NF			  	*/
	private String p_DocumentNo;
	private String p_DocumentNo_To;
	
	/**	Justificativa			  	*/
	private String p_Just = "";	
	
	@Override
	protected void prepare() 
	{
		ProcessInfoParameter[] para = getParameter();
		
		for (int i = 0; i < para.length; i++)
		{
			String name = para[i].getParameterName();
			
			if (para[i].getParameter() == null)
				;
			else if (name.equals("AD_Org_ID"))
				p_AD_Org_ID = para[i].getParameterAsInt();
			else if (name.equals("LBR_NFeEnv"))
				p_LBR_NFeEnv = (String) para[i].getParameter();
			else if (name.equals("DateDoc"))
				p_DateDoc = (Timestamp) para[i].getParameter();
			else if (name.equals("LBR_NFBModel"))
				p_LBR_NFBModel = (String) para[i].getParameter();
			else if (name.equals("LBR_NFeSerie"))
				p_LBR_NFeSerie = (String) para[i].getParameter();
			else if (name.equals("DocumentNo")) {
				p_DocumentNo = (String) para[i].getParameter();
				p_DocumentNo_To = (String) para[i].getParameter_To();
			} else if (name.equals("LBR_Justification"))
				p_Just = (String) para[i].getParameter();
			else {
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
			}
		}
	}
	
	@Override
	protected String doIt() throws Exception {
		if (p_AD_Org_ID <= 0 ||
				p_LBR_NFeEnv == null ||
				p_LBR_NFBModel == null ||
				p_LBR_NFeSerie == null ||
				p_DocumentNo == null ||
				p_DocumentNo_To == null ||
				p_Just == null)	{
			throw new AdempiereException("Fill Mandatory Fields");
		}
		
		if (p_DateDoc == null)
			p_DateDoc = new Timestamp(new Date().getTime());
		
		if (p_Just.length() < 15 || p_Just.length() > 255)
			throw new AdempiereException("Justification should be >= 15 and <= 255 chars length");
		
		// Create Entrie
		MLBRNotaFiscalInut inut = new MLBRNotaFiscalInut(getCtx(), 0, get_TrxName());
		inut.setAD_Org_ID(p_AD_Org_ID);
		inut.setLBR_NFeEnv(p_LBR_NFeEnv);
		inut.setLBR_NFBModel(p_LBR_NFBModel);
		inut.setLBR_NFeSerie(p_LBR_NFeSerie);
		inut.setLBR_Number_Start(p_DocumentNo);
		inut.setLBR_Number_End(p_DocumentNo_To);
		inut.setLBR_Justification(RemoverAcentos.remover(p_Just));
		inut.setDateDoc(p_DateDoc);
		inut.saveEx();
		
		// Send requisition
		return inut.send();
	}
	
}
