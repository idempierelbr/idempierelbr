package org.idempierelbr.nfs.nacional.util;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;

import org.compiere.model.MAttachment;
import org.compiere.model.MAttachmentEntry;
import org.compiere.model.PO;

/**
 * Leitura e gravacao de anexos por nome (XML autorizado, eventos, DANFSe).
 */
public class AttachmentUtil {

	/**
	 * Grava o anexo {@code name}, substituindo uma entrada de mesmo nome se ja
	 * existir (reimpressao do DANFSe, nova consulta da NFS-e etc.).
	 */
	public static void put(PO po, String name, byte[] data) {
		MAttachment att = po.createAttachment();
		for (int i = att.getEntryCount() - 1; i >= 0; i--) {
			if (name.equals(att.getEntry(i).getName()))
				att.deleteEntry(i);
		}
		att.addEntry(name, data);
		att.saveEx();
	}

	/** Conteudo do anexo {@code name}, ou null se nao existir. */
	public static byte[] get(PO po, String name) throws Exception {
		MAttachment att = po.getAttachment();
		if (att == null)
			return null;
		for (int i = 0; i < att.getEntryCount(); i++) {
			MAttachmentEntry entry = att.getEntry(i);
			if (!name.equals(entry.getName()))
				continue;
			try (ByteArrayOutputStream bos = new ByteArrayOutputStream(); InputStream is = entry.getInputStream()) {
				byte[] buf = new byte[4096];
				int n;
				while ((n = is.read(buf)) != -1)
					bos.write(buf, 0, n);
				return bos.toByteArray();
			}
		}
		return null;
	}

	/** Nome do anexo com o XML autorizado da NFS-e */
	public static String nfseXmlName(String chave) {
		return "NFSe-" + chave + ".xml";
	}
}
