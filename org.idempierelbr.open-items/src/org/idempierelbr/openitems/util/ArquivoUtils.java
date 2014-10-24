package org.idempierelbr.openitems.util;

import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.commons.lang.StringUtils;

//TODO LANÇAR EXCEPTION QUANDO INFORMAR VALOR INVÁLIDO
public class ArquivoUtils {
	public static final String BRANCO = "";
	public static final String NUMERO_MAXIMO_REGISTROS_NO_ARQUIVO = "9999";
	public static final String NUMERO_MAXIMO_REGISTROS_NO_LOTE = "9999";
	public static final String NUMERO_MAXIMO_SERVICOS_NO_ARQUIVO = "9999";
	public static final String NOVA_LINHA = "\n";
	
	public static String getCampoAlfaNumerico(String campo, int tamanhoCampo){
		if(campo==null) return StringUtils.rightPad("", tamanhoCampo, " ");
		if(campo.length() > tamanhoCampo){
			campo = campo.substring(0, tamanhoCampo);
		}
		return StringUtils.rightPad(campo, tamanhoCampo, " ");
	}
	
	public static String getCampoNumerico(String campo, int tamanhoCampo){
		if(campo==null) return StringUtils.rightPad("", tamanhoCampo, "0");
		campo = campo.trim();
		if(campo.length() > tamanhoCampo){
			campo = campo.substring(0, tamanhoCampo);
		}
		return StringUtils.leftPad(campo, tamanhoCampo, "0");
	}
	
	public static String getCampoNumerico(int campo, int tamanhoCampo){
		if(campo==0) return StringUtils.rightPad("", tamanhoCampo, "0");
		return StringUtils.leftPad(String.valueOf(campo), tamanhoCampo, "0");
	}
	
	public static String getCampoDataFormatada(Date data){
		SimpleDateFormat sdf = new SimpleDateFormat("ddMMyyyy");
		if(data!=null){
			return sdf.format(data);
		}
		return null;
	}
	
	public static String getCampoHoraFormatada(Date data){
		SimpleDateFormat sdf = new SimpleDateFormat("HHmmss");
		if(data!=null){
			return sdf.format(data);
		}
		return null;
	}

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
			System.err.println("### Formatação maior que quantidade de dígitos (" + valor + "," + 
					digitosInteiros + "," + digitosFracionarios + " --> '" + resultado + "')");
			resultado = "";
			for (int i=1; i <= digitosTotais; i++) {
				resultado += "#";
			}
		}
		return resultado; 
	}

	public static String getCampoNumerico(long campo, int tamanhoCampo) {
		if(campo==0) return StringUtils.rightPad("", tamanhoCampo, "0");
		return StringUtils.leftPad(String.valueOf(campo), tamanhoCampo, "0");
	}
	
	public void verificarTamanhoCampo(String campo, int tamanho){
		if(campo.length()!= tamanho){
			System.err.println("Tamanho do campo inválido");
			System.exit(1);
		}
	}

	public static String getCampoBooleano(boolean tituloAceito) {
		if(tituloAceito){
			return "1";
		}
		return "0";
	}
	
	public static String getCampoBooleano(Boolean tituloAceito) {
		if(tituloAceito!=null || tituloAceito){
			return "1";
		}
		return "0";
	}
}