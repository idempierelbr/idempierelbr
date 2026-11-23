/*
 * Copiado da Calculadora RTC da Receita Federal (calculadora-rtc-regime-regular 1.7.2,
 * src/main/java/br/gov/serpro/rtc/shared/util/ArredondamentoUtils.java), sem mudança no
 * código; só o pacote foi trocado. Ao atualizar, copie de novo o arquivo inteiro.
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
import java.math.MathContext;
import java.math.RoundingMode;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Stream;

/**
 * Política numérica centralizada da Calculadora RTC.
 * <p>
 * <b>ARQUIVO COMPARTILHADO.</b> Este arquivo é idêntico, byte a byte, na {@code api-regime-geral} e
 * na {@code api-simples-nacional}. Alterá-lo exige alterar a cópia do outro projeto e a constante
 * com o SHA-256 esperado no teste {@code Teste_ArredondamentoUtilsCopiaUnica} dos dois projetos.
 * Não crie uma segunda classe utilitária de arredondamento: o que faltar entra aqui, nas duas
 * cópias.
 * <p>
 * Regras:
 * <ul>
 *   <li><b>Aritmética interna exata.</b> Soma, subtração, multiplicação e as conversões entre
 *       percentual e fração ({@link #percentualParaFracao}, {@link #fracaoParaPercentual}) não
 *       arredondam: em {@link BigDecimal} essas operações são exatas. Não há precisão interna de
 *       escala fixa — 8 casas de uma fração como {@code 0.000186738…} preservam só 4 ou 5 dígitos
 *       significativos e mudam centavos em parte relevante dos itens.</li>
 *   <li><b>Divisão</b> é a única operação interna que pode não ter resultado finito; quando
 *       necessária, usa {@link #CONTEXTO_DIVISAO} (dígitos significativos, não casas
 *       decimais).</li>
 *   <li><b>Cada número publicado é arredondado uma vez, no cálculo</b>, na casa do leiaute: valor
 *       monetário por {@link #arredondarValorFiscal} (2 casas, tipo 13v2); alíquota por
 *       {@link #arredondarAliquotaPublicada} (4 casas, tipo 3v2-4) ou {@link #arredondarAliquota}
 *       (casas do documento). O objeto de resposta guarda o número final. Quais alíquotas cada
 *       API arredonda antes de multiplicar a base está registrado na ADR003 de cada projeto.</li>
 *   <li><b>Somas usam os valores publicados</b> ({@link #totalizar}): o total sempre fecha com a
 *       soma dos itens, e a soma das partes fecha com o valor inteiro. Quando um valor é
 *       repartido em parcelas, {@link #ratearValorFiscal} garante que as parcelas somem o
 *       total.</li>
 *   <li><b>Apresentação</b>: {@link #formatarMoeda}, {@link #formatarAliquota} e
 *       {@link #formatarQuantidade} são usados pelos serializers. Para um número já arredondado no
 *       cálculo, apenas formatam: o texto tem o mesmo valor do número guardado.</li>
 *   <li><b>Modo de arredondamento</b>: HALF_EVEN ({@link #MODO}), conforme a ABNT NBR 5891 — quando
 *       a parte descartada é exatamente meio, arredonda-se para o algarismo par. É convenção do
 *       projeto; não há dispositivo legal que fixe o modo de arredondamento dos valores de
 *       IBS/CBS. O art. 349, § 14, da LC 214/2025 trata apenas da fixação das alíquotas de
 *       referência pelo Senado (arredondamento ao décimo de ponto percentual) e não se aplica ao
 *       cálculo por operação.</li>
 * </ul>
 * <p>
 * PARÂMETROS (constantes deste arquivo — alterar exige revisar esta política; nada disso vive em
 * banco ou em {@code application.yml}, para que o cálculo oficial não varie por ambiente):
 * {@link #MODO}, {@link #ESCALA_VALOR_FISCAL}, {@link #ESCALA_ALIQUOTA_MIN},
 * {@link #ESCALA_ALIQUOTA_MAX}, {@link #CONTEXTO_DIVISAO} e os limites de entrada
 * ({@link #DIGITOS_INTEIROS_ALIQUOTA_ENTRADA}, {@link #CASAS_ALIQUOTA_ENTRADA},
 * {@link #DIGITOS_INTEIROS_VALOR_ENTRADA}).
 * <p>
 * Serializers que delegam a esta classe: {@code BigDecimalTDec1302Serializer},
 * {@code BigDecimalTDec0302_04Serializer} e {@code BigDecimalTDec1104OpRTCSerializer} (os pacotes
 * diferem entre os projetos).
 */
public final class ArredondamentoUtils {

    // ─── Parâmetros ────────────────────────────────────────────────────────────

    /** Modo de arredondamento único: HALF_EVEN (ABNT NBR 5891). */
    public static final RoundingMode MODO = RoundingMode.HALF_EVEN;

    /** Casas decimais do valor fiscal (tipo 13v2 do leiaute). */
    public static final int ESCALA_VALOR_FISCAL = 2;

