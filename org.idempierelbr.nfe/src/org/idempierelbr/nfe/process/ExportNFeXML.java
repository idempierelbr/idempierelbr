package org.idempierelbr.nfe.process;

import java.io.File;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.logging.Level;

import org.adempiere.exceptions.AdempiereException;
import org.apache.commons.io.FileUtils;
import org.apache.tools.ant.Project;
import org.apache.tools.ant.Target;
import org.apache.tools.ant.taskdefs.Zip;
import org.compiere.model.MAttachment;
import org.compiere.model.MAttachmentEntry;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.idempierelbr.nfe.model.MLBRNotaFiscal;

public class ExportNFeXML extends SvrProcess
{
	private int p_AD_Org_ID = 0;
	private static Timestamp p_DateDoc_From;
	private static Timestamp p_DateDoc_To;
	private String p_LBR_IsDocIssuedByOrg = null;
	
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
			else if (name.equals("DateDoc")) {
				p_DateDoc_From = (Timestamp)para[i].getParameter();
				p_DateDoc_To = (Timestamp)para[i].getParameter_To();
			} else if (name.equals("LBR_IsDocIssuedByOrg"))
				p_LBR_IsDocIssuedByOrg = para[i].getParameterAsString();
			else {
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
			}
		}
	}
	
	@Override
	protected String doIt() throws Exception {
		if (p_AD_Org_ID == 0)
			throw new Exception("No Organization defined");
		
		if (p_DateDoc_From == null && p_DateDoc_To == null) {
			throw new Exception("No date interval defined");
		}
		
		ArrayList<File> files = new ArrayList<File>();
		StringBuilder sql = new StringBuilder("SELECT * FROM LBR_NotaFiscal nf WHERE ");
		sql.append("AD_Org_ID=? AND ");
		
		if (p_LBR_IsDocIssuedByOrg != null)
			sql.append("LBR_IsDocIssuedByOrg=? AND ");
		
		if (p_DateDoc_From != null && p_DateDoc_To != null)
			sql.append("TRUNC(nf.DateDoc) BETWEEN ? AND ?");
		else if (p_DateDoc_From != null && p_DateDoc_To == null)
			sql.append("TRUNC(nf.DateDoc) >= ?");
		else if (p_DateDoc_From == null && p_DateDoc_To != null)
			sql.append("TRUNC(nf.DateDoc) <= ?");

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int count = 0;
		Zip zipper = new Zip();
		
		try {
			int index = 1;
			pstmt = DB.prepareStatement (sql.toString(), get_TrxName());
			pstmt.setInt(index++, p_AD_Org_ID);
			
			if (p_LBR_IsDocIssuedByOrg != null)
				pstmt.setString(index++, p_LBR_IsDocIssuedByOrg);
			
			if (p_DateDoc_From != null && p_DateDoc_To != null)
			{
				pstmt.setTimestamp(index++, p_DateDoc_From);
				pstmt.setTimestamp(index++, p_DateDoc_To);
			}
			else if (p_DateDoc_From != null && p_DateDoc_To == null)
				pstmt.setTimestamp(index++, p_DateDoc_From);
			else if (p_DateDoc_From == null && p_DateDoc_To != null)
				pstmt.setTimestamp(index++, p_DateDoc_To);
			
			rs = pstmt.executeQuery ();
			
			while (rs.next ()) {
				MLBRNotaFiscal nf = new MLBRNotaFiscal(getCtx(), rs, get_TrxName());
				MAttachment attach = nf.getAttachment(true);
				
				if (attach != null) {
					MAttachmentEntry[] entries = attach.getEntries();
					
					for (MAttachmentEntry mAttachmentEntry : entries) {
						if (mAttachmentEntry.getFile().getName().endsWith(".xml")) {
							files.add(mAttachmentEntry.getFile());
						}
					}
				}
			}
 		} finally {
			DB.close(rs, pstmt);
			rs = null; pstmt = null;
		}	
		
		File tempfolder;
		
		try {
			tempfolder = File.createTempFile("XMLs_", ".exported");
		    tempfolder.delete();
		    tempfolder.mkdir();
		} catch (IOException e1) {
			throw new AdempiereException("Problem creating temp folder", e1);
		}
		
		for (File file : files) {
			FileUtils.copyFile(file, new File(tempfolder + File.separator + file.getName()));
			count++;
		}

		File destZipFile = null;

		try {
			destZipFile = File.createTempFile("XMLs_exported_", ".zip");
		} catch (Throwable e) {
			throw new AdempiereException("Unable to create temp file", e);
		}
		
		destZipFile.delete();
		zipper.setDestFile(destZipFile);
		zipper.setBasedir(tempfolder);
	    zipper.setUpdate(false);
	    zipper.setCompress(true);
	    zipper.setCaseSensitive(false);
	    zipper.setFilesonly(true);
	    zipper.setTaskName("zip");
	    zipper.setTaskType("zip");
	    zipper.setProject(new Project());
	    zipper.setOwningTarget(new Target());
	    zipper.execute();
	    
	    if (count > 0)
	    	this.processUI.download(destZipFile);
		
		return "";
	}
	
}
