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
package org.idempierelbr.base.model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Properties;
import java.util.logging.Level;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.Query;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;

/**
 *	Model for LBR_NFeWebService
 *
 *	@author Mario Grigioni
 *	@contributor Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: MNFeWebService.java,27/08/2010 17:10:00 mgrigioni Exp $
 */
public class MLBRNFeWebService extends X_LBR_NFeWebService
{
	/**
	 *
	 */
	private static final long serialVersionUID = 1L;
	
	/** WebService services */
	public static final String SERVICE_NFE_INUTILIZACAO 		= "NfeInutilizacao";
	public static final String SERVICE_NFE_CONSULTA_PROTOCOLO	= "NfeConsultaProtocolo";
	public static final String SERVICE_NFE_STATUS_SERVICO 		= "NfeStatusServico";
	public static final String SERVICE_NFE_CONSULTA_CADASTRO 	= "NfeConsultaCadastro";
	public static final String SERVICE_NFE_RECEPCAO_EVENTO 		= "RecepcaoEvento";
	public static final String SERVICE_NFE_RECEPCAO_EVENTO_AN 	= "RecepcaoEventoAN";
	public static final String SERVICE_NFE_AUTORIZACAO 			= "NFeAutorizacao";
	public static final String SERVICE_NFE_RET_AUTORIZACAO 		= "NFeRetAutorizacao";
	public static final String SERVICE_NFCE_CONSULTA 			= "NFCeConsulta";
	public static final String SERVICE_NFCE_CONSULTA_QRCODE		= "NFCeConsultaQRCode"; // http://www4.fazenda.rj.gov.br/consultaNFCe/QRCode
	public static final String SERVICE_NFCE_URL_CONSULTA_QRCODE	= "NFCeUrlConsultaQRCode"; // www.fazenda.rj.gov.br/nfce/consulta
	public static final String SERVICE_NFCE_RECEPCAO_EVENTO 	= "NFCeRecepcaoEvento";
	public static final String SERVICE_NFE_DISTRIBUICAO_DFE 	= "NFeDistribuicaoDFe";

	/** Services that have a single national URL (no per-state endpoint). */
	private static boolean isNationalService(String name) {
		return SERVICE_NFE_DISTRIBUICAO_DFE.equalsIgnoreCase(name)
			|| SERVICE_NFE_RECEPCAO_EVENTO_AN.equalsIgnoreCase(name);
	}
	
	/** Log				*/
	private static CLogger log = CLogger.getCLogger(MLBRNFeWebService.class);
	
	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MLBRNFeWebService (Properties ctx, int ID, String trxName)
	{
		super (ctx, ID, trxName);
	}

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRNFeWebService (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}
	
	/**
	 * 	Retorna as URLs dos WebServices
	 * 	@param envType
	 * 	@return
	 */
	public static String[] getURL (String envType){
		StringBuilder sql = new StringBuilder();
		sql.append("SELECT URL FROM LBR_NFeWebService");
		
		if (envType != null && !envType.trim().equals(""))
			sql.append(" WHERE LBR_NFeEnv = ? AND IsActive='Y'");
		else
			sql.append(" WHERE IsActive='Y'");
		
		ArrayList<String> list = new ArrayList<String>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql.toString(), null);
			
			if (envType != null && !envType.trim().equals(""))
				pstmt.setString(1, envType);
			
			rs = pstmt.executeQuery ();
			while (rs.next ())
			{
				String url = rs.getString("URL");
				       url = url.substring(url.indexOf("//") + 2);
			           url = url.substring(0, url.indexOf("/"));
			    
			   if (!list.contains(url))
				   list.add(url);
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
		       DB.close(rs, pstmt);
		       rs = null; pstmt = null;
		}

