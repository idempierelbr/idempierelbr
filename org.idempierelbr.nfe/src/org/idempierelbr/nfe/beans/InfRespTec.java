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
 * ZD. Informações do Responsável Técnico pela emissão do DF-e (NT 2018.005)
 */
public class InfRespTec
{
	private String CNPJ;
	private String xContato;
	private String email;
	private String fone;
	private String idCSRT;
	private String hashCSRT;

	public String getCNPJ() {
		return CNPJ;
	}
	public void setCNPJ(String CNPJ) {
		this.CNPJ = CNPJ;
	}
	public String getxContato() {
		return xContato;
	}
	public void setxContato(String xContato) {
		this.xContato = xContato;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getFone() {
		return fone;
	}
	public void setFone(String fone) {
		this.fone = fone;
	}
	public String getIdCSRT() {
		return idCSRT;
	}
	public void setIdCSRT(String idCSRT) {
		this.idCSRT = idCSRT;
	}
	public String getHashCSRT() {
		return hashCSRT;
	}
	public void setHashCSRT(String hashCSRT) {
		this.hashCSRT = hashCSRT;
	}

}
