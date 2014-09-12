package org.idempierelbr.cnab240febraban.model.pojo.error;

import java.util.ArrayList;
import java.util.List;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;



/**
 * Classe que armazena todas as mensagens de erro que poderão ser encontradas ao ser efetuada
 * a validação da estrutura e dos dados referentes ao arquivo de banco.
 * @author Richard Mendes Madureira
 *
 */
public class MensagensDeErro {
	List<MensagemDeErro> listaMensagensDeErro;
	
	public MensagensDeErro() {
		setListaMensagensDeErro(new ArrayList<MensagemDeErro>());
	}

	public List<MensagemDeErro> getListaMensagensDeErro() {
		return listaMensagensDeErro;
	}

	public void setListaMensagensDeErro(List<MensagemDeErro> listaMensagensDeErro) {
		this.listaMensagensDeErro = listaMensagensDeErro;
	}
	
	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder("-------------------ERROS ENCONTRADOS NO ARQUIVO-------------------");
		for(MensagemDeErro mensagemErro :  listaMensagensDeErro){
			sb.append(ArquivoUtils.NOVA_LINHA);
			sb.append(mensagemErro.toString());
		}
		return sb.toString();
	}
	
	public void add(MensagemDeErro mensagemDeErro){
		getListaMensagensDeErro().add(mensagemDeErro);
	}
}
