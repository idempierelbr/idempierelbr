package org.idempierelbr.cnab240febraban.model.pojo;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

/**Classe que utilizada para criação de registros. Ficar atento para o campo endereco, que não é necessário em alguns registros.
 * 
 * @author Richard Mendes Madureira
 *
 */
public class Empresa2 {
	private static final int TAMANHO_ENDERECO = 86;

	private Inscricao2 inscricao;
	private String codigoConvenio;
	private ContaCorrente contaCorrente;
	private String nome;

	public Empresa2() {
		setInscricao(new Inscricao2());
		setCodigoConvenio(ArquivoUtils.BRANCO);
		setContaCorrente(new ContaCorrente());
		setNome(ArquivoUtils.BRANCO);
	}

	public String getCodigoConvenio() {
		return codigoConvenio;
	}

	public void setCodigoConvenio(String codigoConvenio) {
		this.codigoConvenio = codigoConvenio;
	}

	public ContaCorrente getContaCorrente() {
		return contaCorrente;
	}

	public void setContaCorrente(ContaCorrente contaCorrente) {
		this.contaCorrente = contaCorrente;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder(TAMANHO_ENDERECO);
		sb.append(getInscricao().toString()); //16
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCodigoConvenio(), 20));
		sb.append(getContaCorrente().toString()); //20
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getNome(), 30));
		
		return sb.toString();
	}

	public Inscricao2 getInscricao() {
		return inscricao;
	}

	public void setInscricao(Inscricao2 inscricao) {
		this.inscricao = inscricao;
	}

}