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
package org.idempierelbr.core.util;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Properties;
import java.util.logging.Level;

import org.compiere.model.MBPartner;
import org.compiere.model.MCountry;
import org.compiere.model.MLocator;
import org.compiere.model.MOrderLine;
import org.compiere.model.MPeriod;
import org.compiere.model.MSysConfig;
import org.compiere.model.MTable;
import org.compiere.model.MUOM;
import org.compiere.model.MUser;
import org.compiere.model.Query;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;
import org.joda.time.DateTime;
import org.joda.time.Period;
import org.joda.time.format.DateTimeFormat;
import org.joda.time.format.DateTimeFormatter;

/**
 *	ADempiereLBR
 *
 *	Utility class for ADempiereLBR project
 *
 *	[ 2719395 ] BF - As contas de DR e CR colocadas no Tipo de Documento não funcionam
 *
 *	@author Mario Grigioni (Kenos, www.kenos.com.br)
 *	@version $Id: AdempiereLBR.java, 18/12/2009 09:37:00 mgrigioni
 */
public abstract class AdempiereLBR{

	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(AdempiereLBR.class);

	public static final String AD_LANGUAGE = "pt_BR";
	public static final int    BRASIL      = 139;

	public static int getC_Invoice_ID(String DocumentNo,String trx)
	{
		int index = DocumentNo.indexOf('/');
		if (index != -1)
			DocumentNo = DocumentNo.substring(0, index);

		String sql = "SELECT C_Invoice_ID FROM C_Invoice " +
				     "WHERE DocumentNo = ? AND AD_Client_ID = ?";

		int C_Invoice_ID = DB.getSQLValue(trx, sql,
				new Object[]{DocumentNo,Env.getAD_Client_ID(Env.getCtx())});

		return C_Invoice_ID;
	}	//	getC_Invoice_ID
	
	public static int getC_ElementValue_ID (String account,String trx)
	{
		if (account == null || account.isEmpty())
			return -1;
		
		String sql = "SELECT C_ElementValue_ID FROM C_ElementValue " +
		             "WHERE Value=? AND AD_Client_ID=? AND IsActive='Y'";
		
		int C_ElementValue_ID = DB.getSQLValue(trx, sql, 
				new Object[]{account,Env.getAD_Client_ID(Env.getCtx())});
		
		return C_ElementValue_ID;
	}	//getC_ElementValue_ID

	public static int getC_Region_ID(String regionName, String trx){

		String sql = "SELECT C_Region_ID FROM C_Region " +
				     "WHERE C_Country_ID = ? AND UPPER(Name) = ? AND Isactive = 'Y'";

		int C_Region_ID = DB.getSQLValue(trx, sql,
				new Object[]{BRASIL,regionName.toUpperCase()});

		return C_Region_ID;
	} // getC_Region_ID

	public static int getM_InOut_ID(int C_Invoice_ID, String trx){

		String sql = "SELECT MAX(M_InOut_ID) FROM M_InOutLine WHERE M_InOutLine_ID " +
				     "IN (SELECT M_InOutLine_ID FROM C_InvoiceLine WHERE C_Invoice_ID = ?)";

		int M_InOut_ID = DB.getSQLValue(trx, sql,C_Invoice_ID);

		return M_InOut_ID > 0 ? M_InOut_ID : 0;
	} //getM_InOut_ID

	public static int getLBR_Bank_ID(String RoutingNo, String trx){

		String sql = "SELECT LBR_Bank_ID FROM LBR_Bank WHERE RoutingNo = ?";

		int LBR_Bank_ID = DB.getSQLValue(trx, sql, RoutingNo);

		return LBR_Bank_ID;
	} //getLBR_Bank_ID

	public static String getVendorProductNo(int M_Product_ID, int C_BPartner_ID, String trx){

		String sql = "SELECT VendorProductNo FROM C_BPartner_Product " +
				     "WHERE M_Product_ID = ? AND C_BPartner_ID = ? AND AD_Client_ID = ?";

		String vendorProductNo = DB.getSQLValueString(trx, sql,
				new Object[]{M_Product_ID,C_BPartner_ID,Env.getAD_Client_ID(Env.getCtx())});

		return vendorProductNo;
	}//getVendorProductNo

	public static int getProduct_IDfromVendor(int C_BPartner_ID, String VendorProductNo, String trx){

		String sql = "SELECT M_Product_ID FROM C_BPartner_Product " +
	                 "WHERE VendorProductNo = ? AND C_BPartner_ID = ? AND AD_Client_ID = ?";

		int M_Product_ID = DB.getSQLValue(trx, sql,
				new Object[]{VendorProductNo,C_BPartner_ID,Env.getAD_Client_ID(Env.getCtx())});

		return M_Product_ID;
	}//getProduct_IDfromVendor

