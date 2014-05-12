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

import org.idempierelbr.nfe.base.NFeXMLGenerator;
import org.idempierelbr.core.util.TextUtil;

import com.thoughtworks.xstream.annotations.XStreamAlias;

public class PISBean 
{
	@XStreamAlias ("PISAliq")
	private PISGrupoBean PIS;
	private PISGrupoBean PISQtde;
	private PISGrupoBean PISNT;
	private PISGrupoBean PISOutr;

	public PISGrupoBean getPIS() 
	{
		return PIS;
	}
	public void setPIS(PISGrupoBean pis) 
	{
		PIS = pis;
	}
	public PISGrupoBean getPISQtde() 
	{
		return PISQtde;
	}
	public void setPISQtde(PISGrupoBean pis) 
	{
		PISQtde = pis;
	}
	public PISGrupoBean getPISNT() 
	{
		return PISNT;
	}
	public void setPISNT(PISGrupoBean pis) 
	{
		PISNT = pis;
	}
	public PISGrupoBean getPISOutr() 
	{
		return PISOutr;
	}
	public void setPISOutr(PISGrupoBean pis) 
	{
		PISOutr = pis;
	}
	
	public void setDetails (PISGrupoBean detPIS, String CST_CSOSN)
	{
		if (CST_CSOSN == null || detPIS == null)
			return;
		
		if (TextUtil.match(CST_CSOSN, NFeXMLGenerator.CST_PC_01, NFeXMLGenerator.CST_PC_02))
			setPIS (detPIS);

		else if (TextUtil.match(CST_CSOSN, NFeXMLGenerator.CST_PC_03))
			setPISQtde (detPIS);
		
		else if (TextUtil.match(CST_CSOSN, NFeXMLGenerator.CST_PC_04, NFeXMLGenerator.CST_PC_06, NFeXMLGenerator.CST_PC_07, 
								NFeXMLGenerator.CST_PC_08, NFeXMLGenerator.CST_PC_09))
			setPISNT (detPIS);
		
		else
			setPISOutr (detPIS);
	}
}	//	PISBean
