package org.kenos.idempiere.lbr.mdfe.util;

import java.io.Writer;
import java.sql.Timestamp;
import java.text.ParseException;

import javax.swing.text.MaskFormatter;

import org.adempierelbr.util.TextUtil;
import org.compiere.util.DB;

import br.inf.portalfiscal.mdfe.TProcEmi;

/**
 * 		Utils for MDF-e
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: MDFeUtil.java, v1.0 2014/01/28 5:09:44 PM, ralexsander Exp $
 */
public class MDFeUtil
{
	/**
	 * 	RegEx para validação dos camposa do MDF-e
	 */
	public static final String ER1  = "[0-9]{7}";
	public static final String ER2  = "[0-9]{44}";
	public static final String ER3  = "[0-9]{15}";
	public static final String ER4  = "[0-9]{3}";
	public static final String ER5  = "[0-9]{14}";
	public static final String ER6  = "[0-9]{3,14}";
	public static final String ER7  = "[0-9]{0}|[0-9]{14}";
	public static final String ER8  = "[0-9]{11}";
	public static final String ER9  = "[0-9]{3,11}";
	public static final String ER10 = "0|0\\.[0-9]{2}|[1-9]{1}[0-9]{0,2}(\\.[0-9]{2})?";
	public static final String ER11 = "0\\.[0-9]{1}[1-9]{1}|0\\.[1-9]{1}[0-9]{1}|[1-9]{1}[0-9]{0,2}(\\.[0-9]{2})?";
	public static final String ER12 = "0|0\\.[0-9]{3}|[1-9]{1}[0-9]{0,7}(\\.[0-9]{3})?";
	public static final String ER13 = "0\\.[1-9]{1}[0-9]{2}|0\\.[0-9]{2}[1-9]{1}|0\\.[0-9]{1}[1-9]{1}[0-9]{1}|[1-9]{1}[0-9]{0,7}(\\.[0-9]{3})?";
	public static final String ER14 = "0|0\\.[0-9]{4}|[1-9]{1}[0-9]{0,7}(\\.[0-9]{4})?";
	public static final String ER15 = "0\\.[1-9]{1}[0-9]{3}|0\\.[0-9]{3}[1-9]{1}|0\\.[0-9]{2}[1-9]{1}[0-9]{1}|0\\.[0-9]{1}[1-9]{1}[0-9]{2}|[1-9]{1}[0-9]{0,7}(\\.[0-9]{4})?";
	public static final String ER16 = "0\\.[1-9]{1}[0-9]{5}|0\\.[0-9]{1}[1-9]{1}[0-9]{4}|0\\.[0-9]{2}[1-9]{1}[0-9]{3}|0\\.[0-9]{3}[1-9]{1}[0-9]{2}|0\\.[0-9]{4}[1-9]{1}[0-9]{1}|0\\.[0-9]{5}[1-9]{1}|[1-9]{1}[0- 9]{0,8}(\\.[0-9]{6})?";
	public static final String ER17 = "0|0\\.[0-9]{4}|[1-9]{1}[0-9]{0,10}(\\.[0-9]{4})?";
	public static final String ER18 = "0\\.[1-9]{1}[0-9]{3}|0\\.[0-9]{3}[1-9]{1}|0\\.[0-9]{2}[1-9]{1}[0-9]{1}|0\\.[0-9]{1}[1-9]{1}[0-9]{2}|[1-9]{1}[0-9]{0,10}(\\.[0-9]{4})?";
	public static final String ER19 = "0|0\\.[0-9]{3}|[1-9]{1}[0-9]{0,11}(\\.[0-9]{3})?";
	public static final String ER20 = "0\\.[1-9]{1}[0-9]{2}|0\\.[0-9]{2}[1-9]{1}|0\\.[0-9]{1}[1-9]{1}[0-9]{1}|[1-9]{1}[0-9]{0,11}(\\.[0-9]{3})?";
	public static final String ER21 = "0|0\\.[0-9]{4}|[1-9]{1}[0-9]{0,11}(\\.[0-9]{4})?";
	public static final String ER22 = "0\\.[1-9]{1}[0-9]{3}|0\\.[0-9]{3}[1-9]{1}|0\\.[0-9]{2}[1-9]{1}[0-9]{1}|0\\.[0-9]{1}[1-9]{1}[0-9]{2}|[1-9]{1}[0-9]{0,11}(\\.[0-9]{4})?";
	public static final String ER23 = "0|0\\.[0-9]{2}|[1-9]{1}[0-9]{0,12}(\\.[0-9]{2})?";
	public static final String ER24 = "0\\.[0-9]{1}[1-9]{1}|0\\.[1-9]{1}[0-9]{1}|[1-9]{1}[0-9]{0,12}(\\.[0-9]{2})?";
	public static final String ER25 = "[0-9]{0,14}|ISENTO|PR[0-9]{4,8}";
	public static final String ER26 = "[0-9]{2,14}";
	public static final String ER27 = "[1-9]{1}[0-9]{0,8}";
	public static final String ER28 = "0|[1-9]{1}[0-9]{0,2}";
	public static final String ER29 = "[0-9]{2}";
	public static final String ER30 = "[0-9]{1,4}";
	public static final String ER31 = "[!-ÿ]{1}[ -ÿ]{0,}[!-ÿ]{1}|[!-ÿ]{1}";
	public static final String ER32 = "(((20(([02468][048])|([13579][26]))-02-29))|(20[0-9][0-9])-((((0[1-9])|(1[0-2]))-((0[1-9])|(1\\d)|(2[0-8])))|((((0[13578])|(1[02]))-31)|(((0[1,3-9])|(1[0-2]))-(29|30)))))";
	public static final String ER33 = "[0-9]{8}";
	public static final String ER34 = "[0-9]{1}";
	public static final String ER35 = "(((20(([02468][048])|([13579][26]))-02-29))|(20[0-9][0-9])-((((0[1-9])|(1[0-2]))-((0[1-9])|(1\\d)|(2[0-8])))|((((0[13578])|(1[02]))-31)|(((0[1,3-9])|(1[0-2]))- (29|30)))))T(20|21|22|23|[0-1]\\d):[0-5]\\d:[0-5]\\d";
	public static final String ER36 = "1\\.[0-9]{2}";
	public static final String ER37 = "[1-9]{1}[0-9]{0,2}";
	public static final String ER38 = "MDFe[0-9]{44}";
	public static final String ER39 = "[0-9]{7,12}";
	public static final String ER40 = "[0-9]{7,10}";
	public static final String ER41 = "[0-9]{1,15}";
	public static final String ER42 = "1\\.00";
	public static final String ER43 = "(([0-1][0-9])|([2][0-3])):([0-5][0-9]):([0-5][0-9])";
	public static final String ER44 = "[1-9]{1}[0-9]{1,8}";
	public static final String ER45 = "[^@]+@[^\\.]+\\..+";
	public static final String ER46 = "[A-Z]{3}(([1-9]\\d{3})|(0[1-9]\\d{2})|(00[1-9]\\d)|(000[1-9]))";

