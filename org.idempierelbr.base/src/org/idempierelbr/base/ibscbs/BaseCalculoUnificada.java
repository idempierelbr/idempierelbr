/*
 * Adaptado da Calculadora RTC da Receita Federal (calculadora-rtc-regime-regular 1.7.2):
 * ElementoBaseCalculo e BaseCalculoUnificadaService. A tabela de elementos é a mesma, na
 * mesma ordem; na revisão periódica, compare com o enum ElementoBaseCalculo da Receita.
 *
 * MIT License
 *
 * Copyright (c) 2026 Receita Federal do Brasil
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 */
package org.idempierelbr.base.ibscbs;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * 	Base de cálculo unificada do IBS/CBS (regime regular), a partir dos valores do item
 * 	da NF-e/NFC-e.
 * 	<p>
 * 	Somam o valor dos produtos, frete, seguro, outras despesas, II (só NF-e de bem) e IS
 * 	(a partir de 2027). Subtraem o desconto e os tributos que saem da base: PIS e COFINS
 * 	(só em 2026); ICMS, DIFAL, FCP e ICMS monofásico (bens, até 2032) e ISSQN (serviços,
 * 	até 2032). Fonte: Calculadora RTC da Receita, enum {@code ElementoBaseCalculo}.
 * 	<p>
 * 	O resultado é a soma exata, sem arredondamento. Quem publica a base arredonda a 2 casas.
 */
public final class BaseCalculoUnificada {

	/** Natureza da operação */
	public enum Natureza { BEM, SERVICO }

	/** Bases a que um elemento se aplica: regime regular, IS e Simples Nacional */
	public enum Base { RG, IS, SN }

	/** Elementos da base, com a operação (soma ou subtrai), vigência e modelos válidos */
	public enum Elemento {
		V_PROD		("vProd",		true,	Set.of(Base.RG, Base.IS, Base.SN),	null,				2026, 2033, Set.of(55, 65)),
		V_FRETE		("vFrete",		true,	Set.of(Base.RG, Base.IS, Base.SN),	null,				2026, 2033, Set.of(55, 65)),
		V_SEG		("vSeg",		true,	Set.of(Base.RG, Base.IS, Base.SN),	null,				2026, 2033, Set.of(55, 65)),
		V_OUTRO		("vOutro",		true,	Set.of(Base.RG, Base.IS, Base.SN),	null,				2026, 2033, Set.of(55, 65)),
		V_II		("vII",			true,	Set.of(Base.RG, Base.IS),			Natureza.BEM,		2026, 2033, Set.of(55)),
		V_IS		("vIS",			true,	Set.of(Base.RG, Base.SN),			null,				2027, 2033, Set.of(55, 65)),
		V_DESC		("vDesc",		false,	Set.of(Base.RG, Base.IS, Base.SN),	null,				2026, 2033, Set.of(55, 65)),
		V_PIS		("vPIS",		false,	Set.of(Base.RG, Base.IS),			null,				2026, 2026, Set.of(55, 65)),
		V_COFINS	("vCOFINS",		false,	Set.of(Base.RG, Base.IS),			null,				2026, 2026, Set.of(55, 65)),
		V_ICMS		("vICMS",		false,	Set.of(Base.RG, Base.IS),			Natureza.BEM,		2026, 2032, Set.of(55, 65)),
		V_ICMS_UF_DEST("vICMSUFDest", false, Set.of(Base.RG, Base.IS),			Natureza.BEM,		2026, 2032, Set.of(55)),
		V_FCP		("vFCP",		false,	Set.of(Base.RG, Base.IS),			Natureza.BEM,		2026, 2032, Set.of(55, 65)),
		V_FCP_UF_DEST("vFCPUFDest",	false,	Set.of(Base.RG, Base.IS),			Natureza.BEM,		2026, 2032, Set.of(55)),
		V_ICMS_MONO	("vICMSMono",	false,	Set.of(Base.RG, Base.IS),			Natureza.BEM,		2026, 2032, Set.of(55, 65)),
		V_ISSQN		("vISSQN",		false,	Set.of(Base.RG, Base.IS),			Natureza.SERVICO,	2026, 2032, Set.of(55, 65));

