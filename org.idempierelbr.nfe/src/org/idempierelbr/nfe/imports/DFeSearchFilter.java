/******************************************************************************
 * Product: ADempiereLBR - ADempiere Localization Brazil                      *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 *****************************************************************************/
package org.idempierelbr.nfe.imports;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.List;

import org.compiere.util.TimeUtil;
import org.compiere.util.Util;

/**
 * Os critérios de uma busca de DF-e no monitor.
 *
 * <p>Vazio, o filtro não restringe nada e a tela aplica o teto do lote. Com
 * qualquer critério, o usuário já disse o que quer ver, e vem tudo o que se
 * encaixa.
 *
 * @author Alan Lescano
 */
public class DFeSearchFilter {

	/** Emissão a partir deste dia, inclusive */
	public Timestamp dateFrom;
	/** Emissão até este dia, inclusive */
	public Timestamp dateTo;
	/** Trecho da razão social, ou CNPJ/CPF do emitente — a raiz do CNPJ traz as filiais */
	public String emitter;

	/** @return true se nenhum critério foi informado */
	public boolean isEmpty() {
		return dateFrom == null && dateTo == null && Util.isEmpty(emitter, true);
	}

	/** @return o que impede a busca, ou nulo se os critérios fazem sentido */
	public String validate() {
		if (dateFrom != null && dateTo != null && TimeUtil.getDay(dateFrom).after(TimeUtil.getDay(dateTo)))
			return "A emissão inicial é posterior à final";

		return null;
	}

	/**
	 * Acrescenta os critérios à consulta em {@code LBR_NFeXML}.
	 */
	public void appendWhere(StringBuilder where, List<Object> parameters) {
		if (dateFrom != null) {
			where.append(" AND DateDoc>=?");
			parameters.add(TimeUtil.getDay(dateFrom));
		}

		if (dateTo != null) {
			// DateDoc guarda a hora da emissão: comparar com o dia final à
			// meia-noite deixaria de fora as notas emitidas nele
			where.append(" AND DateDoc<?");
			parameters.add(TimeUtil.addDays(TimeUtil.getDay(dateTo), 1));
		}

		if (Util.isEmpty(emitter, true))
			return;

		String text = emitter.trim();

		if (isDocumentNumber(text)) {
			// o XML traz o CNPJ sem máscara; comparar pelo começo deixa a raiz
			// trazer todas as filiais do fornecedor
			where.append(" AND LBR_EmitCNPJ LIKE ?");
			parameters.add(text.replaceAll("\\D", "") + "%");
		} else {
			where.append(" AND UPPER(LBR_EmitName) LIKE ?");
			parameters.add("%" + text.toUpperCase() + "%");
		}
	}

	/** @return os critérios como o usuário lê, para a mensagem do resultado; vazio se não há */
	public String describe() {
		SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy");
		StringBuilder text = new StringBuilder();

		if (dateFrom != null && dateTo != null)
			text.append("emitidos de ").append(format.format(dateFrom)).append(" a ").append(format.format(dateTo));
		else if (dateFrom != null)
			text.append("emitidos a partir de ").append(format.format(dateFrom));
		else if (dateTo != null)
			text.append("emitidos até ").append(format.format(dateTo));

		if (!Util.isEmpty(emitter, true)) {
			if (text.length() > 0)
				text.append(", ");

			text.append("emitente \"").append(emitter.trim()).append("\"");
		}

		return text.toString();
	}

	/** Só dígitos e a pontuação da máscara: é CNPJ ou CPF, não razão social */
	private static boolean isDocumentNumber(String text) {
		return text.matches("[\\d./\\-\\s]+") && text.matches(".*\\d.*");
	}
}	//	DFeSearchFilter
