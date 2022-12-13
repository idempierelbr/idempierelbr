package com.todobom.idempierelbr.banking.santander.utils;

import org.idempierelbr.openitems.util.OpenItemsUtil;

public class SantanderUtils {
	

	public static String getDAC ( String number ) {
		// calcula digito verificador
		String DV = dacNNMod11(number);
		
		return ( DV );
	}
	
	
	public static String addDAC ( String number ) {
		return ( number + getDAC(number));
	}
	
	public static String addFormattedDAC ( String number ) {
		return ( number + "-" + getDAC(number));
	}
	
	public static String dacNNMod11( String input ) {
		int soma = OpenItemsUtil.dacWeightedSum(input, 2, 9);

		int dac = 11-(soma%11);
		if (dac>=10) {
			return "0";
		}
		return Integer.toString(dac);
	}
	

}
