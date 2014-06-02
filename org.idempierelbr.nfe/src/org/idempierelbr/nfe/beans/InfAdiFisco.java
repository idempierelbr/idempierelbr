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

import java.util.ArrayList;
import java.util.List;

public class InfAdiFisco
{
	// Informações Adicionais
	private String infAdFisco;
	private String infCpl;
	private List<ObsContribGrupo> obsConts = null;
	private List<ObsFiscoGrupo> obsFiscos = null;
	private List<ProcessoRefGrupo> procRefs = null;
	
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
	public List<ObsContribGrupo> getObsConts() {
		if (obsConts.size() < 1)
			return null;
		return obsConts;
	}
	public void setObsConts(List<ObsContribGrupo> obsConts) {
		this.obsConts = obsConts;
	}
	public List<ObsFiscoGrupo> getObsFiscos() {
		if (obsFiscos.size() < 1)
			return null;
		return obsFiscos;
	}
	public void setObsFiscos(List<ObsFiscoGrupo> obsFiscos) {
		this.obsFiscos = obsFiscos;
	}
	public boolean addObsCont(ObsContribGrupo e) {
		if (obsConts == null)
			obsConts = new ArrayList<ObsContribGrupo>();
		return obsConts.add(e);
	}
	public boolean addObsFisco(ObsFiscoGrupo e) {
		if (obsFiscos == null)
			obsFiscos = new ArrayList<ObsFiscoGrupo>();
		return obsFiscos.add(e);
	}
	public List<ProcessoRefGrupo> getProcRefs() {
		return procRefs;
	}
	public void setProcRefs(List<ProcessoRefGrupo> procRefs) {
		this.procRefs = procRefs;
	}
	public boolean addProcRef(ProcessoRefGrupo e) {
		if (procRefs == null)
			procRefs = new ArrayList<ProcessoRefGrupo>();
		return procRefs.add(e);
	}
}	//	InfAdiFisco
