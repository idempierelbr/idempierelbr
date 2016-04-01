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

import org.compiere.util.Env;
import org.idempierelbr.sped.annotation.XMLFieldProperties;
import org.idempierelbr.sped.icmsipi.util.RegSped;


import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;

/**
 * REGISTRO E200: PERÍODO DA APURAÇÃO DO ICMS - SUBSTITUIÇÃO TRIBUTÁRIA.
 * 
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RE200.java, 14/06/2011, 12:13:00, mgrigioni
 */
public class RE200 extends RegSped {

	@XStreamAlias("Id")
	@XStreamAsAttribute
	@XMLFieldProperties(id = "UF", maxSize = 2, minSize = 2)
	private String UF;

	@XMLFieldProperties(id = "DT_INI", maxSize = 8, minSize = 8, isNumber = true)
	private Timestamp DT_INI;

	@XMLFieldProperties(id = "DT_FIN", maxSize = 8, minSize = 8, isNumber = true)
	private Timestamp DT_FIN;

	@XMLFieldProperties(id = "RE210", isSPEDField = false)
	private RE210 rE210;

	/**
	 * Constructor
	 * 
	 * @param UF
	 * @param DT_INI
	 * @param DT_FIN
	 */
	public RE200() {
		super();
	} // RE200

	public RE210 getrE210() {
		return rE210;
	}

	public void setrE210(RE210 rE210) {
		this.rE210 = rE210;
	}

	public String getUF() {
		return UF;
	}

	public void setUF(String uF) {
		UF = uF;
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

	public void addValuesE210(BigDecimal VL_DEVOL_ST, BigDecimal VL_RETENCAO_ST)
	{
		if (getrE210() == null)
			return;
		
		getrE210().setVL_DEVOL_ST(getrE210().getVL_DEVOL_ST().add(VL_DEVOL_ST));
		getrE210().setVL_RETENCAO_ST(getrE210().getVL_RETENCAO_ST().add(VL_RETENCAO_ST));
		
		
		/*
		 * Ajustar valores
		 * (VL_RETENCAO_ST + VL_OUT_DEB_ST + VL_AJ_DEBITOS_ST) - (VL_SLD_CRED_ANT_ST + VL_DEVOL_ST + VL_RESSARC_ST + VL_OUT_CRED_ST + VL_AJ_CREDITOS_ST)
		 */
		BigDecimal result = (getrE210().getVL_RETENCAO_ST()
						.add(getrE210().getVL_OUT_DEB_ST())
						.add(getrE210().getVL_AJ_DEBITOS_ST()))
				.subtract(getrE210().getVL_SLD_CRED_ANT_ST()
						.add(getrE210().getVL_DEVOL_ST())
						.add(getrE210().getVL_RESSARC_ST())
						.add(getrE210().getVL_OUT_CRED_ST())
						.add(getrE210().getVL_AJ_CREDITOS_ST()));

		/*
		 * SE RESULTADO FOR > 0 ENTAO 
		 *	VL_SLD_DEV_ANT_ST = RESULTADO
		 *	VL_SLD_CRED_ST_TRANSPORTAR = 0
		 * SENAO 
		 * 	VL_SLD_CRED_ST_TRANSPORTAR = RESULTADO
		 * 	VL_SLD_DEV_ANT_ST = 0

		 */
		if(result.signum() == 1)
		{
			getrE210().setVL_SLD_DEV_ANT_ST(result.setScale(2, RoundingMode.HALF_UP));
			getrE210().setVL_SLD_CRED_ST_TRANSPORTAR(Env.ZERO);
		}
		else
		{
			getrE210().setVL_SLD_DEV_ANT_ST(Env.ZERO);
			getrE210().setVL_SLD_CRED_ST_TRANSPORTAR(result.setScale(2, RoundingMode.HALF_UP));			
		}
		
		/*
 	 	 * ST a recolher
 	 	 * 
 	 	 * VL_SLD_DEV_ANT_ST - VL_DEDUCOES_ST
		 */
		getrE210().setVL_ICMS_RECOL_ST(getrE210().getVL_SLD_DEV_ANT_ST().subtract(getrE210().getVL_DEDUCOES_ST()).setScale(2, RoundingMode.HALF_UP));
	}
	
	
	@Override
	public int hashCode() 
	{
		final int prime = 31;
		int result = super.hashCode();
		
		result = prime * result	+ ((DT_INI == null) ? 0 : DT_INI.hashCode());
		result = prime * result	+ ((DT_FIN == null) ? 0 : DT_FIN.hashCode());
		result = prime * result	+ ((UF == null) ? 0 : UF.hashCode());
		
		return result;
	}

	
	@Override
	public boolean equals(Object obj) 
	{
		if (this == obj)
			return true;
		if (!super.equals(obj))
			return false;
		if (getClass() != obj.getClass())
			return false;
		
		
		RE200 other = (RE200) obj;
		
		if (DT_INI == null && other.DT_INI != null) 
				return false;
		
		else if (DT_FIN == null && other.DT_FIN != null) 
			return false;
	
		else if (DT_FIN != null && other.DT_FIN == null) 
			return false;
		
		else if (DT_INI.compareTo(other.DT_INI) != 0)
			return false;
		
		else if (DT_FIN.compareTo(other.DT_FIN) != 0)
			return false;
		
		else if (UF == null && other.UF != null)
			return false;
		
		else if (!UF.equals(other.UF))			
			return false;
		
		return true;
	}
	
	
	@Override
	public int compareTo(Object o) {
		// TODO Auto-generated method stub
		return 0;
	}

} // RE200