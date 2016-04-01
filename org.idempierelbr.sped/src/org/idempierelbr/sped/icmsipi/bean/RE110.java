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

import org.idempierelbr.sped.annotation.XMLFieldProperties;
import org.idempierelbr.sped.icmsipi.util.RegSped;


import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;

/**
 * REGISTRO E110: APURAÇÃO DO ICMS – OPERAÇÕES PRÓPRIAS.
 * 
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RE110.java, 09/02/2011, 09:25:00, mgrigioni
 */
public class RE110 extends RegSped {

	@XStreamAlias("Id")
	@XStreamAsAttribute
	@XMLFieldProperties(id = "VL_TOT_DEBITOS")
	private BigDecimal VL_TOT_DEBITOS;

	@XMLFieldProperties(id = "VL_AJ_DEBITOS")
	private BigDecimal VL_AJ_DEBITOS;

	@XMLFieldProperties(id = "VL_TOT_AJ_DEBITOS")
	private BigDecimal VL_TOT_AJ_DEBITOS;

	@XMLFieldProperties(id = "VL_ESTORNOS_CRED")
	private BigDecimal VL_ESTORNOS_CRED;

	@XMLFieldProperties(id = "VL_TOT_CREDITOS")
	private BigDecimal VL_TOT_CREDITOS;

	@XMLFieldProperties(id = "VL_AJ_CREDITOS")
	private BigDecimal VL_AJ_CREDITOS;

	@XMLFieldProperties(id = "VL_TOT_AJ_CREDITOS")
	private BigDecimal VL_TOT_AJ_CREDITOS;

	@XMLFieldProperties(id = "VL_ESTORNOS_DEB")
	private BigDecimal VL_ESTORNOS_DEB;

	@XMLFieldProperties(id = "VL_SLD_CREDOR_ANT")
	private BigDecimal VL_SLD_CREDOR_ANT;

	@XMLFieldProperties(id = "VL_SLD_APURADO")
	private BigDecimal VL_SLD_APURADO;

	@XMLFieldProperties(id = "VL_TOT_DED")
	private BigDecimal VL_TOT_DED;

	@XMLFieldProperties(id = "VL_ICMS_RECOLHER")
	private BigDecimal VL_ICMS_RECOLHER;

	@XMLFieldProperties(id = "VL_SLD_CREDOR_TRANSPORTAR")
	private BigDecimal VL_SLD_CREDOR_TRANSPORTAR;

	@XMLFieldProperties(id = "DEB_ESP")
	private BigDecimal DEB_ESP;

	/**
	 * Constructor
	 */
	public RE110() {
		super();

	} // RE110

	public BigDecimal getVL_TOT_DEBITOS() {
		return VL_TOT_DEBITOS;
	}

	public void setVL_TOT_DEBITOS(BigDecimal vL_TOT_DEBITOS) {
		VL_TOT_DEBITOS = vL_TOT_DEBITOS;
	}

	public BigDecimal getVL_AJ_DEBITOS() {
		return VL_AJ_DEBITOS;
	}

	public void setVL_AJ_DEBITOS(BigDecimal vL_AJ_DEBITOS) {
		VL_AJ_DEBITOS = vL_AJ_DEBITOS;
	}

	public BigDecimal getVL_TOT_AJ_DEBITOS() {
		return VL_TOT_AJ_DEBITOS;
	}

	public void setVL_TOT_AJ_DEBITOS(BigDecimal vL_TOT_AJ_DEBITOS) {
		VL_TOT_AJ_DEBITOS = vL_TOT_AJ_DEBITOS;
	}

	public BigDecimal getVL_ESTORNOS_CRED() {
		return VL_ESTORNOS_CRED;
	}

	public void setVL_ESTORNOS_CRED(BigDecimal vL_ESTORNOS_CRED) {
		VL_ESTORNOS_CRED = vL_ESTORNOS_CRED;
	}

	public BigDecimal getVL_TOT_CREDITOS() {
		return VL_TOT_CREDITOS;
	}

	public void setVL_TOT_CREDITOS(BigDecimal vL_TOT_CREDITOS) {
		VL_TOT_CREDITOS = vL_TOT_CREDITOS;
	}

	public BigDecimal getVL_AJ_CREDITOS() {
		return VL_AJ_CREDITOS;
	}

	public void setVL_AJ_CREDITOS(BigDecimal vL_AJ_CREDITOS) {
		VL_AJ_CREDITOS = vL_AJ_CREDITOS;
	}

	public BigDecimal getVL_TOT_AJ_CREDITOS() {
		return VL_TOT_AJ_CREDITOS;
	}

	public void setVL_TOT_AJ_CREDITOS(BigDecimal vL_TOT_AJ_CREDITOS) {
		VL_TOT_AJ_CREDITOS = vL_TOT_AJ_CREDITOS;
	}

	public BigDecimal getVL_ESTORNOS_DEB() {
		return VL_ESTORNOS_DEB;
	}

	public void setVL_ESTORNOS_DEB(BigDecimal vL_ESTORNOS_DEB) {
		VL_ESTORNOS_DEB = vL_ESTORNOS_DEB;
	}

	public BigDecimal getVL_SLD_CREDOR_ANT() {
		return VL_SLD_CREDOR_ANT;
	}

	public void setVL_SLD_CREDOR_ANT(BigDecimal vL_SLD_CREDOR_ANT) {
		VL_SLD_CREDOR_ANT = vL_SLD_CREDOR_ANT;
	}

	public BigDecimal getVL_SLD_APURADO() {
		return VL_SLD_APURADO;
	}

	public void setVL_SLD_APURADO(BigDecimal vL_SLD_APURADO) {
		VL_SLD_APURADO = vL_SLD_APURADO;
	}

	public BigDecimal getVL_TOT_DED() {
		return VL_TOT_DED;
	}

	public void setVL_TOT_DED(BigDecimal vL_TOT_DED) {
		VL_TOT_DED = vL_TOT_DED;
	}

	public BigDecimal getVL_ICMS_RECOLHER() {
		return VL_ICMS_RECOLHER;
	}

	public void setVL_ICMS_RECOLHER(BigDecimal vL_ICMS_RECOLHER) {
		VL_ICMS_RECOLHER = vL_ICMS_RECOLHER;
	}

	public BigDecimal getVL_SLD_CREDOR_TRANSPORTAR() {
		return VL_SLD_CREDOR_TRANSPORTAR;
	}

	public void setVL_SLD_CREDOR_TRANSPORTAR(
			BigDecimal vL_SLD_CREDOR_TRANSPORTAR) {
		VL_SLD_CREDOR_TRANSPORTAR = vL_SLD_CREDOR_TRANSPORTAR;
	}

	public BigDecimal getDEB_ESP() {
		return DEB_ESP;
	}

	public void setDEB_ESP(BigDecimal dEB_ESP) {
		DEB_ESP = dEB_ESP;
	}

	@Override
	public int compareTo(Object o) {
		// TODO Auto-generated method stub
		return 0;
	}

} // RE110