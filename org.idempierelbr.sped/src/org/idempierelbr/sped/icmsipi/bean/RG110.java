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
import java.math.RoundingMode;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import org.compiere.util.Env;
import org.idempierelbr.sped.annotation.XMLFieldProperties;
import org.idempierelbr.sped.icmsipi.util.RegSped;


import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;

/**
 * REGISTRO G110 – ICMS – ATIVO PERMANENTE – CIAP
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RG110.java, 23/03/2011, 16:48:00, mgrigioni
 * 
 * @author Claudemir Todo Bom http://todobom.com
 * @version $ 15/02/2013 11:12 $
 */
public class RG110 extends RegSped
{
	
	@XStreamAlias("Id")
	@XStreamAsAttribute
	@XMLFieldProperties(id = "DT_INI")
	private Timestamp DT_INI;
	@XMLFieldProperties(id = "DT_FIN")
	private Timestamp DT_FIN;
	
	@XMLFieldProperties(id = "SALDO_IN_ICMS")
	private BigDecimal SALDO_IN_ICMS;

	@XMLFieldProperties(id = "SOM_PARC")
	private BigDecimal SOM_PARC;
	
	@XMLFieldProperties(id = "VL_TRIB_EXP")
	private BigDecimal VL_TRIB_EXP;
	
	@XMLFieldProperties(id = "VL_TOTAL")
	private BigDecimal VL_TOTAL;

	@XMLFieldProperties(id = "IND_PER_SAI" , scale = 4)
	private BigDecimal IND_PER_SAI;
	
	@XMLFieldProperties(id = "ICMS_APROP")
	private BigDecimal ICMS_APROP;
	
	@XMLFieldProperties(id = "SOM_ICMS_OC")
	private BigDecimal SOM_ICMS_OC;
	
	@XMLFieldProperties(id = "RG125", isSPEDField = false)
	private List<RG125> rG125 = new ArrayList<RG125>();

	public void setValues(BigDecimal vTrib , BigDecimal vTotal ) {
		this.VL_TRIB_EXP = vTrib;
		this.VL_TOTAL = vTotal;
		// evita divisão por zero
		if ( vTotal.compareTo(Env.ZERO)==0 ) {
			this.IND_PER_SAI = Env.ZERO;
		} else {
			this.IND_PER_SAI = vTrib.divide(vTotal, 4, RoundingMode.HALF_UP);
		}
	}
	
	public void Update() {
		this.SALDO_IN_ICMS = Env.ZERO;
		this.SOM_ICMS_OC = Env.ZERO;
		this.SOM_PARC = Env.ZERO;
		for ( RG125 aux_rg125 : rG125 ) {
			this.SALDO_IN_ICMS = this.SALDO_IN_ICMS.add(aux_rg125.getVL_IMOB_ICMS_DIF())
					.add(aux_rg125.getVL_IMOB_ICMS_FRT())
					.add(aux_rg125.getVL_IMOB_ICMS_OP())
					.add(aux_rg125.getVL_IMOB_ICMS_ST());
			this.SOM_PARC = this.SOM_PARC.add(aux_rg125.getVL_PARC_PASS());
		}
		this.ICMS_APROP = this.SOM_PARC.multiply(this.IND_PER_SAI);
	}
	
	public Timestamp getDT_INI() {
		return DT_INI;
	}

	public void setDT_INI(Timestamp dT_INI) {
		DT_INI = dT_INI;
	}

	public Timestamp getDT_FIN() {
		return DT_FIN;
	}

	public void setDT_FIN(Timestamp dT_FIN) {
		DT_FIN = dT_FIN;
	}

	public void addrG125(RG125 rg125) {
		if (rg125==null)
			return;
		this.rG125.add(rg125);
	}

	public BigDecimal getSALDO_IN_ICMS() {
		return SALDO_IN_ICMS;
	}

	public void setSALDO_IN_ICMS(BigDecimal sALDO_IN_ICMS) {
		SALDO_IN_ICMS = sALDO_IN_ICMS;
	}

	public BigDecimal getSOM_PARC() {
		return SOM_PARC;
	}

	public void setSOM_PARC(BigDecimal sOM_PARC) {
		SOM_PARC = sOM_PARC;
	}

	public BigDecimal getVL_TRIB_EXP() {
		return VL_TRIB_EXP;
	}

	public void setVL_TRIB_EXP(BigDecimal vL_TRIB_EXP) {
		VL_TRIB_EXP = vL_TRIB_EXP;
	}

	public BigDecimal getVL_TOTAL() {
		return VL_TOTAL;
	}

	public void setVL_TOTAL(BigDecimal vL_TOTAL) {
		VL_TOTAL = vL_TOTAL;
	}

	public BigDecimal getIND_PER_SAI() {
		return IND_PER_SAI;
	}

	public void setIND_PER_SAI(BigDecimal iND_PER_SAI) {
		IND_PER_SAI = iND_PER_SAI;
	}

	public BigDecimal getICMS_APROP() {
		return ICMS_APROP;
	}

	public void setICMS_APROP(BigDecimal iCMS_APROP) {
		ICMS_APROP = iCMS_APROP;
	}

	public BigDecimal getSOM_ICMS_OC() {
		return SOM_ICMS_OC;
	}

	public void setSOM_ICMS_OC(BigDecimal sOM_ICMS_OC) {
		SOM_ICMS_OC = sOM_ICMS_OC;
	}

	public List<RG125> getrG125() {
		return rG125;
	}

	public void setrG125(List<RG125> rG125) {
		this.rG125 = rG125;
	}
	
} //RG110