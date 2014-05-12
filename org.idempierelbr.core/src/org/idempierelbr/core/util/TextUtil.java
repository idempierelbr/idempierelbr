package org.idempierelbr.core.util;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import java.io.Writer;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.sql.Timestamp;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.Locale;
import java.util.logging.Level;

import org.compiere.util.CLogger;
import org.compiere.util.Env;

public class TextUtil {
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(TextUtil.class);

	/** EOL             */
	public static final String EOL_WIN32 = "\r\n";
	public static final String EOL_LINUX = "\n";
	public static final String EOL_MAC   = "\n\r";

	/** ENCODING        */
	public static final String UTF8     = "UTF-8";
	public static final String ISO88591 = "ISO-8859-1";

	/** Formatação de Números    */
	private static String nFormat = "#,##0.00";
    private static DecimalFormat decimalFormat = new DecimalFormat(nFormat,
    		new DecimalFormatSymbols(Locale.US));

	/** PIPE			*/
	public static final String PIPE = "|";

	/**	Round 			*/
	public static final String ZERO_STRING = Env.ZERO.setScale(2, BigDecimal.ROUND_HALF_UP).toPlainString();

	/** Alfabeto        */
	public static final String[] ALFAB = {"A","B","C","D","E",
						                  "F","G","H","I","J",
						                  "K","L","M","N","O",
						                  "P","Q","R","S","T",
						                  "U","V","X","W","Y","Z",
						                  "AA","AB","AC","AD","AE",
						                  "AF","AG","AH","AI","AJ",
						                  "AK","AL","AM","AN","AO"};
	
	/**
	 * Obtém apenas os números [0-9] de uma String
	 * @return String apenas os números, null ou vazio
	 */
	public String getNumbersOnly(String text)
	{
		if (text == null)
			return null;

		return text.trim().replaceAll("[^0-9]*", "");
	}
	
	/**
	 * 		Read File, default encoding is UTF-8
	 * 
	 * 	@param file
	 * 	@return
	 */
	public static String readFile (File file) throws Exception
	{
		return readFile (file, UTF8);
	}	//	readFile
	
	/**
	 * 		Read File
	 * 
	 * 	@param file
	 * 	@param encoding
	 * 	@return
	 */
	public static String readFile (File file, String encoding) throws Exception
	{
		StringBuffer result = new StringBuffer("");
		//
		String line;
		FileInputStream stream = new FileInputStream (file);
		InputStreamReader streamReader = new InputStreamReader(stream, encoding);
		@SuppressWarnings("resource")
		BufferedReader reader = new BufferedReader(streamReader);
		
		while ((line=reader.readLine()) != null)
		{
			result.append(line);
		}
		//
		return result.toString();
	}	//	readFile
	
	/**
	 *  readFile
	 *  Reads a file and return the lines into a string array
	 *  @param  String FileName (FilePath)
	 *  @return String[] lines
	 */
	public static String[] readFile (String FileName) throws FileNotFoundException{

		ArrayList<String> list = new ArrayList<String> ();

		FileInputStream stream = new FileInputStream(FileName);
		InputStreamReader streamReader = new InputStreamReader(stream);
		BufferedReader reader = new BufferedReader(streamReader);

		// Neste while lemos o arquivo linha a linha
		String line = null;
		try {
			while( (line=reader.readLine() ) != null ) {
				list.add(line);
			}
			reader.close();
			streamReader.close();
			stream.close();
		}
		catch (IOException e) {
			e.printStackTrace();
		}
		finally{
			reader = null; streamReader = null; stream = null;
		}

		String[] lines = new String[list.size ()];
		list.toArray (lines);
		return lines;
	} //readFile

	/**
	 * generateFile (DEFAULT ENCODING UTF-8)
	 * Create and write String to File
	 * 
	 * @param data
	 * @param filePath
	 * @return filePath
	 */
	public static String generateFile(String data, String filePath){
		return generateFile(data,filePath,UTF8);
	}
	
