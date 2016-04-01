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
import java.math.BigInteger;
import java.math.RoundingMode;
import java.sql.Timestamp;

import org.compiere.util.Env;
import org.idempierelbr.sped.annotation.XMLFieldProperties;
import org.idempierelbr.sped.icmsipi.util.RegSped;


import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;

/**
 * REGISTRO G125 – MOVIMENTAÇÃO DE BEM OU COMPONENTE DO ATIVO IMOBILIZADO
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RG125.java, 23/03/2011, 16:35:00, mgrigioni
 * 
 * @author Claudemir Todo Bom http://todobom.com
 * @version $ 15/02/2013 11:12 $
 */
public class RG125 extends RegSped
{

	@XStreamAlias("Id")
	@XStreamAsAttribute
	@XMLFieldProperties(minSize = 1, maxSize = 60, id = "COD_IND_BEM")
	private String COD_IND_BEM;

	@XMLFieldProperties(id = "DT_MOV")
	private Timestamp DT_MOV;
	
	@XMLFieldProperties(minSize = 2, maxSize = 2, id = "TIPO_MOV")
	private String TIPO_MOV;
	
	@XMLFieldProperties(id = "VL_IMOB_ICMS_OP")
	private BigDecimal VL_IMOB_ICMS_OP;

	@XMLFieldProperties(id = "VL_IMOB_ICMS_ST")
	private BigDecimal VL_IMOB_ICMS_ST;

	@XMLFieldProperties(id = "VL_IMOB_ICMS_FRT")
	private BigDecimal VL_IMOB_ICMS_FRT;

	@XMLFieldProperties(id = "VL_IMOB_ICMS_DIF")
	private BigDecimal VL_IMOB_ICMS_DIF;

	@XMLFieldProperties(id = "NUM_PARC")
	private int NUM_PARC=0;

	@XMLFieldProperties(id = "VL_PARC_PASS")
	private BigDecimal VL_PARC_PASS;
	
	@XMLFieldProperties(id = "RG125", isSPEDField = false)
	private RG125 rG125;
	
	@XMLFieldProperties(id = "RG130", isSPEDField = false)
	private RG130 rG130;
	
	@XMLFieldProperties(id = "RG140", isSPEDField = false)
	private RG140 rG140;
	
	public BigDecimal getVL_IMOB_ICMS_OP(){
		return VL_IMOB_ICMS_OP == null ? Env.ZERO : VL_IMOB_ICMS_OP;
	}
	
	public BigDecimal getVL_IMOB_ICMS_DIF(){
		return VL_IMOB_ICMS_DIF == null ? Env.ZERO : VL_IMOB_ICMS_DIF;
	}
	
	public BigDecimal getVL_PARC_PASS(){
		return VL_PARC_PASS == null ? Env.ZERO : VL_PARC_PASS;
	}
	
	public String getTIPO_MOV(){
		return TIPO_MOV == null ? "" : TIPO_MOV;
	}
	
	public String getCOD_IND_BEM() {
		return COD_IND_BEM;
	}

	public void setCOD_IND_BEM(String cOD_IND_BEM) {
		COD_IND_BEM = cOD_IND_BEM;
	}

	public Timestamp getDT_MOV() {
		return DT_MOV;
	}

	public void setDT_MOV(Timestamp dT_MOV) {
		DT_MOV = dT_MOV;
	}

	public BigDecimal getVL_IMOB_ICMS_ST() {
		return VL_IMOB_ICMS_ST;
	}

	public void setVL_IMOB_ICMS_ST(BigDecimal vL_IMOB_ICMS_ST) {
		VL_IMOB_ICMS_ST = vL_IMOB_ICMS_ST;
		Recalculate();
	}

	public BigDecimal getVL_IMOB_ICMS_FRT() {
		return VL_IMOB_ICMS_FRT;
	}

	public void setVL_IMOB_ICMS_FRT(BigDecimal vL_IMOB_ICMS_FRT) {
		VL_IMOB_ICMS_FRT = vL_IMOB_ICMS_FRT;
		Recalculate();
	}

	public int getNUM_PARC() {
		return NUM_PARC;
	}

	public void setNUM_PARC(int nUM_PARC) {
		NUM_PARC = nUM_PARC;
		Recalculate();
	}

	public void setTIPO_MOV(String tIPO_MOV) {
		TIPO_MOV = tIPO_MOV;
	}

	public void setVL_IMOB_ICMS_OP(BigDecimal vL_IMOB_ICMS_OP) {
		VL_IMOB_ICMS_OP = vL_IMOB_ICMS_OP;
		Recalculate();
	}

	public void setVL_IMOB_ICMS_DIF(BigDecimal vL_IMOB_ICMS_DIF) {
		VL_IMOB_ICMS_DIF = vL_IMOB_ICMS_DIF;
		Recalculate();
	}
	
	public void setrG125(RG125 rG125) {
		this.rG125 = rG125;
	}

	public RG125 getrG125() {
		return rG125;
	}

	public RG130 getrG130() {
		return rG130;
	}

	public void setrG130(RG130 rG130) {
		this.rG130 = rG130;
	}
	
	public RG140 getrG140() {
		return rG140;
	}

	public void setrG140(RG140 rG140) {
		this.rG140 = rG140;
	}

	public void setVL_PARC_PASS(BigDecimal vL_PARC_PASS) {
		VL_PARC_PASS = vL_PARC_PASS;
	}

	private void Recalculate() {
		
		if (this.NUM_PARC==0) {
			return;
		}
		
		BigDecimal sum = new BigDecimal(new BigInteger("0"), 2);
		sum = sum.add(VL_IMOB_ICMS_OP);
		sum = sum.add(VL_IMOB_ICMS_ST);
		sum = sum.add(VL_IMOB_ICMS_FRT);
		sum = sum.add(VL_IMOB_ICMS_DIF);
		
		// FIXME: HARDCODED 48 PARCELAS
		this.VL_PARC_PASS = sum.divide(new BigDecimal("48"), 2, RoundingMode.HALF_UP);
		
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (!super.equals(obj))
			return false;
		if (getClass() != obj.getClass())
			return false;
		RG125 other = (RG125) obj;
		if (COD_IND_BEM == null) {
			if (other.COD_IND_BEM != null)
				return false;
		} else if (!COD_IND_BEM.equals(other.COD_IND_BEM))
			return false;
		if (TIPO_MOV == null) {
			if (other.TIPO_MOV != null)
				return false;
		} else if (!TIPO_MOV.equals(other.TIPO_MOV))
			return false;
		return true;
	}
		
} //RG125