		String[] retValue = new String[list.size()];
		list.toArray(retValue);
		return retValue;
	}
	
	/**
	 * 		Retorna a URL do WebServices (primary state SEFAZ — autorizador null)
	 * 	@param name
	 * 	@param envType
	 * 	@param versionNo
	 * 	@param C_Region_ID
	 * 	@param LBR_NFeModel
	 * 	@return
	 */
	public static String getURL (String name, String envType, String versionNo, int C_Region_ID, String LBR_NFeModel)
	{
		return getURL(name, envType, versionNo, C_Region_ID, LBR_NFeModel, null);
	}	//	getURL

	/**
	 * 		Retorna a URL do WebServices
	 * 	@param name
	 * 	@param envType
	 * 	@param versionNo
	 * 	@param C_Region_ID
	 * 	@param LBR_NFeModel
	 * 	@param autorizador {@code "AN"} for SVC-AN, {@code "RS"} for SVC-RS, {@code null} for primary state SEFAZ
	 * 	@return
	 */
	public static String getURL (String name, String envType, String versionNo, int C_Region_ID, String LBR_NFeModel, String autorizador)
	{
		MLBRNFeWebService ws = get(name, envType, versionNo, C_Region_ID, LBR_NFeModel, autorizador);
		if (ws == null)
			throw new AdempiereException("Webservice not found for region [" + name + ", "
					+ C_Region_ID + "] environment [" + envType + "] model [" + LBR_NFeModel
					+ "] version [" + versionNo + "] autorizador [" + autorizador + "]");
		return ws.getURL();
	}	//	getURL

	/**
	 * 		Get (primary state SEFAZ — autorizador null)
	 * 	@param name
	 * 	@param envType
	 * 	@param versionNo
	 * 	@param C_Region_ID
	 * 	@param LBR_NFeModel
	 * 	@return
	 */
	public static MLBRNFeWebService get (String name, String envType, String versionNo, int C_Region_ID, String LBR_NFeModel)
	{
		return get(name, envType, versionNo, C_Region_ID, LBR_NFeModel, null);
	}	//	get

	/**
	 * 		Get
	 * 	@param name
	 * 	@param envType
	 * 	@param versionNo
	 * 	@param C_Region_ID
	 * 	@param LBR_NFeModel
	 * 	@param autorizador {@code "AN"} for SVC-AN, {@code "RS"} for SVC-RS, {@code null} for primary state SEFAZ
	 * 	@return
	 */
	public static MLBRNFeWebService get (String name, String envType, String versionNo, int C_Region_ID, String LBR_NFeModel, String autorizador)
	{
		if (autorizador == null) {
			if (isNationalService(name)) {
				// National services (NFeDistribuicaoDFe, RecepcaoEventoAN) have a single URL for all of Brazil; ignore C_Region_ID.
				String where = "UPPER(Name) LIKE ? AND lbr_NFeEnv=? AND VersionNo=? AND LBR_NFeModel=? AND LBR_Autorizador IS NULL";
				return new Query(Env.getCtx(), MLBRNFeWebService.Table_Name, where, null)
								.setParameters(name.toUpperCase(), envType, versionNo, LBR_NFeModel)
								.first();
			}
			String where = "UPPER(Name) LIKE ? AND lbr_NFeEnv=? AND VersionNo=? AND C_Region_ID=? AND LBR_NFeModel=? AND LBR_Autorizador IS NULL";
			return new Query(Env.getCtx(), MLBRNFeWebService.Table_Name, where, null)
							.setParameters(name.toUpperCase(), envType, versionNo, C_Region_ID, LBR_NFeModel)
							.first();
		} else {
			// SVC-AN and SVC-RS contingency endpoints are national by definition (C_Region_ID IS NULL).
			String where = "UPPER(Name) LIKE ? AND lbr_NFeEnv=? AND VersionNo=? AND C_Region_ID IS NULL AND LBR_NFeModel=? AND LBR_Autorizador=?";
			return new Query(Env.getCtx(), MLBRNFeWebService.Table_Name, where, null)
							.setParameters(name.toUpperCase(), envType, versionNo, LBR_NFeModel, autorizador)
							.first();
		}
	}	//	get
}	//	MNFeWebService