	public static int getProduct_IDfromValue(String value, String trx){

		String sql = "SELECT M_Product_ID FROM M_Product " +
	                 "WHERE Value = ? AND AD_Client_ID = ?";

		int M_Product_ID = DB.getSQLValue(trx, sql,
				new Object[]{value,Env.getAD_Client_ID(Env.getCtx())});

		return M_Product_ID;
	}//getProduct_IDfromValue

	public static int getARReceipt(){

		String sql = "SELECT C_DocType_ID FROM C_DocType " +
				     "WHERE DocBaseType = 'ARR' AND AD_Client_ID = ?";

		int C_DocType_ID = DB.getSQLValue(null, sql, Env.getAD_Client_ID(Env.getCtx()));

		return C_DocType_ID;
	}	//	getARReceipt

	public static int getDocTypeAcct(int C_DocType_ID){

		String sql = "SELECT LBR_DocType_Acct_ID FROM LBR_DocType_Acct " +
					 "WHERE C_DocType_ID = ? "; //1

		int LBR_DocType_Acct_ID = DB.getSQLValue(null, sql, C_DocType_ID);

		return LBR_DocType_Acct_ID > 0 ? LBR_DocType_Acct_ID : 0;
	} //getDocTypeAcct

	public static List<MUser> getContacts(int C_BPartner_ID, String customWhere){

		String whereClause = "IsActive = 'Y' AND C_BPartner_ID = ?";

		if (customWhere != null && !customWhere.trim().isEmpty()){
			whereClause += " AND " + TextUtil.checkWhereClause(customWhere);
		}

		MTable table = MTable.get(Env.getCtx(), MUser.Table_Name);
		Query q =  new Query(Env.getCtx(), table, whereClause, null);
		      q.setParameters(new Object[]{C_BPartner_ID});

	    return q.list();
	} //getContacts

	public static String getCountry_trl(MCountry country){
		return getCountry_trl(country,AD_LANGUAGE);
	}

	public static String getCountry_trl(MCountry country, String AD_Language){
		String sql = "SELECT Description FROM C_Country_Trl " +
		             "WHERE C_Country_ID = ? AND AD_Language = ?";

		String countryName = DB.getSQLValueString(null, sql,
				new Object[]{country.get_ID(),AD_Language});

		return countryName != null ? countryName : country.getName();
	} //getCountry_trl

	public static String getUOM_trl(MUOM uom){
		return getUOM_trl(uom,AD_LANGUAGE);
	}

	public static String getUOM_trl(MUOM uom, String AD_Language){

		String sql = "SELECT UomSymbol FROM C_Uom_Trl " +
					 "WHERE C_UOM_ID = ? AND AD_Language = ?";

		String UOMSymbol = DB.getSQLValueString(null, sql,
				new Object[]{uom.get_ID(),AD_Language});

		return UOMSymbol != null ? UOMSymbol : uom.getUOMSymbol();
	} //getUOM_trl
	
	
	public static String getUOMName_trl(MUOM uom){
		return getUOMName_trl(uom,AD_LANGUAGE);
	}

	public static String getUOMName_trl(MUOM uom, String AD_Language){

		String sql = "SELECT Name FROM C_Uom_Trl " +
					 "WHERE C_UOM_ID = ? AND AD_Language = ?";

		String UOMSymbol = DB.getSQLValueString(null, sql,
				new Object[]{uom.get_ID(),AD_Language});

		return UOMSymbol != null ? UOMSymbol : uom.getUOMSymbol();
	} //getUOM_trl
	
	
	
	public static int getPreviousPeriod_ID (Properties ctx, int C_Period_ID){
		MPeriod period = MPeriod.get(ctx, C_Period_ID);
		return C_Period_ID = MPeriod.getC_Period_ID(ctx, AdempiereLBR.addDays(period.getStartDate(), -1),0);
	} //getPreviousPeriod_ID

	public static Integer getlbr_Ref_C_InvoiceLine_ID(Integer C_OrderLine_ID, String trx){

		String sql = "SELECT lbr_Ref_C_InvoiceLine_ID FROM C_OrderLine " +
				     "WHERE C_OrderLine_ID = ?";

		int refInvoiceLine = DB.getSQLValue(trx, sql,C_OrderLine_ID);

		return refInvoiceLine;
	} //getlbr_Ref_C_InvoiceLine_ID

