package org.idempierelbr.base.ibscbs;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/**
 * 	Crítica do NCM contra a lista de NCM aplicável (anexo) da cClassTrib, com a mesma
 * 	tabela-verdade do NcmAplicavelService da Calculadora RTC da Receita (1.7.2).
 * 	<p>
 * 	Predicados, para NCM completo e cClassTrib com anexo vigente:
 * 	<ul>
 * 	<li>A: há vínculo vigente cujo código (NCM ou prefixo) cobre o NCM;</li>
 * 	<li>E: há exceção vigente, de um vínculo que cobre o NCM, cujo código cobre o NCM;</li>
 * 	<li>S: há vínculo vigente que cobre o NCM sem exceção, ou com uma exceção fora de
 * 	vigência. A fonte repete o vínculo genérico, um por exceção.</li>
 * 	</ul>
 * 	Rejeita quando !A ou (E e !S). cClassTrib sem anexo vigente aceita qualquer NCM.
 * 	<p>
 * 	Os códigos são só dígitos (sem os pontos do cadastro de NCM do LBR).
 */
public final class NcmAplicavel {

	/** Resultado da crítica */
	public enum Resultado {
		/** A cClassTrib não tem anexo vigente: qualquer NCM serve */
		SEM_ANEXO,
		/** O NCM consta do anexo */
		ACEITO,
		/** A cClassTrib tem anexo e o NCM não foi informado com 8 dígitos */
		NCM_INCOMPLETO,
		/** O NCM não consta do anexo, ou é exceção */
		NAO_VINCULADO;

		/** O NCM pode ser usado com a cClassTrib? */
		public boolean isValido() {
			return this == SEM_ANEXO || this == ACEITO;
		}
	}

	/** Exceção de um vínculo */
	public static final class Excecao {
		private final String ncm;
		private final LocalDate inicio;
		private final LocalDate fim;

		public Excecao(String ncm, LocalDate inicio, LocalDate fim) {
			this.ncm = ncm;
			this.inicio = inicio;
			this.fim = fim;
		}
	}

	/** Vínculo de NCM (ou prefixo) com a cClassTrib */
	public static final class Vinculo {
		private final String ncm;
		private final LocalDate inicio;
		private final LocalDate fim;
		private final List<Excecao> excecoes = new ArrayList<>();

		public Vinculo(String ncm, LocalDate inicio, LocalDate fim) {
			this.ncm = ncm;
			this.inicio = inicio;
			this.fim = fim;
		}

		public Vinculo addExcecao(Excecao excecao) {
			excecoes.add(excecao);
			return this;
		}

		public List<Excecao> getExcecoes() {
			return Collections.unmodifiableList(excecoes);
		}
	}

	private NcmAplicavel() {
	}

	/**
	 * 	Critica o NCM.
	 *
	 * 	@param ncm NCM do item, só dígitos; nulo ou vazio = não informado
	 * 	@param vinculos anexo da cClassTrib (todos os vínculos, vigentes ou não)
	 * 	@param data data do fato gerador
	 * 	@return resultado da crítica
	 */
	public static Resultado criticar(String ncm, List<Vinculo> vinculos, LocalDate data) {
		boolean temAnexo = false;
		for (Vinculo v : vinculos) {
			if (vigente(v.inicio, v.fim, data)) {
				temAnexo = true;
				break;
			}
		}

		if (!temAnexo)
			return Resultado.SEM_ANEXO;

		if (ncm == null || ncm.length() != 8)
			return Resultado.NCM_INCOMPLETO;

		boolean a = false;
		boolean e = false;
		boolean s = false;

		for (Vinculo v : vinculos) {
			if (!cobre(v.ncm, ncm))
				continue;

			boolean vinculoVigente = vigente(v.inicio, v.fim, data);
			if (vinculoVigente) {
				a = true;
				if (v.excecoes.isEmpty())
					s = true;
			}

			for (Excecao ex : v.excecoes) {
				boolean excecaoVigente = vigente(ex.inicio, ex.fim, data);
				// E não exige o vínculo vigente (igual à consulta da calculadora)
				if (excecaoVigente && cobre(ex.ncm, ncm))
					e = true;
				// S: vínculo vigente com uma exceção fora de vigência
				if (vinculoVigente && !excecaoVigente)
					s = true;
			}
		}

		if (!a || (e && !s))
			return Resultado.NAO_VINCULADO;

		return Resultado.ACEITO;
	}

	/**
	 * 	O código (NCM completo ou prefixo) cobre o NCM?
	 */
	static boolean cobre(String codigo, String ncm) {
		return codigo != null && !codigo.isEmpty() && ncm.startsWith(codigo);
	}

	/**
	 * 	data entre início e fim, inclusive; fim nulo = sem fim
	 */
	static boolean vigente(LocalDate inicio, LocalDate fim, LocalDate data) {
		if (inicio != null && data.isBefore(inicio))
			return false;
		return fim == null || !data.isAfter(fim);
	}
}
