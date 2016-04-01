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

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import org.idempierelbr.sped.annotation.XMLFieldProperties;
import org.idempierelbr.sped.icmsipi.util.RegSped;


import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;

/**
 * REGISTRO 0400 – TABELA DE NATUREZA DA OPERAÇÃO/PRESTAÇÃO
 * 
 * @autor Claudemir Todo Bom ( http://todobom.com )
 */
public class R0400 extends RegSped {

	@XStreamAlias("Id")
	@XStreamAsAttribute
	@XMLFieldProperties(minSize = 1, maxSize = 10, id = "COD_NAT")
	private String COD_NAT;

	@XMLFieldProperties(minSize = 1, maxSize = 255, id = "DESCR_NAT")
	private String DESCR_NAT;

	/**
	 * Constructor
	 * 
	 * @param COD_OBS
	 * @param TXT
	 */
	public R0400() {
		super();
	}

	public String getCOD_NAT() {
		return COD_NAT;
	}

	private void setCOD_NAT(String cOD_NAT) {
		COD_NAT = cOD_NAT;
	}

	public String getDESCR_NAT() {
		return DESCR_NAT;
	}

	public void setDESCR_NAT(String dESCR_NAT) {
		try {
			MessageDigest md = MessageDigest.getInstance("MD5");
			byte[] digest = md.digest(dESCR_NAT.getBytes());
			BigInteger bigInt = new BigInteger(1,digest);
			String codNat = bigInt.toString(16).substring(0, 10);
			this.setCOD_NAT(codNat);
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		DESCR_NAT = dESCR_NAT;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (!super.equals(obj))
			return false;
		if (getClass() != obj.getClass())
			return false;
		R0400 other = (R0400) obj;

		if (COD_NAT == null)
			if (other.COD_NAT != null)
				return false;
		
		return COD_NAT.equals(other.getCOD_NAT());
	}


} // R0400