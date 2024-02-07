package org.idempierelbr.base.util;

import java.io.File;
import java.io.IOException;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;

import org.adempiere.base.Service;
import org.adempiere.base.ServiceQuery;
import org.idempierelbr.base.service.IBankCollection;
import org.idempierelbr.base.service.IBankCollectionFactory;

public class OpenItemsUtil {

	/**
	 * Get a substring of a two-part text, separated by '-', ex: 1234-56
	 * @param text
	 * @param isDigit true if you want to get the text second part
	 * @return String substring or null
	 */
	public static String getPartialText(String text, boolean isDigit)
	{
		if (text == null)
			return null;
		
		String main = null;
		String digit = null;
		
		if (text.contains("-")) {
			int index = text.indexOf("-");
			main = text.substring(0, index);
			digit = text.substring(index+1, text.length());
		} else {
			main = text;
		}
		
		if (isDigit)
			return digit;
		else
			return main;
	}

	public static File createFile() throws IOException {
	
		String now = new SimpleDateFormat("ddMMyyHHmmss").format(new Date());
		File file = new File(System.getProperty("java.io.tmpdir") +
				System.getProperty("file.separator") + now + ".log");
		
		return file;
	}

	private static final GregorianCalendar BASE_FV = new GregorianCalendar(1997, Calendar.OCTOBER, 7);
	private static final int MILLIS_IN_DAY = 1000 * 60 * 60 * 24;

	public static String barcodeDV ( String input ) {
		
		int dac = 11-(dacWeightedSum(input, 2, 9)%11);
		
		if (dac == 0 || dac >= 10) {
			return "1";
		}
		return Integer.toString(dac);
	}

	/**
	 *   Generate a weighted sum from the elements of input
	 *   using the weights from the weightStart to weightEnd
	 * 
	 *   Computation works from right to left
	 * 
	 * @param input
	 * @param weightStart
	 * @param weightEnd
	 * @return weightedSum
	 */
	public static int dacWeightedSum ( String input , int weightStart , int weightEnd ) {
		return dacWeightedSum( input , weightStart , weightEnd , false , false );
	}

	/**
	 *   Generate a weighted sum from the elements of input
	 *   using the weights from the weightStart to weightEnd
	 *   optionally sum digits for values greater than 9
	 *   
	 *   Computation works from right to left
	 * 
	 * @param input
	 * @param weightStart
	 * @param weightEnd
	 * @param startLeft
	 * @param sumDigits
	 * @return weightedSum
	 */
	public static int dacWeightedSum ( String input , int weightStart , int weightEnd , boolean sumDigits  ) {
		return dacWeightedSum( input , weightStart , weightEnd , sumDigits , false );
	}

	/**
	 *   Generate a weighted sum from the elements of input
	 *   using the weights from the weightStart to weightEnd
	 *   optionally sum digits for values greater than 9,
	 *   optionally subtract 9 from digits greater than 9
	 *   
	 *   Computation works from right to left
	 * 
	 * @param input
	 * @param weightStart
	 * @param weightEnd
	 * @param startLeft
	 * @param sumDigits
	 * @param subtractNine
	 * @return weightedSum
	 */
	public static int dacWeightedSum ( String input , int weightStart , int weightEnd , boolean sumDigits , boolean subtractNine ) {
		int weightedSum = 0;
	
		int weight = weightStart;
		int weightPass = (weightStart>weightEnd?-1:1);
		int posStep = -1;
		int posStart = input.length()-1;
	
		for ( int count=0 ; count<input.length() ; count++ ) {
			int pos = posStart+count*posStep;
			int sum = Integer.parseInt( input.substring(pos, pos+1) ) * weight ;
			if ( sumDigits && sum>9) {
				sum = ((int)(sum/10))+(sum%10);
			} else if ( subtractNine && sum>9) {
				sum = sum - 9;
			}
			weightedSum = weightedSum + sum;
	
			if ( weight == weightEnd ) {
				weight = weightStart;
			} else {
				weight += weightPass;
			}
		}
		
		return weightedSum;
	}

