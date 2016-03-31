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
package org.idempierelbr.sped.icmsipi.bean;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

import org.compiere.util.Env;
import org.idempierelbr.sped.annotation.XMLFieldProperties;
import org.idempierelbr.sped.icmsipi.util.RegSped;


import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;

/**
 * REGISTRO E210: APURAÇÃO DO ICMS – SUBSTITUIÇÃO TRIBUTÁRIA.
 * 
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RE210.java, 14/06/2011, 08:39:00, mgrigioni
 */
public class RE210 extends RegSped {

	@XStreamAlias("Id")
	@XStreamAsAttribute
	@XMLFieldProperties(id = "IND_MOV_ST")
	private String IND_MOV_ST;

	@XMLFieldProperties(id = "VL_SLD_CRED_ANT_ST")
	private BigDecimal VL_SLD_CRED_ANT_ST;

	@XMLFieldProperties(id = "VL_DEVOL_ST")
	private BigDecimal VL_DEVOL_ST;

	@XMLFieldProperties(id = "VL_RESSARC_ST")
	private BigDecimal VL_RESSARC_ST;

	@XMLFieldProperties(id = "VL_OUT_CRED_ST")
	private BigDecimal VL_OUT_CRED_ST;

	@XMLFieldProperties(id = "VL_AJ_CREDITOS_ST")
	private BigDecimal VL_AJ_CREDITOS_ST;

	@XMLFieldProperties(id = "VL_RETENCAO_ST")
	private BigDecimal VL_RETENCAO_ST;

	@XMLFieldProperties(id = "VL_OUT_DEB_ST")
	private BigDecimal VL_OUT_DEB_ST;

	@XMLFieldProperties(id = "VL_AJ_DEBITOS_ST")
	private BigDecimal VL_AJ_DEBITOS_ST;

	@XMLFieldProperties(id = "VL_SLD_DEV_ANT_ST")
	private BigDecimal VL_SLD_DEV_ANT_ST;

	@XMLFieldProperties(id = "VL_DEDUCOES_ST")
	private BigDecimal VL_DEDUCOES_ST;

	@XMLFieldProperties(id = "VL_ICMS_RECOL_ST")
	private BigDecimal VL_ICMS_RECOL_ST;

	@XMLFieldProperties(id = "VL_SLD_CRED_ST_TRANSPORTAR")
	private BigDecimal VL_SLD_CRED_ST_TRANSPORTAR;

	@XMLFieldProperties(id = "DEB_ESP_ST")
	private BigDecimal DEB_ESP_ST;

	@XMLFieldProperties(id = "RE250", isSPEDField = false)
	private List<RE250> rE250 = new ArrayList<RE250>();

	public RE210() {
		super();

	} // RE210

	public String getIND_MOV_ST() {
		return IND_MOV_ST;
	}

	public void setIND_MOV_ST(String iND_MOV_ST) {
		IND_MOV_ST = iND_MOV_ST;
	}

	public BigDecimal getVL_SLD_CRED_ANT_ST() {
		return VL_SLD_CRED_ANT_ST;
	}

	public void setVL_SLD_CRED_ANT_ST(BigDecimal vL_SLD_CRED_ANT_ST) {
		VL_SLD_CRED_ANT_ST = vL_SLD_CRED_ANT_ST;
	}

	public BigDecimal getVL_DEVOL_ST() {
		return VL_DEVOL_ST;
	}

	public void setVL_DEVOL_ST(BigDecimal vL_DEVOL_ST) {
		VL_DEVOL_ST = vL_DEVOL_ST;
	}

	public BigDecimal getVL_RESSARC_ST() {
		return VL_RESSARC_ST;
	}

	public void setVL_RESSARC_ST(BigDecimal vL_RESSARC_ST) {
		VL_RESSARC_ST = vL_RESSARC_ST;
	}

	public BigDecimal getVL_OUT_CRED_ST() {
		return VL_OUT_CRED_ST;
	}

	public void setVL_OUT_CRED_ST(BigDecimal vL_OUT_CRED_ST) {
		VL_OUT_CRED_ST = vL_OUT_CRED_ST;
	}

	public BigDecimal getVL_AJ_CREDITOS_ST() {
		return VL_AJ_CREDITOS_ST;
	}

	public void setVL_AJ_CREDITOS_ST(BigDecimal vL_AJ_CREDITOS_ST) {
		VL_AJ_CREDITOS_ST = vL_AJ_CREDITOS_ST;
	}

