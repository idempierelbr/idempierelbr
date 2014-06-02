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

import org.idempierelbr.tax.model.MLBRDocLinePIS;
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
		
		if (TextUtil.match(CST_CSOSN, MLBRDocLinePIS.CST_PIS_01, MLBRDocLinePIS.CST_PIS_02))
			setPIS(detPIS);

		else if (TextUtil.match(CST_CSOSN, MLBRDocLinePIS.CST_PIS_03))
			setPISQtde(detPIS);
		
		else if (TextUtil.match(CST_CSOSN,
				MLBRDocLinePIS.CST_PIS_04,
				MLBRDocLinePIS.CST_PIS_05,
				MLBRDocLinePIS.CST_PIS_06,
				MLBRDocLinePIS.CST_PIS_07, 
				MLBRDocLinePIS.CST_PIS_08,
				MLBRDocLinePIS.CST_PIS_09)) {
			
			setPISNT(detPIS);
		} else if (TextUtil.match(CST_CSOSN,
				MLBRDocLinePIS.CST_PIS_49,
				MLBRDocLinePIS.CST_PIS_50,
				MLBRDocLinePIS.CST_PIS_51,
				MLBRDocLinePIS.CST_PIS_52,
				MLBRDocLinePIS.CST_PIS_53,
				MLBRDocLinePIS.CST_PIS_54,
				MLBRDocLinePIS.CST_PIS_55,
				MLBRDocLinePIS.CST_PIS_56,
				MLBRDocLinePIS.CST_PIS_60,
				MLBRDocLinePIS.CST_PIS_61,
				MLBRDocLinePIS.CST_PIS_62,
				MLBRDocLinePIS.CST_PIS_63,
				MLBRDocLinePIS.CST_PIS_64,
				MLBRDocLinePIS.CST_PIS_65,
				MLBRDocLinePIS.CST_PIS_66,
				MLBRDocLinePIS.CST_PIS_67,
				MLBRDocLinePIS.CST_PIS_70,
				MLBRDocLinePIS.CST_PIS_71,
				MLBRDocLinePIS.CST_PIS_72,
				MLBRDocLinePIS.CST_PIS_73,
				MLBRDocLinePIS.CST_PIS_74,
				MLBRDocLinePIS.CST_PIS_75,
				MLBRDocLinePIS.CST_PIS_98,
				MLBRDocLinePIS.CST_PIS_99)) {
			
			setPISOutr(detPIS);
		}
	}
}	//	PISBean