	/** Using Calendar - THE CORRECT (& Faster) WAY**/  
	public static long daysBetween(final Calendar startDate, final Calendar endDate)
	{
	  // Remove time part from startDate and endDate
	  startDate.set(Calendar.HOUR_OF_DAY, 0);
	  startDate.set(Calendar.MINUTE, 0);
	  startDate.set(Calendar.SECOND, 0);
	  startDate.set(Calendar.MILLISECOND, 0);
	  endDate.set(Calendar.HOUR_OF_DAY, 0);
	  endDate.set(Calendar.MINUTE, 0);
	  endDate.set(Calendar.SECOND, 0);
	  endDate.set(Calendar.MILLISECOND, 0);
		
	  //assert: startDate must be before endDate  
	  long endInstant = endDate.getTimeInMillis();  
	  int presumedDays = 
	    (int) ((endInstant - startDate.getTimeInMillis()) / MILLIS_IN_DAY);  
	  Calendar cursor = (Calendar) startDate.clone();  
	  cursor.add(Calendar.DAY_OF_YEAR, presumedDays);  
	  long instant = cursor.getTimeInMillis();  
	  if (instant == endInstant)  
	    return presumedDays;
	
	  final int step = instant < endInstant ? 1 : -1;  
	  do {  
	    cursor.add(Calendar.DAY_OF_MONTH, step);  
	    presumedDays += step;  
	  } while (cursor.getTimeInMillis() != endInstant);  
	  return presumedDays;  
	}

	public static String fatorVencimento( Date vencimento ) {
		
		
		Calendar dataInicialTruncada = BASE_FV;
		Calendar dataFinal = GregorianCalendar.getInstance();
		dataFinal.setTime(vencimento);
		
		long fator = daysBetween ( dataInicialTruncada , dataFinal );
		String fv = TextUtil.pad( (int)fator , '0', 4, true);
		return fv;
	}

	/*
	 * @author Richard Madureira ( http://goo.gl/n8lutR )
	 */
	private static String formataSemSeparadores(Double valor, int digitosInteiros, int digitosFracionarios){
		String zero = "";
		int digitosTotais = digitosInteiros + digitosFracionarios;
		for (int i=1; i <= digitosTotais; i++) {
			zero += "0";
		}
		if (valor == null) {
			return zero;
		}
		DecimalFormatSymbols dfs = new DecimalFormatSymbols();
		DecimalFormat df = new DecimalFormat();
		df.setDecimalFormatSymbols(dfs);
		df.applyPattern(zero);
		String resultado = df.format(valor * (Math.pow(10, digitosFracionarios)));
		if (resultado.equals("-" + zero)) { // Trata o caso de -0.0
			resultado = resultado.substring(1);
		}
		if (resultado.length() > digitosTotais) {
			System.err.println("### Formatacao maior que quantidade de digitos (" + valor + "," + 
					digitosInteiros + "," + digitosFracionarios + " --> '" + resultado + "')");
			resultado = "";
			for (int i=1; i <= digitosTotais; i++) {
				resultado += "#";
			}
		}
		return resultado; 
	}

	public static String genTypeAble ( String barcode ) {
		String typeAble = "";
		
		String bloco1 = barcode.substring(0, 4)+barcode.substring(19, 24);
		String bloco2 = barcode.substring(24, 34);
		String bloco3 = barcode.substring(34);
		String dv = barcode.substring(4,5);
		String bloco4 = barcode.substring(5,19);
	
		typeAble += bloco1.substring(0 , 5 ) + "." + bloco1.substring(5) + genTypeAbleDV(bloco1)+" ";
		typeAble += bloco2.substring(0 , 5 ) + "." + bloco2.substring(5) + genTypeAbleDV(bloco2)+" ";
		typeAble += bloco3.substring(0 , 5 ) + "." + bloco3.substring(5) + genTypeAbleDV(bloco3)+" ";
		typeAble += dv+" ";
		typeAble += bloco4;
		
		return typeAble;
	}

	public static String genTypeAbleDV ( String typeAble ) {
		int weightedSum = dacWeightedSum (typeAble, 2, 1, true );
		
		int dac = 10-(weightedSum%10);
		
		if (dac == 10) {
			return "0";
		}
		return Integer.toString(dac);
	}

	/*
	 * @author Richard Madureira ( http://goo.gl/n8lutR )
	 */
	public static String getCampoDecimal(Double quantidade, int tamanhoCampo, int numerosDecimais) {
		String conteudo;
		if (quantidade == null) {
			quantidade = 0.0;
		}
		conteudo = formataSemSeparadores(quantidade, tamanhoCampo, numerosDecimais);//duas casas decimais
		if (conteudo == null) {
			System.err.println("Erro: Valor muito grande");
			Thread.currentThread().getStackTrace();
		}
		return conteudo;		
	}

	public static String stripDV ( String input ) {
		int index = input.indexOf('-');
	
		if (index == -1) return input;
	
		return input.substring(0, index);
	}

	public static IBankCollection getBankCollectionInstance( String routingNo ) {
		ServiceQuery query = new ServiceQuery();
		List<IBankCollectionFactory> factoryList = Service.locator().list(IBankCollectionFactory.class, query).getServices();
		if (factoryList != null)
		{
			for(IBankCollectionFactory factory : factoryList)
			{
				IBankCollection bankCollection = factory.newBankCollectionInstance(routingNo);
				if (bankCollection != null)
					return bankCollection;
			}
		}
		return null;
	}
}
