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

public class InfAdiFisco
{
	// Informações Adicionais
	private String infAdFisco;
	private String infCpl;
	
	public String getInfAdFisco() {
		return infAdFisco;
	}
	public void setInfAdFisco(String infAdFisco) {
		if (infAdFisco != null)
			infAdFisco = infAdFisco.trim();
	
		this.infAdFisco = infAdFisco;
	}
	public String getInfCpl() {
		return infCpl;
	}
	public void setInfCpl(String infCpl) {
		if (infCpl != null)
			infCpl = infCpl.trim();
	
		this.infCpl = infCpl;
	}
	
}	//	InfAdiFisco
