package org.idempierelbr.base.model;

import java.sql.ResultSet;
import java.util.Properties;
import org.compiere.model.MAttachment;
import org.compiere.model.MAttachmentEntry;

public class MLBRNFeXML extends X_LBR_NFeXML {
	private static final long serialVersionUID = 1L;

	public MLBRNFeXML(Properties ctx, int LBR_NFeXML_ID, String trxName) {
		super(ctx, LBR_NFeXML_ID, trxName);
	}

	public MLBRNFeXML(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}

	public void deleteAttachments() {
		MAttachment attachNFe = getAttachment(true);
		
		if (attachNFe != null) {
			for (int i = attachNFe.getEntryCount() - 1; i >= 0; i--) 
				attachNFe.deleteEntry(i);
			
			attachNFe.saveEx();
		}
	}
	
	public void attachXML(String name, String xml) {
		MAttachment attachment = createAttachment();
		MAttachmentEntry entry = new MAttachmentEntry(name, xml.getBytes());
		attachment.addEntry(entry);
		attachment.saveEx();		
	}
}
