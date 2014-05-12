package org.idempierelbr.nfe.base;

import org.compiere.util.CLogger;

public class NFeXMLGenerator {
	/** Log				*/
	private static CLogger log = CLogger.getCLogger(NFeXMLGenerator.class);

	/** XML             */
	private static final String FILE_EXT      = "-nfe.xml";
	
	/**	Indicação de Pagamento	*/
	private static final String IND_PAG_A_VISTA		=	"0";
	private static final String IND_PAG_A_PRAZO		=	"1";
	private static final String IND_PAG_OUTROS		=	"2";
	
	/**	Finalidade da NF-e		*/
	private static final String FIN_NFE_NORMAL			=	"1";
	private static final String FIN_NFE_COMPLEMENTAR	=	"2";
	private static final String FIN_NFE_AJUSTE			=	"3";
	
	/** Impostos						*/
	private static final String PIS				= "PIS";
	private static final String COFINS			= "COFINS";
	private static final String ICMS			= "ICMS";
	private static final String IPI				= "IPI";
	private static final String II				= "II";
	private static final String ISSQN			= "ISS";
	
	/** Código de Situação Tributária	*/
	public static final String CST_ICMS_00		= "00";
	public static final String CST_ICMS_10		= "10";
	public static final String CST_ICMS_20		= "20";
	public static final String CST_ICMS_30		= "30";
	public static final String CST_ICMS_40		= "40";
	public static final String CST_ICMS_41		= "41";
	public static final String CST_ICMS_50		= "50";
	public static final String CST_ICMS_51		= "51";
	public static final String CST_ICMS_60		= "60";
	public static final String CST_ICMS_70		= "70";
	public static final String CST_ICMS_90		= "90";
	public static final String CST_ICMS_Part	= "Part";
	public static final String CST_ICMS_ST		= "ST";
	
	/** Código de Situação Tributária	- IPI */
	public static final String CST_IPI_00		= "00";
	public static final String CST_IPI_01		= "01";
	public static final String CST_IPI_02		= "02";
	public static final String CST_IPI_03		= "03";
	public static final String CST_IPI_04		= "04";
	public static final String CST_IPI_49		= "49";
	public static final String CST_IPI_50		= "50";
	public static final String CST_IPI_51		= "51";
	public static final String CST_IPI_52		= "52";
	public static final String CST_IPI_53		= "53";
	public static final String CST_IPI_54		= "54";
	public static final String CST_IPI_55		= "55";
	public static final String CST_IPI_99		= "99";

	/** Código de Situação Tributária	- PIS e COFINS */
	public static final String CST_PC_01		= "01";
	public static final String CST_PC_02		= "02";
	public static final String CST_PC_03		= "03";
	public static final String CST_PC_04		= "04";
	public static final String CST_PC_05		= "05";
	public static final String CST_PC_06		= "06";
	public static final String CST_PC_07		= "07";
	public static final String CST_PC_08		= "08";
	public static final String CST_PC_09		= "09";
	public static final String CST_PC_49  		= "49";
	public static final String CST_PC_50  		= "50";
	public static final String CST_PC_51  		= "51";
	public static final String CST_PC_52  		= "52";
	public static final String CST_PC_53  		= "53";
	public static final String CST_PC_54  		= "54";
	public static final String CST_PC_55  		= "55";
	public static final String CST_PC_56  		= "56";
	public static final String CST_PC_60  		= "60";
	public static final String CST_PC_61  		= "61";
	public static final String CST_PC_62  		= "62";
	public static final String CST_PC_63  		= "63";
	public static final String CST_PC_64  		= "64";
	public static final String CST_PC_65  		= "65";
	public static final String CST_PC_66  		= "66";
	public static final String CST_PC_67  		= "67";
	public static final String CST_PC_70  		= "70";
	public static final String CST_PC_71  		= "71";
	public static final String CST_PC_72  		= "72";
	public static final String CST_PC_73  		= "73";
	public static final String CST_PC_74  		= "74";
	public static final String CST_PC_75  		= "75";
	public static final String CST_PC_98  		= "98";
	public static final String CST_PC_99  		= "99";
	
	/**	Simples Nacional				*/
	public static final String CSOSN_101	= "101";
	public static final String CSOSN_102	= "102";
	public static final String CSOSN_103	= "103";
	public static final String CSOSN_300	= "300";
	public static final String CSOSN_400	= "400";
	public static final String CSOSN_201	= "201";
	public static final String CSOSN_202	= "202";
	public static final String CSOSN_203	= "203";
	public static final String CSOSN_500	= "500";
	public static final String CSOSN_900	= "900";
	
	/**	Modalidade de determinação da BC do ICMS		*/
	private static final String MOD_BC_MVA			= "0";
	private static final String MOD_BC_PAUTA		= "1";
	private static final String MOD_BC_TABELADO		= "2";
	private static final String MOD_BC_VALOR_OP		= "2";
	
	private static final String MOT_DESONERA_TAXI			= "1";
	private static final String MOT_DESONERA_DEFICIENTE		= "2";
	private static final String MOT_DESONERA_PRODUTOR		= "3";
	private static final String MOT_DESONERA_FROTISTA		= "4";
	private static final String MOT_DESONERA_DIPLOMAT		= "5";
	private static final String MOT_DESONERA_AREA_LIVRE_COM	= "6";
	private static final String MOT_DESONERA_SUFRAMA		= "7";
	private static final String MOT_DESONERA_ORGAO_PUBLICO	= "8";
	private static final String MOT_DESONERA_OUTROS			= "9";
	
	private static final String ENQ_IPI_999	= "999";
}