	public static int checkLocatorExists(int M_Warehouse_ID, int C_BPartner_ID, String trx)
	{

		String sql = "SELECT M_Locator_ID FROM M_Locator WHERE C_BPartner_ID = ? " +
				     "AND M_Warehouse_ID = ?";

		int M_Locator_ID = DB.getSQLValue(trx, sql,
				new Object[]{C_BPartner_ID,M_Warehouse_ID});

		return M_Locator_ID;
	} //checkLocatorExists

	/**
	 * 	Returns the locator ID created automatically for
	 * 	the given business partner
	 *  @return C_Locator_ID
	 *  @contributor mgrigioni - Alterada a verificação do locator para o C_BPartner_ID,
	 *  	                     se o usuário alterar o value do parceiro o mesmo é replicado para o locator
	 */
	public static int getM_Locator_ID(int M_Warehouse_ID, MBPartner bpartner, String trx)
	{
		int M_Locator_ID = 0;
		Integer C_BPartner_ID = bpartner.get_ID();

		Properties ctx = Env.getCtx();

		M_Locator_ID = checkLocatorExists(M_Warehouse_ID, C_BPartner_ID, trx);

		if(M_Locator_ID > 0)
			return M_Locator_ID;

		MLocator locator = new MLocator(ctx,0,trx);
		locator.setM_Warehouse_ID(M_Warehouse_ID);
		locator.setValue(bpartner.getValue() + "|" + bpartner.getName());
		locator.setX(C_BPartner_ID.toString());
		locator.setY(C_BPartner_ID.toString());
		locator.setZ(C_BPartner_ID.toString());
		locator.set_ValueOfColumn("C_BPartner_ID", C_BPartner_ID);

		if(locator.save(trx))
			return locator.getM_Locator_ID();

		return -1;
	} //getM_Locator_ID

	 /**
	 * Verifica se é um estado brasileiro
	 * @param UF
	 * @return true = success, false = error
	 */
	public static boolean isRegionBR(String uf)
	{
		if(uf == null)
			return false;

		uf = uf.toUpperCase();

		if (uf.equals("AC") || uf.equals("AL") || uf.equals("AP") || uf.equals("AM") ||
			uf.equals("BA") || uf.equals("CE") || uf.equals("DF") || uf.equals("ES") ||
			uf.equals("GO") || uf.equals("MA") || uf.equals("MT") || uf.equals("MS") ||
			uf.equals("MG") || uf.equals("PA") || uf.equals("PB") || uf.equals("PR") ||
			uf.equals("PE") || uf.equals("PI") || uf.equals("RJ") || uf.equals("RN") ||
			uf.equals("RS") || uf.equals("RO") || uf.equals("RR") || uf.equals("SC") ||
			uf.equals("SP") || uf.equals("SE") || uf.equals("TO")){
			return true;
		}

		return false;
	} //isRegionBR

	public static MOrderLine getLastPurchase(Properties ctx, int M_Product_ID, String trx){
		return getLastPurchase(ctx,0,0,M_Product_ID,trx);
	}

	/**
	 * getLastPurchase
	 * @param ctx
	 * @param C_BPartner_ID
	 * @param M_Product_ID
	 * @param trx
	 * @return last MOrderLine
	 */
	public static MOrderLine getLastPurchase(Properties ctx, int C_Order_ID, int C_BPartner_ID, int M_Product_ID, String trx){

		Integer C_OrderLine_ID = null;

		String sql = "SELECT MAX(ol.C_OrderLine_ID) " +
					 "FROM C_Order o  " +
						"INNER JOIN C_OrderLine ol ON (o.C_Order_ID = ol.C_Order_ID) " +
					 "WHERE ol.M_Product_ID = ? " +
					 "AND o.C_Order_ID <> ? AND o.AD_Client_ID = ? " +
					 "AND ol.QtyEntered > 0 " +
					 "AND o.IsSOTrx = 'N' AND o.DocStatus = 'CO' ";

		if (C_BPartner_ID > 0 ){
			sql += "AND o.C_BPartner_ID = ? ";
		}

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try{
			pstmt = DB.prepareStatement (sql, trx);
			pstmt.setInt(1, M_Product_ID);
			pstmt.setInt(2, C_Order_ID);
			pstmt.setInt(3, Env.getAD_Client_ID(ctx));
			if (C_BPartner_ID > 0)
				pstmt.setInt (4, C_BPartner_ID);

			rs = pstmt.executeQuery ();
			if (rs.next ()){
				C_OrderLine_ID = rs.getInt(1);
			}
		}
		catch (Exception e){
			log.log(Level.SEVERE, "", e);
		}
		finally{
		  DB.close(rs, pstmt);
		  rs = null; pstmt = null;
		}

		if (C_OrderLine_ID == null || C_OrderLine_ID.intValue() == 0){
			if (C_BPartner_ID > 0)
				return getLastPurchase(ctx,C_Order_ID,0,M_Product_ID,trx);

			return null;
		}

		return new MOrderLine(ctx,C_OrderLine_ID.intValue(),trx);
	} //getLastPurchase

