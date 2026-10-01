package org.idempierelbr.mdfe.apps.form;

/**
 * Descricao de um campo editavel de um filho do MDF-e.
 *
 * <p>Os grupos do leiaute (reboque, CIOT, vale-pedagio, seguro, lacre...) sao
 * todos a mesma coisa do ponto de vista da tela: um punhado de campos gravados
 * num {@code PO}. Descrever cada grupo por uma lista destes, em vez de escrever
 * uma janela por grupo, evita oito telas quase iguais - e, mais importante,
 * evita oito lugares onde esquecer de gravar um campo.
 */
public class MDFeCampo
{
	public enum Tipo
	{
		/** Texto livre. */
		TEXTO,
		/** Somente digitos; o valor gravado ja vem limpo. */
		DIGITOS,
		/** Inteiro. */
		INTEIRO,
		/** Valor com casas decimais. */
		VALOR,
		/** Lista de referencia do dicionario. */
		LISTA,
		/** UF (C_Region_ID). */
		UF,
		/** Data, digitada como dd/MM/yyyy. */
		DATA,
		/**
		 * Sim/nao. Gravado como {@code "Y"}/{@code "N"}, que e como o iDempiere
		 * guarda booleano.
		 */
		BOOLEANO,
		/**
		 * CNPJ ou CPF no mesmo campo. O tamanho decide qual e: 11 digitos vao
		 * para a coluna de CPF, 14 para a de CNPJ. No schema os dois sao
		 * {@code xs:choice} - nunca convivem.
		 */
		DOCUMENTO
	}

	public final String coluna;
	public final String rotulo;
	public final Tipo tipo;

	/** Nome da AD_Reference, para {@link Tipo#LISTA}. */
	public final String referencia;

	/** Coluna do CPF, para {@link Tipo#DOCUMENTO} (a {@code coluna} e a do CNPJ). */
	public final String colunaCPF;

	public final boolean obrigatorio;

	/**
	 * Quantidade exata de digitos exigida em {@link Tipo#DIGITOS}; zero quando
	 * o tamanho e livre.
	 *
	 * <p>Vale so para o campo preenchido: um campo opcional continua podendo
	 * ficar vazio. E o caso do CPF do condutor, que nasce vazio no
	 * pre-preenchimento pela entrega mas, se digitado, precisa ter os 11
	 * digitos do leiaute.
	 */
	public final int tamanhoExato;

	private MDFeCampo(String coluna, String rotulo, Tipo tipo, String referencia,
			String colunaCPF, boolean obrigatorio, int tamanhoExato)
	{
		this.coluna = coluna;
		this.rotulo = rotulo;
		this.tipo = tipo;
		this.referencia = referencia;
		this.colunaCPF = colunaCPF;
		this.obrigatorio = obrigatorio;
		this.tamanhoExato = tamanhoExato;
	}

	private MDFeCampo(String coluna, String rotulo, Tipo tipo, String referencia,
			String colunaCPF, boolean obrigatorio)
	{
		this(coluna, rotulo, tipo, referencia, colunaCPF, obrigatorio, 0);
	}

	public static MDFeCampo texto(String coluna, String rotulo)
	{
		return new MDFeCampo(coluna, rotulo, Tipo.TEXTO, null, null, false);
	}

	public static MDFeCampo textoReq(String coluna, String rotulo)
	{
		return new MDFeCampo(coluna, rotulo, Tipo.TEXTO, null, null, true);
	}

	public static MDFeCampo digitos(String coluna, String rotulo)
	{
		return new MDFeCampo(coluna, rotulo, Tipo.DIGITOS, null, null, false);
	}

	/** Digitos opcionais, mas com tamanho fixo quando preenchidos. */
	public static MDFeCampo digitos(String coluna, String rotulo, int tamanhoExato)
	{
		return new MDFeCampo(coluna, rotulo, Tipo.DIGITOS, null, null, false, tamanhoExato);
	}

	public static MDFeCampo digitosReq(String coluna, String rotulo)
	{
		return new MDFeCampo(coluna, rotulo, Tipo.DIGITOS, null, null, true);
	}

	public static MDFeCampo inteiro(String coluna, String rotulo)
	{
		return new MDFeCampo(coluna, rotulo, Tipo.INTEIRO, null, null, false);
	}

	public static MDFeCampo inteiroReq(String coluna, String rotulo)
	{
		return new MDFeCampo(coluna, rotulo, Tipo.INTEIRO, null, null, true);
	}

	public static MDFeCampo valor(String coluna, String rotulo)
	{
		return new MDFeCampo(coluna, rotulo, Tipo.VALOR, null, null, false);
	}

	public static MDFeCampo lista(String coluna, String rotulo, String referencia)
	{
		return new MDFeCampo(coluna, rotulo, Tipo.LISTA, referencia, null, false);
	}

	public static MDFeCampo listaReq(String coluna, String rotulo, String referencia)
	{
		return new MDFeCampo(coluna, rotulo, Tipo.LISTA, referencia, null, true);
	}

	public static MDFeCampo booleano(String coluna, String rotulo)
	{
		return new MDFeCampo(coluna, rotulo, Tipo.BOOLEANO, null, null, false);
	}

	public static MDFeCampo uf(String coluna, String rotulo)
	{
		return new MDFeCampo(coluna, rotulo, Tipo.UF, null, null, false);
	}

	public static MDFeCampo data(String coluna, String rotulo, boolean obrigatorio)
	{
		return new MDFeCampo(coluna, rotulo, Tipo.DATA, null, null, obrigatorio);
	}

	public static MDFeCampo documento(String rotulo, String colunaCNPJ, String colunaCPF,
			boolean obrigatorio)
	{
		return new MDFeCampo(colunaCNPJ, rotulo, Tipo.DOCUMENTO, null, colunaCPF, obrigatorio);
	}
}
