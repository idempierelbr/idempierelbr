package org.idempierelbr.base.model;

import java.sql.ResultSet;
import java.util.List;
import java.util.Properties;

import org.compiere.model.Query;

/**
 * Forma de pagamento informada na NF-e ({@code pag/detPag}).
 *
 * <p>É filha direta da nota, e não da {@link MLBRNotaFiscalPay}, apesar do nome
 * parecido: no layout, {@code pag} é obrigatório e irmão de {@code cobr}, que é
 * opcional. Uma nota à vista tem forma de pagamento sem ter fatura, então
 * pendurar esta tabela na de cobrança obrigaria a inventar uma fatura vazia só
 * para ter onde prender o pagamento.
 *
 * @author Alan Lescano
 */
public class MLBRNotaFiscalDetPag extends X_LBR_NotaFiscalDetPag {
	private static final long serialVersionUID = 1L;

	public MLBRNotaFiscalDetPag(Properties ctx, int LBR_NotaFiscalDetPag_ID, String trxName) {
		super(ctx, LBR_NotaFiscalDetPag_ID, trxName);
	}

	public MLBRNotaFiscalDetPag(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}

	/**
	 * Formas de pagamento de uma nota, na ordem em que foram gravadas.
	 */
	public static List<MLBRNotaFiscalDetPag> getOfNotaFiscal(MLBRNotaFiscal nf) {
		return new Query(nf.getCtx(), Table_Name, "LBR_NotaFiscal_ID=?", nf.get_TrxName())
			.setParameters(nf.get_ID())
			.setOnlyActiveRecords(true)
			.setOrderBy("LBR_NotaFiscalDetPag_ID")
			.list();
	}

	@Override
	public String toString() {
		return new StringBuilder("MLBRNotaFiscalDetPag[tPag=").append(getLBR_TPag())
			.append(", PayAmt=").append(getPayAmt())
			.append("]").toString();
	}
}