	public static final String D1   = "11,12,13,14,15,16,17,21,22,23,24,25,26,27,28,29,31,32,33,35,41,42,43,50,51,52,53";
	public static final String D2   = "58";
	public static final String D3   = "AC,AL,AM,AP,BA,CE,DF,ES,GO,MA,MG,MS,MT,PA,PB,PE,PI,PR,RJ,RN,RO,RR,RS,SC,SE,SP,TO,EX";
	public static final String D4   = "1,2";
	public static final String D5   = "01, 02";
	public static final String D6   = "0,3";
	public static final String D7   = "1,2,3,4";
	public static final String D8   = "01,1B,02,2D,2E,04,06,07,08,8B,09,10,11,13,14,15,16,17,18,20,21,22,23,24,25,26,27,28,55";

	public static final String VERSION   = "3.00";
	public static final TProcEmi.Enum EMISSAO_APLICATIVO_CONTRIB   = TProcEmi.X_0;
	
	public static final String HEADER = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>";
	public static final String STATUS = "STATUS";
	
	public static final String TYPE_RECEPCAO 		= "MDFeRecepcao";
	public static final String TYPE_RECEPCAOSINC 	= "MDFeRecepcaoSinc";
	public static final String TYPE_RETRECEPCAO 	= "MDFeRetRecepcao";
	public static final String TYPE_RECEPCAOEVENTO 	= "MDFeRecepcaoEvento";
	public static final String TYPE_CONSULTA 		= "MDFeConsulta";
	public static final String TYPE_NAOENCERRADOS 	= "MDFeConsNaoEnc";
	public static final String TYPE_STATUS 			= "MDFeStatusServico";
	public static final String TYPE_QRCODEURL 		= "MDFeQRCodeURL";
	