	public static String executionTime(long start,long end){

		Period period = new Period(start,end);
		String tempo  = TextUtil.lPad(period.getHours(),2)   + ":" +
						TextUtil.lPad(period.getMinutes(),2) + ":" +
						TextUtil.lPad(period.getSeconds(),2);

		return tempo;
	} //executionTime

	public static String getOsName(){

		String osname = System.getProperty("os.name");

		return osname.toLowerCase();
	}

	public static String getFileSeparator(){

		String FileSeparator = System.getProperty("file.separator");

		return FileSeparator;
	}

	public static String getLineSeparator(){

		String LineSeparator = System.getProperty("line.separator");

		return LineSeparator;
	}

	public static String getPath(){

		String Path = System.getProperty("user.dir");

		if (!Path.endsWith(getFileSeparator()))
			Path = Path + getFileSeparator();

		return Path;
	}

	public static void setPath(){

		String tmpDir = System.getProperty("java.io.tmpdir");
		if (tmpDir.endsWith(getFileSeparator())){
			tmpDir = tmpDir.substring(0, tmpDir.length()-1);
		}

		System.setProperty("user.dir", tmpDir);
	}


	/**
	 * Date Utils
	 */
	public static Timestamp addDays (Timestamp day, int offset)
	{
		if (day == null)
			day = new Timestamp(System.currentTimeMillis());
		//
		GregorianCalendar cal = new GregorianCalendar();
		cal.setTime(day);
		cal.set(Calendar.HOUR_OF_DAY, 0);
		cal.set(Calendar.MINUTE, 0);
		cal.set(Calendar.SECOND, 0);
		cal.set(Calendar.MILLISECOND, 0);
		if (offset != 0)
			cal.add(Calendar.DAY_OF_YEAR, offset);	//	may have a problem with negative (before 1/1)
		//
		return new Timestamp (cal.getTimeInMillis());
	}	//	addDays

	public static Timestamp addWeeks (Timestamp day, int offset)
	{
		if (day == null)
			day = new Timestamp(System.currentTimeMillis());
		//
		GregorianCalendar cal = new GregorianCalendar();
		cal.setTime(day);
		cal.set(Calendar.HOUR_OF_DAY, 0);
		cal.set(Calendar.MINUTE, 0);
		cal.set(Calendar.SECOND, 0);
		cal.set(Calendar.MILLISECOND, 0);
		if (offset != 0)
			cal.add(Calendar.WEEK_OF_YEAR, offset);	//	may have a problem with negative (before 1/1)
		//
		return new Timestamp (cal.getTimeInMillis());
	}	//	addWeeks

	public static Timestamp addMonths (Timestamp day, int offset)
	{
		if (day == null)
			day = new Timestamp(System.currentTimeMillis());
		//
		GregorianCalendar cal = new GregorianCalendar();
		cal.setTime(day);
		cal.set(Calendar.HOUR_OF_DAY, 0);
		cal.set(Calendar.MINUTE, 0);
		cal.set(Calendar.SECOND, 0);
		cal.set(Calendar.MILLISECOND, 0);
		if (offset != 0)
			cal.add(Calendar.MONTH, offset);	//	may have a problem with negative (before 1/1)
		//

		return new Timestamp (cal.getTimeInMillis());
	}	//	addMonths

	public static Timestamp addYears (Timestamp day, int offset)
	{
		if (day == null)
			day = new Timestamp(System.currentTimeMillis());
		//
		GregorianCalendar cal = new GregorianCalendar();
		cal.setTime(day);
		cal.set(Calendar.HOUR_OF_DAY, 0);
		cal.set(Calendar.MINUTE, 0);
		cal.set(Calendar.SECOND, 0);
		cal.set(Calendar.MILLISECOND, 0);
		if (offset != 0)
			cal.add(Calendar.YEAR, offset);	//	may have a problem with negative (before 1/1)
		//
		return new Timestamp (cal.getTimeInMillis());
	}	//	addYears
	
