package org.idempierelbr.nfe.beans;

import java.math.BigDecimal;

import org.compiere.model.I_M_Product;
import org.idempierelbr.nfe.model.X_LBR_NotaFiscalLine;

/**
 * Representa um produto utilizado na lista de produtos da DANFE NFC-e impressa.
 * @author talesruan
 *
 */
public class BeanProdNFCe {
	private String prodCodigo;
	private String prodNome;
	private BigDecimal prodQtde;
	private String prodUN;
	private BigDecimal prodVlUnit;
	private BigDecimal prodVlTotal;

	/**
	 * Construtor padrão
	 */
	public BeanProdNFCe(){
		
	}
	
	/**
	 * Construtor. Preenche o bean com os dados de uma linha de NF.
	 * @param nfLine
	 */
	public BeanProdNFCe(X_LBR_NotaFiscalLine nfLine){
		
		I_M_Product mProduct = nfLine.getM_Product();
		setProdCodigo(mProduct.getValue());
		setProdNome(mProduct.getName());
		setProdQtde(nfLine.getQty());
		setProdUN(nfLine.getC_UOM().getName());
		setProdVlUnit(nfLine.getPriceActual());
		setProdVlTotal(nfLine.getLineNetAmt());
	}
	
	public String getProdCodigo() {
		return prodCodigo;
	}
	public void setProdCodigo(String prodCodigo) {
		this.prodCodigo = prodCodigo;
	}
	public String getProdNome() {
		return prodNome;
	}
	public void setProdNome(String prodNome) {
		this.prodNome = prodNome;
	}
	public BigDecimal getProdQtde() {
		return prodQtde;
	}
	public void setProdQtde(BigDecimal prodQtde) {
		this.prodQtde = prodQtde;
	}
	public String getProdUN() {
		return prodUN;
	}
	public void setProdUN(String prodUN) {
		this.prodUN = prodUN;
	}
	public BigDecimal getProdVlUnit() {
		return prodVlUnit;
	}
	public void setProdVlUnit(BigDecimal prodVlUnit) {
		this.prodVlUnit = prodVlUnit;
	}
	public BigDecimal getProdVlTotal() {
		return prodVlTotal;
	}
	public void setProdVlTotal(BigDecimal prodVlTotal) {
		this.prodVlTotal = prodVlTotal;
	}
}
