package org.idempierelbr.cnab240febraban.model.registro;

import java.util.List;

/**
 * Classe abstrata que é utilizada para qualquer tipo de registro criado. Ex.: HeaderArquivoBanco, HeaderLote, RegistroInicial, RegistroFinal, etc
 * @author Richard Mendes Madureira
 * @version 1.0
 *
 */
public abstract class Registro {
	private List<String> listaErros;
	public static final int TAMANHO_REGISTRO = 240;
	
	public abstract String getConteudoRegistro();
	
	/**
	 * Método que verifica se o tamanho do registro gerado possui o tamanho esperado de caracteres, armazenado em <code>Registro.TAMANHO_REGISTRO</code>
	 * @param <code>sb</code> - o objeto to tipo StringBuilder que contem os registros a serem verificados.
	 * Caso seja encontrado algum erro, o console avisará e interromperá a operação
	 */
	public void verificaTamanhoRegistro(StringBuilder sb) {
		if (sb.length() != TAMANHO_REGISTRO) {
			System.err.println("ATENÇÃO: O REGISTRO DE TRAILER DEVERIA POSSUIR " + TAMANHO_REGISTRO + " BYTES, PORÉM POSSUI " + sb.length());
			try {
				throw new Exception();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

	public List<String> getListaErros() {
		return listaErros;
	}

	public void setListaErros(List<String> listaErros) {
		this.listaErros = listaErros;
	}
}
