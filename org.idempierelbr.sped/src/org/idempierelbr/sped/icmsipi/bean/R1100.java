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

import org.idempierelbr.sped.annotation.XMLFieldProperties;
import org.idempierelbr.sped.icmsipi.util.RegSped;


import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;

/**
 * REGISTRO 1100: REGISTRO DE INFORMAÇÕES SOBRE EXPORTAÇÃO.
 * 
 * @author Mario Grigioni, mgrigioni
 * @version $Id: R1100.java, 14/02/2011, 12:29:00, mgrigioni
 * 
 * @contributor Pablo Boff Pigozzo
 * @version $Id: R0005.java, 07/08/2012, 14:00, pablobp4
 */
public class R1100 extends RegSped implements Comparable<Object> {

	@XStreamAlias("Id")
	@XStreamAsAttribute
	@XMLFieldProperties(id = "COD_MOD", maxSize = 2, minSize = 2)
	private String IND_DOC;
	private String NRO_DE;
	private String DT_DE;
	private String NAT_EXP;
	private String NRO_RE;
	private String DT_RE;
	private String CHC_EMB;
	private String DT_CHC;
	private String DT_AVB;
	private String TP_CHC;
	private String PAIS;

	/**
	 * Constructor
	 */
	public R1100() {
		super();
	}

	public String getIND_DOC() {
		return IND_DOC;
	}

	public void setIND_DOC(String iND_DOC) {
		IND_DOC = iND_DOC;
	}

	public String getNRO_DE() {
		return NRO_DE;
	}

	public void setNRO_DE(String nRO_DE) {
		NRO_DE = nRO_DE;
	}

	public String getDT_DE() {
		return DT_DE;
	}

	public void setDT_DE(String dT_DE) {
		DT_DE = dT_DE;
	}

	public String getNAT_EXP() {
		return NAT_EXP;
	}

	public void setNAT_EXP(String nAT_EXP) {
		NAT_EXP = nAT_EXP;
	}

	public String getNRO_RE() {
		return NRO_RE;
	}

	public void setNRO_RE(String nRO_RE) {
		NRO_RE = nRO_RE;
	}

	public String getDT_RE() {
		return DT_RE;
	}

	public void setDT_RE(String dT_RE) {
		DT_RE = dT_RE;
	}

	public String getCHC_EMB() {
		return CHC_EMB;
	}

	public void setCHC_EMB(String cHC_EMB) {
		CHC_EMB = cHC_EMB;
	}

	public String getDT_CHC() {
		return DT_CHC;
	}

	public void setDT_CHC(String dT_CHC) {
		DT_CHC = dT_CHC;
	}

	public String getDT_AVB() {
		return DT_AVB;
	}

	public void setDT_AVB(String dT_AVB) {
		DT_AVB = dT_AVB;
	}

	public String getTP_CHC() {
		return TP_CHC;
	}

	public void setTP_CHC(String tP_CHC) {
		TP_CHC = tP_CHC;
	}

	public String getPAIS() {
		return PAIS;
	}

	public void setPAIS(String pAIS) {
		PAIS = pAIS;
	}

	/**
	 * Formata o Bloco 1 Registro 100
	 * 
	 * @return
	 */
	public String toString() {

		StringBuilder format = new StringBuilder(PIPE).append(REG).append(PIPE)
				.append(IND_DOC).append(PIPE).append(NRO_DE).append(PIPE)
				.append(DT_DE).append(PIPE).append(NAT_EXP).append(PIPE)
				.append(NRO_RE).append(PIPE).append(DT_RE).append(PIPE)
				.append(CHC_EMB).append(PIPE).append(DT_CHC).append(PIPE)
				.append(DT_AVB).append(PIPE).append(TP_CHC).append(PIPE)
				.append(PAIS).append(PIPE);

		return format.append(EOL).toString();
	} // toString

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result + ((NRO_DE == null) ? 0 : NRO_DE.hashCode());
		result = prime * result + ((NRO_RE == null) ? 0 : NRO_RE.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (!super.equals(obj))
			return false;
		if (getClass() != obj.getClass())
			return false;
		R1100 other = (R1100) obj;
		if (NRO_DE == null) {
			if (other.NRO_DE != null)
				return false;
		} else if (!NRO_DE.equals(other.NRO_DE))
			return false;
		if (NRO_RE == null) {
			if (other.NRO_RE != null)
				return false;
		} else if (!NRO_RE.equals(other.NRO_RE))
			return false;
		return true;
	}

	/**
	 * Comparador para Collection
	 * 
	 * @see java.util.Comparator#compare(java.lang.Object, java.lang.Object)
	 */
	public int compare(Object o1, Object o2) {
		if (o1 == null) // Depois
			return 1;
		else if (o2 == null)
			return -1; // Antes
		else if (o1 instanceof R1100 && o2 instanceof R1100) {
			R1100 e1 = (R1100) o1;
			R1100 e2 = (R1100) o2;
			//
			if (e1.DT_DE == null) // Depois
				return 1;
			else if (e2.DT_DE == null) // Antes
				return -1;

			int compare = e1.DT_DE.compareTo(e2.DT_DE);

			if (compare == 0)
				return e1.NRO_DE.compareTo(e2.NRO_DE); // Comparar
			else
				return compare;
		} else
			return 0; //
	}

	/**
	 * Comparador para Collection
	 */
	public int compareTo(Object o) {
		return compare(this, o);
	}

} // R1100