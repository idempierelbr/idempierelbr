package org.idempierelbr.base.model;

import org.compiere.model.PO;

/**
 * Regras normativas da NT 2025.002-RTC para as Notas de Débito (finNFe=6) e de
 * Crédito (finNFe=5) da Reforma Tributária (IBS/CBS).
 *
 * <p>Cada tipo de nota tem regras próprias de referenciamento, direção e
 * tributação — elas NÃO são uniformes entre os tipos. Este enum concentra o que
 * a Nota Técnica determina, para que os validadores e geradores não precisem
 * espalhar condicionais por tipo. Quando sair uma nova versão da NT, o ajuste é
 * feito aqui.
 *
 * <p>O que a NT determina fica neste enum; o que a empresa escolhe (série,
 * modelo, CFOP, natureza da operação) vem do C_DocType e do LBR_TaxDefinition.
 *
 * <p>Referência: NT 2025.002-RTC v1.33, regras de validação dos grupos B
 * (Identificação) e VC (Referenciamento de item de outro DF-e).
 *
 * @author Alan Lescano
 */
public enum NFeDebitCreditType {

	// ===== Notas de Débito (finNFe=6) =====
	// Sempre saída (B25-120, rejeição 1162) e somente IBS/CBS (B25-80, rejeição 1001).

	/** 01 - Transferência de créditos para Cooperativas */
	DEBIT_COOPERATIVE("6", "01", "Transferência de créditos para Cooperativas",
			RefRequirement.NOT_REQUIRED, NItemRule.NOT_APPLICABLE, false, 0),

	/** 02 - Anulação de Crédito por Saídas Imunes/Isentas */
	DEBIT_EXEMPT_CREDIT_ANNULMENT("6", "02", "Anulação de Crédito por Saídas Imunes/Isentas",
			RefRequirement.NOT_REQUIRED, NItemRule.NOT_APPLICABLE, false, 0),

	/**
	 * 03 - Débitos de notas fiscais não processadas na apuração.
	 * Referencia por item (VC02-10, rejeição 1038), mas SEM nItem
	 * (VC03-10, rejeição 1039). Admite mais de uma chave (exceção da VC02-30).
	 */
	DEBIT_UNPROCESSED_NF("6", "03", "Débitos de notas fiscais não processadas na apuração",
			RefRequirement.ITEM, NItemRule.FORBIDDEN, false, 0),

	/**
	 * 04 - Multa e juros.
	 * Referencia por item (VC02-10, rejeição 1038) COM nItem
	 * (VC03-20, rejeição 1048).
	 */
	DEBIT_INTEREST("6", "04", "Multa e juros",
			RefRequirement.ITEM, NItemRule.REQUIRED, false, 0),

	/** 05 - Transferência de crédito na sucessão */
	DEBIT_SUCCESSION("6", "05", "Transferência de crédito na sucessão",
			RefRequirement.NOT_REQUIRED, NItemRule.NOT_APPLICABLE, false, 0),

	/**
	 * 06 - Pagamento antecipado.
	 * Não referencia nota anterior: é o documento iniciador. É a NF-e de
	 * fornecimento posterior que a referencia, pelo grupo BB/gPagAntecipado
	 * (11BB01-30, rejeição 1143).
	 */
	DEBIT_ADVANCE_PAYMENT("6", "06", "Pagamento antecipado",
			RefRequirement.NOT_REQUIRED, NItemRule.NOT_APPLICABLE, false, 0),

	/** 07 - Perda em estoque */
	DEBIT_INVENTORY_LOSS("6", "07", "Perda em estoque",
			RefRequirement.NOT_REQUIRED, NItemRule.NOT_APPLICABLE, false, 0),

	/** 08 - Desenquadramento do Simples Nacional */
	DEBIT_SN_DISQUALIFICATION("6", "08", "Desenquadramento do SN",
			RefRequirement.NOT_REQUIRED, NItemRule.NOT_APPLICABLE, false, 0),

	// ===== Notas de Crédito (finNFe=5) =====
	// Sempre entrada (B25-110, rejeição 1161) e referenciamento SOMENTE a nível de
	// nota — por item é vedado (VC02-07, rejeição 1042).

	/** 01 - Multa e juros. Exige NF referenciada (B25-30, rejeição 254), uma só (B25-40, rejeição 255). */
	CREDIT_INTEREST("5", "01", "Multa e juros",
			RefRequirement.HEADER, NItemRule.NOT_APPLICABLE, false, 0),

