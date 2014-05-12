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

public class COFINSBean 
{
	@XStreamAlias ("COFINSAliq")
	private COFINSGrupoBean COFINS;
	private COFINSGrupoBean COFINSQtde;
	private COFINSGrupoBean COFINSNT;
	private COFINSGrupoBean COFINSOutr;

	public COFINSGrupoBean getCOFINS()
	{
		return COFINS;
	}
	public void setCOFINS(COFINSGrupoBean cofins) 
	{
		COFINS = cofins;
	}
	public COFINSGrupoBean getCOFINSQtde()
	{
		return COFINSQtde;
	}
	public void setCOFINSQtde(COFINSGrupoBean cofins)
	{
		COFINSQtde = cofins;
	}
	public COFINSGrupoBean getCOFINSNT()
	{
		return COFINSNT;
	}
	public void setCOFINSNT(COFINSGrupoBean cofins)
	{
		COFINSNT = cofins;
	}
	public COFINSGrupoBean getCOFINSOutr()
	{
		return COFINSOutr;
	}
	public void setCOFINSOutr(COFINSGrupoBean cofins)
	{
		COFINSOutr = cofins;
	}
	
	public void setDetails (COFINSGrupoBean detCOFINS, String CST_CSOSN)
	{
		if (CST_CSOSN == null || detCOFINS == null)
			return;
		
		if (TextUtil.match(CST_CSOSN, NFeXMLGenerator.CST_PC_01, NFeXMLGenerator.CST_PC_02))
			setCOFINS (detCOFINS);

		else if (TextUtil.match(CST_CSOSN, NFeXMLGenerator.CST_PC_03))
			setCOFINSQtde (detCOFINS);
		
		else if (TextUtil.match(CST_CSOSN, NFeXMLGenerator.CST_PC_04, NFeXMLGenerator.CST_PC_06, NFeXMLGenerator.CST_PC_07, 
								NFeXMLGenerator.CST_PC_08, NFeXMLGenerator.CST_PC_09))
			setCOFINSNT (detCOFINS);
		
		else
			setCOFINSOutr (detCOFINS);
	}
}	//	COFINSBean
