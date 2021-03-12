/******************************************************************************
 * Product: ADempiereLBR - ADempiere Localization Brazil                      *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 *****************************************************************************/
package org.idempierelbr.nfe.beans;

import java.util.ArrayList;
import java.util.List;

import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;

@XStreamAlias("infNFe")
public class DadosNFE 
{
	// Dados da Nota Fiscal Eletronica
	@XStreamAsAttribute
	private String versao;
	@XStreamAsAttribute
	private String Id;
	private String pk_nitem;	
	private IdentNFE ide;
	private IdentEmit emit;
	private IdentFisco avulsa;
	private IdentDest dest;
	private IdentLocRetirada retirada;
	private IdentLocalEntrega entrega;
	private List<DetalhesProdServBean> det = new ArrayList<DetalhesProdServBean>();
	private Valores total;
	private Transporte transp;
	private Cobranca cobr;
	private List<FormasPagamentoNFEBean> pag = new ArrayList<FormasPagamentoNFEBean>();
	private InfIntermed infIntermed;
	private InfAdiFisco infAdic;
	private InfComex exporta;
	private InfAssinatura Signature;

	
	public String getVersao() {
		return versao;
	}
	public void setVersao(String versao) {
		this.versao = versao;
	}
	public String getPk_nitem() {
		return pk_nitem;
	}
	public void setPk_nitem(String pk_nitem) {
		this.pk_nitem = pk_nitem;
	}
	public IdentNFE getIde() {
		return ide;
	}
	public void setIde(IdentNFE ide) {
		this.ide = ide;
	}
	public IdentEmit getEmit() {
		return emit;
	}
	public void setEmit(IdentEmit emit) {
		this.emit = emit;
	}
	public IdentFisco getAvulsa() {
		return avulsa;
	}
	public void setAvulsa(IdentFisco avulsa) {
		this.avulsa = avulsa;
	}
	public IdentDest getDest() {
		return dest;
	}
	public void setDest(IdentDest dest) {
		this.dest = dest;
	}
	public IdentLocRetirada getRetirada() {
		return retirada;
	}
	public void setRetirada(IdentLocRetirada retirada) {
		this.retirada = retirada;
	}
	public IdentLocalEntrega getEntrega() {
		return entrega;
	}
	public void setEntrega(IdentLocalEntrega entrega) {
		this.entrega = entrega;
	}
	public Valores getTotal() {
		return total;
	}
	public void setTotal(Valores total) {
		this.total = total;
	}
	public Transporte getTransp() {
		return transp;
	}
	public void setTransp(Transporte transp) {
		this.transp = transp;
	}
	public Cobranca getCobr() {
		return cobr;
	}
	public void setCobr(Cobranca cobr) {
		this.cobr = cobr;
	}
	public InfAssinatura getSignature() {
		return Signature;
	}
	public void setSignature(InfAssinatura signature) {
		Signature = signature;
	}
	public String getId() {
		return Id;
	}
	public void setId(String id) {
		Id = id;
	}
	public void add(DetalhesProdServBean detailsNFEBean) {
        det.add(detailsNFEBean);
	}

	public List<DetalhesProdServBean> getContent() {
        return det;
	}
	
	public InfAdiFisco getInfAdic()
	{
		return infAdic;
	}
	public void setInfAdic(InfAdiFisco infAdic)
	{
		this.infAdic = infAdic;
	}
	public InfComex getExporta() {
		return exporta;
	}
	public void setExporta(InfComex exporta) {
		this.exporta = exporta;
	}
	public void addPag(FormasPagamentoNFEBean pagamento){
		this.pag.add(pagamento);
	}
	public List<FormasPagamentoNFEBean> getPag(){
		return pag;
	}
	public void setPag(List<FormasPagamentoNFEBean> pag){
		this.pag = pag;  
	}
	public InfIntermed getInfIntermed() {
		return infIntermed;
	}
	public void setInfIntermed(InfIntermed infIntermed) {
		this.infIntermed = infIntermed;
	}
}
