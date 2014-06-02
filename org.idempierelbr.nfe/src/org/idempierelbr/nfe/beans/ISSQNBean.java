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

public class ISSQNBean {

	private String vBC;
	private String vAliq;
	private String vISSQN;
	private String cMunFG;
	private String cListServ;
	private String vDeducao;
	private String vOutro;
	private String vDescIncond;
	private String vDescCond;
	private String vISSRet;
	private String indISS;
	private String cServico;
	private String cMun;
	private String cPais;
	private String nProcesso;
	private String indIncentivo;
	
	public String getvAliq() {
		return vAliq;
	}
	public void setvAliq(String vAliq) {
		if (vAliq != null)
			vAliq = vAliq.trim();
		
		this.vAliq = vAliq;
	}
	public String getvISSQN() {
		return vISSQN;
	}
	public void setvISSQN(String vISSQN) {
		if (vISSQN != null)
			vISSQN = vISSQN.trim();
		
		this.vISSQN = vISSQN;
	}
	public String getcMunFG() {
		return cMunFG;
	}
	public void setcMunFG(String cMunFG) {
		if (cMunFG != null)
			cMunFG = cMunFG.trim();
		
		this.cMunFG = cMunFG;
	}
	public String getcListServ() {
		return cListServ;
	}
	public void setcListServ(String cListServ) {
		if (cListServ != null)
			cListServ = cListServ.trim();
		
		this.cListServ = cListServ;
	}
	public String getvDeducao() {
		return vDeducao;
	}
	public void setvDeducao(String vDeducao) {
		if (vDeducao != null)
			vDeducao = vDeducao.trim();
		
		this.vDeducao = vDeducao;
	}
	public String getvOutro() {
		return vOutro;
	}
	public void setvOutro(String vOutro) {
		if (vOutro != null)
			vOutro = vOutro.trim();
		
		this.vOutro = vOutro;
	}
	public String getvDescIncond() {
		return vDescIncond;
	}
	public void setvDescIncond(String vDescIncond) {
		if (vDescIncond != null)
			vDescIncond = vDescIncond.trim();
		
		this.vDescIncond = vDescIncond;
	}
	public String getvDescCond() {
		return vDescCond;
	}
	public void setvDescCond(String vDescCond) {
		if (vDescCond != null)
			vDescCond = vDescCond.trim();
		
		this.vDescCond = vDescCond;
	}
	public String getvISSRet() {
		return vISSRet;
	}
	public void setvISSRet(String vISSRet) {
		if (vISSRet != null)
			vISSRet = vISSRet.trim();
		
		this.vISSRet = vISSRet;
	}
	public String getIndISS() {
		return indISS;
	}
	public void setIndISS(String indISS) {
		if (indISS != null)
			indISS = indISS.trim();
		
		this.indISS = indISS;
	}
	public String getcServico() {
		return cServico;
	}
	public void setcServico(String cServico) {
		if (cServico != null)
			cServico = cServico.trim();
		
		this.cServico = cServico;
	}
	public String getcMun() {
		return cMun;
	}
	public void setcMun(String cMun) {
		if (cMun != null)
			cMun = cMun.trim();
		
		this.cMun = cMun;
	}
	public String getcPais() {
		return cPais;
	}
	public void setcPais(String cPais) {
		if (cPais != null)
			cPais = cPais.trim();
		
		this.cPais = cPais;
	}
	public String getnProcesso() {
		return nProcesso;
	}
	public void setnProcesso(String nProcesso) {
		if (nProcesso != null)
			nProcesso = nProcesso.trim();
		
		this.nProcesso = nProcesso;
	}
	public String getIndIncentivo() {
		return indIncentivo;
	}
	public void setIndIncentivo(String indIncentivo) {
		if (indIncentivo != null)
			indIncentivo = indIncentivo.trim();
		
		this.indIncentivo = indIncentivo;
	}
	public String getvBC() {
		return vBC;
	}
	public void setvBC(String vBC) {
		if (vBC != null)
			vBC = vBC.trim();
	
		this.vBC = vBC;
	}

}