	/**	MDFe Ambiente Único, registrado como SP	*/
	public static final int MDFE_REGION				= 465;
	
	public static final String STATUS_AUTORIZADO 			= "100";
	public static final String STATUS_CANCELADO 			= "101";
	public static final String STATUS_RECEBIDO 				= "103";
	public static final String STATUS_PROCESSADO 			= "104";
	public static final String STATUS_EM_PROCESSAMENTO 		= "105";
	public static final String STATUS_NAO_LOCALIZADO 		= "106";
	public static final String STATUS_ENCERRADO 			= "132";
	public static final String STATUS_EVENTO_VINCULADO 		= "135";
	public static final String STATUS_EVENTO_NAO_VINCULADO 	= "136";

	public static final String EVENTO_CANCELAMENTO 			= "110111";
	public static final String EVENTO_ENCERRAMENTO 			= "110112";
	public static final String EVENTO_INCLUSAO_CONDUTOR		= "110114";
	public static final String EVENTO_INCLUSAO_DFE 			= "110115";
	public static final String EVENTO_REGISTO_PASSAGEM 		= "310620";

	public static final String ENCODING 					= "UTF-8";
	
	public static final String qrCode = "{0}?chMDFe={1}&tpAmb={2}";
	
	/**
	 * 	Format Date and Time to XML Standard
	 * 	@param ts
	 * 	@return
	 */
	public static String formatDate (Timestamp ts)
	{
		return TextUtil.timeToString (ts, "yyyy-MM-dd");
	}	//	formatDate
	
	/**
	 * 	Format Date and Time to XML Standard
	 * 	@param ts
	 * 	@return
	 */
	public static String formatTime (Timestamp ts)
	{
		return TextUtil.timeToString (ts, "yyyy-MM-dd'T'HH:mm:ssXXX");
	}	//	formatTime
	
	/**
	 * 	Format Date and Time to XML Standard
	 * 	@param ts
	 * 	@return
	 */
	public static String formatTime (String ts)
	{
		return TextUtil.timeToString (TextUtil.stringToTime(ts, "yyyy-MM-dd'T'HH:mm:ss"), "dd/MM/yyyy' 'HH:mm:ss");
	}	//	getTime

	/**
	 * 	Return wrapped XML
	 * 	@param sw
	 * 	@return String
	 */
	public static String getWrapped (String s)
	{
		return getWrapped(new StringBuilder(s), "wrapper", null);
	}	//	getWrapped

	/**
	 * 	Return wrapped XML
	 * 	@param sw
	 * 	@return String
	 */
	public static String getWrapped (StringBuilder sb)
	{
		return getWrapped(sb, "wrapper", null);
	}	//	getWrapped

	/**
	 * 	Return wrapped XML
	 * 	@param sw
	 * 	@return String
	 */
	public static String getWrapped (StringBuilder sb, String tagName, String xmlns)
	{
		return HEADER + "<" + tagName + (xmlns != null && !xmlns.trim().isEmpty() ? " xmlns=\"" + xmlns + "\"" : "" ) + ">" + removeNS (sb) + "</" + tagName + ">";
	}	//	getWrapped