    /** Mínimo de casas decimais na apresentação de alíquotas (tipo 3v2-4). */
    public static final int ESCALA_ALIQUOTA_MIN = 2;

    /** Máximo de casas decimais de uma alíquota publicada (tipo 3v2-4). */
    public static final int ESCALA_ALIQUOTA_MAX = 4;

    /**
     * Contexto de divisão: 34 dígitos SIGNIFICATIVOS (IEEE 754 decimal128), HALF_EVEN. Única
     * fonte de arredondamento interno permitida, e só para divisões.
     */
    public static final MathContext CONTEXTO_DIVISAO = new MathContext(34, MODO);

    /** Entrada: máximo de dígitos inteiros de uma alíquota em pontos percentuais (tipo 3v2-4). */
    public static final int DIGITOS_INTEIROS_ALIQUOTA_ENTRADA = 3;

    /**
     * Entrada: máximo de casas decimais de uma alíquota em pontos percentuais, onde a API aceita
     * a precisão integral da origem. Comporta a precisão integral do PGDAS (fração com até 28
     * casas, ou seja, 26 em pontos percentuais) e limita o custo do cálculo.
     */
    public static final int CASAS_ALIQUOTA_ENTRADA = 34;

    /** Entrada: máximo de dígitos inteiros de um valor monetário (tipo 13v2). */
    public static final int DIGITOS_INTEIROS_VALOR_ENTRADA = 13;

    /** Escala de apresentação para quantidades (4 casas decimais). */
    private static final int ESCALA_QUANTIDADE = 4;

    private ArredondamentoUtils() {
        throw new UnsupportedOperationException("Utility class");
    }

    // ─── Aritmética interna (exata) ────────────────────────────────────────────

    /** Multiplicação exata (sem arredondamento); nulo se algum operando for nulo. */
    public static BigDecimal multiplicar(BigDecimal v1, BigDecimal v2) {
        if (v1 == null || v2 == null) {
            return null;
        }
        return v1.multiply(v2);
    }

    /** Subtração exata (sem arredondamento); nulo se algum operando for nulo. */
    public static BigDecimal subtrair(BigDecimal v1, BigDecimal v2) {
        if (v1 == null || v2 == null) {
            return null;
        }
        return v1.subtract(v2);
    }

    /**
     * Divisão com {@link #CONTEXTO_DIVISAO} (34 dígitos significativos, HALF_EVEN); nulo se
     * algum operando for nulo. Use apenas quando o quociente puder não ser finito.
     */
    public static BigDecimal dividir(BigDecimal dividendo, BigDecimal divisor) {
        if (dividendo == null || divisor == null) {
            return null;
        }
        return dividendo.divide(divisor, CONTEXTO_DIVISAO);
    }

    /** Soma exata de um stream de valores (sem arredondamento). */
    public static BigDecimal totalizar(Stream<BigDecimal> valores) {
        return valores.reduce(BigDecimal.ZERO, BigDecimal::add);
    }

    /** Pontos percentuais → fração (ex.: {@code 1.25} → {@code 0.0125}), exata. */
    public static BigDecimal percentualParaFracao(BigDecimal percentual) {
        return percentual == null ? null : percentual.movePointLeft(2);
    }

    /** Fração → pontos percentuais (ex.: {@code 0.006132} → {@code 0.6132}), exata. */
    public static BigDecimal fracaoParaPercentual(BigDecimal fracao) {
        return fracao == null ? null : fracao.movePointRight(2);
    }

    // ─── Números publicados (um arredondamento por número, no cálculo) ─────────

    /**
     * Valor fiscal: o valor exato arredondado UMA vez a {@link #ESCALA_VALOR_FISCAL} casas com
     * {@link #MODO}. É o valor que vai para o documento; somas e totais usam esses valores.
     */
    public static BigDecimal arredondarValorFiscal(BigDecimal valor) {
        return valor == null ? null : valor.setScale(ESCALA_VALOR_FISCAL, MODO);
    }

    /**
     * Alíquota publicada (pontos percentuais, tipo 3v2-4): a alíquota exata arredondada UMA vez a
     * {@link #ESCALA_ALIQUOTA_MAX} casas com {@link #MODO}. Onde a política do projeto determina
     * que o número publicado é o que entra na conta seguinte, é esta alíquota que multiplica a
     * base.
     */
    public static BigDecimal arredondarAliquotaPublicada(BigDecimal aliquota) {
        return aliquota == null ? null : aliquota.setScale(ESCALA_ALIQUOTA_MAX, MODO);
    }

    /**
     * Alíquota do LEIAUTE de um documento: a alíquota (pontos percentuais) arredondada a
     * {@code casas} casas com {@link #MODO}. Usada quando o documento exige um número de casas
     * próprio — na NFS-e, 2 casas. {@code casas} nulo = precisão integral (sem mudança).
     */
    public static BigDecimal arredondarAliquota(BigDecimal aliquota, Integer casas) {
        return aliquota == null || casas == null ? aliquota : aliquota.setScale(casas, MODO);
    }