	/**
	 * 	Gera um arquivo
	 * 
	 * @param dados a serem gravados no arquivo
	 * @param nome do arquivo
	 * @param codificação (ex. UTF-8, ISO-8859-1, etc)
	 */
	public static String generateFile (String data, String filePath, String encoding)
	{
		try
		{
			Writer out = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(filePath), encoding));
			out.write(data);
			out.close();
		}
		catch (UnsupportedEncodingException e)
		{
			log.log(Level.SEVERE, "Formato não suportado="+encoding+", arquivo: " + filePath, e);
		}
		catch (IOException e)
		{
			log.log(Level.SEVERE, "Erro ao gerar Arquivo: " + filePath, e);
		}
		
		return filePath;
	}	//	generateFile

	/**
	 * generateTmpFile
	 * Create and write String to File at java.io.tmpdir
	 * @param data
	 * @param fileName
	 * @return filePath
	 */
	public static String generateTmpFile(String data, String fileName){

		int index = fileName.indexOf(AdempiereLBR.getFileSeparator());
		if (index != -1){ //Already have a directory set
			fileName = fileName.substring(index); //remove directory
		}

		String tmp = System.getProperty("java.io.tmpdir") +
		             System.getProperty("file.separator");

		return generateFile(data, tmp + fileName);
	} //generateTmpFile

	/**
	 *  createFile (DEFAULT ENCODING UTF-8)
	 *  Create a text file
	 *  @param  String FileName (FilePath)
	 *  @param  boolean append
	 *  @return FileWriter fw
	 */
	public static FileWriter createFile(String fileName, boolean append) throws IOException{
		return createFile(fileName,append,UTF8);
	}

	/**
	 *  createFile
	 *  Create a text file
	 *  @param  String FileName (FilePath)
	 *  @param  boolean append
	 *  @param  String encoding
	 *  @return FileWriter fw
	 */
	public static FileWriter createFile(String fileName, boolean append, String encoding) throws IOException {

		System.setProperty("file.encoding", encoding);

		FileWriter fw = new FileWriter(fileName, append);

		return fw;
	} //createFile

	/**
	 *  addLine
	 *  Add line
	 *  @param  FileWriter fw
	 *  @param  String line
	 */
	public static void addText(FileWriter fw, String text) throws IOException {
		fw.write(text);
	} //addText

	/**
	 *  addLine
	 *  Add line
	 *  @param  FileWriter fw
	 *  @param  String line
	 *  @param  boolean quoteValue ? surround the line with double quotes : do not surround the values with double quotes
	 */
	public static void addText(FileWriter fw, String text, boolean quoteValue) throws IOException {

		if (quoteValue)
			addText(fw, "\"" + text + "\"");
		else
			addText(fw,text);

	} //addText

	/**
	 *  closeFile
	 *  Close a text file
	 *  @param  String FileName (FilePath)
	 */
	public static void closeFile(FileWriter fw) throws IOException {
		fw.flush();
		fw.close();
	} //closeFile

	/**
	 *  deleteFile
	 *  Delete File
	 *  @param  String FileName (FilePath)
	 */
	public static void deleteFile(String fileName){
	    File fp = new File(fileName);
	    deleteFile(fp);
	} //deleteFile

	/**
	 * deleteFile
	 * @param File fp
	 */
	public static void deleteFile(File fp){
		boolean success = fp.delete();
	    if (!success)
	        throw new IllegalArgumentException("Delete: deletion failed");
	} //deleteFile

	/**
	 *  addEOL
	 *  End of Line
	 *  @param  FileWriter fw
	 */
	public static void addEOL(FileWriter fw) throws IOException {

		//if (POLBR.getOsName().startsWith("win"))
		    fw.write(EOL_WIN32);
		//else
		//   fw.write(EOL_LINUX);
	} //addEOL

	/**
	 * removeEOL
	 * @param String text
	 * @param boolean trim
	 * @return String without EOL
	 */
	public static String removeEOL(String text){
		return removeEOL(text," ");
	} //removeEOL
	
	public static String removeEOL(String text, String replaceStr){
		
		if (text == null)
			return "";
		
		text = text.replaceAll("[\r\n\t]", replaceStr);

		return itrim(text.trim(),replaceStr);
	}

	/**
	 * formatStringCodes
	 * @param code
	 * @return String with onlynumbers
	 */
	public static String formatStringCodes (String text)
	{
		if (text == null)
			return "";
		text = text.replaceAll("[^0-9]*", "");
		return text;
	}	//	formatStringCodes

	/**
	 * Formata e Valida String HH:MM para HH:MM:SS
	 * @param time
	 * @return string formata ou null
	 */
	public static String formatTimeString(String time){

		if (time != null && time.length() == 5){
			int hora = Integer.parseInt(time.substring(0, 2));
			int min  = Integer.parseInt(time.substring(3, 5));
			if (hora > 24)
				time = null;
			else if (min > 60)
				time = null;
			else
				time += ":00"; //SEGUNDOS
		}
		else{
			time = null;
		}
		return time;
	} //formatTimeString

	public static String pad(int value,char filler,int length,boolean lpad){
		return pad(((Integer)value).toString(), filler, length, lpad, false, false);
	}

	public static String pad(String value,char filler,int length,boolean lpad){
		return pad(value, filler, length, lpad, false, false);
	}

	/**
	 * 	pad
	 *  @param String value
	 *  @param char filler
	 *  @param int length
	 *  @param boolean lpad
	 *  @param boolean removeMask
	 *  @param boolean removeSpecial
	 * 	@return String value
	 */
	public static String pad(String value, char filler, int length, boolean lpad, boolean removeMask, boolean removeSpecial){

		StringBuffer fill = new StringBuffer("");
		             fill.append(filler);

		if (value == null) value = "";

		while (fill.length() <= length)
			fill.append(fill); //pad tuning :)

		if (removeMask)
			value = value.replaceAll("[.,-/]","");

		value = value.trim();

		if (removeSpecial)
			value = RemoverAcentos.remover(value);

		int rest = length - value.length();

		if (rest < 0){

			if (lpad)
				return value.substring(rest*(-1));
			else
				return value.substring(0, length);

		}

		if (lpad)
			value = fill.substring(0,rest) + value;
		else
			value += fill.substring(0, rest);

		return value;
	} //pad

	public static String lPad(Integer value, int length){
		if (value == null)
			value = 0;

		String temp = ((Integer)value).toString();
		return lPad(temp,length);
	}

	/**
	 * 	Left Pad with 0
	 *
	 *  @param String value
	 *  @param int length
	 * 	@return String value
	 */
	public static String lPad(String value, int length)
	{
		if (value == null)
			value = "";
		else
			value = toNumeric(value);

		return pad(value, '0', length, true, false, false);
	}

	/**
	 * 	Left Pad
	 *
	 *  @param String value
	 *  @param char filler
	 *  @param int length
	 * 	@return String value
	 */
	public static String lPad(String value, char filler, int length)
	{
		return pad(value, filler, length, true, false, false);
	}

	/**
	 * 	Left Pad with 0 (Scale 2 Default)
	 *
	 *  @param String value
	 *  @param int length
	 * 	@return String value
	 */
	public static String lPad(BigDecimal valueBD, int length)
	{
		return lPad(valueBD, length, 2);
	}

	/**
	 * 	Left Pad with 0
	 *
	 *  @param String value
	 *  @param int length
	 *  @param int scale
	 * 	@return String value
	 */
	public static String lPad(BigDecimal valueBD, int length, int scale)
	{
		if (valueBD == null)
			valueBD = Env.ZERO;

		String value = toNumeric(valueBD.setScale(scale, RoundingMode.HALF_UP).toString());
		return pad(value, '0', length, true, false, false);
	}

	/**
	 * 	Right Pad with blank space ' '
	 *
	 *  @param String value
	 *  @param int length
	 * 	@return String value
	 */
	public static String rPad(String value, int length)
	{
		if (value == null)
			value = "";
		return pad(retiraEspecial(value), ' ', length, false, false, false);
	}

	/**
	 * 	Right Pad
	 *
	 *  @param String value
	 *  @param char filler
	 *  @param int length
	 * 	@return String value
	 */
	public static String rPad(String value, char filler, int length)
	{
		return pad(value, filler, length, false, false, false);
	}

	/**************************************************************************
	 * 	retiraPontoFinal
	 *  Remove Period
	 *  @param String value
	 * 	@return String value
	 */
	public static String retiraPontoFinal(String value){

		if (value == null)
			return "";

		value = value.trim();

		if (value.endsWith(".") || value.endsWith(",") || value.endsWith(";") || value.endsWith("/")){
			value = value.substring(0,value.length()-1);
		}

        return value;
	}	//	retiraPontoFinal

	/**
	 * Retorna sempre somente os digitos<BR>
	 * de 0..9 de um String desconsiderando<BR>
	 * qualquer outro caracter.<BR><BR>
	 *
	 * <BR>Por Exemplo:
	 * <BR>Uma <tt>{@link String} "14.568-910"</tt>
	 * <BR>é automaticamente passada para <tt>"14568910"</tt>.
	 * <BR>Uma <tt>{@link String} "1%4#5?55%16a8&910"</tt>
	 * <BR>é automaticamente passada para <tt>"14555168"</tt>,
	 * <BR>só levando em conta os números.
	 *
	 * @param 	String Valor Original
	 * @return	String Somente Números
	 * */
	public static String toNumeric(String value)
	{
		if (value == null)
			return "";

		return value.replaceAll( "\\D*", "" );
	}	//	toNumeric

	/**
	 * 	Verifica se a string está entre os valores minímos e máximo
	 *
	 * @param 	value
	 * @param 	min
	 * @param 	max
	 * @return
	 */
	public static String checkSizeN (String value, int min, int max, boolean mandatory)
	{
		if (!mandatory && (value == null || value == ""))
			return "";
		else
			return checkSizeN (value, min, max);
	}

	/**
	 * 	Verifica se a string está entre os valores minímos e máximo
	 *
	 * @param 	value
	 * @param 	min
	 * @param 	max
	 * @return
	 */
	public static String checkSizeN (String value, int min, int max)
	{
		if (value == null)
			value = "";
		return checkSize (toNumeric(value), min, max, '0');
	}

	/**
	 * 	Verifica se a string está entre os valores minímos e máximo
	 *
	 * @param 	value
	 * @param 	min
	 * @param 	max
	 * @return
	 */
	public static String checkSize (String value, int min, int max, boolean mandatory)
	{
		if (!mandatory && (value == null || value == ""))
			return "";
		else
			return checkSize (value, min, max);
	}

	public static String checkSize(String value, int min, int max){
		return checkSize(value,min,max,' ');
	}
	
	public static String checkSize(String value, int max){
		return checkSize(value,0,max,' ');
	}

	/**
	 * 	Verifica se a string está entre os valores minímos e máximo
	 *
	 * @param 	value
	 * @param 	min
	 * @param 	max
	 * @return
	 */
	public static String checkSize (String value, int min, int max, char filler)
	{
		if (value == null)
			value = "";
		if (min > max)
			min=max;
		//
		if (value.length() < min)
			return rPad(value, filler, min);
		//
		if (value.length() > max)
			return rPad(value, filler, max);
		//
		return value;
	}

	/**
	 * Retorna sempre somente os digitos<BR>
	 * de 0..9 de um BigDecimal com 2 casas.<BR>
	 *
	 * <BR>Por Exemplo:
	 * <BR>Um <tt>{@link BigDecimal} "14568.910"</tt>
	 * <BR>é automaticamente passada para <tt>"14568,910"</tt>.
	 *
	 * @param 	BigDecimal Valor Original
	 * @param 	min
	 * @param 	max
	 * @return	String Numero formatado
	 * */
	public static String toNumeric(BigDecimal value, int min, int max, boolean mandatory)
	{
		if (!mandatory && value == null)
			return "";
		else
			return  toNumeric(value, min, max);
	}

	/**
	 * Retorna sempre somente os digitos<BR>
	 * de 0..9 de um BigDecimal com 2 casas.<BR>
	 *
	 * <BR>Por Exemplo:
	 * <BR>Um <tt>{@link BigDecimal} "14568.910"</tt>
	 * <BR>é automaticamente passada para <tt>"14568,910"</tt>.
	 *
	 * @param 	BigDecimal Valor Original
	 * @param 	min
	 * @param 	max
	 * @return	String Numero formatado
	 * */
	public static String toNumeric(BigDecimal value, int min, int max)
	{
		return toNumeric(value, min, max, 2);
	}

	/**
	 * Retorna sempre somente os digitos<BR>
	 * de 0..9 de um BigDecimal com 2 casas.<BR>
	 *
	 * <BR>Por Exemplo:
	 * <BR>Um <tt>{@link BigDecimal} "14568.910"</tt>
	 * <BR>é automaticamente passada para <tt>"14568,910"</tt>.
	 *
	 * @param 	BigDecimal Valor Original
	 * @param 	min
	 * @param 	max
	 * @param	scale
	 * @return	String Numero formatado
	 * */
	public static String toNumeric(BigDecimal value, int min, int max, int scale)
	{
		if (value == null)
			return pad("0,00", '0', min, true, false, false);
		if (min > max)
			min=max;
		//
		String result = toNumeric(value, scale);
		//
		if (result == null || result == "")
			return pad("0,00", '0', min, true, false, false);
		//
		if (result.length() < min)
			return pad(result, '0', min, true, false, false);
		//
		if (result.length() > max)
			return pad(result, '0', max, true, false, false);
		//
		return result;
	}

	/**
	 * Retorna sempre somente os digitos<BR>
	 * de 0..9 de um BigDecimal com 2 casas.<BR>
	 *
	 * <BR>Por Exemplo:
	 * <BR>Um <tt>{@link BigDecimal} "14568.910"</tt>
	 * <BR>é automaticamente passada para <tt>"14568,910"</tt>.
	 *
	 * @param 	BigDecimal Valor Original
	 * @return	String Numero formatado
	 * */
	public static String toNumeric(BigDecimal value)
	{
		return toNumeric(value, 2);
	}

	/**
	 * Retorna sempre somente os digitos<BR>
	 * de 0..9 de um BigDecimal com 2 casas.<BR>
	 *
	 * <BR>Por Exemplo:
	 * <BR>Um <tt>{@link BigDecimal} "14568.910"</tt>
	 * <BR>é automaticamente passada para <tt>"14568,910"</tt>.
	 *
	 * @param 	BigDecimal Valor Original
	 * @return	String Numero formatado
	 * */
	public static String toNumeric(BigDecimal value, int scale)
	{
		if (value == null)
			return "";
		//
		return value.setScale(scale, RoundingMode.HALF_UP).toString().replace('.', ',');
	}	//	toNumeric

	/**
	 * Retorna somente os digitos de 0..9<BR>
	 * e as letras de a..z e A..Z, desconsiderando<BR>
	 * qualquer outro caracter.<BR><BR>
	 *
	 * <BR>Por Exemplo:
	 * <BR>Uma <tt>{@link String} "123ABC##&&%%999"</tt>
	 * <BR>é automaticamente passada para <tt>"123ABC999"</tt>.
	 * <BR>Uma <tt>{@link String} "1%4#5?55%16a8&910bbb"</tt>
	 * <BR>é automaticamente passada para <tt>"1455516a8bbb"</tt>,
	 * <BR>só levando em conta os números.
	 *
	 * @param 	String Valor Original
	 * @return	String Somente Letras e Números
	 * */
	public static String retiraEspecial(String value)
	{
		StringBuffer result = new StringBuffer("");
		value = RemoverAcentos.remover(value);

		for (int i=0; i<value.length(); i++)
			if (Character.isDigit(value.charAt(i))
					|| Character.isLetter(value.charAt(i))
					|| value.charAt(i) == ' ')
				result.append(value.charAt(i));

		return result.toString();
	}	//	retiraEspecial

	/**
	 * Retorna a data formatada de acordo com o formato
	 * <BR>Dia: dd, Mes: mm, Ano: yyyy
	 *
	 * @param	Timestamp Data
	 * @param	String Formato da data
	 * @param	boolean Obrigatório
	 * @return	String Data Formatada
	 * */
	public static String timeToString(Timestamp ts, String format, boolean mandatory)
	{
		if (!mandatory && ts==null)
			return "";
		else
			return timeToString(ts, format);
	}

	/**
	 * Retorna a data formatada de acordo com o formato
	 * <BR>Dia: dd, Mes: mm, Ano: yyyy
	 *
	 * @param	Timestamp Data
	 * @param	String Formato da data
	 * @return	String Data Formatada
	 * */
	public static String timeToString(Timestamp ts, String format)
	{
		if(format == null || format.length() == 0)
			format = "yyyyMMdd";

		//	Se a data for nula retorna a qtd de zeros respectivos
		//	a quantidade de digitos do formato.
		if(ts == null)
			return lPad("", '0', format.length());

		SimpleDateFormat f = new SimpleDateFormat(format);
		return f.format(ts);
	}	//	timeToString

	/**
	 * Retorna a data formatada em AnoMesDia yyyymmdd
	 *
	 * @param	Timestamp Data
	 * @return	String Data Formatada
	 * */
	public static String timeToString(Timestamp ts)
	{
		return timeToString(ts, "yyyyMMdd");
	}	//	timeToString

	/**
	 * Retorna a data formatada
	 *
	 * @param	Date Data
	 * @param   String format Ex. ("dd/MM/yyyy")
	 * @return	String Data Formatada
	 * */
	public static String timeToString(Date value, String format) {
		Timestamp ts = new Timestamp(value.getTime());
		return timeToString(ts,format);
	}

	/**************************************************************************
	 * 	StringToDate
	 *  Convert String to Timestamp
	 *  @param String dataFormatada
	 *  @param String dateFormat
	 * 	@return Timestamp
	 */
	public static Timestamp stringToTime(String data,String dateFormat) {

		if (data == null || data.length() == 0)
			return null;
		
		SimpleDateFormat formatter = new SimpleDateFormat(dateFormat);
		ParsePosition pos = new ParsePosition(0);
		java.util.Date date = null;
		Timestamp timestamp = null;

		date = formatter.parse(data,pos);
		timestamp = new Timestamp(date.getTime());
		return timestamp;
	} //stringToTime

	/**
	 * Transforma BigDecimal em String seguindo o padrão #.##0,00
	 * @param value
	 * @return  String formatada
	 */
	public static String bigdecimalFormat(BigDecimal value){

		if (value == null)
			return ZERO_STRING;

		return decimalFormat.format(value);
	}

	/**
	 * bigdecimalToString
	 * @param BigDecimal value
	 * @param int Scale
	 * @return String with scale
	 */
	public static String bigdecimalToString(BigDecimal value, int scale){

		if (value == null)
			return ZERO_STRING;

		return value.setScale(scale, BigDecimal.ROUND_HALF_UP).toPlainString();
	} //bigdecimalToString

	/**
	 * getValor
	 * @param value
	 * @return String with scale
	 */
	public static String bigdecimalToString(BigDecimal value){
		return bigdecimalToString(value,2);
	} //bigdecimalToString

    /**
     *  iTrim
     *	@param String
     *  @return replace multiple whitespaces between words with single blank
     */
    public static String itrim(String source) {
    	return itrim(source," ");
    }
    
    public static String itrim(String source, String replaceStr){	
    	if (source != null)
    		return source.replaceAll("\\b\\s{2,}\\b", replaceStr);
    	
    	return "";
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
	}

	public static String checkOrderBy(String orderBy){

		if (orderBy == null || orderBy.equals(""))
			return null;

		if ((orderBy.toUpperCase()).startsWith("ORDER BY")){
			orderBy = orderBy.substring(8);
		}

		return orderBy.trim();
	} //checkOrderBy

	public static String checkWhereClause(String whereClause){

		if (whereClause == null || whereClause.equals(""))
			return null;

		if ((whereClause.toUpperCase()).startsWith("WHERE")){
			whereClause = whereClause.substring(5);
		}

		return whereClause.trim();
	} //checkWhereClause
	
	/**
	 * 	Verifica se lista contém uma determinada string.
	 * 
	 * 	@param stra
	 * 	@param strings
	 * 	@return TRUE se a lista contém a string, senão FALSO
	 */
	public static boolean match (Object obj, Object... objects)
	{
		if (obj == null || objects == null || objects.length == 0)
			return false;

		return Arrays.asList (objects).contains (obj);
	}
}
