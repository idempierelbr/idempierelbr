package org.idempierelbr.nfe.model;

import java.sql.ResultSet;
import java.util.Properties;

import org.compiere.model.MBPartner;
import org.compiere.model.MBPartnerLocation;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MProduct;
import org.idempierelbr.tax.model.MLBRTax;

public class MLBRTaxNfe extends MLBRTax 
{
	/**
	 * 
	 */
	private static final long serialVersionUID = 2480872064120406187L;

	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int LBR_Tax_ID (0 create new)
	 *  @param String trx
	 */
	public MLBRTaxNfe (Properties ctx, int LBR_Tax_ID, String trx)
	{
		super (ctx, LBR_Tax_ID, trx);
	}	//	MLBRTaxNF

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRTaxNfe (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}	//	MLBRTaxNF
	
	/**
	 * 		Retorna o registro do imposto baseado na pesquisa
	 * 
	 * 		Não usar este método em Callouts, pois a Callout pode acioná-lo antes que 
	 * 			a linha tenha sido salva.
	 * 
	 * 	@param ctx context
	 * 	@param nfl line
	 * 	@param trxName transaction name
	 * 	@return Object Array (Taxes, Legal Msg, CFOP and CST) 
	 */
	public static Object[] getTaxes (Properties ctx, MLBRNotaFiscalLine nfl, String trxName)
	{
		MLBRNotaFiscal nf = new MLBRNotaFiscal (ctx, nfl.getLBR_NotaFiscal_ID(), trxName);
		MProduct p = new MProduct (ctx, nfl.getM_Product_ID(), trxName);
		MOrgInfo oi = MOrgInfo.get(ctx, nf.getAD_Org_ID(), trxName);
		MBPartner bp = new MBPartner (ctx, nf.getC_BPartner_ID(), trxName);
		MBPartnerLocation bpLoc = new MBPartnerLocation (ctx, nf.getC_BPartner_Location_ID(), trxName); 

		return getTaxes (ctx, nf.getC_DocType_ID(), nf.isSOTrx(),
				nf.get_ValueAsString("LBR_TransactionType"), p, oi, bp, bpLoc, nf.getDateDoc(), trxName);
	}	//	getTaxes
}	//	MLBRTaxNF
