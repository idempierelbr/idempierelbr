package org.idempierelbr.nfs.util;

import java.io.File;
import java.math.BigInteger;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;

import javax.xml.datatype.DatatypeConstants;
import javax.xml.datatype.DatatypeFactory;
import javax.xml.datatype.XMLGregorianCalendar;

import org.adempiere.base.Service;
import org.adempiere.base.ServiceQuery;
import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.MAttachment;
import org.compiere.model.MTax;
import org.compiere.model.MTaxProvider;
import org.compiere.model.X_C_TaxProviderCfg;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.idempierelbr.base.model.MLBRNFS;
import org.idempierelbr.base.util.TextUtil;
import org.idempierelbr.nfs.factory.INFSe;
import org.idempierelbr.nfs.factory.INFSeFactory;
import org.idempierelbr.nfs.model.NFSTaxProvider;
import org.idempierelbr.tax.provider.TaxProviderFactory;

public class NFSUtils {
	private MLBRNFS p_NFS;
	
	public NFSUtils(MLBRNFS nfs) {
		if (nfs == null)
			throw new AdempiereException("MLBRNFS não pode ser null");
		
		this.p_NFS = nfs;
	}
	
	public String generateXML() {

		String msg = null;

		try {

			// get nfs config and model
			String nfsModel = p_NFS.getNFSConfig().getLBR_NFSModel();

			// check nfs model
			if (nfsModel != null) {

				// get instance
				INFSe nfsInstance = NFSUtils.getNFSeInstance(nfsModel);
				if (nfsInstance == null) {
					throw new AdempiereException(
							"Plugin não encontrado para para o modelo de NFS-e "
									+ nfsModel);
				}

				// process 
				String xml = nfsInstance.generateXML(p_NFS);

				// delete any xml attachment
				MAttachment attachNFe = p_NFS.createAttachment();

				// create file
				File xmlFile = new File(TextUtil.generateTmpFile(xml,
						p_NFS.getDocumentNo() + "_nfse.xml"));

				// attach nf xml
				attachNFe.setAD_Org_ID(p_NFS.getAD_Org_ID());
				attachNFe.addEntry(xmlFile);
				attachNFe.save(p_NFS.get_TrxName());
			}

		} catch (Exception ex) {
			return "Falha ao gerar XML da NFS-e. Erro: " + ex.getMessage();
		}

		return msg;
	}
	
	/**
	 * Update Tax & Header
	 *
	 * @return true if header updated
	 */
	public boolean updateHeaderTax() {

		// Update header only if the document is not processed
		if (p_NFS.isProcessed() && !p_NFS.is_ValueChanged(MLBRNFS.COLUMNNAME_Processed))
			return true;

		MTax tax = new MTax(p_NFS.getCtx(), p_NFS.getC_Tax_ID(), p_NFS.get_TrxName());
		MTaxProvider provider = new MTaxProvider(tax.getCtx(),
				tax.getC_TaxProvider_ID(), tax.get_TrxName());
		NFSTaxProvider calculator = new NFSTaxProvider();
		if (!calculator.updateNFSTax(provider, p_NFS))
			return false;

		return calculator.updateHeaderTax(provider, p_NFS);
	} // updateHeaderTax
	
	/**
	 * Calculate Tax and Total
	 * 
	 * @return true if tax total calculated
	 */
	public boolean calculateTaxTotal() {
		log.fine("");
		// Delete Taxes
		DB.executeUpdateEx("DELETE FROM LBR_NFSTax WHERE LBR_NFS_ID=" + p_NFS.get_ID(),
				p_NFS.get_TrxName());
		p_NFS.m_taxes = null;

		MTaxProvider[] providers = p_NFS.getTaxProviders();
		for (MTaxProvider provider : providers) {
			if (provider.getC_TaxProviderCfg_ID() > 0) {
				X_C_TaxProviderCfg cfg = new X_C_TaxProviderCfg(p_NFS.getCtx(),
						provider.getC_TaxProviderCfg_ID(), p_NFS.get_TrxName());

				if (cfg.getTaxProviderClass() == null
						|| !cfg.getTaxProviderClass().equals(
								TaxProviderFactory.DEFAULT_TAX_PROVIDER))
					continue;
			}

			NFSTaxProvider calculator = new NFSTaxProvider();
			if (!calculator.calculateNFSTaxTotal(provider, p_NFS))
				return false;
		}
		return true;
	} // calculateTaxTotal

	/** Log */
	private static CLogger log = CLogger.getCLogger(NFSUtils.class);

	/** Timeout para envio de mensagens ao webservice */
	public static final int TIMEOUT_WS = 15000;

