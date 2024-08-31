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
package org.idempierelbr.base.util;

import java.util.List;
import java.util.Properties;

import org.adempiere.model.POWrapper;
import org.compiere.model.MBPartner;
import org.compiere.model.MBPartnerLocation;
import org.compiere.model.MLocation;
import org.compiere.model.MRegion;
import org.compiere.model.MSysConfig;
import org.compiere.model.MTable;
import org.compiere.model.Query;
import org.compiere.model.X_C_City;
import org.compiere.util.CLogger;
import org.compiere.util.Env;
import org.idempierelbr.base.wrapper.I_W_C_BPartner;
import org.idempierelbr.base.wrapper.I_W_C_BPartner_Location;

/**
 *		Utility class for ADempiereLBR BPartner
 *
 *	@author Mario Grigioni (Kenos, www.kenos.com.br)
 *	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: BPartnerUtil.java, v1.0 2009/12/18 10:23:29 PM, mgrigioni Exp $
 */
public abstract class BPartnerUtil
{
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(BPartnerUtil.class);

	public static final int    BRASIL = AdempiereLBR.BRASIL;
	public static final String EXTCOD = "9999999";
	public static final String EXTREG = "EX";
	public static final String EXTMUN = "EXTERIOR";

	
	/**
	 * 	Retorna se o PN é Pessoa Física ou Pessoa Jurídica
	 * 
	 * @param bp Business Partner
	 * @return PF, PJ or null
	 */
	public static String getBPTypeBR (MBPartner bp)
	{
		if (bp == null)
			return null;
		//
		return bp.get_ValueAsString("lbr_BPTypeBR");
	}	//	getBPTypeBR


	
	/**
	 * 		Retorna o Cadastro Nacional de Pessoa Jurídica (CNPJ) do Parceiro
	 * 		
	 * 	@param bpLocation
	 * 	@return CNPJ
	 */
	public static String getCNPJ_CPF (MBPartnerLocation bpLocation)
	{
		if (bpLocation == null)
			return null;
		//
		I_W_C_BPartner_Location bpLW = POWrapper.create(bpLocation, I_W_C_BPartner_Location.class);
		I_W_C_BPartner bp = POWrapper.create(new MBPartner (Env.getCtx(), bpLocation.getC_BPartner_ID(), null), I_W_C_BPartner.class);
		String lbr_BPTypeBR = bp.getLBR_BPTypeBR();
		//
		if (lbr_BPTypeBR != null 
				&& !lbr_BPTypeBR.equals(""))
		{
			/**
			 * 	Pessoa física sempre é definido no Parceiro
			 */
			if (lbr_BPTypeBR.equalsIgnoreCase("PF"))
				return bp.getLBR_CPF();
			
			/**
			 * 	Parceiro com CNPJ definido na localização
			 */
			else if(!MSysConfig.getBooleanValue("LBR_USE_UNIFIED_BP", true))
				return bpLW.getLBR_CNPJ();
			
			/**
			 * 	Parceiro com CNPJ definido no cadastro de Parceiro 
			 */
			else
				return bp.getLBR_CNPJ();
		}
		//
		return null;
	}	//	getCNPJ

	/**
	 * 		Retorna a Inscrição Estadual (IE) do Parceiro
	 * 		
	 * 	@param bpLocation
	 * 	@return IE
	 */
	public static String getIE (MBPartnerLocation bpLocation)
	{
		if (bpLocation == null)
			return null;
		//
		I_W_C_BPartner_Location bpLW = POWrapper.create(bpLocation, I_W_C_BPartner_Location.class);
		I_W_C_BPartner bp = POWrapper.create(new MBPartner (Env.getCtx(), bpLocation.getC_BPartner_ID(), null), I_W_C_BPartner.class);
		String lbr_BPTypeBR = bp.getLBR_BPTypeBR();
		//
		if (lbr_BPTypeBR != null 
				&& !lbr_BPTypeBR.equals(""))
		{
			/**
			 * 	Parceiro com IE definido no cadastro de Parceiro 
			 */
			if (MSysConfig.getBooleanValue("LBR_USE_UNIFIED_BP", true))
			{
				if (bp.getLBR_TypeIE().equals(I_W_C_BPartner.LBR_TYPEIE_Isento))
					return "ISENTO";
				else
					return bp.getLBR_IE();
			}
			
			/**
			 * 	Parceiro com IE definido na Localização 
			 */
			else
			{
				if (bpLW.getLBR_TypeIE().equals(I_W_C_BPartner.LBR_TYPEIE_Isento))
					return "ISENTO";
				else
					return bpLW.getLBR_IE();
			}
		}
		//
		return null;
	}	//	getIE

