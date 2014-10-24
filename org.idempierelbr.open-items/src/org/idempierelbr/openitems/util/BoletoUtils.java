package org.idempierelbr.openitems.util;

import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

import org.idempierelbr.core.util.TextUtil;
import org.idempierelbr.openitems.model.MLBRBoleto;


public class BoletoUtils {
	
	private static final int MILLIS_IN_DAY = 1000 * 60 * 60 * 24;  
	
	/** Using Calendar - THE CORRECT (& Faster) WAY**/  
	public static long daysBetween(final Calendar startDate, final Calendar endDate)
	{
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
	
	
	// private static final BASE_FV =
			
	private static final GregorianCalendar BASE_FV = new GregorianCalendar(1997, Calendar.OCTOBER, 7);
	
	public static String fatorVencimento( Date vencimento ) {
		
		
		Calendar dataInicialTruncada = BASE_FV;
		Calendar dataFinal = GregorianCalendar.getInstance();
		dataFinal.setTime(vencimento);
		
		long fator = daysBetween ( dataInicialTruncada , dataFinal );
		String fv = TextUtil.pad( (int)fator , '0', 4, true);
		return fv;
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
	
	public static String barcodeDV ( String input ) {
		
		int dac = 11-(dacWeightedSum(input, 2, 9)%11);
		
		if (dac == 0 || dac >= 10) {
			return "1";
		}
		return Integer.toString(dac);
	}
	

	public static String getBoletoRoutingNo ( MLBRBoleto boleto ) {
		return boleto.getC_Bank().getRoutingNo();
	}

	public static String genBarcode( MLBRBoleto boleto , String campolivre ) {
		String fv = fatorVencimento(boleto.getDueDate());
		String valor = ArquivoUtils.getCampoDecimal( boleto.getGrandTotal().doubleValue() , 8 , 2  );
		
		String routingNo = getBoletoRoutingNo( boleto );
		
		String barcode = routingNo+"9"+fv+valor+campolivre;
		
		String dv = barcodeDV(barcode);
		return (barcode.substring(0, 4)+dv+barcode.substring(4));
	}
	
	public static String genTypeAbleDV ( String typeAble ) {
		int weightedSum = dacWeightedSum (typeAble, 2, 1, true );
		
		int dac = 10-(weightedSum%10);
		
		if (dac == 10) {
			return "0";
		}
		return Integer.toString(dac);
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
	
	public static String stripDV ( String input ) {
		int index = input.indexOf('-');

		if (index == -1) return input;

		return input.substring(0, index);
	}

}
