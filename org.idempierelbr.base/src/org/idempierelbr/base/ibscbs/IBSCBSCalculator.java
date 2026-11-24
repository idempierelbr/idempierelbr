package org.idempierelbr.base.ibscbs;

import static org.idempierelbr.base.ibscbs.ArredondamentoUtils.arredondarAliquotaPublicada;
import static org.idempierelbr.base.ibscbs.ArredondamentoUtils.arredondarValorFiscal;
import static org.idempierelbr.base.ibscbs.ArredondamentoUtils.percentualParaFracao;

import java.math.BigDecimal;

/**
 * 	Cálculo de um tributo do IBS/CBS (CBS, IBS da UF ou IBS do município) num item, no
 * 	regime regular, igual ao da Calculadora RTC da Receita (CalculoCbsIbsService 1.7.2).
 * 	<p>
 * 	Regras (ADR003 da calculadora; arredondamento HALF_EVEN de {@link ArredondamentoUtils}):
 * 	<ul>
 * 	<li>a alíquota é publicada com 4 casas e é ela que entra na conta;</li>
 * 	<li>alíquota efetiva = alíquota × (1 − redução da alíquota), publicada com 4 casas;</li>
 * 	<li>base = base unificada × (1 − redução da base), com 2 casas; negativa vira zero;</li>
 * 	<li>valor calculado = arred2(base × alíquota efetiva ÷ 100);</li>
 * 	<li>diferimento = arred2(base × alíquota efetiva ÷ 100 × pDif ÷ 100), sobre o valor exato,
 * 	e descontado uma única vez: valor devido = calculado − diferimento, nunca negativo.</li>
 * 	</ul>
 * 	Não trata monofasia, compra governamental, Imposto Seletivo nem tributação regular.
 * 	Esta classe não acessa o banco: quem chama busca alíquota, reduções e diferimento.
 */
public final class IBSCBSCalculator {

	private IBSCBSCalculator() {
	}

	/**
	 * 	Dados de entrada de um tributo, em pontos percentuais (ex.: 0.9 = 0,9 %).
	 */
	public static final class Entrada {
		private final BigDecimal baseCalculo;
		private final BigDecimal aliquota;
		private final BigDecimal percentualReducao;
		private final BigDecimal percentualReducaoBase;
		private final BigDecimal percentualDiferimento;

		/**
		 * 	@param baseCalculo base unificada do item (exata); nula vale zero
		 * 	@param aliquota alíquota nominal (%); nula vale zero (alíquota zero ou sem alíquota)
		 * 	@param percentualReducao redução da alíquota (%) da cClassTrib; nula vale zero
		 * 	@param percentualReducaoBase redução da base (%) da cClassTrib; nula vale zero
		 * 	@param percentualDiferimento diferimento (%) da cClassTrib; nulo ou zero = sem diferimento
		 */
		public Entrada(BigDecimal baseCalculo, BigDecimal aliquota, BigDecimal percentualReducao,
				BigDecimal percentualReducaoBase, BigDecimal percentualDiferimento) {
			this.baseCalculo = zeroSeNulo(baseCalculo);
			this.aliquota = zeroSeNulo(aliquota);
			this.percentualReducao = zeroSeNulo(percentualReducao);
			this.percentualReducaoBase = zeroSeNulo(percentualReducaoBase);
			this.percentualDiferimento = percentualDiferimento;
		}
	}

	/**
	 * 	Resultado de um tributo. Percentuais em pontos percentuais; valores com 2 casas.
	 */
	public static final class Resultado {
		private final BigDecimal baseCalculo;
		private final BigDecimal aliquota;
		private final BigDecimal percentualReducao;
		private final BigDecimal aliquotaEfetiva;
		private final BigDecimal valorCalculado;
		private final BigDecimal percentualDiferimento;
		private final BigDecimal valorDiferimento;
		private final BigDecimal valorDevido;
		private final BigDecimal aliquotaEfetivaRegular;
		private final BigDecimal valorRegular;