	/**
	 * Convert String to Log
	 * 
	 * @param longStr
	 * @return
	 */
	public static Long stringToLong(String longStr) {
		if (longStr == null || TextUtil.toNumeric(longStr).trim().isEmpty())
			return (long) 0;
		return new Long(TextUtil.toNumeric(longStr));
	} // toLong

	/**
	 * Convert String to Int
	 * 
	 * @param intStr
	 * @return
	 */
	public static int stringToInt(String intStr) {
		if (intStr == null)
			return 0;

		try {
			return Integer.parseInt(TextUtil.toNumeric(intStr));
		} catch (Exception e) {

			log.severe("stringToInt parse error: " + e.getMessage());
		}
		return 0;
	} // toInt

	/**
	 * Convert String to BigInt
	 * 
	 * @param intStr
	 * @return
	 */
	public static BigInteger stringToBigInteger(String intStr) {
		if (intStr == null)
			return null;

		try {
			return new BigInteger(intStr);

		} catch (Exception e) {
			log.severe("stringToBigInteger parse error: " + e.getMessage());
		}

		return null;
	} // toInt

	/**
	 * Convert String to Byte
	 * 
	 * @param intStr
	 * @return
	 */
	public static byte stringToByte(String intStr) {

		//
		if (intStr == null)
			return -1;

		try {
			return new Byte(intStr);

		} catch (Exception e) {
			log.severe("stringToByte parse error: " + e.getMessage());
		}

		return -1;
	} // toInt

	/**
	 * Convert String to BigInteger
	 * 
	 * @param intStr
	 * @return
	 */
	public static BigInteger stringToBigInt(String intStr) {

		//
		if (intStr == null)
			return null;

		try {
			return new BigInteger(intStr);

		} catch (Exception e) {
			log.severe("stringToByte parse error: " + e.getMessage());
		}

		return null;
	} // toInt

	/**
	 * Converte Date para XMLGregorianCalendar
	 * 
	 * @param date
	 * @return
	 */
	public static XMLGregorianCalendar dateToXMLGregorianCalendar(Date date,
			boolean isDateTime) {
		if (date == null)
			return null;

		try {
			GregorianCalendar cal = new GregorianCalendar();
			cal.setTime(date);

			XMLGregorianCalendar xmlDate = null;
			if (isDateTime)
				xmlDate = DatatypeFactory.newInstance()
						.newXMLGregorianCalendar(cal.get(Calendar.YEAR),
								cal.get(Calendar.MONTH) + 1,
								cal.get(Calendar.DAY_OF_MONTH),
								cal.get(Calendar.HOUR_OF_DAY),
								cal.get(Calendar.MINUTE),
								cal.get(Calendar.SECOND),
								DatatypeConstants.FIELD_UNDEFINED,
								DatatypeConstants.FIELD_UNDEFINED);
			else
				xmlDate = DatatypeFactory.newInstance()
						.newXMLGregorianCalendarDate(cal.get(Calendar.YEAR),
								cal.get(Calendar.MONTH) + 1,
								cal.get(Calendar.DAY_OF_MONTH),
								DatatypeConstants.FIELD_UNDEFINED);

			return xmlDate;

		} catch (Exception e) {
			log.severe("stringToByte parse error: " + e.getMessage());
		}

		return null;
	}

	/**
	 * Converte XMLGregorianCalendar para Date
	 * 
	 * @param xgc
	 * @return
	 */
	public static Date xmlGregorianCalendarToDate(XMLGregorianCalendar xgc) {
		if (xgc == null) {
			return null;
		} else {
			return xgc.toGregorianCalendar().getTime();
		}
	}

	/**
	 * Get NFS-e instance by NF-e Model / Player
	 * 
	 * @param value
	 * @return
	 */
	public static INFSe getNFSeInstance(String value) {

		ServiceQuery query = new ServiceQuery();
		List<INFSeFactory> factoryList = Service.locator()
				.list(INFSeFactory.class, query).getServices();
		if (factoryList != null) {
			for (INFSeFactory factory : factoryList) {
				INFSe nfsInstance = factory.newNFSeInstance(value);
				if (nfsInstance != null)
					return nfsInstance;
			}
		}
		return null;
	}

	/**
	 * Remove informações de namespace de uma string XML de retorno.
	 * 
	 * @param retorno
	 * @return
	 */
	public static String removeNameSpaceRetorno(String retorno) {
		retorno = retorno.replace(
				"xmlns=\"http://www.abrasf.org.br/ABRASF/arquivos/nfse.xsd\"",
				"");
		retorno = retorno.replace(
				"xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\"", "");
		retorno = retorno.replace(
				"xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\"", "");

		return retorno;
	}
}