	/**
	 * getMonths
	 * Retorna um array com o primeiro dia de todos os meses no intervalo das datas
	 * @param dateFrom
	 * @param dateTo
	 * @return Timestamp[]
	 */
	public static Timestamp[] getMonths(Timestamp dateFrom, Timestamp dateTo){
		
		if (dateFrom.after(dateTo))
			return null;
		
		Calendar begin = new GregorianCalendar();
		begin.setTime(dateFrom);
				 
		Calendar end = new GregorianCalendar();
		end.setTime(dateTo);
		
		List<Timestamp> months = new ArrayList<Timestamp>();		 
		
		while (begin.before(end)){
			
			begin.set(Calendar.DATE, begin.getActualMinimum(Calendar.DAY_OF_MONTH));		
			months.add(new Timestamp(begin.getTimeInMillis()));
			
			begin.add(Calendar.MONTH, 1);
		}
		
		Timestamp[] retValue = new Timestamp[months.size()];
		months.toArray(retValue);
		return retValue;
	}
	
	/**
	 * firstDayMonth
	 * @param date
	 * @return Timestamp - Primeiro dia do mês
	 */
	public static Timestamp firstDayMonth(Timestamp date){
		Calendar cal = new GregorianCalendar();
		cal.setTime(date);
		cal.set(Calendar.DATE, cal.getActualMinimum(Calendar.DAY_OF_MONTH));

		return new Timestamp(cal.getTimeInMillis());
	}
	
	/**
	 * firstDayMonth
	 * @param Ano Ex. 2010
	 * @param Mes Ex. 1=Janeiro, 2=Fevereiro, 3=Março....
	 * @return Timestamp - Primeiro dia do mês
	 */
	public static Timestamp firstDayMonth(Integer Ano, Integer Mes){
		Calendar cal = new GregorianCalendar(Ano, Mes - 1, 1);
		cal.set(Calendar.DATE, cal.getActualMinimum(Calendar.DAY_OF_MONTH));

		return new Timestamp(cal.getTimeInMillis());
	}

	/**
	 * lastDayMonth
	 * @param date
	 * @return Timestamp - Último dia do mês
	 */
	public static Timestamp lastDayMonth(Timestamp date){
		Calendar cal = new GregorianCalendar();
		cal.setTime(date);
		cal.set(Calendar.DATE, cal.getActualMaximum(Calendar.DAY_OF_MONTH));

		return new Timestamp(cal.getTimeInMillis());
	}
	
	/**
	 * lastDayMonth
	 * @param Ano Ex. 2010
	 * @param Mes Ex. 1=Janeiro, 2=Fevereiro, 3=Março....
	 * @return Timestamp - Último dia do mês
	 */
	public static Timestamp lastDayMonth(Integer Ano, Integer Mes){
		Calendar cal = new GregorianCalendar(Ano, Mes - 1, 1);
		cal.set(Calendar.DATE, cal.getActualMaximum(Calendar.DAY_OF_MONTH));

		return new Timestamp(cal.getTimeInMillis());
	}
	
	/**
	 * Verifica se uma String contém exclusivamente dígitos
	 * 
	 * @param documentNo
	 * @return
	 */
	public static boolean isNumber(String documentNo)
	{
		if (documentNo == null)
			return false;
		else
		{
			for (int i=0; i<documentNo.length(); i++)
			{
				if (!Character.isDigit(documentNo.charAt(i)))
					return false;;
			}
		}
		return true;
	}	//	isNumber
	
	/**
	 * Retorna o timezone configurado (ajusta caso seja horário de verão)
	 * 
	 * @param AD_Org_ID
	 * @return timezone
	 */
	public static String getTimezone(int AD_Client_ID, int AD_Org_ID)
	{
		String DEFAULT_TIMEZONE = "-03:00";
		String timezone = MSysConfig.getValue("LBR_TIMEZONE", DEFAULT_TIMEZONE, AD_Client_ID, AD_Org_ID);
		
		if (timezone.length() < 5 || timezone.length() > 6) {
			log.log(Level.SEVERE, Msg.getMsg(Env.getCtx(), "LBR_WrongTimezoneFormat"));
			timezone = DEFAULT_TIMEZONE;
		}
		
		// 03:00 should be +03:00
		if (timezone.length() == 5 && !timezone.startsWith("-") && !timezone.startsWith("+"))
			timezone = "+" + timezone;
		
		boolean dayLightSaving = MSysConfig.getBooleanValue("LBR_DAYLIGHT_SAVING", false, AD_Client_ID, AD_Org_ID);
		
		if (dayLightSaving) {
			DateTimeFormatter formatter = DateTimeFormat.forPattern("HH:mm");
			DateTime time = formatter.parseDateTime(timezone.substring(1));
			time = time.minusHours(1);
			
			timezone = timezone.substring(0, 1) + formatter.print(time);
		}
		
		return timezone;
	}
} //AdempiereLBR
