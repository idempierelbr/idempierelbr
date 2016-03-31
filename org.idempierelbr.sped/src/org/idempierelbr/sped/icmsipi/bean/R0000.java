/******************************************************************************
 * Product: ADempiereLBR - ADempiere Localization Brazil * This program is free
 * software; you can redistribute it and/or modify it * under the terms version
 * 2 of the GNU General Public License as published * by the Free Software
 * Foundation. This program is distributed in the hope * that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied * warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. * See the GNU General
 * Public License for more details. * You should have received a copy of the GNU
 * General Public License along * with this program; if not, write to the Free
 * Software Foundation, Inc., * 59 Temple Place, Suite 330, Boston, MA
 * 02111-1307 USA. *
 *****************************************************************************/
package org.idempierelbr.sped.icmsipi.bean;

import java.sql.Timestamp;

import org.idempierelbr.sped.annotation.XMLFieldProperties;
import org.idempierelbr.sped.icmsipi.util.RegSped;


import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;

/**
 * REGISTRO 0000: ABERTURA DO ARQUIVO DIGITAL E IDENTIFICAÇÃO DA ENTIDADE
 * 
 * @author Mario Grigioni, mgrigioni
 * @version $Id: R0000.java, 03/02/2011, 16:44:00, mgrigioni
 * 
 * @contributor Pablo Boff Pigozzo
 * @version $Id: R0000.java, 07/08/2012, 14:00, pablobp4
 */
public class R0000 extends RegSped {

	@XStreamAlias("Id")
	@XStreamAsAttribute
	@XMLFieldProperties(minSize = 3, maxSize = 3, id = "COD_VER", isNumber = true)
	private String COD_VER;

	@XMLFieldProperties(maxSize = 1, id = "COD_FIN")
	private String COD_FIN;

	@XMLFieldProperties(minSize = 8, maxSize = 8, id = "DT_INI")
	private Timestamp DT_INI;

	@XMLFieldProperties(minSize = 8, maxSize = 8, id = "DT_FIN")
	private Timestamp DT_FIN;

	@XMLFieldProperties(maxSize = 100, id = "NOME")
	private String NOME;

	@XMLFieldProperties(maxSize = 14, id = "CNPJ", isMandatory = false, isNumber = true)
	private String CNPJ;

	@XMLFieldProperties(maxSize = 14, id = "CPF", isMandatory = false, isNumber = true)
	private String CPF;

	@XMLFieldProperties(minSize = 2, maxSize = 2, id = "UF")
	private String UF;

	@XMLFieldProperties(minSize = 9, maxSize = 14, id = "IE")
	private String IE;

	@XMLFieldProperties(minSize = 7, maxSize = 7, isNumber = true, id = "COD_MUN")
	private String COD_MUN;

	@XMLFieldProperties(id = "IM", isMandatory = false)
	private String IM;

	@XMLFieldProperties(maxSize = 9, id = "SUFRAMA", isMandatory = false)
	private String SUFRAMA;

	@XMLFieldProperties( maxSize =1, id = "IND_PERFIL")
	private String IND_PERFIL;

	@XMLFieldProperties(maxSize = 1, id = "IND_ATIV")
	private String IND_ATIV;

	/**
	 * Constructor
	 */
	public R0000() {
		super();
	}

	public String getCOD_VER() {
		return COD_VER;
	}

	public void setCOD_VER(String cOD_VER) {
		COD_VER = cOD_VER;
	}

	public String getCOD_FIN() {
		return COD_FIN;
	}

	public void setCOD_FIN(String cOD_FIN) {
		COD_FIN = cOD_FIN;
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

	public String getNOME() {
		return NOME;
	}

	public void setNOME(String nOME) {
		NOME = nOME;
	}

	public String getCNPJ() {
		return CNPJ;
	}

	public void setCNPJ(String cNPJ) {
		CNPJ = cNPJ;
	}

	public String getCPF() {
		return CPF;
	}

	public void setCPF(String cPF) {
		CPF = cPF;
	}

	public String getUF() {
		return UF;
	}

	public void setUF(String uF) {
		UF = uF;
	}

	public String getIE() {
		return IE;
	}

	public void setIE(String iE) {
		IE = iE;
	}

	public String getCOD_MUN() {
		return COD_MUN;
	}

	public void setCOD_MUN(String cOD_MUN) {
		COD_MUN = cOD_MUN;
	}

	public String getIM() {
		return IM;
	}

	public void setIM(String iM) {
		IM = iM;
	}

	public String getSUFRAMA() {
		return SUFRAMA;
	}

	public void setSUFRAMA(String sUFRAMA) {
		SUFRAMA = sUFRAMA;
	}

	public String getIND_PERFIL() {
		return IND_PERFIL;
	}

	public void setIND_PERFIL(String iND_PERFIL) {
		IND_PERFIL = iND_PERFIL;
	}

	public String getIND_ATIV() {
		return IND_ATIV;
	}

	public void setIND_ATIV(String iND_ATIV) {
		IND_ATIV = iND_ATIV;
	}

	@Override
	public int compareTo(Object arg0) {
		// TODO

		return 0;
	}

} // R0000