		private final String tag;
		private final boolean soma;
		private final Set<Base> bases;
		private final Natureza natureza;
		private final int anoInicio;
		private final int anoFim;
		private final Set<Integer> modelos;

		Elemento(String tag, boolean soma, Set<Base> bases, Natureza natureza, int anoInicio, int anoFim,
				Set<Integer> modelos) {
			this.tag = tag;
			this.soma = soma;
			this.bases = bases;
			this.natureza = natureza;
			this.anoInicio = anoInicio;
			this.anoFim = anoFim;
			this.modelos = modelos;
		}

		/** Tag do campo no leiaute (ex.: vProd) */
		public String getTag() {
			return tag;
		}

		/**
		 * 	O elemento compõe a base no ano, natureza e modelo informados?
		 */
		public boolean compoeBase(int ano, Natureza naturezaOperacao, int modelo) {
			boolean anoValido = ano >= anoInicio && ano <= anoFim;
			boolean naturezaValida = natureza == null || natureza == naturezaOperacao;
			return anoValido && naturezaValida && modelos.contains(modelo);
		}

		/**
		 * 	Motivo de o elemento não compor a base (vigência, natureza ou modelo, nessa ordem)
		 */
		String motivoNaoComposicao(int ano, Natureza naturezaOperacao, int modelo) {
			if (ano < anoInicio || ano > anoFim)
				return "Campo " + tag + " não compõe a base em " + ano + " (vigência " + anoInicio + "–" + anoFim
						+ ") e foi ignorado no cálculo";
			if (natureza != null && natureza != naturezaOperacao)
				return "Campo " + tag + " não compõe a base para a natureza " + naturezaOperacao
						+ " (só " + natureza + ") e foi ignorado no cálculo";
			return "Campo " + tag + " não compõe a base no modelo " + modelo + " e foi ignorado no cálculo";
		}
	}

	/** Resultado: a base exata (sem arredondamento) e os avisos de valores ignorados */
	public static final class Resultado {
		private final BigDecimal base;
		private final List<String> avisos;

		Resultado(BigDecimal base, List<String> avisos) {
			this.base = base;
			this.avisos = Collections.unmodifiableList(avisos);
		}

		public BigDecimal getBase() {
			return base;
		}

		public List<String> getAvisos() {
			return avisos;
		}
	}

	private BaseCalculoUnificada() {
	}

	/**
	 * 	Calcula a base do regime regular (RG).
	 *
	 * 	@param valores valores do item por elemento; ausente ou nulo vale zero
	 * 	@param ano ano do fato gerador
	 * 	@param natureza natureza da operação
	 * 	@param modelo modelo do documento (55 ou 65)
	 * 	@return base exata e avisos
	 */
	public static Resultado calcular(Map<Elemento, BigDecimal> valores, int ano, Natureza natureza, int modelo) {
		if (modelo != 55 && modelo != 65)
			throw new IllegalArgumentException("Modelo do documento deve ser 55 (NF-e) ou 65 (NFC-e): " + modelo);

		Map<Elemento, BigDecimal> v = valores == null ? new EnumMap<>(Elemento.class) : valores;
		BigDecimal soma = BigDecimal.ZERO;
		BigDecimal subtrai = BigDecimal.ZERO;
		List<String> avisos = new ArrayList<>();

		for (Elemento elemento : Elemento.values()) {
			BigDecimal valor = v.get(elemento);
			if (valor == null || valor.signum() == 0 || !elemento.bases.contains(Base.RG))
				continue;

			if (!elemento.compoeBase(ano, natureza, modelo)) {
				avisos.add(elemento.motivoNaoComposicao(ano, natureza, modelo));
				continue;
			}

			if (elemento.soma)
				soma = soma.add(valor);
			else
				subtrai = subtrai.add(valor);
		}

		return new Resultado(ArredondamentoUtils.subtrair(soma, subtrai), avisos);
	}
}