    /**
     * Rateio de um valor fiscal em parcelas que somam o total.
     * <p>
     * O total é a soma exata das parcelas, arredondada UMA vez ({@link #arredondarValorFiscal}).
     * Cada parcela recebe o seu valor exato truncado no centavo; os centavos que faltam para o
     * total vão, um a um, às parcelas de maior resto (empate: a de menor posição na lista). O
     * resultado tem a mesma ordem da entrada, e a soma das parcelas devolvidas é igual ao total.
     *
     * @param parcelasExatas valores exatos de cada parcela, não negativos e não nulos
     * @return parcelas com {@link #ESCALA_VALOR_FISCAL} casas, na ordem da entrada
     */
    public static List<BigDecimal> ratearValorFiscal(List<BigDecimal> parcelasExatas) {
        final BigDecimal total = arredondarValorFiscal(totalizar(parcelasExatas.stream()));
        final List<BigDecimal> parcelas = new ArrayList<>(parcelasExatas.size());
        final List<BigDecimal> restos = new ArrayList<>(parcelasExatas.size());
        final List<Integer> ordem = new ArrayList<>(parcelasExatas.size());
        BigDecimal distribuido = BigDecimal.ZERO;
        for (int i = 0; i < parcelasExatas.size(); i++) {
            final BigDecimal exata = parcelasExatas.get(i);
            final BigDecimal truncada = exata.setScale(ESCALA_VALOR_FISCAL, RoundingMode.DOWN);
            parcelas.add(truncada);
            restos.add(exata.subtract(truncada));
            ordem.add(i);
            distribuido = distribuido.add(truncada);
        }
        // maior resto primeiro; a ordenação é estável, então o empate fica com a menor posição
        ordem.sort((a, b) -> restos.get(b).compareTo(restos.get(a)));
        final BigDecimal centavo = BigDecimal.ONE.movePointLeft(ESCALA_VALOR_FISCAL);
        final int centavosFaltantes = total.subtract(distribuido)
                .movePointRight(ESCALA_VALOR_FISCAL).intValueExact();
        for (int k = 0; k < centavosFaltantes; k++) {
            final int posicao = ordem.get(k % ordem.size());
            parcelas.set(posicao, parcelas.get(posicao).add(centavo));
        }
        return parcelas;
    }

    // ─── Formatação para apresentação (usada pelos serializers) ───────────────
    //
    // TODAS as conversões BigDecimal → String para saída JSON passam por aqui.
    // Nenhum outro arquivo deve chamar setScale() + toPlainString() diretamente.

    /**
     * Formata um valor monetário com exatamente 2 casas decimais. Um valor fiscal já arredondado
     * no cálculo sai sem mudança; um valor com mais casas é arredondado com {@link #MODO}.
     * <p>
     * Equivalente Jackson: {@code BigDecimalTDec1302Serializer}
     *
     * @param value valor a formatar (não nulo)
     * @return string com exatamente 2 casas decimais (ex: "804.37")
     */
    public static String formatarMoeda(BigDecimal value) {
        return value.setScale(ESCALA_VALOR_FISCAL, MODO).toPlainString();
    }

    /**
     * Formata uma alíquota/percentual com casas decimais variáveis (mínimo 2, máximo 4).
     * O valor é arredondado com HALF_EVEN para 4 casas, depois os zeros à direita
     * são removidos, respeitando o mínimo de 2 casas.
     * <p>
     * Equivalente Jackson: {@code BigDecimalTDec0302_04Serializer}
     * <p>
     * Exemplos:
     * <ul>
     *   <li>{@code formatarAliquota(0.2080)} → "0.208" (remove zeros, mantém mín. 2)</li>
     *   <li>{@code formatarAliquota(0.2000)} → "0.20" (remove zeros, garante mín. 2)</li>
     *   <li>{@code formatarAliquota(60.0000)} → "60.00" (mín. 2 casas)</li>
     *   <li>{@code formatarAliquota(1.68393793783894…)} → "1.6839"</li>
     * </ul>
     *
     * @param value valor a formatar (não nulo)
     * @return string com 2 a 4 casas decimais
     */
    public static String formatarAliquota(BigDecimal value) {
        BigDecimal scaled = value.setScale(ESCALA_ALIQUOTA_MAX, MODO);
        BigDecimal stripped = scaled.stripTrailingZeros();
        if (stripped.scale() < ESCALA_ALIQUOTA_MIN) {
            stripped = stripped.setScale(ESCALA_ALIQUOTA_MIN);
        }
        return stripped.toPlainString();
    }

    /**
     * Formata uma quantidade: inteiro quando possível, senão 4 casas decimais com HALF_EVEN.
     * <p>
     * Equivalente Jackson: {@code BigDecimalTDec1104OpRTCSerializer}
     *
     * @param value valor a formatar (não nulo)
     * @return string inteira (ex: "1000") ou com 4 casas decimais (ex: "55.5500")
     */
    public static String formatarQuantidade(BigDecimal value) {
        if (value.stripTrailingZeros().scale() <= 0) {
            return value.toBigInteger().toString();
        }
        return value.setScale(ESCALA_QUANTIDADE, MODO).toPlainString();
    }
}
