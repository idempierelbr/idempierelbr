package org.idempierelbr.cnab240febraban.validador;

import java.util.ArrayList;
import java.util.List;

import org.idempierelbr.cnab240febraban.enums.TipoRegistro;
import org.idempierelbr.cnab240febraban.model.registro.header.HeaderArquivo;



public class ValidadorEstruturaArquivo {
	
	public boolean validarHeaderArquivo(HeaderArquivo headerArquivo){
		List<String> lista = new ArrayList<String>();
		if(!TipoRegistro.HEADER_DE_ARQUIVO.equals(headerArquivo.getControle().getTipoRegistro())){
			lista.add("Erro de Valida��o do Header do Arquivo: O Tipo de Registro deve ser do tipo HEADER_ARQUIVO");
		}
		if(headerArquivo.getArquivo().getNumeroVersaoLayout() != 85){
			lista.add("Erro de Valida��o do Header do Arquivo: A Vers�o do layout deve ser a de n�mero 085");
		}
		if(headerArquivo.getConteudoRegistro().length() != 240){
			lista.add("Erro de Valida��o do Header do Arquivo: o Tamanho do registro deve ser de 240 caracteres e atualmente possui " + headerArquivo.getConteudoRegistro().length());
		}
		if(lista.isEmpty()){
			return true;
		}
		
		return false;
	}
	
	
	/**
	 * Validar tamanho dos registros
	 * validar se datas dos campos realmente são datas válidas
	 * validar se número máximo de linhas não ultrassou o limite permitido;
	 * validar se o total de registros está informado corretamente no trailer
	 * validar se registro de remessa está sendo utilizado para retorno
	 * validar se registro de retorno esta sendo utilizado para remessa
	 * validar de o controle possui a mesma informação em todos as classes
	 * 
	 */
}