	/**
	 * 02 - Apropriação de crédito presumido de IBS sobre o saldo devedor na ZFM
	 * (art. 450, § 1º, LC 214/25). Informar NF referenciada é PROIBIDO
	 * (B25-65, rejeição 1027) e o tipo só vale a partir de 2029
	 * (B25.2-30, rejeição 1145).
	 */
	CREDIT_ZFM_PRESUMED("5", "02", "Apropriação de crédito presumido de IBS sobre o saldo devedor na ZFM",
			RefRequirement.FORBIDDEN, NItemRule.NOT_APPLICABLE, false, 2029),

	/**
	 * 03 - Retorno por recusa total na entrega ou por não localização do
	 * destinatário. Único tipo que admite tributos do regime antigo
	 * (exceção da B25-80) e referência a NFC-e modelo 65 (exceção da B25-100).
	 */
	CREDIT_RETURN("5", "03", "Retorno por recusa na entrega ou por não localização do destinatário",
			RefRequirement.HEADER, NItemRule.NOT_APPLICABLE, true, 0, "55", "65"),

	/** 04 - Redução de valores. Exige NF referenciada (B25-30, rejeição 254). */
	CREDIT_AMOUNT_REDUCTION("5", "04", "Redução de valores",
			RefRequirement.HEADER, NItemRule.NOT_APPLICABLE, false, 0),

	/** 05 - Transferência de crédito na sucessão */
	CREDIT_SUCCESSION("5", "05", "Transferência de crédito na sucessão",
			RefRequirement.NOT_REQUIRED, NItemRule.NOT_APPLICABLE, false, 0);

	/** Nível em que a NF-e original precisa ser referenciada */
	public enum RefRequirement {
		/** Referência não exigida pela NT (mas não proibida) */
		NOT_REQUIRED,
		/** Obrigatória a nível de nota (ide/NFref) */
		HEADER,
		/** Obrigatória a nível de item (det/DFeReferenciado) */
		ITEM,
		/** Informar referência é proibido */
		FORBIDDEN
	}

	/** Regra do nItem dentro do grupo det/DFeReferenciado */
	public enum NItemRule {
		/** O tipo não referencia por item */
		NOT_APPLICABLE,
		/** nItem obrigatório */
		REQUIRED,
		/** nItem proibido */
		FORBIDDEN
	}

	/** finNFe = 6 - Nota de Débito */
	public static final String FINNFE_DEBIT = "6";
	/** finNFe = 5 - Nota de Crédito */
	public static final String FINNFE_CREDIT = "5";

	/** Finalidade da NF-e, configurada no C_DocType da nota */
	public static final String COLUMNNAME_LBR_FinNFe = "LBR_FinNFe";
	/** Subtipo da Nota de Débito, configurado no C_DocType da nota */
	public static final String COLUMNNAME_LBR_tpNFDebito = "LBR_tpNFDebito";
	/** Subtipo da Nota de Crédito, configurado no C_DocType da nota */
	public static final String COLUMNNAME_LBR_tpNFCredito = "LBR_tpNFCredito";

	private final String finNFe;
	private final String code;
	private final String description;
	private final RefRequirement refRequirement;
	private final NItemRule nItemRule;
	private final boolean legacyTaxesAllowed;
	private final int validFromYear;
	private final String[] allowedRefModels;

	private NFeDebitCreditType(String finNFe, String code, String description,
			RefRequirement refRequirement, NItemRule nItemRule, boolean legacyTaxesAllowed,
			int validFromYear, String... allowedRefModels) {
		this.finNFe = finNFe;
		this.code = code;
		this.description = description;
		this.refRequirement = refRequirement;
		this.nItemRule = nItemRule;
		this.legacyTaxesAllowed = legacyTaxesAllowed;
		this.validFromYear = validFromYear;
		this.allowedRefModels = allowedRefModels.length > 0 ? allowedRefModels : new String[] { "55" };
	}

	/**
	 * Localiza o tipo pela finalidade e pelo subtipo.
	 *
	 * @param finNFe  "5" (crédito) ou "6" (débito)
	 * @param subtype tpNFDebito ou tpNFCredito ("01".."08")
	 * @return o tipo, ou null se a combinação não existir na NT
	 */
	public static NFeDebitCreditType get(String finNFe, String subtype) {
		if (finNFe == null || subtype == null)
			return null;

		String fin = finNFe.trim();
		String sub = subtype.trim();

		for (NFeDebitCreditType type : values()) {
			if (type.finNFe.equals(fin) && type.code.equals(sub))
				return type;
		}

		return null;
	}