	/**
	 * 	Return wrapped XML
	 * 	@param sw
	 * 	@return String
	 */
	public static String getWrapped (Writer sw)
	{
		return getWrapped (new StringBuilder (sw.toString()));
	}	//	getWrapped
	
	/**
	 * 	Return wrapped XML
	 * 	@param sw
	 * 	@return String
	 */
	public static StringBuilder removeNS (StringBuilder sb)
	{
		sb = new StringBuilder (sb.toString()
				.replace(" xmlns:ns1=\"http://www.w3.org/2000/09/xmldsig#\"", "")
				.replace(" xmlns:ns2=\"http://www.w3.org/2000/09/xmldsig#\"", "")
				.replace("ns1:", "")
				.replace("ns2:", "")
				.replace(MDFeUtil.HEADER, "")
				.replace("<Signature>", "<Signature xmlns=\"http://www.w3.org/2000/09/xmldsig#\">").trim());
		return sb;
	}	//	getWrapped
	
	/**
	 * 	Formatar a chave do MDFe, separar por ponto a cada 4 caracteres
	 * 
	 * 	@param unformatted key
	 * 	@return formatted key
	 */
	public static String getMDFeProtocol (String key)
	{
		if (key == null)
			return "";
		//
		String sql = "SELECT CASE WHEN LBR_CommType='1' THEN "
						+ "LBR_NFeProt || ' ' || TO_CHAR (DateTrx, 'dd/MM/yyyy HH24:mm:ss') "
					+ "WHEN LBR_CommType='2' THEN "
						+ " 'Impressão em contingência. Obrigatória a autorização em 24 horas após esta impressão (' || TO_CHAR (DateTrx, 'dd/MM/yyyy HH24:mm') || ')' "
					+ "END "
				+ "FROM LBR_MDFe WHERE lbr_NFeID=?";
		return DB.getSQLValueString (null, sql, TextUtil.toNumeric (key));
	}	//	getMDFeProtocol
	
	/**
	 * 	Formatar a chave do MDFe, separar por ponto a cada 4 caracteres
	 * 
	 * 	@param unformatted key
	 * 	@return formatted key
	 */
	public static String formatMDFeKey (String key)
	{
		if (key == null)
			return "";
		//
		return format ("#### #### #### #### #### #### #### #### #### #### ####", TextUtil.toNumeric (key));
	}	//	formatMDFeKey
	
	/**
	 * 	Formatar o CNPJ
	 * 
	 * 	@param unformatted cnpj
	 * 	@return formatted cnpj
	 */
	public static String formatCNPJ (String cnpj)
	{
		if (cnpj == null)
			return "";
		//
		return format ("##.###.###/####-##", TextUtil.toNumeric (cnpj));
	}	//	formatCNPJ
	
	/**
	 * 	Formatar o CEP
	 * 
	 * 	@param unformatted cep
	 * 	@return formatted cep
	 */
	public static String formatCEP (String cep)
	{
		if (cep == null)
			return "";
		//
		return format ("#####-###", TextUtil.toNumeric (cep));
	}	//	formatCEP
	
	/**
	 * 	Formatar o CPF
	 * 
	 * 	@param unformatted cpf
	 * 	@return formatted cpf
	 */
	public static String formatCPF (String cpf)
	{
		if (cpf == null)
			return "";
		//
		return format ("###.###.###-##", TextUtil.toNumeric (cpf));
	}	//	formatCPF
	
	/**
	 * 	Formatar
	 * 	@param pattern
	 * 	@param value
	 * 	@return
	 */
	private static String format (String pattern, Object value)
	{
		MaskFormatter mask;
		try 
		{
			mask = new MaskFormatter(pattern);
			mask.setValueContainsLiteralCharacters(false);
			return mask.valueToString(value);
		}
		catch (ParseException e)
		{
			return "";
		}
		
	}	//	format
}	//	MDFeUtil
