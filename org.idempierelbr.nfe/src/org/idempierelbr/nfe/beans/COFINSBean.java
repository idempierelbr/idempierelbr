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

import org.idempierelbr.tax.model.MLBRDocLineCOFINS;
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
		
		if (TextUtil.match(CST_CSOSN, MLBRDocLineCOFINS.CST_COFINS_01, MLBRDocLineCOFINS.CST_COFINS_02))
			setCOFINS(detCOFINS);

		else if (TextUtil.match(CST_CSOSN, MLBRDocLineCOFINS.CST_COFINS_03))
			setCOFINSQtde(detCOFINS);
		
		else if (TextUtil.match(CST_CSOSN,
				MLBRDocLineCOFINS.CST_COFINS_04,
				MLBRDocLineCOFINS.CST_COFINS_05,
				MLBRDocLineCOFINS.CST_COFINS_06,
				MLBRDocLineCOFINS.CST_COFINS_07, 
				MLBRDocLineCOFINS.CST_COFINS_08,
				MLBRDocLineCOFINS.CST_COFINS_09)) {
			
			setCOFINSNT(detCOFINS);
		} else if (TextUtil.match(CST_CSOSN,
				MLBRDocLineCOFINS.CST_COFINS_49,
				MLBRDocLineCOFINS.CST_COFINS_50,
				MLBRDocLineCOFINS.CST_COFINS_51,
				MLBRDocLineCOFINS.CST_COFINS_52,
				MLBRDocLineCOFINS.CST_COFINS_53,
				MLBRDocLineCOFINS.CST_COFINS_54,
				MLBRDocLineCOFINS.CST_COFINS_55,
				MLBRDocLineCOFINS.CST_COFINS_56,
				MLBRDocLineCOFINS.CST_COFINS_60,
				MLBRDocLineCOFINS.CST_COFINS_61,
				MLBRDocLineCOFINS.CST_COFINS_62,
				MLBRDocLineCOFINS.CST_COFINS_63,
				MLBRDocLineCOFINS.CST_COFINS_64,
				MLBRDocLineCOFINS.CST_COFINS_65,
				MLBRDocLineCOFINS.CST_COFINS_66,
				MLBRDocLineCOFINS.CST_COFINS_67,
				MLBRDocLineCOFINS.CST_COFINS_70,
				MLBRDocLineCOFINS.CST_COFINS_71,
				MLBRDocLineCOFINS.CST_COFINS_72,
				MLBRDocLineCOFINS.CST_COFINS_73,
				MLBRDocLineCOFINS.CST_COFINS_74,
				MLBRDocLineCOFINS.CST_COFINS_75,
				MLBRDocLineCOFINS.CST_COFINS_98,
				MLBRDocLineCOFINS.CST_COFINS_99)) {
			
			setCOFINSOutr(detCOFINS);
		}
	}
}	//	COFINSBean