	public static String getUF(Properties ctx, int C_BPartner_Location_ID){
		MBPartnerLocation bpLocation = new MBPartnerLocation(ctx,C_BPartner_Location_ID,null);
		return getUF(bpLocation);
	} //getUF

	public static String getUF(MBPartnerLocation bpLocation){

		MLocation location = new MLocation(bpLocation.getCtx(),bpLocation.getC_Location_ID(),null);
		if (location.getC_Country_ID() != BRASIL)
			return EXTREG;

		MRegion region     = new MRegion(bpLocation.getCtx(),location.getC_Region_ID(),null);
		return region.getName();
	} //getUF

	/**
	 * 		Retorna o código da Superintendência da Zona 
	 * 			Franca de Manaus (SUFRAMA) do Parceiro
	 * 		
	 * 	@param bpLocation
	 * 	@return SUFRAMA
	 */
	public static String getSUFRAMA (MBPartnerLocation bpLocation)
	{
		if (bpLocation == null)
			return null;
		//
//		I_W_C_BPartner_Location bpLW = POWrapper.create(bpLocation, I_W_C_BPartner_Location.class);
		I_W_C_BPartner bp = POWrapper.create(new MBPartner (Env.getCtx(), bpLocation.getC_BPartner_ID(), null), I_W_C_BPartner.class);
		String lbr_BPTypeBR = bp.getLBR_BPTypeBR();
		//
		if (lbr_BPTypeBR != null 
				&& !lbr_BPTypeBR.equals(""))
		{
			/**
			 * 	Parceiro com IE definido no cadastro de Parceiro 
			 */
			if (MSysConfig.getBooleanValue("LBR_USE_UNIFIED_BP", false))
				return bp.getLBR_Suframa();
			
			/**
			 * 	Parceiro com IE definido na Localização
			 */
			else	//	FIXME: Incluir campo na Localização
				return bp.getLBR_Suframa();
		}
		//
		return null;
	}	//	getSUFRAMA

	public static String getRegionCode(MLocation location){

		String cityCode = BPartnerUtil.getCityCode(location);
		if (cityCode.length() < 2)
			return "";

		return cityCode.substring(0, 2);
	} //getRegionCode

	public static String getCityCode(MLocation location){

		if (location != null && location.getC_Country_ID() != BRASIL)
			return EXTCOD;

		X_C_City city = getX_C_City(location.getCtx(),location,location.get_TrxName());
		if (city == null)
			return "";

		return city.get_ValueAsString("lbr_CityCode");
	} //getCityCode

	public static X_C_City getX_C_City(Properties ctx, MLocation location, String trxName){
		return getX_C_City(ctx,location,null,0,trxName);
	}

	public static X_C_City getX_C_City(Properties ctx, String cityName, int C_Region_ID, String trxName){
		return getX_C_City(ctx,null,cityName,C_Region_ID,trxName);
	}

	/**
	 * getX_C_City
	 * @param ctx
	 * @param location
	 * @param cityName
	 * @param regionName
	 * @param trxName
	 * @return Object X_C_City
	 */
	private static X_C_City getX_C_City(Properties ctx, MLocation location,
			                           String cityName, int C_Region_ID, String trxName){

		X_C_City city = null;

		if (location == null || location.getC_City_ID() == 0)
		{
			String whereClause = "TRIM(Name)=?" +
                    " AND IsActive='Y'" +
                    " AND (AD_Client_ID=0 OR AD_Client_ID=?)" +
                    " AND C_Region_ID=?";
			MTable table = MTable.get(ctx, X_C_City.Table_Name);
			Query query = new Query(ctx, table, whereClause, trxName);
			if (location != null){
				String cityNameUse = location.getCity() != null ? location.getCity().trim() : "";
				query.setParameters(new Object[] { cityNameUse, Env.getAD_Client_ID(ctx), location.getC_Region_ID() });
			}
			else{
				if(cityName == null)
					cityName = "";
				query.setParameters(new Object[] { cityName, Env.getAD_Client_ID(ctx), C_Region_ID });
			}

			List<X_C_City> listCity = query.list();
			if (listCity.size() == 1)
				city = listCity.get(0);
			else if (listCity.size() > 1)
				log.warning("More than one code found for City: "+location.getCity()+", Region:"+location.getRegionName());
			else
				log.warning("Code not found for City: "+location.getCity()+", Region:"+location.getRegionName());
		}
		else
			city = new X_C_City(ctx, location.getC_City_ID(), trxName);

		return city;
	} //getX_C_City
} 	//	BPartnerUtil
