package org.idempierelbr.nfe.acct;

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.util.ArrayList;
import org.compiere.acct.Doc;
import org.compiere.acct.Fact;
import org.compiere.model.MAcctSchema;
import org.compiere.util.Env;
import org.idempierelbr.nfe.model.MLBRNotaFiscal;


public class Doc_NotaFiscal extends Doc
{
	/**
	 *  Constructor
	 * 	@param as accounting schema
	 * 	@param rs record
	 * 	@param trxName trx
	 */
	public Doc_NotaFiscal (MAcctSchema as, ResultSet rs, String trxName)
	{
		super (as, MLBRNotaFiscal.class, rs, null, trxName);
	}

	@Override
	protected String loadDocumentDetails() {
		return null;
	}

	@Override
	public BigDecimal getBalance() {
		return Env.ZERO;
	}

	@Override
	public ArrayList<Fact> createFacts(MAcctSchema as) {
		return new ArrayList<Fact>();
	}
}