	/**
	 * Localiza o tipo a partir do Tipo de Documento da nota, que é onde a empresa
	 * configura a finalidade e o subtipo (colunas LBR_FinNFe e
	 * LBR_tpNFDebito/LBR_tpNFCredito do C_DocType) — junto com série, modelo e
	 * numeração, que a NF-e já toma dali.
	 *
	 * @param docType Tipo de Documento da NOTA gerada (não o da NF original)
	 * @return o tipo configurado, ou null se o DocType não for de nota de
	 *         débito/crédito (inclusive quando as colunas ainda não existem)
	 */
	public static NFeDebitCreditType getOfDocType(PO docType) {
		if (docType == null || docType.get_ID() <= 0)
			return null;

		String finNFe = docType.get_ValueAsString(COLUMNNAME_LBR_FinNFe);

		if (!isDebitCredit(finNFe))
			return null;

		String subtype = FINNFE_DEBIT.equals(finNFe)
				? docType.get_ValueAsString(COLUMNNAME_LBR_tpNFDebito)
				: docType.get_ValueAsString(COLUMNNAME_LBR_tpNFCredito);

		return get(finNFe, subtype);
	}

	/** @return true se a finalidade é Nota de Débito ou de Crédito (finNFe 5 ou 6) */
	public static boolean isDebitCredit(String finNFe) {
		return FINNFE_DEBIT.equals(finNFe) || FINNFE_CREDIT.equals(finNFe);
	}

	/**
	 * Extrai o modelo do documento (posições 21 e 22) de uma chave de acesso.
	 *
	 * @return o modelo ("55", "65", ...), ou null se a chave for inválida
	 */
	public static String getModelOfKey(String accessKey) {
		if (accessKey == null || accessKey.trim().length() != 44)
			return null;

		return accessKey.trim().substring(20, 22);
	}

	public String getFinNFe() {
		return finNFe;
	}

	public String getCode() {
		return code;
	}

	public String getDescription() {
		return description;
	}

	public RefRequirement getRefRequirement() {
		return refRequirement;
	}

	public NItemRule getNItemRule() {
		return nItemRule;
	}

	/** @return true se o tipo é Nota de Débito (finNFe=6) */
	public boolean isDebit() {
		return FINNFE_DEBIT.equals(finNFe);
	}

	/** @return a referência à NF-e original é obrigatória (em qualquer nível) */
	public boolean isReferenceRequired() {
		return refRequirement == RefRequirement.HEADER || refRequirement == RefRequirement.ITEM;
	}

	/** @return informar referência à NF-e original é proibido */
	public boolean isReferenceForbidden() {
		return refRequirement == RefRequirement.FORBIDDEN;
	}

	/** @return a referência vai no grupo det/DFeReferenciado (a nível de item) */
	public boolean isItemLevelReference() {
		return refRequirement == RefRequirement.ITEM;
	}

	/** @return a referência vai no grupo ide/NFref (a nível de nota) */
	public boolean isHeaderLevelReference() {
		return refRequirement == RefRequirement.HEADER;
	}

	/**
	 * Tributos do regime antigo (ICMS, IPI, PIS, COFINS, ISSQN, II) são vedados
	 * nas notas de débito/crédito pela B25-80 (rejeição 1001) — exceto no crédito
	 * do tipo 03-Retorno.
	 */
	public boolean isLegacyTaxesAllowed() {
		return legacyTaxesAllowed;
	}

	/**
	 * Tipo de operação exigido: débito é sempre saída (B25-120, rejeição 1162) e
	 * crédito é sempre entrada (B25-110, rejeição 1161).
	 *
	 * @return "1" (saída) ou "0" (entrada)
	 */
	public String getOperationType() {
		return isDebit() ? MLBRNotaFiscal.LBR_NFE_OPERATIONTYPE_Out : MLBRNotaFiscal.LBR_NFE_OPERATIONTYPE_In;
	}

	/** @return primeiro ano em que o tipo pode ser emitido, ou 0 se não houver restrição */
	public int getValidFromYear() {
		return validFromYear;
	}

	/** @return true se o modelo informado pode ser referenciado por este tipo */
	public boolean isRefModelAllowed(String model) {
		// A restrição de modelo da B25-100 (rejeição 1003) é exclusiva da nota de crédito
		if (isDebit())
			return true;

		if (model == null)
			return false;

		for (String allowed : allowedRefModels) {
			if (allowed.equals(model))
				return true;
		}

		return false;
	}

	/** @return os modelos referenciáveis, para compor mensagens de erro */
	public String getAllowedRefModelsAsString() {
		return String.join(", ", allowedRefModels);
	}

	@Override
	public String toString() {
		return code + " - " + description;
	}
}