		Resultado(BigDecimal baseCalculo, BigDecimal aliquota, BigDecimal percentualReducao,
				BigDecimal aliquotaEfetiva, BigDecimal valorCalculado, BigDecimal percentualDiferimento,
				BigDecimal valorDiferimento, BigDecimal valorDevido) {
			this(baseCalculo, aliquota, percentualReducao, aliquotaEfetiva, valorCalculado, percentualDiferimento,
					valorDiferimento, valorDevido, null, null);
		}

		Resultado(BigDecimal baseCalculo, BigDecimal aliquota, BigDecimal percentualReducao,
				BigDecimal aliquotaEfetiva, BigDecimal valorCalculado, BigDecimal percentualDiferimento,
				BigDecimal valorDiferimento, BigDecimal valorDevido, BigDecimal aliquotaEfetivaRegular,
				BigDecimal valorRegular) {
			this.baseCalculo = baseCalculo;
			this.aliquota = aliquota;
			this.percentualReducao = percentualReducao;
			this.aliquotaEfetiva = aliquotaEfetiva;
			this.valorCalculado = valorCalculado;
			this.percentualDiferimento = percentualDiferimento;
			this.valorDiferimento = valorDiferimento;
			this.valorDevido = valorDevido;
			this.aliquotaEfetivaRegular = aliquotaEfetivaRegular;
			this.valorRegular = valorRegular;
		}

		/** vBC: base de cálculo publicada (2 casas) */
		public BigDecimal getBaseCalculo() {
			return baseCalculo;
		}

		/** pCBS, pIBSUF ou pIBSMun: alíquota publicada (4 casas) */
		public BigDecimal getAliquota() {
			return aliquota;
		}

		/** pRedAliq: redução da alíquota (%) */
		public BigDecimal getPercentualReducao() {
			return percentualReducao;
		}

		/** pAliqEfet: alíquota efetiva publicada (4 casas) */
		public BigDecimal getAliquotaEfetiva() {
			return aliquotaEfetiva;
		}

		/** Valor calculado, antes do diferimento (2 casas) */
		public BigDecimal getValorCalculado() {
			return valorCalculado;
		}

		/** pDif (4 casas); nulo quando não há diferimento */
		public BigDecimal getPercentualDiferimento() {
			return percentualDiferimento;
		}

		/** vDif (2 casas); nulo quando não há diferimento */
		public BigDecimal getValorDiferimento() {
			return valorDiferimento;
		}

		/** vCBS, vIBSUF ou vIBSMun: valor devido, já sem o diferimento (2 casas) */
		public BigDecimal getValorDevido() {
			return valorDevido;
		}

		/**
		 * pAliqEfetRegCBS, pAliqEfetRegIBSUF ou pAliqEfetRegIBSMun do grupo gTribRegular (4 casas);
		 * nulo quando não há tributação regular
		 */
		public BigDecimal getAliquotaEfetivaRegular() {
			return aliquotaEfetivaRegular;
		}

		/**
		 * vTribRegCBS, vTribRegIBSUF ou vTribRegIBSMun do grupo gTribRegular (2 casas);
		 * nulo quando não há tributação regular
		 */
		public BigDecimal getValorRegular() {
			return valorRegular;
		}

		/** O grupo gTribRegular tem valores (a classificação regular foi informada) */
		public boolean hasTributacaoRegular() {
			return aliquotaEfetivaRegular != null;
		}
	}