	public BigDecimal getVL_RETENCAO_ST() {
		return VL_RETENCAO_ST;
	}

	public void setVL_RETENCAO_ST(BigDecimal vL_RETENCAO_ST) {
		VL_RETENCAO_ST = vL_RETENCAO_ST;
	}

	public BigDecimal getVL_OUT_DEB_ST() {
		return VL_OUT_DEB_ST;
	}

	public void setVL_OUT_DEB_ST(BigDecimal vL_OUT_DEB_ST) {
		VL_OUT_DEB_ST = vL_OUT_DEB_ST;
	}

	public BigDecimal getVL_AJ_DEBITOS_ST() {
		return VL_AJ_DEBITOS_ST;
	}

	public void setVL_AJ_DEBITOS_ST(BigDecimal vL_AJ_DEBITOS_ST) {
		VL_AJ_DEBITOS_ST = vL_AJ_DEBITOS_ST;
	}

	public BigDecimal getVL_SLD_DEV_ANT_ST() {
		return VL_SLD_DEV_ANT_ST;
	}

	public void setVL_SLD_DEV_ANT_ST(BigDecimal vL_SLD_DEV_ANT_ST) {
		VL_SLD_DEV_ANT_ST = vL_SLD_DEV_ANT_ST;
	}

	public BigDecimal getVL_DEDUCOES_ST() {
		return VL_DEDUCOES_ST;
	}

	public void setVL_DEDUCOES_ST(BigDecimal vL_DEDUCOES_ST) {
		VL_DEDUCOES_ST = vL_DEDUCOES_ST;
	}

	public BigDecimal getVL_ICMS_RECOL_ST() {
		return VL_ICMS_RECOL_ST;
	}

	public void setVL_ICMS_RECOL_ST(BigDecimal vL_ICMS_RECOL_ST) {
		VL_ICMS_RECOL_ST = vL_ICMS_RECOL_ST;
	}

	public BigDecimal getVL_SLD_CRED_ST_TRANSPORTAR() {
		return VL_SLD_CRED_ST_TRANSPORTAR;
	}

	public void setVL_SLD_CRED_ST_TRANSPORTAR(
			BigDecimal vL_SLD_CRED_ST_TRANSPORTAR) {
		VL_SLD_CRED_ST_TRANSPORTAR = vL_SLD_CRED_ST_TRANSPORTAR;
	}

	public BigDecimal getDEB_ESP_ST() {
		return DEB_ESP_ST;
	}

	public void setDEB_ESP_ST(BigDecimal dEB_ESP_ST) {
		DEB_ESP_ST = dEB_ESP_ST;
	}

	public List<RE250> getrE250() {
		return rE250;
	}

	public void setrE250(List<RE250> rE250) {
		this.rE250 = rE250;
	}

	/**
	 * Ajustar valores referentes a devoluções nos E250
	 */
	public void subtractReversalRE250()
	{
		// 
		BigDecimal SLD_VL_DEVOL = getVL_DEVOL_ST();
		
		//
		for(RE250 reg : getrE250())
		{
		
			// se o valor do registro E250 for maior que o valor da devolução, então subtrair o valor do E250 e parar
			if ( getrE250().get(getrE250().indexOf(reg)).getVL_OR().compareTo(SLD_VL_DEVOL) == 1)
			{
				getrE250().get(getrE250().indexOf(reg)).setVL_OR(getrE250().get(getrE250().indexOf(reg)).getVL_OR().subtract(SLD_VL_DEVOL));
				SLD_VL_DEVOL = Env.ZERO;
				break;
			}
			
			// se o saldo das devoluções for maior, zerar o registro RE250 e subtrair o saldo das devoluções 
			else if(getrE250().get(getrE250().indexOf(reg)).getVL_OR().compareTo(SLD_VL_DEVOL)  <= 0)
			{
				//
				System.out.println("getrE250().indexOf(reg)).getVL_OR() >> " + getrE250().get(getrE250().indexOf(reg)).getVL_OR());
				
				//
				SLD_VL_DEVOL = SLD_VL_DEVOL.subtract(getrE250().get(getrE250().indexOf(reg)).getVL_OR());
				getrE250().get(getrE250().indexOf(reg)).setVL_OR(Env.ZERO);
			}				
		}
		
	}
	
	
	/**
	 * Adicionar registros E250
	 * 
	 * @param reg
	 */
	public void addrE250(RE250 reg) {
		this.rE250.add(reg);
	}

	@Override
	public int compareTo(Object o) {
		// TODO Auto-generated method stub
		return 0;
	}

} // RE210