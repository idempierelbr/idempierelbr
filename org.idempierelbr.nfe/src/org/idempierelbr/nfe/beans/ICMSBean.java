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

import org.idempierelbr.tax.model.MLBRDocLineICMS;
import org.idempierelbr.core.util.TextUtil;

public class ICMSBean
{
	private ICMSGrupoBean ICMS;
	private ICMSGrupoBean ICMS00;
	private ICMSGrupoBean ICMS10;
	private ICMSGrupoBean ICMS20;
	private ICMSGrupoBean ICMS30;
	private ICMSGrupoBean ICMS40;
	private ICMSGrupoBean ICMS51;
	private ICMSGrupoBean ICMS60;
	private ICMSGrupoBean ICMS70;
	private ICMSGrupoBean ICMS90;
	private ICMSGrupoBean ICMSPart;
	private ICMSGrupoBean ICMSUFDest;
	private ICMSGrupoBean ICMSST;
	private ICMSGrupoBean ICMSSN101;
	private ICMSGrupoBean ICMSSN102;
	private ICMSGrupoBean ICMSSN201;
	private ICMSGrupoBean ICMSSN202;
	private ICMSGrupoBean ICMSSN500;
	private ICMSGrupoBean ICMSSN900;
	
	public ICMSGrupoBean getICMS()
	{
		return ICMS;
	}
	public void setICMS(ICMSGrupoBean iCMS)
	{
		ICMS = iCMS;
	}
	public ICMSGrupoBean getICMS00()
	{
		return ICMS00;
	}
	public void setICMS00(ICMSGrupoBean iCMS00)
	{
		ICMS00 = iCMS00;
	}
	public ICMSGrupoBean getICMS10()
	{
		return ICMS10;
	}
	public void setICMS10(ICMSGrupoBean iCMS10)
	{
		ICMS10 = iCMS10;
	}
	public ICMSGrupoBean getICMS20()
	{
		return ICMS20;
	}
	public void setICMS20(ICMSGrupoBean iCMS20)
	{
		ICMS20 = iCMS20;
	}
	public ICMSGrupoBean getICMS30()
	{
		return ICMS30;
	}
	public void setICMS30(ICMSGrupoBean iCMS30)
	{
		ICMS30 = iCMS30;
	}
	public ICMSGrupoBean getICMS40()
	{
		return ICMS40;
	}
	public void setICMS40(ICMSGrupoBean iCMS40)
	{
		ICMS40 = iCMS40;
	}
	public ICMSGrupoBean getICMS51()
	{
		return ICMS51;
	}
	public void setICMS51(ICMSGrupoBean iCMS51)
	{
		ICMS51 = iCMS51;
	}
	public ICMSGrupoBean getICMS60()
	{
		return ICMS60;
	}
	public void setICMS60(ICMSGrupoBean iCMS60)
	{
		ICMS60 = iCMS60;
	}
	public ICMSGrupoBean getICMS70()
	{
		return ICMS70;
	}
	public void setICMS70(ICMSGrupoBean iCMS70)
	{
		ICMS70 = iCMS70;
	}
	public ICMSGrupoBean getICMS90()
	{
		return ICMS90;
	}
	public void setICMS90(ICMSGrupoBean iCMS90)
	{
		ICMS90 = iCMS90;
	}
	public ICMSGrupoBean getICMSPart()
	{
		return ICMSPart;
	}
	public void setICMSPart(ICMSGrupoBean iCMSPart)
	{
		ICMSPart = iCMSPart;
	}
	public ICMSGrupoBean getICMSST()
	{
		return ICMSST;
	}
	public void setICMSST(ICMSGrupoBean iCMSST)
	{
		ICMSST = iCMSST;
	}
	public ICMSGrupoBean getICMSSN101()
	{
		return ICMSSN101;
	}
	public void setICMSSN101(ICMSGrupoBean iCMSSN101)
	{
		ICMSSN101 = iCMSSN101;
	}
	public ICMSGrupoBean getICMSSN102()
	{
		return ICMSSN102;
	}
	public void setICMSSN102(ICMSGrupoBean iCMSSN102)
	{
		ICMSSN102 = iCMSSN102;
	}
	public ICMSGrupoBean getICMSSN201()
	{
		return ICMSSN201;
	}
	public void setICMSSN201(ICMSGrupoBean iCMSSN201)
	{
		ICMSSN201 = iCMSSN201;
	}
	public ICMSGrupoBean getICMSSN202()
	{
		return ICMSSN202;
	}
	public void setICMSSN202(ICMSGrupoBean iCMSSN202)
	{
		ICMSSN202 = iCMSSN202;
	}
	public ICMSGrupoBean getICMSSN500()
	{
		return ICMSSN500;
	}
	public void setICMSSN500(ICMSGrupoBean iCMSSN500)
	{
		ICMSSN500 = iCMSSN500;
	}
	public ICMSGrupoBean getICMSSN900()
	{
		return ICMSSN900;
	}
	public void setICMSSN900(ICMSGrupoBean iCMSSN900)
	{
		ICMSSN900 = iCMSSN900;
	}
	public ICMSGrupoBean getICMSUFDest() {
		return ICMSUFDest;
	}
	public void setICMSUFDest(ICMSGrupoBean iCMSUFDest) {
		ICMSUFDest = iCMSUFDest;
	}
	public void setDetails (ICMSGrupoBean detICMS, String taxStatusDetailed)
	{
		if (taxStatusDetailed == null || detICMS == null)
			return;
		
		// ICMS00
		if (TextUtil.match(taxStatusDetailed, MLBRDocLineICMS.CST_ICMS_00)) {
			setICMS00(detICMS);
		}
		// ICMS10
		else if (TextUtil.match(taxStatusDetailed, MLBRDocLineICMS.CST_ICMS_10_ST)) {
			setICMS10(detICMS);
		}
		// ICMS20
		if (TextUtil.match(taxStatusDetailed, MLBRDocLineICMS.CST_ICMS_20)) {
			setICMS20(detICMS);
		}
		// ICMS30
		else if (TextUtil.match(taxStatusDetailed, MLBRDocLineICMS.CST_ICMS_30)) {
			setICMS30(detICMS);
		}
		// ICMS40
		else if (TextUtil.match(taxStatusDetailed,
				MLBRDocLineICMS.CST_ICMS_40,
				MLBRDocLineICMS.CST_ICMS_41,
				MLBRDocLineICMS.CST_ICMS_50)) {
			
			setICMS40(detICMS);
		}
		// ICMS51
		else if (TextUtil.match(taxStatusDetailed, MLBRDocLineICMS.CST_ICMS_51)) {
			setICMS51(detICMS);
		}
		// ICMS60
		else if (TextUtil.match(taxStatusDetailed, MLBRDocLineICMS.CST_ICMS_60)) {
			setICMS60(detICMS);
		}
		// ICMS70
		else if (TextUtil.match(taxStatusDetailed, MLBRDocLineICMS.CST_ICMS_70)) {
			setICMS70(detICMS);
		}
		// ICMS90
		else if (TextUtil.match(taxStatusDetailed, MLBRDocLineICMS.CST_ICMS_90)) {
			setICMS90(detICMS);
		}
		// ICMSPart
		else if (TextUtil.match(taxStatusDetailed,
				MLBRDocLineICMS.CST_ICMS_10_PART,
				MLBRDocLineICMS.CST_ICMS_90_PART)) {
			
			setICMSPart(detICMS);
		}
		// ICMSST
		else if (TextUtil.match(taxStatusDetailed, MLBRDocLineICMS.CST_ICMS_41_RET)) {
			setICMSST(detICMS);
		}
		// ICMSSN101
		else if (TextUtil.match(taxStatusDetailed, MLBRDocLineICMS.CSOSN_101)) {
			setICMSSN101(detICMS);
		}
		// ICMSSN102
		else if (TextUtil.match(taxStatusDetailed,
				MLBRDocLineICMS.CSOSN_102,
				MLBRDocLineICMS.CSOSN_103,
				MLBRDocLineICMS.CSOSN_300,
				MLBRDocLineICMS.CSOSN_400)) {

			setICMSSN102(detICMS);
		}
		// ICMSSN201
		else if (TextUtil.match(taxStatusDetailed, MLBRDocLineICMS.CSOSN_201)) {				
			setICMSSN201(detICMS);
		}
		// ICMSSN202
		else if (TextUtil.match(taxStatusDetailed,
				MLBRDocLineICMS.CSOSN_202,
				MLBRDocLineICMS.CSOSN_203)) {
			
			setICMSSN202(detICMS);
		}
		// ICMSSN500
		else if (TextUtil.match(taxStatusDetailed, MLBRDocLineICMS.CSOSN_500)) {
			setICMSSN500(detICMS);
		}
		// ICMSSN900
		else if (TextUtil.match(taxStatusDetailed, MLBRDocLineICMS.CSOSN_900)) {
			setICMSSN900(detICMS);
		} 
	}	//	setDetails	
	

}	//	ICMSBean