	/**
	 * 	Calcula um tributo.
	 *
	 * 	@param e entrada
	 * 	@return resultado
	 */
	public static Resultado calcular(Entrada e) {
		// A alíquota vai ao documento com até 4 casas e é ela que segue na conta
		BigDecimal aliquota = arredondarAliquotaPublicada(e.aliquota);

		// Alíquota efetiva: aliquota × (1 − percentualReducao), arredondada uma vez a 4 casas
		BigDecimal aliquotaEfetiva = arredondarAliquotaPublicada(
				aliquota.multiply(BigDecimal.ONE.subtract(percentualParaFracao(e.percentualReducao))));

		// Base: arredondada a 2 casas antes de multiplicar; negativa vira zero
		BigDecimal base = arredondarValorFiscal(
				e.baseCalculo.multiply(BigDecimal.ONE.subtract(percentualParaFracao(e.percentualReducaoBase))));
		if (base.signum() < 0)
			base = arredondarValorFiscal(BigDecimal.ZERO);

		// Conta exata sobre os números publicados, arredondada uma vez
		BigDecimal calculadoExato = base.multiply(percentualParaFracao(aliquotaEfetiva));
		BigDecimal calculado = arredondarValorFiscal(calculadoExato);

		BigDecimal percentualDiferimento = null;
		BigDecimal valorDiferimento = null;
		BigDecimal devido = calculado;

		if (e.percentualDiferimento != null && e.percentualDiferimento.signum() > 0) {
			percentualDiferimento = arredondarAliquotaPublicada(e.percentualDiferimento);
			// vDif = arred2(vBC × alíquota efetiva ÷ 100 × pDif ÷ 100), sobre o valor exato
			valorDiferimento = arredondarValorFiscal(
					calculadoExato.multiply(percentualParaFracao(percentualDiferimento)));
			// Diferimento descontado uma única vez
			devido = calculado.subtract(valorDiferimento);
			if (devido.signum() < 0)
				devido = arredondarValorFiscal(BigDecimal.ZERO);
		}

		return new Resultado(base, aliquota, e.percentualReducao, aliquotaEfetiva, calculado,
				percentualDiferimento, valorDiferimento, devido);
	}

	/**
	 * 	Calcula um tributo cuja cClassTrib exige a tributação regular (grupo gTribRegular,
	 * 	NT 2025.002-RTC UB68), como a suspensão (CST 550). Igual à calculadora
	 * 	({@code CalculoCbsIbsService.obterGrupoDesoneracao}):
	 * 	<ul>
	 * 	<li>o grupo principal sai com alíquota e valor zero, sem redução nem diferimento
	 * 		(UB56-10/UB56-20, exceção 1: pCBS igual a zero);</li>
	 * 	<li>a base é a da classificação regular;</li>
	 * 	<li>a alíquota efetiva regular é a alíquota da classificação regular com a redução dela,
	 * 		arredondada uma vez a 4 casas, e o valor regular é arred2(vBC × alíquota efetiva ÷ 100)
	 * 		(UB72-10, UB72b-10, UB72d-10).</li>
	 * 	</ul>
	 *
	 * 	@param baseCalculo base unificada do item, usada quando não há classificação regular
	 * 	@param regular alíquota, redução e redução da base da cClassTrib regular (o diferimento é
	 * 		ignorado); nula quando a classificação regular não foi informada: só o grupo principal,
	 * 		zerado, sem valores regulares
	 * 	@return resultado do grupo principal, com os valores regulares
	 */
	public static Resultado calcularComTributacaoRegular(BigDecimal baseCalculo, Entrada regular) {
		BigDecimal zero = arredondarValorFiscal(BigDecimal.ZERO);

		if (regular == null) {
			BigDecimal base = arredondarValorFiscal(zeroSeNulo(baseCalculo));
			if (base.signum() < 0)
				base = zero;
			return new Resultado(base, BigDecimal.ZERO, null, null, zero, null, null, zero);
		}

		Resultado r = calcular(new Entrada(regular.baseCalculo, regular.aliquota, regular.percentualReducao,
				regular.percentualReducaoBase, null));
		return new Resultado(r.getBaseCalculo(), BigDecimal.ZERO, null, null, zero, null, null, zero,
				r.getAliquotaEfetiva(), r.getValorCalculado());
	}

	private static BigDecimal zeroSeNulo(BigDecimal valor) {
		return valor == null ? BigDecimal.ZERO : valor;
	}
}
