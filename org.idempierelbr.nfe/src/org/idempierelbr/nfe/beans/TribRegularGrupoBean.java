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

/**
 * Grupo gTribRegular (TTribRegular, NT 2025.002-RTC UB68 a UB72d): como a operação seria
 * tributada sem a condição suspensiva ou resolutória. Os campos ficam na ordem do XSD,
 * porque o XStream serializa na ordem de declaração.
 */
public class TribRegularGrupoBean {
	private String CSTReg;
	private String cClassTribReg;
	private String pAliqEfetRegIBSUF;
	private String vTribRegIBSUF;
	private String pAliqEfetRegIBSMun;
	private String vTribRegIBSMun;
	private String pAliqEfetRegCBS;
	private String vTribRegCBS;

	public String getCSTReg() {
		return CSTReg;
	}
	public void setCSTReg(String cSTReg) {
		CSTReg = cSTReg;
	}
	public String getcClassTribReg() {
		return cClassTribReg;
	}
	public void setcClassTribReg(String cClassTribReg) {
		this.cClassTribReg = cClassTribReg;
	}
	public String getpAliqEfetRegIBSUF() {
		return pAliqEfetRegIBSUF;
	}
	public void setpAliqEfetRegIBSUF(String pAliqEfetRegIBSUF) {
		this.pAliqEfetRegIBSUF = pAliqEfetRegIBSUF;
	}
	public String getvTribRegIBSUF() {
		return vTribRegIBSUF;
	}
	public void setvTribRegIBSUF(String vTribRegIBSUF) {
		this.vTribRegIBSUF = vTribRegIBSUF;
	}
	public String getpAliqEfetRegIBSMun() {
		return pAliqEfetRegIBSMun;
	}
	public void setpAliqEfetRegIBSMun(String pAliqEfetRegIBSMun) {
		this.pAliqEfetRegIBSMun = pAliqEfetRegIBSMun;
	}
	public String getvTribRegIBSMun() {
		return vTribRegIBSMun;
	}
	public void setvTribRegIBSMun(String vTribRegIBSMun) {
		this.vTribRegIBSMun = vTribRegIBSMun;
	}
	public String getpAliqEfetRegCBS() {
		return pAliqEfetRegCBS;
	}
	public void setpAliqEfetRegCBS(String pAliqEfetRegCBS) {
		this.pAliqEfetRegCBS = pAliqEfetRegCBS;
	}
	public String getvTribRegCBS() {
		return vTribRegCBS;
	}
	public void setvTribRegCBS(String vTribRegCBS) {
		this.vTribRegCBS = vTribRegCBS;
	}
}
