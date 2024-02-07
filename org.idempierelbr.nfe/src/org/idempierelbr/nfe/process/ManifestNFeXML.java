package org.idempierelbr.nfe.process;

import java.util.ArrayList;
import java.util.logging.Level;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.idempierelbr.base.model.MLBRNFeXML;
import org.idempierelbr.base.model.MLBRNotaFiscalEvent;
import org.idempierelbr.base.model.MLBRNotaFiscalEventLine;
import org.idempierelbr.nfe.util.NFeEventUtil;

public class ManifestNFeXML extends SvrProcess
{
	private int p_AD_Org_ID = 0;
	private String p_LBR_SchemaName = null;
	private String p_LBR_NSU_From = null;
	private String p_LBR_NSU_To = null;
	private String p_LBR_UltimaManifestacao = null;
	private String p_LBR_NovaManifestacao = null;

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
			else if (name.equals("LBR_SchemaName"))
				p_LBR_SchemaName = para[i].getParameterAsString();
			else if (name.equals("LBR_NSU")) {
				p_LBR_NSU_From = (String) para[i].getParameter();
				p_LBR_NSU_To = (String) para[i].getParameter_To();
			}
			else if (name.equals("LBR_UltimaManifestacao"))
				p_LBR_UltimaManifestacao = para[i].getParameterAsString();
			else if (name.equals("LBR_NovaManifestacao"))
				p_LBR_NovaManifestacao = para[i].getParameterAsString();
			else {
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
			}
		}
	}
	
	@Override
	protected String doIt() throws Exception {
		if (p_AD_Org_ID == 0)
			throw new Exception("No Organization defined");
		
		if (p_LBR_UltimaManifestacao == null || p_LBR_NovaManifestacao == null)
			throw new Exception("Please fill mandatory fields!");
		
		if (p_LBR_NSU_From == null || p_LBR_NSU_From.length() != 15)		
			p_LBR_NSU_From = "000000000000000";
		
		StringBuilder sql = new StringBuilder();
		sql.append("SELECT LBR_NFeXML_ID")
			.append(" FROM LBR_NFEXML")
			.append(" WHERE AD_Org_ID = ?")
			.append(" AND LBR_NSU >= ?");
		
		if (p_LBR_NSU_To != null && p_LBR_NSU_To.length() == 15)
			sql.append(" AND LBR_NSU <= ?");
		
		if (p_LBR_SchemaName != null && !p_LBR_SchemaName.isEmpty())
			sql.append(" AND LBR_SchemaName LIKE ?");
		
		if (p_LBR_UltimaManifestacao.equals("0"))
			sql.append(" AND LBR_UltimaManifestacao IS NULL");
		else
			sql.append(" AND LBR_UltimaManifestacao = ?");
		
		ArrayList<Object> params = new ArrayList<Object>();
		params.add(p_AD_Org_ID);
		params.add(p_LBR_NSU_From);
		
		if (p_LBR_NSU_To != null && p_LBR_NSU_To.length() == 15)
			params.add(p_LBR_NSU_To);
		
		if (p_LBR_SchemaName != null && !p_LBR_SchemaName.isEmpty())
			params.add(p_LBR_SchemaName);
		
		if (!p_LBR_UltimaManifestacao.equals("0"))
			params.add(p_LBR_UltimaManifestacao);		
		
		int[] ids = DB.getIDsEx(get_TrxName(), sql.toString(), params.toArray());
		
		for (int LBR_NFeXML_ID : ids) {
			MLBRNFeXML nfeXML = new MLBRNFeXML(getCtx(), LBR_NFeXML_ID, get_TrxName());
			
			MLBRNotaFiscalEvent event = new MLBRNotaFiscalEvent(getCtx(), 0, get_TrxName());
			event.setAD_Org_ID(nfeXML.getAD_Org_ID());
			event.saveEx();
			
			MLBRNotaFiscalEventLine line = new MLBRNotaFiscalEventLine(getCtx(), 0, get_TrxName());
			line.setLBR_NotaFiscalEvent_ID(event.get_ID());
			line.setAD_Org_ID(nfeXML.getAD_Org_ID());
			line.setLBR_NFeEventType(MLBRNotaFiscalEventLine.LBR_NFEEVENTTYPE_Manifest);
			line.setLBR_NFeEventSeqNo(1); // TODO
			line.setLBR_TipoDeManifestacao(p_LBR_NovaManifestacao);
			line.setLBR_NFeXML_ID(LBR_NFeXML_ID);
			line.saveEx();
			
			commitEx();
			
			NFeEventUtil eventUtil = new NFeEventUtil(event);
			eventUtil.sendLot();
		}
		
		return "Ok";
	}
}
